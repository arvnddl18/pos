import { createMiddleware } from "hono/factory";
import type { AppEnv } from "../ctx.js";

/**
 * When ALLOWED_ORIGINS is set (comma-separated exact origins), block mutating requests
 * whose Origin header is present and not in the list. Skips when unset (dev / same-origin tooling).
 */
export function requireAllowedOrigin() {
  return createMiddleware<AppEnv>(async (c, next) => {
    const raw = c.env.ALLOWED_ORIGINS?.trim();
    if (!raw) {
      await next();
      return;
    }
    const allowed = raw
      .split(",")
      .map((s) => s.trim())
      .filter(Boolean);
    const method = c.req.method;
    if (!["POST", "PUT", "PATCH", "DELETE"].includes(method)) {
      await next();
      return;
    }
    const origin = c.req.header("Origin");
    if (!origin || origin === "null") {
      await next();
      return;
    }
    if (!allowed.includes(origin)) {
      return c.json({ error: "forbidden_origin" }, 403);
    }
    await next();
  });
}
