import { createMiddleware } from "hono/factory";
import { canManage, type Role } from "@pos/shared";
import type { AppEnv } from "../ctx.js";

export function requireRole(...allowed: Role[]) {
  return createMiddleware<AppEnv>(async (c, next) => {
    const auth = c.get("auth");
    if (!auth) return c.json({ error: "unauthorized" }, 401);
    if (!allowed.includes(auth.role)) {
      return c.json({ error: "forbidden" }, 403);
    }
    await next();
  });
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
