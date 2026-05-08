import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";

export const inventoryRoutes = new Hono<AppEnv>();

inventoryRoutes.get("/ingredients", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(`SELECT * FROM ingredients WHERE org_id = ? ORDER BY name`).bind(auth.orgId).all();
  return c.json({ ingredients: rows.results ?? [] });
});

inventoryRoutes.post("/ingredients", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({ name: z.string().min(1), unit: z.string().min(1) });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(`INSERT INTO ingredients (id, org_id, name, unit, created_at) VALUES (?, ?, ?, ?, ?)`)
    .bind(id, auth.orgId, body.name, body.unit, now)
    .run();
  return c.json({ id });
});

inventoryRoutes.post("/recipes", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({
    productId: z.string().uuid(),
    ingredientId: z.string().uuid(),
    qtyPerUnit: z.number().positive(),
  });
  const body = Body.parse(await c.req.json());
  const p = await c.env.DB.prepare(`SELECT id FROM products WHERE id = ? AND org_id = ?`).bind(body.productId, auth.orgId).first();
  const ing = await c.env.DB.prepare(`SELECT id FROM ingredients WHERE id = ? AND org_id = ?`).bind(body.ingredientId, auth.orgId).first();
  if (!p || !ing) return c.json({ error: "not_found" }, 404);
  const id = crypto.randomUUID();
  await c.env.DB.prepare(`INSERT INTO recipes (id, product_id, ingredient_id, qty_per_unit) VALUES (?, ?, ?, ?)`)
    .bind(id, body.productId, body.ingredientId, body.qtyPerUnit)
    .run();
  return c.json({ id });
});

inventoryRoutes.post("/waste", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({
    ingredientId: z.string().uuid().optional(),
    productId: z.string().uuid().optional(),
    qty: z.number().positive(),
    reason: z.string().min(1),
  });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO waste_events (id, org_id, ingredient_id, product_id, qty, reason, created_by, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(id, auth.orgId, body.ingredientId ?? null, body.productId ?? null, body.qty, body.reason, auth.id, now)
    .run();
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "inventory.waste", entityId: id, payload: body });
  return c.json({ id });
});

inventoryRoutes.get("/stock", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    `SELECT rs.product_id, rs.on_hand, rs.reorder_level, rs.updated_at, p.name as product_name
     FROM retail_skus rs
     INNER JOIN products p ON p.id = rs.product_id
     WHERE p.org_id = ?`,
  )
    .bind(auth.orgId)
    .all();
  return c.json({ stock: rows.results ?? [] });
});

inventoryRoutes.patch("/stock/:productId", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const productId = c.req.param("productId");
  const Body = z.object({ onHand: z.number(), reorderLevel: z.number().optional() });
  const body = Body.parse(await c.req.json());
  const p = await c.env.DB.prepare(`SELECT id FROM products WHERE id = ? AND org_id = ?`).bind(productId, auth.orgId).first();
  if (!p) return c.json({ error: "not_found" }, 404);
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO retail_skus (product_id, on_hand, reorder_level, updated_at) VALUES (?, ?, ?, ?)
     ON CONFLICT(product_id) DO UPDATE SET
       on_hand = excluded.on_hand,
       reorder_level = excluded.reorder_level,
       updated_at = excluded.updated_at`,
  )
    .bind(productId, body.onHand, body.reorderLevel ?? 0, now)
    .run();
  return c.json({ ok: true });
});

inventoryRoutes.post("/suppliers", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({ name: z.string().min(1), contactJson: z.record(z.unknown()).optional() });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(`INSERT INTO suppliers (id, org_id, name, contact_json, created_at) VALUES (?, ?, ?, ?, ?)`)
    .bind(id, auth.orgId, body.name, body.contactJson ? JSON.stringify(body.contactJson) : null, now)
    .run();
  return c.json({ id });
});

inventoryRoutes.post("/purchase-orders", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({
    supplierId: z.string().uuid().optional(),
    linesJson: z.array(z.record(z.unknown())),
    status: z.string().default("draft"),
  });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(`INSERT INTO purchase_orders (id, org_id, supplier_id, status, lines_json, created_at) VALUES (?, ?, ?, ?, ?, ?)`)
    .bind(id, auth.orgId, body.supplierId ?? null, body.status, JSON.stringify(body.linesJson), now)
    .run();
  return c.json({ id });
});
