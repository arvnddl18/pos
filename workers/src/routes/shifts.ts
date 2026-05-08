import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";

export const shiftRoutes = new Hono<AppEnv>();

shiftRoutes.post("/clock-in", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({ registerId: z.string().uuid().optional() });
  let body: z.infer<typeof Body> = {};
  try {
    const raw = await c.req.json();
    const parsed = Body.safeParse(raw);
    if (parsed.success) body = parsed.data;
  } catch {
    body = {};
  }
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(`INSERT INTO shifts (id, user_id, register_id, clock_in, created_at) VALUES (?, ?, ?, ?, ?)`)
    .bind(id, auth.id, body.registerId ?? null, now, now)
    .run();
  return c.json({ shiftId: id });
});

shiftRoutes.post("/clock-out", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const open = await c.env.DB.prepare(
    `SELECT id FROM shifts WHERE user_id = ? AND clock_out IS NULL ORDER BY clock_in DESC LIMIT 1`,
  )
    .bind(auth.id)
    .first<{ id: string }>();
  if (!open) return c.json({ error: "no_open_shift" }, 400);
  const now = new Date().toISOString();
  await c.env.DB.prepare(`UPDATE shifts SET clock_out = ? WHERE id = ?`).bind(now, open.id).run();
  return c.json({ ok: true });
});

shiftRoutes.post("/drawer/open", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({
    registerId: z.string().uuid(),
    openingFloatCentavos: z.number().int().nonnegative(),
  });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO cash_drawer_sessions (id, register_id, user_id, opened_at, opening_float_centavos, created_at) VALUES (?, ?, ?, ?, ?, ?)`,
  )
    .bind(id, body.registerId, auth.id, now, body.openingFloatCentavos, now)
    .run();
  await c.env.DB.prepare(`INSERT INTO drawer_open_events (id, drawer_session_id, user_id, reason, created_at) VALUES (?, ?, ?, 'open', ?)`)
    .bind(crypto.randomUUID(), id, auth.id, now)
    .run();
  return c.json({ sessionId: id });
});

shiftRoutes.post("/drawer/close", requireAuth(), requireManager(), async (c) => {
  const Body = z.object({
    sessionId: z.string().uuid(),
    closingCountCentavos: z.number().int().nonnegative(),
    expectedCentavos: z.number().int().optional(),
    notes: z.string().optional(),
  });
  const body = Body.parse(await c.req.json());
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `UPDATE cash_drawer_sessions SET closed_at = ?, closing_count_centavos = ?, expected_centavos = ?, notes = ? WHERE id = ?`,
  )
    .bind(now, body.closingCountCentavos, body.expectedCentavos ?? null, body.notes ?? null, body.sessionId)
    .run();
  return c.json({ ok: true });
});
