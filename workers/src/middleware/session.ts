import type { Context } from "hono";
import { createMiddleware } from "hono/factory";
import type { AuthUser, AppEnv } from "../ctx.js";
import { formatSessionCookieValue, resolveSessionIdFromCookiePayload } from "../lib/session_token.js";

const COOKIE = "pos_session";
const SESSION_DAYS = 7;

export function extractRawSessionCookie(cookieHeader: string | undefined): string | undefined {
  if (!cookieHeader) return undefined;
  const parts = cookieHeader.split(";").map((p) => p.trim());
  for (const p of parts) {
    if (p.startsWith(`${COOKIE}=`)) {
      return decodeURIComponent(p.slice(COOKIE.length + 1));
    }
  }
  return undefined;
}

export async function resolveSessionIdFromRequest(
  cookieHeader: string | undefined,
  sessionSecret: string | undefined,
): Promise<string | undefined> {
  const raw = extractRawSessionCookie(cookieHeader);
  if (!raw) return undefined;
  return resolveSessionIdFromCookiePayload(raw, sessionSecret);
}

export function sessionMiddleware() {
  return createMiddleware<AppEnv>(async (c, next) => {
    const sid = await resolveSessionIdFromRequest(c.req.header("Cookie"), c.env.SESSION_SECRET);
    if (!sid) {
      await next();
      return;
    }
    const row = await c.env.DB.prepare(
      `SELECT s.id as sid, s.user_id, s.expires_at, u.org_id, u.role, u.staff_code, u.display_name
       FROM sessions s JOIN users u ON u.id = s.user_id WHERE s.id = ? AND u.active = 1`,
    )
      .bind(sid)
      .first<{
        sid: string;
        user_id: string;
        expires_at: string;
        org_id: string;
        role: AuthUser["role"];
        staff_code: string;
        display_name: string;
      }>();

    if (!row) {
      await next();
      return;
    }
    if (new Date(row.expires_at) < new Date()) {
      await c.env.DB.prepare("DELETE FROM sessions WHERE id = ?").bind(sid).run();
      await next();
      return;
    }
    c.set("auth", {
      id: row.user_id,
      orgId: row.org_id,
      role: row.role,
      staffCode: row.staff_code,
      displayName: row.display_name,
    });
    await next();
  });
}

export function requireAuth() {
  return createMiddleware<AppEnv>(async (c, next) => {
    if (!c.get("auth")) {
      return c.json({ error: "unauthorized" }, 401);
    }
    await next();
  });
}

export async function setSessionCookie(c: Context<AppEnv>, sessionId: string, secure: boolean) {
  const maxAge = SESSION_DAYS * 24 * 60 * 60;
  const value = await formatSessionCookieValue(sessionId, c.env.SESSION_SECRET);
  const parts = [`${COOKIE}=${encodeURIComponent(value)}`, `Path=/`, `HttpOnly`, `SameSite=Lax`, `Max-Age=${maxAge}`];
  if (secure) parts.push("Secure");
  c.header("Set-Cookie", parts.join("; "));
}

export function clearSessionCookie(c: Context, secure: boolean) {
  const parts = [`${COOKIE}=`, `Path=/`, `HttpOnly`, `SameSite=Lax`, `Max-Age=0`];
  if (secure) parts.push("Secure");
  c.header("Set-Cookie", parts.join("; "));
}

export { COOKIE as SESSION_COOKIE_NAME };
