import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import type { AppEnv } from "../ctx.js";

export const auditRoutes = new Hono<AppEnv>();

auditRoutes.get("/", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const limit = Math.min(500, Number(c.req.query("limit") ?? "100"));
  
  const rows = await c.env.DB.prepare(
    `SELECT a.id, a.user_id, u.display_name as user_name, a.register_id, a.action, a.entity_type, a.entity_id, a.payload_json, a.created_at
     FROM audit_events a
     LEFT JOIN users u ON a.user_id = u.id
     WHERE a.org_id = ? 
     ORDER BY a.created_at DESC 
     LIMIT ?`
  )
    .bind(auth.orgId, limit)
    .all();
    
  return c.json({ events: rows.results ?? [] });
});
