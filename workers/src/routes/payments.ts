import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";
import { computeTicketDueCentavos, computeTicketTotals } from "../lib/ticket_totals.js";
import { getTicketDetailPayload } from "./tickets.js";

async function sumCompletedPaymentsCentavos(db: D1Database, ticketId: string): Promise<number> {
  const res = await db.prepare(
    `SELECT SUM(amount_centavos) as s FROM payments WHERE ticket_id = ? AND status = 'completed'`,
  )
    .bind(ticketId)
    .first<{ s: number | null }>();
  return Number(res?.s ?? 0);
}

export const paymentRoutes = new Hono<AppEnv>();

const PayIn = z.object({
  tenderType: z.enum(["cash", "e_wallet_personal", "e_wallet_merchant"]),
  amountCentavos: z.number().int().positive(),
  roundingCentavos: z.number().int().optional(),
  referenceNote: z.string().max(200).optional(),
});

paymentRoutes.post("/tickets/:ticketId/payments", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const body = PayIn.parse(await c.req.json());
  const idempotencyKey = c.req.header("Idempotency-Key") ?? undefined;

  const ticket = await c.env.DB.prepare(`SELECT id, status, org_id FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(ticketId, auth.orgId)
    .first<{ id: string; status: string; org_id: string }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "bad_ticket" }, 400);

  if (idempotencyKey) {
    const existing = await c.env.DB.prepare(`SELECT id FROM payments WHERE idempotency_key = ?`).bind(idempotencyKey).first<{ id: string }>();
    if (existing) {
      const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
      return c.json({ paymentId: existing.id, duplicate: true, ...payload });
    }
  }

  const paymentId = crypto.randomUUID();
  const now = new Date().toISOString();

  const settings = await c.env.DB.prepare(`SELECT reference_required FROM org_ewallet_settings WHERE org_id = ?`)
    .bind(auth.orgId)
    .first<{ reference_required: number | null }>();

  const status =
    body.tenderType === "cash"
      ? "completed"
      : body.tenderType.startsWith("e_wallet")
        ? "pending_ewallet"
        : "pending_ewallet";

  let settledAmountCentavos = body.amountCentavos;
  if (body.tenderType === "cash") {
    const due = await computeTicketDueCentavos(c.env.DB, ticketId);
    const paid = await sumCompletedPaymentsCentavos(c.env.DB, ticketId);
    const remainingDueCentavos = Math.max(0, due - paid);
    if (body.amountCentavos < remainingDueCentavos) {
      return c.json({ error: "insufficient_cash_amount", remainingDueCentavos }, 400);
    }
    settledAmountCentavos = Math.min(body.amountCentavos, remainingDueCentavos);
    if (settledAmountCentavos <= 0) {
      return c.json({ error: "ticket_already_paid" }, 400);
    }
  }

  if (body.tenderType !== "cash") {
    if (settings?.reference_required === 1 && !body.referenceNote) {
      return c.json({ error: "reference_required" }, 400);
    }
  }

  await c.env.DB.prepare(
    `INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, idempotency_key, rounding_centavos, reference_note, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(
      paymentId,
      ticketId,
      body.tenderType,
      settledAmountCentavos,
      status,
      idempotencyKey ?? null,
      body.roundingCentavos ?? 0,
      body.referenceNote ?? null,
      now,
    )
    .run();

  if (status === "completed") {
    const markedPaid = await finalizeIfPaid(c.env.DB, ticketId, auth.orgId);
    if (markedPaid) {
      await writeAudit({
        db: c.env.DB,
        orgId: auth.orgId,
        userId: auth.id,
        action: "ticket.create",
        entityType: "ticket",
        entityId: ticketId,
        payload: { paymentId, tenderType: body.tenderType, amountCentavos: settledAmountCentavos },
      });
    }
  }

  if (body.tenderType !== "cash") {
    await writeAudit({
      db: c.env.DB,
      orgId: auth.orgId,
      userId: auth.id,
      action: "payment.create",
      entityType: "payment",
      entityId: paymentId,
      idempotencyKey,
      payload: { ...body, amountCentavos: settledAmountCentavos, status },
    });
  }

  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ paymentId, status, ...payload });
});

async function finalizeIfPaid(db: D1Database, ticketId: string, orgId: string): Promise<boolean> {
  const due = await computeTicketDueCentavos(db, ticketId);
  const paid = await sumCompletedPaymentsCentavos(db, ticketId);
  if (paid >= due) {
    const now = new Date().toISOString();
    const totals = await computeTicketTotals(db, ticketId);
    const result = await db
      .prepare(`UPDATE tickets SET status = 'paid', updated_at = ?, tax_centavos_snapshot = ? WHERE id = ? AND org_id = ?`)
      .bind(now, totals.taxCentavos, ticketId, orgId)
      .run();
    return Number(result.meta.changes ?? 0) > 0;
  }
  return false;
}

const ConfirmIn = z.object({
  referenceNote: z.string().max(200).optional(),
});

