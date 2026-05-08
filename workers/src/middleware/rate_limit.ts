import { createMiddleware } from "hono/factory";
import type { AppEnv } from "../ctx.js";

/** Fixed window per client IP persisted in D1 (shared across isolates). */
const WINDOW_MS = 60_000;
const MAX_REQUESTS_PER_WINDOW = 300;

function clientKey(req: Request): string {
  return req.headers.get("cf-connecting-ip") ?? req.headers.get("x-forwarded-for")?.split(",")[0]?.trim() ?? "unknown";
}

export function apiRateLimit() {
  return createMiddleware<AppEnv>(async (c, next) => {
    if (!c.req.path.startsWith("/api")) {
      await next();
      return;
    }
    const ipKey = clientKey(c.req.raw);
    const now = Date.now();
    const windowStartMs = Math.floor(now / WINDOW_MS) * WINDOW_MS;
    const windowStartIso = new Date(windowStartMs).toISOString();
    const key = `${ipKey}:${windowStartMs}`;

    const result = await c.env.DB.prepare(
      `INSERT INTO rate_limit_hits (key, window_start, hit_count, updated_at)
       VALUES (?, ?, 1, ?)
       ON CONFLICT(key) DO UPDATE SET hit_count = hit_count + 1, updated_at = excluded.updated_at
       RETURNING hit_count`,
    )
      .bind(key, windowStartIso, new Date(now).toISOString())
      .first<{ hit_count: number }>();

    const count = Number(result?.hit_count ?? 0);
    if (count > MAX_REQUESTS_PER_WINDOW) {
      return c.json({ error: "rate_limited", retryAfterMs: windowStartMs + WINDOW_MS - now }, 429);
    }

    if (Math.random() < 0.01) {
      const cutoff = new Date(now - 24 * 60 * 60 * 1000).toISOString();
      void c.env.DB.prepare(`DELETE FROM rate_limit_hits WHERE updated_at < ?`).bind(cutoff).run();
    }
    await next();
  });
}
