import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { hashPin, randomSaltHex } from "../crypto_pin.js";
import { writeAudit } from "../audit.js";

export const staffAdminRoutes = new Hono<AppEnv>();

const UserIn = z.object({
  staffCode: z.string().min(1).max(32),
  displayName: z.string().min(1).max(100),
  pin: z.string().min(4).max(32),
  role: z.enum(["cashier", "barista", "manager", "owner"]),
});

staffAdminRoutes.post("/users", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = UserIn.parse(await c.req.json());

  const salt = randomSaltHex();
  const pinHash = await hashPin(body.pin, salt);
  const id = crypto.randomUUID();
  const now = new Date().toISOString();

  try {
    await c.env.DB.prepare(
      `INSERT INTO users (id, org_id, staff_code, display_name, pin_hash, salt, role, active, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, 1, ?)`,
    )
      .bind(id, auth.orgId, body.staffCode, body.displayName, pinHash, salt, body.role, now)
      .run();
  } catch {
    return c.json({ error: "duplicate_staff_code" }, 400);
  }

  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "staff.create", entityId: id, payload: { staffCode: body.staffCode, role: body.role } });

  return c.json({ id });
});

staffAdminRoutes.get("/users", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    `SELECT id, staff_code, display_name, role, active, created_at FROM users WHERE org_id = ? ORDER BY staff_code`,
  )
    .bind(auth.orgId)
    .all();
  return c.json({ users: rows.results ?? [] });
});
