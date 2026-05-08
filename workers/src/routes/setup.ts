import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { hashPin, randomSaltHex } from "../crypto_pin.js";

const SetupSchema = z.object({
  organizationName: z.string().min(1).max(200),
  locationName: z.string().min(1).max(200),
  registerName: z.string().default("Register 1"),
  ownerStaffCode: z.string().min(2).max(32),
  ownerPin: z.string().min(4).max(32),
  ownerDisplayName: z.string().min(1).max(100),
});

export const setupRoutes = new Hono<AppEnv>();

setupRoutes.post("/setup", async (c) => {
  const count = await c.env.DB.prepare("SELECT COUNT(*) as n FROM organizations").first<{ n: number }>();
  if (count && count.n > 0) {
    return c.json({ error: "already_initialized" }, 400);
  }
  let body: z.infer<typeof SetupSchema>;
  try {
    body = SetupSchema.parse(await c.req.json());
  } catch {
    return c.json({ error: "invalid_body" }, 400);
  }

  const orgId = crypto.randomUUID();
  const locId = crypto.randomUUID();
  const regId = crypto.randomUUID();
  const userId = crypto.randomUUID();
  const salt = randomSaltHex();
  const pinHash = await hashPin(body.ownerPin, salt);
  const now = new Date().toISOString();

  await c.env.DB.batch([
    c.env.DB.prepare("INSERT INTO organizations (id, name, created_at) VALUES (?, ?, ?)").bind(orgId, body.organizationName, now),
    c.env.DB.prepare("INSERT INTO locations (id, org_id, name, created_at) VALUES (?, ?, ?, ?)").bind(locId, orgId, body.locationName, now),
    c.env.DB.prepare("INSERT INTO registers (id, location_id, name, device_label, active, created_at) VALUES (?, ?, ?, ?, 1, ?)").bind(
      regId,
      locId,
      body.registerName,
      null,
      now,
    ),
    c.env.DB
      .prepare(
        `INSERT INTO users (id, org_id, staff_code, display_name, pin_hash, salt, role, active, created_at)
         VALUES (?, ?, ?, ?, ?, ?, 'owner', 1, ?)`,
      )
      .bind(userId, orgId, body.ownerStaffCode, body.ownerDisplayName, pinHash, salt, now),
    c.env.DB
      .prepare(
        `INSERT INTO tax_profiles (id, org_id, name, rate_bps, created_at) VALUES (?, ?, ?, 0, ?)`,
      )
      .bind(crypto.randomUUID(), orgId, "Zero rated", now),
  ]);

  return c.json({
    ok: true,
    organizationId: orgId,
    locationId: locId,
    defaultRegisterId: regId,
    ownerUserId: userId,
  });
});

setupRoutes.get("/health", (c) => c.json({ ok: true, service: "pos-api" }));
