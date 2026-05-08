import { Hono } from "hono";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";

export const uploadRoutes = new Hono<AppEnv>();

function r2KeyAllowedForOrg(key: string, orgId: string): boolean {
  if (key.includes("..") || key.includes("//")) return false;
  if (key.startsWith("menu/")) {
    return /^menu\/[A-Za-z0-9._-]+$/.test(key);
  }
  const prefix = `ewallet/${orgId}/`;
  if (!key.startsWith(prefix)) return false;
  const rest = key.slice(prefix.length);
  return rest.length > 0 && /^[A-Za-z0-9._-]+$/.test(rest);
}

uploadRoutes.get("/asset", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const key = c.req.query("key");
  if (!key || !r2KeyAllowedForOrg(key, auth.orgId)) {
    return c.json({ error: "bad_key" }, 400);
  }
  const obj = await c.env.R2_BUCKET.get(key);
  if (!obj) return c.json({ error: "not_found" }, 404);
  const ct = obj.httpMetadata?.contentType ?? "application/octet-stream";
  return new Response(obj.body, {
    headers: {
      "Content-Type": ct,
      "Cache-Control": "private, max-age=300",
    },
  });
});

uploadRoutes.post("/menu-image", requireAuth(), requireManager(), async (c) => {
  const ct = c.req.header("Content-Type") ?? "";
  if (!ct.startsWith("image/")) {
    return c.json({ error: "expected_image_content_type" }, 400);
  }
  const ext = ct.includes("png") ? "png" : ct.includes("jpeg") || ct.includes("jpg") ? "jpg" : "bin";
  const key = `menu/${crypto.randomUUID()}.${ext}`;
  const buf = await c.req.arrayBuffer();
  await c.env.R2_BUCKET.put(key, buf, { httpMetadata: { contentType: ct } });
  return c.json({ key });
});

uploadRoutes.post("/ewallet-qr", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const ct = c.req.header("Content-Type") ?? "";
  if (!ct.startsWith("image/")) {
    return c.json({ error: "expected_image_content_type" }, 400);
  }
  const ext = ct.includes("png") ? "png" : ct.includes("jpeg") || ct.includes("jpg") ? "jpg" : "bin";
  const key = `ewallet/${auth.orgId}/${crypto.randomUUID()}.${ext}`;
  const buf = await c.req.arrayBuffer();
  await c.env.R2_BUCKET.put(key, buf, { httpMetadata: { contentType: ct } });
  return c.json({ key });
});
