import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";

export const kdsRoutes = new Hono<AppEnv>();

kdsRoutes.get("/queue", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    `SELECT tk.id, tk.ticket_no, tk.status, COALESCE(tk.kds_state, 'preparing') AS kds_state, tk.ticket_type, tk.parked_label, tk.created_at, tk.updated_at,
            km.bump_order, km.station
     FROM tickets tk
     LEFT JOIN ticket_kds_meta km ON km.ticket_id = tk.id
     WHERE tk.org_id = ? AND tk.status IN ('open','parked') AND COALESCE(tk.kds_state, 'preparing') != 'served'
       AND EXISTS (SELECT 1 FROM line_items li WHERE li.ticket_id = tk.id AND li.voided = 0)
     ORDER BY tk.created_at ASC`,
  )
    .bind(auth.orgId)
    .all<{ id: string }>();
  const tickets = rows.results ?? [];
  if (tickets.length === 0) return c.json({ tickets: [] });

  const ids = tickets.map((t) => t.id);
  const placeholders = ids.map(() => "?").join(",");
  const lineRows = await c.env.DB.prepare(
    `SELECT li.ticket_id, li.qty, p.name AS product_name
     FROM line_items li
     JOIN products p ON p.id = li.product_id
     WHERE li.ticket_id IN (${placeholders}) AND li.voided = 0
     ORDER BY li.sort_order`,
  )
    .bind(...ids)
    .all<{ ticket_id: string; qty: number; product_name: string }>();

  const linesByTicket = new Map<string, Array<{ qty: number; product_name: string }>>();
  for (const line of lineRows.results ?? []) {
    const ticketId = String(line.ticket_id);
    const bucket = linesByTicket.get(ticketId) ?? [];
    bucket.push({ qty: Number(line.qty), product_name: String(line.product_name) });
    linesByTicket.set(ticketId, bucket);
  }

  return c.json({
    tickets: tickets.map((ticket) => ({
      ...ticket,
      lines: linesByTicket.get(String(ticket.id)) ?? [],
    })),
  });
});

kdsRoutes.get("/tickets/:ticketId", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const ticket = await c.env.DB.prepare(
    `SELECT tk.id, tk.ticket_no, tk.status, COALESCE(tk.kds_state, 'preparing') AS kds_state, tk.ticket_type, tk.parked_label, tk.created_at, tk.updated_at,
            km.bump_order, km.station
     FROM tickets tk
     LEFT JOIN ticket_kds_meta km ON km.ticket_id = tk.id
     WHERE tk.id = ? AND tk.org_id = ?`,
  )
    .bind(ticketId, auth.orgId)
    .first<Record<string, unknown>>();
  if (!ticket) return c.json({ error: "not_found" }, 404);

  const lines = await c.env.DB.prepare(
    `SELECT li.id, li.qty, li.unit_price_centavos, li.discount_centavos, li.created_at, li.modifiers_json,
            p.name AS product_name
     FROM line_items li
     JOIN products p ON p.id = li.product_id
     WHERE li.ticket_id = ? AND li.voided = 0
     ORDER BY li.sort_order`,
  )
    .bind(ticketId)
    .all<Record<string, unknown>>();

  return c.json({ ticket, lines: lines.results ?? [] });
});

const KdsStateIn = z.object({ state: z.enum(["preparing", "ready", "served"]) });

kdsRoutes.patch("/tickets/:ticketId/state", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const ticketId = c.req.param("ticketId");
  const body = KdsStateIn.parse(await c.req.json());
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE tickets
     SET kds_state = ?, updated_at = ?
     WHERE id = ? AND org_id = ? AND status IN ('open','parked')`,
  )
    .bind(body.state, now, ticketId, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  return c.json({ ok: true });
});
