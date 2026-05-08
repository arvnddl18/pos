import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { verifyPin } from "../crypto_pin.js";
import { clearSessionCookie, requireAuth, resolveSessionIdFromRequest, setSessionCookie } from "../middleware/session.js";
import { writeAudit } from "../audit.js";
import { buildCsrfToken } from "../lib/session_token.js";

const LoginSchema = z.object({
  staffCode: z.string().min(1),
  pin: z.string().min(4),
  registerId: z.string().uuid().optional(),
});

export const authRoutes = new Hono<AppEnv>();

authRoutes.post("/login", async (c) => {
  let body: z.infer<typeof LoginSchema>;
  try {
    body = LoginSchema.parse(await c.req.json());
  } catch {
    return c.json({ error: "invalid_body" }, 400);
  }

  const org = await c.env.DB.prepare("SELECT id FROM organizations LIMIT 1").first<{ id: string }>();
  if (!org) return c.json({ error: "not_initialized" }, 503);

  const user = await c.env.DB.prepare(
    "SELECT id, org_id, staff_code, pin_hash, salt, role, display_name, active FROM users WHERE org_id = ? AND staff_code = ?",
  )
    .bind(org.id, body.staffCode)
    .first<{
      id: string;
      org_id: string;
      staff_code: string;
      pin_hash: string;
      salt: string;
      role: string;
      display_name: string;
      active: number;
    }>();

  if (!user || user.active !== 1) {
    return c.json({ error: "invalid_credentials" }, 401);
  }

  const ok = await verifyPin(body.pin, user.salt, user.pin_hash);
  if (!ok) return c.json({ error: "invalid_credentials" }, 401);

  let registerId: string | null = body.registerId ?? null;
  if (registerId) {
    const reg = await c.env.DB.prepare(
      "SELECT r.id FROM registers r JOIN locations l ON l.id = r.location_id WHERE r.id = ? AND l.org_id = ?",
    )
      .bind(registerId, user.org_id)
      .first<{ id: string }>();
    if (!reg) registerId = null;
  }

  const sessionId = crypto.randomUUID();
  const expires = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString();
  const now = new Date().toISOString();

  await c.env.DB.prepare(
    "INSERT INTO sessions (id, user_id, register_id, expires_at, created_at) VALUES (?, ?, ?, ?, ?)",
  )
    .bind(sessionId, user.id, registerId, expires, now)
    .run();

  await writeAudit({
    db: c.env.DB,
    orgId: user.org_id,
    userId: user.id,
    registerId: registerId ?? undefined,
    action: "auth.login",
    payload: { staffCode: user.staff_code },
  });

  const secure = c.req.header("X-Forwarded-Proto") === "https" || c.env.ENVIRONMENT === "production";
  await setSessionCookie(c, sessionId, secure);
  const csrfToken = await buildCsrfToken(sessionId, c.env.SESSION_SECRET);

  return c.json({
    user: {
      id: user.id,
      role: user.role,
      displayName: user.display_name,
      staffCode: user.staff_code,
      registerId,
    },
    csrfToken,
  });
});

authRoutes.post("/logout", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const sid = await resolveSessionIdFromRequest(c.req.header("Cookie"), c.env.SESSION_SECRET);
  if (sid) {
    await c.env.DB.prepare("DELETE FROM sessions WHERE id = ?").bind(sid).run();
  }
  await writeAudit({
    db: c.env.DB,
    orgId: auth.orgId,
    userId: auth.id,
    action: "auth.logout",
  });
  const secure = c.req.header("X-Forwarded-Proto") === "https" || c.env.ENVIRONMENT === "production";
  clearSessionCookie(c, secure);
  return c.json({ ok: true });
});

authRoutes.get("/me", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const sid = await resolveSessionIdFromRequest(c.req.header("Cookie"), c.env.SESSION_SECRET);
  const csrfToken = sid ? await buildCsrfToken(sid, c.env.SESSION_SECRET) : "";
  return c.json({
    user: {
      id: auth.id,
      role: auth.role,
      displayName: auth.displayName,
      staffCode: auth.staffCode,
    },
    csrfToken,
  });
});
