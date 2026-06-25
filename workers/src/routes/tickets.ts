import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";
import { verifyManagerCredentials } from "../lib/manager_auth.js";
import { resolveLineItemPricing } from "../lib/line_pricing.js";
import { computeTicketDueCentavos, computeTicketTotals, sumLineSubtotalCentavos, getTicketAdjustments, computeTicketTotalsFromRows } from "../lib/ticket_totals.js";
import { buildReceiptPayload } from "./receipt_helpers.js";
import { finalizeIfPaid, sumCompletedPaymentsCentavos } from "../lib/ticket_finalize.js";

export const ticketRoutes = new Hono<AppEnv>();

async function sumCompletedPayments(db: D1Database, ticketId: string): Promise<number> {
  const r = await db.prepare(`SELECT SUM(amount_centavos) as s FROM payments WHERE ticket_id = ? AND status = 'completed'`)
    .bind(ticketId)
    .first<{ s: number | null }>();
  return Number(r?.s ?? 0);
}

async function ticketTotalsPayload(db: D1Database, ticketId: string) {
  const t = await computeTicketTotals(db, ticketId);
  const paid = await sumCompletedPayments(db, ticketId);
  return {
    lineGrossCentavos: t.lineGrossCentavos,
    lineItemDiscountCentavos: t.lineItemDiscountCentavos,
    lineSubtotalCentavos: t.lineSubtotalCentavos,
    orderDiscountCentavos: t.orderDiscountCentavos,
    totalDiscountCentavos: t.totalDiscountCentavos,
    serviceChargeCentavos: t.serviceChargeCentavos,
    tipCentavos: t.tipCentavos,
    taxCentavos: t.taxCentavos,
    taxByRate: t.taxByRate,
    dueCentavos: t.dueCentavos,
    paidCompletedCentavos: paid,
    remainingDueCentavos: Math.max(0, t.dueCentavos - paid),
  };
}

