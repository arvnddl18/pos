import { createMiddleware } from "hono/factory";
import type { AppEnv } from "../ctx.js";

function canManage(role: string): boolean {
  return role === "manager" || role === "owner";
}

export function requireManager() {
  return createMiddleware<AppEnv>(async (c, next) => {
    const auth = c.get("auth");
    if (!auth) return c.json({ error: "unauthorized" }, 401);
    if (!canManage(auth.role)) {
      return c.json({ error: "forbidden" }, 403);
    }
    await next();
  });
}
