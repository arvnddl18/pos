import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";

export const priceRuleRoutes = new Hono<AppEnv>();

priceRuleRoutes.get("/", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(`SELECT * FROM price_rules WHERE org_id = ? ORDER BY created_at DESC`).bind(auth.orgId).all();
  return c.json({ priceRules: rows.results ?? [] });
});

const RuleIn = z.object({
  productId: z.string().uuid().optional().nullable(),
  ruleType: z.enum(["happy_hour", "combo", "fixed_override"]),
  startsAt: z.string().optional().nullable(),
  endsAt: z.string().optional().nullable(),
  daysOfWeekJson: z.array(z.number()).optional(),
  valueJson: z.record(z.unknown()),
  active: z.boolean().optional(),
});

priceRuleRoutes.post("/", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = RuleIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO price_rules (id, org_id, product_id, rule_type, starts_at, ends_at, days_of_week_json, value_json, active, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(
      id,
      auth.orgId,
      body.productId ?? null,
      body.ruleType,
      body.startsAt ?? null,
      body.endsAt ?? null,
      body.daysOfWeekJson ? JSON.stringify(body.daysOfWeekJson) : null,
      JSON.stringify(body.valueJson),
      body.active === false ? 0 : 1,
      now,
    )
    .run();
  return c.json({ id });
});

priceRuleRoutes.delete("/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const existing = await c.env.DB.prepare(`SELECT id FROM price_rules WHERE id = ? AND org_id = ?`)
    .bind(id, auth.orgId)
    .first<{ id: string }>();
  if (!existing) return c.json({ error: "not_found" }, 404);
  await c.env.DB.prepare(`DELETE FROM price_rules WHERE id = ? AND org_id = ?`).bind(id, auth.orgId).run();
  return c.json({ ok: true });
});
