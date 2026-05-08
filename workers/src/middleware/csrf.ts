import { createMiddleware } from "hono/factory";
import type { AppEnv } from "../ctx.js";
import { resolveSessionIdFromRequest } from "./session.js";
import { buildCsrfToken } from "../lib/session_token.js";

function isMutatingMethod(method: string): boolean {
  return method === "POST" || method === "PUT" || method === "PATCH" || method === "DELETE";
}

function isCsrfExemptPath(path: string): boolean {
  return path === "/api/auth/login" || path === "/api/setup" || path === "/api/health";
}

export function requireCsrfToken() {
  return createMiddleware<AppEnv>(async (c, next) => {
    if (!c.req.path.startsWith("/api") || !isMutatingMethod(c.req.method) || isCsrfExemptPath(c.req.path)) {
      await next();
      return;
    }
    if (!c.env.SESSION_SECRET) {
      await next();
      return;
    }
    const sid = await resolveSessionIdFromRequest(c.req.header("Cookie"), c.env.SESSION_SECRET);
    if (!sid) {
      await next();
      return;
    }
    const got = c.req.header("X-CSRF-Token") ?? "";
    const expected = await buildCsrfToken(sid, c.env.SESSION_SECRET);
    if (!got || got !== expected) {
      return c.json({ error: "csrf_failed" }, 403);
    }
    await next();
  });
}