export async function getTicketDetailPayload(db: D1Database, ticketId: string, orgId: string) {
  const batchRes = await db.batch([
    db.prepare(`SELECT * FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, orgId),
    db.prepare(
      `SELECT li.*, p.name as product_name, tp.rate_bps
       FROM line_items li
       JOIN products p ON p.id = li.product_id
       LEFT JOIN tax_profiles tp ON tp.id = p.tax_profile_id
       WHERE li.ticket_id = ?
       ORDER BY li.sort_order`
    ).bind(ticketId),
    db.prepare(`SELECT * FROM payments WHERE ticket_id = ? ORDER BY created_at`).bind(ticketId)
  ]);

  const t = batchRes[0].results[0] as Record<string, unknown> | undefined;
  if (!t) return null;

  const lines = batchRes[1].results as Record<string, unknown>[];
  const pays = batchRes[2].results as Record<string, unknown>[];

  const adj = {
    order_discount_centavos: Number(t.order_discount_centavos ?? 0),
    service_charge_centavos: Number(t.service_charge_centavos ?? 0),
    tip_centavos: Number(t.tip_centavos ?? 0),
  };

  const linesForTotals = lines
    .filter((l) => !l.voided)
    .map((l) => ({
      qty: Number(l.qty ?? 0),
      unit_price_centavos: Number(l.unit_price_centavos ?? 0),
      discount_centavos: l.discount_centavos !== null && l.discount_centavos !== undefined ? Number(l.discount_centavos) : 0,
      rate_bps: l.rate_bps !== null && l.rate_bps !== undefined ? Number(l.rate_bps) : 0,
    }));

  const tTotals = computeTicketTotalsFromRows(adj, linesForTotals);
  const paid = pays
    .filter((p) => p.status === "completed")
    .reduce((sum, p) => sum + Number(p.amount_centavos ?? 0), 0);

  const totals = {
    lineGrossCentavos: tTotals.lineGrossCentavos,
    lineItemDiscountCentavos: tTotals.lineItemDiscountCentavos,
    lineSubtotalCentavos: tTotals.lineSubtotalCentavos,
    orderDiscountCentavos: tTotals.orderDiscountCentavos,
    totalDiscountCentavos: tTotals.totalDiscountCentavos,
    serviceChargeCentavos: tTotals.serviceChargeCentavos,
    tipCentavos: tTotals.tipCentavos,
    taxCentavos: tTotals.taxCentavos,
    taxByRate: tTotals.taxByRate,
    dueCentavos: tTotals.dueCentavos,
    paidCompletedCentavos: paid,
    remainingDueCentavos: Math.max(0, tTotals.dueCentavos - paid),
  };

  return { ticket: t, lineItems: lines, payments: pays, totals };
}

ticketRoutes.post("/", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({
    registerId: z.string().uuid(),
    ticketType: z.enum(["dine_in", "takeout", "delivery"]),
    parkedLabel: z.string().max(100).optional(),
    tableRef: z.string().max(50).optional(),
  });
  const body = Body.parse(await c.req.json());
  const reg = await c.env.DB.prepare(
    `SELECT r.id FROM registers r JOIN locations l ON l.id = r.location_id WHERE r.id = ? AND l.org_id = ?`,
  )
    .bind(body.registerId, auth.orgId)
    .first<{ id: string }>();
  if (!reg) return c.json({ error: "bad_register" }, 400);

  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  const nextTicketNo =
    (
      await c.env.DB.prepare(`SELECT COALESCE(MAX(ticket_no), 0) + 1 as n FROM tickets WHERE org_id = ?`)
        .bind(auth.orgId)
        .first<{ n: number }>()
    )?.n ?? 1;
  await c.env.DB.prepare(
    `INSERT INTO tickets (id, org_id, register_id, ticket_no, status, kds_state, ticket_type, parked_label, table_ref, created_by, created_at, updated_at, order_discount_centavos, service_charge_centavos, tip_centavos)
     VALUES (?, ?, ?, ?, 'open', 'preparing', ?, ?, ?, ?, ?, ?, 0, 0, 0)`,
  )
    .bind(id, auth.orgId, body.registerId, nextTicketNo, body.ticketType, body.parkedLabel ?? null, body.tableRef ?? null, auth.id, now, now)
    .run();

  await c.env.DB.prepare(`INSERT INTO ticket_kds_meta (ticket_id, bump_order, updated_at) VALUES (?, 0, ?)`).bind(id, now).run();

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    registerId: body.registerId,
    action: "ticket.opened",
    entityType: "ticket",
    entityId: id,
    payload: body,
  });

  return c.json({ id, ticketNo: nextTicketNo });
});

ticketRoutes.get("/open", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const registerId = c.req.query("registerId");
  if (!registerId) return c.json({ error: "registerId_required" }, 400);
  const status = c.req.query("status");
  let statusClause = "t.status IN ('open','parked')";
  if (status === "parked") statusClause = "t.status = 'parked'";
  else if (status === "open") statusClause = "t.status = 'open'";

  const rows = await c.env.DB.prepare(
    `SELECT t.id, t.ticket_no, t.status, t.ticket_type, t.parked_label, t.table_ref, t.created_at, t.updated_at,
       (SELECT COUNT(*) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as line_count,
       (SELECT COALESCE(SUM(li.qty), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as item_qty,
       (SELECT COALESCE(SUM(li.unit_price_centavos * li.qty - li.discount_centavos), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as due_centavos,
       (SELECT COUNT(*) FROM payments p WHERE p.ticket_id = t.id AND p.status = 'pending_ewallet') as pending_payment_count,
       (SELECT COALESCE(SUM(p.amount_centavos), 0) FROM payments p WHERE p.ticket_id = t.id AND p.status = 'completed') as paid_centavos
     FROM tickets t
     WHERE t.org_id = ? AND t.register_id = ? AND ${statusClause}
     ORDER BY CASE WHEN t.status = 'parked' THEN 0 ELSE 1 END, t.updated_at ASC`,
  )
    .bind(auth.orgId, registerId)
    .all<Record<string, unknown>>();

  const tickets = rows.results ?? [];
  for (const t of tickets) {
    if (t.status === "open" || t.status === "parked") {
      await finalizeIfPaid(c.env.DB, String(t.id), auth.orgId);
    }
  }

  const refreshed = await c.env.DB.prepare(
    `SELECT t.id, t.ticket_no, t.status, t.ticket_type, t.parked_label, t.table_ref, t.created_at, t.updated_at,
       (SELECT COUNT(*) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as line_count,
       (SELECT COALESCE(SUM(li.qty), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as item_qty,
       (SELECT COALESCE(SUM(li.unit_price_centavos * li.qty - li.discount_centavos), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as due_centavos,
       (SELECT COUNT(*) FROM payments p WHERE p.ticket_id = t.id AND p.status = 'pending_ewallet') as pending_payment_count,
       (SELECT COALESCE(SUM(p.amount_centavos), 0) FROM payments p WHERE p.ticket_id = t.id AND p.status = 'completed') as paid_centavos
     FROM tickets t
     WHERE t.org_id = ? AND t.register_id = ? AND ${statusClause}
     ORDER BY CASE WHEN t.status = 'parked' THEN 0 ELSE 1 END, t.updated_at ASC`,
  )
    .bind(auth.orgId, registerId)
    .all<Record<string, unknown>>();

  return c.json({ tickets: refreshed.results ?? [] });
});

ticketRoutes.get("/paid", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const q = (c.req.query("q") ?? "").trim();
  const limit = Math.min(100, Math.max(1, Number(c.req.query("limit") ?? "50")));
  const digits = q.replace(/\D/g, "");
  let filterClause = "";
  const binds: (string | number)[] = [auth.orgId];
  if (digits) {
    filterClause = "AND CAST(t.ticket_no AS TEXT) LIKE ?";
    binds.push(`%${digits}%`);
  }
  binds.push(limit);
  const rows = await c.env.DB.prepare(
    `SELECT t.id, t.ticket_no, t.ticket_type, t.created_at, t.updated_at,
       (SELECT COALESCE(SUM(p.amount_centavos), 0) FROM payments p WHERE p.ticket_id = t.id AND p.status = 'completed') as paid_centavos,
       (SELECT COALESCE(SUM(r.amount_centavos), 0) FROM refunds r WHERE r.ticket_id = t.id) as refunded_centavos
     FROM tickets t
     WHERE t.org_id = ? AND t.status = 'paid' ${filterClause}
     ORDER BY t.updated_at DESC
     LIMIT ?`,
  )
    .bind(...binds)
    .all<Record<string, unknown>>();
  const tickets = (rows.results ?? []).map((r) => ({
    id: String(r.id),
    ticket_no: Number(r.ticket_no ?? 0),
    ticket_type: String(r.ticket_type ?? ""),
    created_at: String(r.created_at ?? ""),
    updated_at: String(r.updated_at ?? ""),
    paid_centavos: Number(r.paid_centavos ?? 0),
    refunded_centavos: Number(r.refunded_centavos ?? 0),
    refundable_centavos: Math.max(0, Number(r.paid_centavos ?? 0) - Number(r.refunded_centavos ?? 0)),
  }));
  return c.json({ tickets: tickets.filter((t) => t.refundable_centavos > 0) });
});

ticketRoutes.get("/:id/receipt", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const payload = await buildReceiptPayload(c.env.DB, id, auth.orgId);
  if (!payload) return c.json({ error: "not_found" }, 404);
  return c.json(payload);
});

const AdjustIn = z.object({
  orderDiscountCentavos: z.number().int().min(0).optional(),
  serviceChargeCentavos: z.number().int().min(0).optional(),
  tipCentavos: z.number().int().min(0).optional(),
});

ticketRoutes.patch("/:id/adjustments", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const body = AdjustIn.parse(await c.req.json());

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, auth.orgId).first<{
    id: string;
    status: string;
  }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "ticket_locked" }, 400);

  const cur = await getTicketAdjustments(c.env.DB, ticketId);
  const next = {
    order_discount_centavos: body.orderDiscountCentavos ?? cur.order_discount_centavos,
    service_charge_centavos: body.serviceChargeCentavos ?? cur.service_charge_centavos,
    tip_centavos: body.tipCentavos ?? cur.tip_centavos,
  };

  const lineSub = await sumLineSubtotalCentavos(c.env.DB, ticketId);
  if (next.order_discount_centavos > lineSub) {
    return c.json({ error: "order_discount_exceeds_subtotal" }, 400);
  }

  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `UPDATE tickets SET order_discount_centavos = ?, service_charge_centavos = ?, tip_centavos = ?, updated_at = ? WHERE id = ? AND org_id = ?`,
  )
    .bind(next.order_discount_centavos, next.service_charge_centavos, next.tip_centavos, now, ticketId, auth.orgId)
    .run();

  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "ticket.adjustments", entityId: ticketId, payload: next });
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

ticketRoutes.patch("/:id/park", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const Body = z.object({ parkedLabel: z.string().min(1).max(100) });
  const body = Body.parse(await c.req.json());

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(ticketId, auth.orgId)
    .first<{ id: string; status: string }>();
  if (!ticket) return c.json({ error: "not_found" }, 404);
  if (ticket.status === "paid" || ticket.status === "voided") {
    return c.json({ error: "ticket_closed" }, 400);
  }

  if (await finalizeIfPaid(c.env.DB, ticketId, auth.orgId)) {
    const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
    return c.json({ ok: true, finalized: true, ...payload });
  }

  const due = await computeTicketDueCentavos(c.env.DB, ticketId);
  const paid = await sumCompletedPaymentsCentavos(c.env.DB, ticketId);
  if (paid > 0 && paid >= due) {
    return c.json({ error: "cannot_park_ticket_with_completed_payments" }, 400);
  }

  const itemQty = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(qty), 0) as qty FROM line_items WHERE ticket_id = ? AND voided = 0`,
  )
    .bind(ticketId)
    .first<{ qty: number }>();
  if (Number(itemQty?.qty ?? 0) === 0) {
    return c.json({ error: "cannot_park_empty_ticket" }, 400);
  }

  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE tickets SET status = 'parked', parked_label = ?, updated_at = ? WHERE id = ? AND org_id = ? AND status = 'open'`,
  )
    .bind(body.parkedLabel, now, ticketId, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.parked",
    entityType: "ticket",
    entityId: ticketId,
    payload: { parkedLabel: body.parkedLabel ?? null },
  });
  return c.json({ ok: true });
});

ticketRoutes.patch("/:id/resume", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE tickets SET status = 'open', updated_at = ? WHERE id = ? AND org_id = ? AND status = 'parked'`,
  )
    .bind(now, ticketId, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.resumed",
    entityType: "ticket",
    entityId: ticketId,
    payload: {},
  });
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  if (!payload) return c.json({ error: "not_found" }, 404);
  return c.json({ ok: true, ...payload });
});

ticketRoutes.patch("/:id/type", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const Body = z.object({ ticketType: z.enum(["dine_in", "takeout"]) });
  const body = Body.parse(await c.req.json());
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE tickets SET ticket_type = ?, updated_at = ? WHERE id = ? AND org_id = ? AND status IN ('open','parked')`,
  )
    .bind(body.ticketType, now, ticketId, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

const TicketMetaIn = z.object({
  demographicColor: z.string().optional(),
  feedbackRating: z.number().int().min(1).max(5).optional(),
  feedbackNotes: z.string().optional(),
  customerId: z.string().uuid().optional(),
  notes: z.string().optional(),
});

ticketRoutes.patch("/:id/meta", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const body = TicketMetaIn.parse(await c.req.json());

  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.demographicColor !== undefined) {
    sets.push("demographic_color = ?");
    vals.push(body.demographicColor);
  }
  if (body.feedbackRating !== undefined) {
    sets.push("feedback_rating = ?");
    vals.push(body.feedbackRating);
  }
  if (body.feedbackNotes !== undefined) {
    sets.push("feedback_notes = ?");
    vals.push(body.feedbackNotes);
  }
  if (body.customerId !== undefined) {
    sets.push("customer_id = ?");
    vals.push(body.customerId);
  }
  if (body.notes !== undefined) {
    sets.push("notes = ?");
    vals.push(body.notes);
  }

  if (sets.length === 0) return c.json({ ok: true });

  vals.push(new Date().toISOString(), ticketId, auth.orgId);
  const sql = `UPDATE tickets SET ${sets.join(", ")}, updated_at = ? WHERE id = ? AND org_id = ?`;

  await c.env.DB.prepare(sql).bind(...vals).run();
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

const ManagerApprovalIn = z.object({
  approverStaffCode: z.string().min(1),
  approverPin: z.string().min(4),
});

const VoidTicketIn = z.object({ reason: z.string().min(1).max(500) }).merge(ManagerApprovalIn);

ticketRoutes.post("/:id/void-ticket", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const body = VoidTicketIn.parse(await c.req.json());

  const approver = await verifyManagerCredentials(c.env.DB, auth.orgId, body.approverStaffCode, body.approverPin);
  if (!approver) return c.json({ error: "invalid_manager_credentials" }, 401);

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, auth.orgId).first<{
    id: string;
    status: string;
  }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "ticket_locked" }, 400);

  const paid = await sumCompletedPayments(c.env.DB, ticketId);
  if (paid > 0) {
    return c.json({ error: "cannot_void_ticket_with_completed_payments" }, 400);
  }

  const linesToVoid = await c.env.DB.prepare(
    `SELECT li.id, li.qty, li.unit_price_centavos, li.discount_centavos, p.name AS product_name
     FROM line_items li
     JOIN products p ON p.id = li.product_id
     WHERE li.ticket_id = ? AND li.voided = 0`
  )
    .bind(ticketId)
    .all<{ id: string; qty: number; unit_price_centavos: number; discount_centavos: number | null; product_name: string }>();

  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `UPDATE line_items SET voided = 1, void_reason = ?, voided_by = ? WHERE ticket_id = ? AND voided = 0`,
  )
    .bind(body.reason, auth.id, ticketId)
    .run();
  await c.env.DB.prepare(`UPDATE payments SET status = 'cancelled' WHERE ticket_id = ? AND status = 'pending_ewallet'`).bind(ticketId).run();
  await c.env.DB.prepare(`UPDATE tickets SET status = 'voided', notes = ?, updated_at = ? WHERE id = ? AND org_id = ?`)
    .bind(body.reason, now, ticketId, auth.orgId)
    .run();

  for (const line of linesToVoid.results ?? []) {
    await writeAudit({
      db: c.env.DB,
      orgId: auth.orgId,
      userId: auth.id,
      action: "line.void",
      entityType: "line_item",
      entityId: line.id,
      payload: {
        reason: body.reason,
        ticketId,
        productName: line.product_name,
        qty: line.qty,
        unitPriceCentavos: line.unit_price_centavos,
        discountCentavos: line.discount_centavos ?? 0,
        approvedBy: approver.id,
        approvedByStaffCode: approver.staffCode,
      },
    });
  }

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.void",
    entityType: "ticket",
    entityId: ticketId,
    payload: { reason: body.reason, approvedBy: approver.id, approvedByStaffCode: approver.staffCode },
  });

  return c.json({ ok: true });
});

const LineIn = z.object({
  productId: z.string().uuid(),
  qty: z.number().int().positive(),
  modifierIds: z.array(z.string().uuid()).optional().default([]),
  modifiersJson: z.record(z.unknown()).optional(),
  lineNotes: z.string().optional(),
  course: z.number().int().optional(),
  discountCentavos: z.number().int().nonnegative().optional(),
});

ticketRoutes.post("/:id/lines", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("id");
  const body = LineIn.parse(await c.req.json());

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, auth.orgId).first<{
    id: string;
    status: string;
  }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) {
    return c.json({ error: "ticket_locked" }, 400);
  }

  const product = await c.env.DB.prepare(
    `SELECT id, price_centavos, out_of_stock, is_active FROM products WHERE id = ? AND org_id = ?`,
  )
    .bind(body.productId, auth.orgId)
    .first<{ id: string; price_centavos: number; out_of_stock: number; is_active: number }>();
  if (!product || product.is_active !== 1) return c.json({ error: "bad_product" }, 400);
  if (product.out_of_stock === 1) return c.json({ error: "out_of_stock" }, 400);

  const pricing = await resolveLineItemPricing({
    db: c.env.DB,
    orgId: auth.orgId,
    productId: body.productId,
    catalogPriceCentavos: product.price_centavos,
    qty: body.qty,
    modifierIds: body.modifierIds ?? [],
    extraDiscountCentavos: body.discountCentavos ?? 0,
  });
  if (!pricing.ok) return c.json({ error: pricing.error }, 400);

  const modifiersJson = JSON.stringify(pricing.modifiersSnapshot);
  const unitPrice = pricing.unitPriceCentavos;
  const lineDiscount = pricing.discountCentavos;

  const lineId = crypto.randomUUID();
  const now = new Date().toISOString();
  const sort =
    (await c.env.DB.prepare(`SELECT COALESCE(MAX(sort_order), -1) + 1 as n FROM line_items WHERE ticket_id = ?`).bind(ticketId).first<{ n: number }>())
      ?.n ?? 0;

  await c.env.DB.prepare(
    `INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, line_notes, course, voided, sort_order, modifiers_json, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?)`,
  )
    .bind(
      lineId,
      ticketId,
      body.productId,
      body.qty,
      unitPrice,
      lineDiscount,
      body.lineNotes ?? null,
      body.course ?? 0,
      sort,
      modifiersJson,
      now,
    )
    .run();

  await c.env.DB.prepare(`UPDATE tickets SET updated_at = ? WHERE id = ?`).bind(now, ticketId).run();
  await c.env.DB.prepare(`UPDATE ticket_kds_meta SET updated_at = ? WHERE ticket_id = ?`).bind(now, ticketId).run();

  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ lineItemId: lineId, ...payload });
});

const LinePatchIn = z.object({
  qty: z.number().int().positive().optional(),
  discountCentavos: z.number().int().nonnegative().optional(),
  lineNotes: z.string().max(500).nullable().optional(),
});

ticketRoutes.patch("/:ticketId/lines/:lineId", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const lineId = c.req.param("lineId");
  const body = LinePatchIn.parse(await c.req.json());

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, auth.orgId).first<{
    id: string;
    status: string;
  }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "ticket_locked" }, 400);

  const line = await c.env.DB
    .prepare(`SELECT id, voided, qty, unit_price_centavos FROM line_items WHERE id = ? AND ticket_id = ?`)
    .bind(lineId, ticketId)
    .first<{
    id: string;
    voided: number;
    qty: number;
    unit_price_centavos: number;
  }>();
  if (!line || line.voided === 1) return c.json({ error: "not_found" }, 404);

  const nextQty = body.qty ?? line.qty;
  const lineGross = Math.max(0, line.unit_price_centavos * nextQty);
  if (body.discountCentavos !== undefined && body.discountCentavos > lineGross) {
    return c.json({ error: "discount_exceeds_line_total" }, 400);
  }

  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.qty !== undefined) {
    sets.push("qty = ?");
    vals.push(body.qty);
  }
  if (body.discountCentavos !== undefined) {
    sets.push("discount_centavos = ?");
    vals.push(body.discountCentavos);
  }
  if (body.lineNotes !== undefined) {
    sets.push("line_notes = ?");
    vals.push(body.lineNotes);
  }
  if (!sets.length) return c.json({ error: "no_fields" }, 400);
  vals.push(lineId, ticketId);
  const now = new Date().toISOString();
  await c.env.DB.prepare(`UPDATE line_items SET ${sets.join(", ")} WHERE id = ? AND ticket_id = ?`).bind(...vals).run();
  await c.env.DB.prepare(`UPDATE tickets SET updated_at = ? WHERE id = ?`).bind(now, ticketId).run();
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

ticketRoutes.delete("/:ticketId/lines/:lineId", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const lineId = c.req.param("lineId");

  const ticket = await c.env.DB.prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, auth.orgId).first<{
    id: string;
    status: string;
  }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "ticket_locked" }, 400);

  const completedPaid = await sumCompletedPayments(c.env.DB, ticketId);
  if (completedPaid > 0) return c.json({ error: "ticket_locked" }, 400);

  const res = await c.env.DB.prepare(`DELETE FROM line_items WHERE id = ? AND ticket_id = ? AND voided = 0`).bind(lineId, ticketId).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);

  const now = new Date().toISOString();
  await c.env.DB.prepare(`UPDATE tickets SET updated_at = ? WHERE id = ?`).bind(now, ticketId).run();
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

const VoidLine = z.object({ reason: z.string().min(1).max(500) }).merge(ManagerApprovalIn);

ticketRoutes.post("/:ticketId/lines/:lineId/void", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const lineId = c.req.param("lineId");
  const body = VoidLine.parse(await c.req.json());

  const approver = await verifyManagerCredentials(c.env.DB, auth.orgId, body.approverStaffCode, body.approverPin);
  if (!approver) return c.json({ error: "invalid_manager_credentials" }, 401);

  const row = await c.env.DB.prepare(
    `SELECT li.id FROM line_items li JOIN tickets t ON t.id = li.ticket_id WHERE li.id = ? AND li.ticket_id = ? AND t.org_id = ?`,
  )
    .bind(lineId, ticketId, auth.orgId)
    .first<{ id: string }>();
  if (!row) return c.json({ error: "not_found" }, 404);

  const lineDetail = await c.env.DB.prepare(
    `SELECT li.qty, li.unit_price_centavos, li.discount_centavos, p.name AS product_name
     FROM line_items li
     JOIN products p ON p.id = li.product_id
     WHERE li.id = ? AND li.ticket_id = ?`,
  )
    .bind(lineId, ticketId)
    .first<{ qty: number; unit_price_centavos: number; discount_centavos: number | null; product_name: string }>();

  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `UPDATE line_items SET voided = 1, void_reason = ?, voided_by = ? WHERE id = ? AND ticket_id = ?`,
  )
    .bind(body.reason, auth.id, lineId, ticketId)
    .run();
  await c.env.DB.prepare(`UPDATE tickets SET updated_at = ? WHERE id = ?`).bind(now, ticketId).run();
  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "line.void",
    entityType: "line_item",
    entityId: lineId,
    payload: {
      reason: body.reason,
      ticketId,
      productName: lineDetail?.product_name ?? null,
      qty: lineDetail?.qty ?? null,
      unitPriceCentavos: lineDetail?.unit_price_centavos ?? null,
      discountCentavos: lineDetail?.discount_centavos ?? 0,
      approvedBy: approver.id,
      approvedByStaffCode: approver.staffCode,
    },
  });
  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

ticketRoutes.post("/:id/merge-from", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const targetId = c.req.param("id");
  const Body = z.object({ sourceTicketId: z.string().uuid() });
  const body = Body.parse(await c.req.json());

  const srcLines = await c.env.DB.prepare(
    `SELECT product_id, qty, unit_price_centavos, discount_centavos, line_notes, course, modifiers_json
     FROM line_items WHERE ticket_id = ? AND voided = 0`,
  )
    .bind(body.sourceTicketId)
    .all<{
      product_id: string;
      qty: number;
      unit_price_centavos: number;
      discount_centavos: number | null;
      line_notes: string | null;
      course: number;
      modifiers_json: string | null;
    }>();
  const lines = srcLines.results ?? [];
  let sortBase =
    (await c.env.DB.prepare(`SELECT COALESCE(MAX(sort_order), -1) + 1 as n FROM line_items WHERE ticket_id = ?`).bind(targetId).first<{ n: number }>())?.n ??
    -1;

  const now = new Date().toISOString();
  for (const row of lines) {
    sortBase += 1;
    const newId = crypto.randomUUID();
    await c.env.DB.prepare(
      `INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, line_notes, course, voided, sort_order, modifiers_json, created_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, 0, ?, ?, ?)`,
    )
      .bind(
        newId,
        targetId,
        row.product_id,
        row.qty,
        row.unit_price_centavos,
        row.discount_centavos ?? 0,
        row.line_notes,
        row.course,
        sortBase,
        row.modifiers_json,
        now,
      )
      .run();
  }

  await c.env.DB.prepare(`UPDATE tickets SET status = 'voided', notes = '[merged]', updated_at = ? WHERE id = ? AND org_id = ?`).bind(now, body.sourceTicketId, auth.orgId).run();
  await c.env.DB.prepare(`UPDATE tickets SET merged_from_json = ?, updated_at = ? WHERE id = ?`).bind(JSON.stringify({ from: body.sourceTicketId }), now, targetId).run();

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.merge",
    entityId: targetId,
    payload: body,
  });

  return c.json({ ok: true });
});

ticketRoutes.get("/:id", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const ticket = await c.env.DB.prepare(`SELECT status FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(id, auth.orgId)
    .first<{ status: string }>();
  if (!ticket) return c.json({ error: "not_found" }, 404);
  if (ticket.status === "open" || ticket.status === "parked") {
    await finalizeIfPaid(c.env.DB, id, auth.orgId);
  }
  const payload = await getTicketDetailPayload(c.env.DB, id, auth.orgId);
  if (!payload) return c.json({ error: "not_found" }, 404);
  return c.json(payload);
});
