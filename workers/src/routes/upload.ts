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

  // 1. Try R2 if available and configured
  if (c.env.R2_BUCKET) {
    try {
      const obj = await c.env.R2_BUCKET.get(key);
      if (obj) {
        const ct = obj.httpMetadata?.contentType ?? "application/octet-stream";
        return new Response(obj.body, {
          headers: {
            "Content-Type": ct,
            "Cache-Control": "private, max-age=300",
          },
        });
      }
    } catch (e) {
      console.warn("R2 asset retrieval failed, falling back to D1:", e);
    }
  }

  // 2. Resilient D1 database fallback
  try {
    const row = await c.env.DB.prepare(
      "SELECT content_type, data FROM uploaded_assets WHERE key = ?"
    )
      .bind(key)
      .first<{ content_type: string; data: ArrayBuffer }>();

    if (!row) {
      return c.json({ error: "not_found" }, 404);
    }

    return new Response(new Uint8Array(row.data as any), {
      headers: {
        "Content-Type": row.content_type,
        "Cache-Control": "private, max-age=300",
      },
    });
  } catch (err) {
    console.error("D1 asset retrieval failed:", err);
    return c.json({ error: "read_failed" }, 500);
  }
});

uploadRoutes.post("/menu-image", requireAuth(), requireManager(), async (c) => {
  const ct = c.req.header("Content-Type") ?? "";
  if (!ct.startsWith("image/")) {
    return c.json({ error: "expected_image_content_type" }, 400);
  }
  const ext = ct.includes("png") ? "png" : ct.includes("jpeg") || ct.includes("jpg") ? "jpg" : "bin";
  const key = `menu/${crypto.randomUUID()}.${ext}`;
  const buf = await c.req.arrayBuffer();

  // 1. Try R2 upload if configured
  if (c.env.R2_BUCKET) {
    try {
      await c.env.R2_BUCKET.put(key, buf, { httpMetadata: { contentType: ct } });
      return c.json({ key });
    } catch (e) {
      console.warn("R2 upload failed, falling back to D1:", e);
    }
  }

  // 2. Resilient D1 database fallback upload
  try {
    const now = new Date().toISOString();
    await c.env.DB.prepare(
      "INSERT INTO uploaded_assets (key, content_type, data, created_at) VALUES (?, ?, ?, ?)"
    )
      .bind(key, ct, buf, now)
      .run();
    return c.json({ key });
  } catch (err) {
    console.error("D1 fallback upload failed:", err);
    return c.json({ error: "upload_failed" }, 500);
  }
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

  // 1. Try R2 upload if configured
  if (c.env.R2_BUCKET) {
    try {
      await c.env.R2_BUCKET.put(key, buf, { httpMetadata: { contentType: ct } });
      return c.json({ key });
    } catch (e) {
      console.warn("R2 upload failed, falling back to D1:", e);
    }
  }

  // 2. Resilient D1 database fallback upload
  try {
    const now = new Date().toISOString();
    await c.env.DB.prepare(
      "INSERT INTO uploaded_assets (key, content_type, data, created_at) VALUES (?, ?, ?, ?)"
    )
      .bind(key, ct, buf, now)
      .run();
    return c.json({ key });
  } catch (err) {
    console.error("D1 fallback upload failed:", err);
    return c.json({ error: "upload_failed" }, 500);
  }
});
