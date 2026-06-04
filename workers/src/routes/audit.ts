import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import type { AppEnv } from "../ctx.js";

function dateClause(dateFrom: string | undefined, dateTo: string | undefined, dateMonth: string | undefined, alias = "a"): string {
  if (dateFrom && dateTo) {
    return `AND date(${alias}.created_at) >= '${dateFrom}' AND date(${alias}.created_at) <= '${dateTo}'`;
  }
  if (dateMonth) {
    return `AND strftime('%Y-%m', ${alias}.created_at) = '${dateMonth}'`;
  }
  return "";
}

export const auditRoutes = new Hono<AppEnv>();

auditRoutes.get("/", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const limit = Math.min(500, Number(c.req.query("limit") ?? "100"));
  
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const dc = dateClause(dateFrom, dateTo, dateMonth, "a");
  
  const rows = await c.env.DB.prepare(
    `SELECT a.id, a.user_id, u.display_name as user_name, a.register_id, a.action, a.entity_type, a.entity_id, a.payload_json, a.created_at,
            t.ticket_no
     FROM audit_events a
     LEFT JOIN users u ON a.user_id = u.id
     LEFT JOIN tickets t ON a.entity_type = 'ticket' AND a.entity_id = t.id AND t.org_id = a.org_id
     WHERE a.org_id = ? ${dc}
     ORDER BY a.created_at DESC 
     LIMIT ?`
  )
    .bind(auth.orgId, limit)
    .all();
    
  return c.json({ events: rows.results ?? [] });
});
