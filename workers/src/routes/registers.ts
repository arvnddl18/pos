import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";

export const registerRoutes = new Hono<AppEnv>();

registerRoutes.get("/", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    `SELECT r.id, r.name, r.device_label, l.id as location_id, l.name as location_name
     FROM registers r
     JOIN locations l ON l.id = r.location_id
     WHERE l.org_id = ? AND r.active = 1
     ORDER BY r.name`,
  )
    .bind(auth.orgId)
    .all<{
      id: string;
      name: string;
      device_label: string | null;
      location_id: string;
      location_name: string;
    }>();

  return c.json({ registers: rows.results ?? [] });
});

const CreateReg = z.object({
  locationId: z.string().uuid(),
  name: z.string().min(1).max(100),
  deviceLabel: z.string().max(200).optional(),
});

registerRoutes.post("/", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  let body: z.infer<typeof CreateReg>;
  try {
    body = CreateReg.parse(await c.req.json());
  } catch {
    return c.json({ error: "invalid_body" }, 400);
  }
  const loc = await c.env.DB.prepare("SELECT id FROM locations WHERE id = ? AND org_id = ?")
    .bind(body.locationId, auth.orgId)
    .first<{ id: string }>();
  if (!loc) return c.json({ error: "bad_location" }, 400);

  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO registers (id, location_id, name, device_label, active, created_at) VALUES (?, ?, ?, ?, 1, ?)`,
  )
    .bind(id, body.locationId, body.name, body.deviceLabel ?? null, now)
    .run();

  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "register.create",
    entityType: "register",
    entityId: id,
    payload: body,
  });

  return c.json({ id });
});