paymentRoutes.post("/:paymentId/confirm-ewallet", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const paymentId = c.req.param("paymentId");
  const body = ConfirmIn.parse(await c.req.json());

  const pay = await c.env.DB.prepare(
    `SELECT p.id, p.ticket_id, p.status, p.amount_centavos, t.org_id FROM payments p JOIN tickets t ON t.id = p.ticket_id WHERE p.id = ?`,
  )
    .bind(paymentId)
    .first<{ id: string; ticket_id: string; status: string; amount_centavos: number; org_id: string }>();
  if (!pay || pay.org_id !== auth.orgId) return c.json({ error: "not_found" }, 404);
  if (pay.status !== "pending_ewallet") return c.json({ error: "bad_state" }, 400);

  const settings = await c.env.DB.prepare(`SELECT manager_confirm_above_centavos FROM org_ewallet_settings WHERE org_id = ?`)
    .bind(auth.orgId)
    .first<{ manager_confirm_above_centavos: number | null }>();
  const threshold = settings?.manager_confirm_above_centavos ?? null;
  if (
    threshold !== null &&
    pay.amount_centavos >= threshold &&
    auth.role !== "manager" &&
    auth.role !== "owner"
  ) {
    return c.json({ error: "manager_confirm_required" }, 403);
  }

  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `UPDATE payments SET status = 'completed', confirmed_by = ?, confirmed_at = ?, reference_note = COALESCE(?, reference_note) WHERE id = ?`,
  )
    .bind(auth.id, now, body.referenceNote ?? null, paymentId)
    .run();

  const markedPaid = await finalizeIfPaid(c.env.DB, pay.ticket_id, auth.orgId);
  if (markedPaid) {
    await writeAudit({
      db: c.env.DB,
      orgId: auth.orgId,
      userId: auth.id,
      action: "ticket.create",
      entityType: "ticket",
      entityId: pay.ticket_id,
      payload: { paymentId, tenderType: "e_wallet_personal", amountCentavos: pay.amount_centavos },
    });
  }

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "payment.confirm_ewallet",
    entityId: paymentId,
    payload: body,
  });

  const payload = await getTicketDetailPayload(c.env.DB, pay.ticket_id, auth.orgId);
  return c.json({ ok: true, ...payload });
});

const RefundIn = z.object({
  amountCentavos: z.number().int().positive(),
  reason: z.string().min(1),
  note: z.string().optional(),
});

const CloseFreebieIn = z.object({
  influencerName: z.string().max(120).optional(),
  campaign: z.string().max(120).optional(),
  note: z.string().max(300).optional(),
});

paymentRoutes.post("/tickets/:ticketId/close-freebie", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const body = CloseFreebieIn.parse(await c.req.json());

  const ticket = await c.env.DB
    .prepare(`SELECT id, status FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(ticketId, auth.orgId)
    .first<{ id: string; status: string }>();
  if (!ticket || !["open", "parked"].includes(ticket.status)) return c.json({ error: "bad_ticket" }, 400);

  const due = await computeTicketDueCentavos(c.env.DB, ticketId);
  const paid = await sumCompletedPaymentsCentavos(c.env.DB, ticketId);
  const remainingDue = Math.max(0, due - paid);
  if (remainingDue > 0) return c.json({ error: "ticket_has_remaining_due", remainingDueCentavos: remainingDue }, 400);

  const totals = await computeTicketTotals(c.env.DB, ticketId);
  const parts = [
    "[MARKETING_FREEBIE]",
    body.influencerName?.trim() ? `influencer=${body.influencerName.trim()}` : "",
    body.campaign?.trim() ? `campaign=${body.campaign.trim()}` : "",
    body.note?.trim() ? `note=${body.note.trim()}` : "",
    `by=${auth.id}`,
  ].filter(Boolean);
  const closeNote = parts.join(" | ");

  const existing = await c.env.DB
    .prepare(`SELECT notes FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(ticketId, auth.orgId)
    .first<{ notes: string | null }>();
  const mergedNotes = [existing?.notes?.trim() ?? "", closeNote].filter(Boolean).join("\n");

  const now = new Date().toISOString();
  await c.env.DB
    .prepare(`UPDATE tickets SET status = 'paid', updated_at = ?, tax_centavos_snapshot = ?, notes = ? WHERE id = ? AND org_id = ?`)
    .bind(now, totals.taxCentavos, mergedNotes || null, ticketId, auth.orgId)
    .run();

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.close_freebie",
    entityType: "ticket",
    entityId: ticketId,
    payload: { ...body, dueCentavos: due, paidCentavos: paid },
  });

  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ ok: true, ...payload });
});

paymentRoutes.post("/tickets/:ticketId/refunds", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const body = RefundIn.parse(await c.req.json());

  const ticket = await c.env.DB.prepare(`SELECT id, ticket_no FROM tickets WHERE id = ? AND org_id = ?`)
    .bind(ticketId, auth.orgId)
    .first<{ id: string; ticket_no: number | null }>();
  if (!ticket) return c.json({ error: "not_found" }, 404);

  const paidRow = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(amount_centavos), 0) as s FROM payments WHERE ticket_id = ? AND status = 'completed'`,
  )
    .bind(ticketId)
    .first<{ s: number | null }>();
  const refundedRow = await c.env.DB.prepare(`SELECT COALESCE(SUM(amount_centavos), 0) as s FROM refunds WHERE ticket_id = ?`)
    .bind(ticketId)
    .first<{ s: number | null }>();
  const paidTotal = Number(paidRow?.s ?? 0);
  const refundedTotal = Number(refundedRow?.s ?? 0);
  const remainingRefundable = paidTotal - refundedTotal;
  if (body.amountCentavos > remainingRefundable) {
    return c.json({ error: "refund_exceeds_net_paid", remainingRefundableCentavos: Math.max(0, remainingRefundable) }, 400);
  }

  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO refunds (id, ticket_id, payment_id, amount_centavos, reason, note, created_by, created_at) VALUES (?, ?, NULL, ?, ?, ?, ?, ?)`,
  )
    .bind(id, ticketId, body.amountCentavos, body.reason, body.note ?? null, auth.id, now)
    .run();

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "ticket.refund",
    entityType: "ticket",
    entityId: ticketId,
    payload: { ...body, refundId: id, ticketNo: ticket.ticket_no },
  });

  const payload = await getTicketDetailPayload(c.env.DB, ticketId, auth.orgId);
  return c.json({ refundId: id, ...payload });
});
