import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import type { AppEnv } from "../ctx.js";
export const customerRoutes = new Hono<AppEnv>();

customerRoutes.get("/", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  
  const results = await c.env.DB.prepare(
    `SELECT * FROM customers WHERE org_id = ? ORDER BY name ASC`
  )
    .bind(auth.orgId)
    .all();

  return c.json({ customers: results.results ?? [] });
});

customerRoutes.post("/", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const body = await c.req.json<{ name?: string; phone?: string }>();
  
  const id = crypto.randomUUID();
  const now = new Date().toISOString();

  await c.env.DB.prepare(
    `INSERT INTO customers (id, org_id, name, phone, created_at, last_visit_at)
     VALUES (?, ?, ?, ?, ?, ?)`
  )
    .bind(id, auth.orgId, body.name ?? null, body.phone ?? null, now, now)
    .run();

  return c.json({ id, name: body.name, phone: body.phone }, 201);
});
