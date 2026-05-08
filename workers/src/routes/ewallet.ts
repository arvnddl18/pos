import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";

export const ewalletRoutes = new Hono<AppEnv>();

ewalletRoutes.get("/settings", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const row = await c.env.DB.prepare(`SELECT * FROM org_ewallet_settings WHERE org_id = ?`).bind(auth.orgId).first();
  return c.json({ settings: row ?? null });
});

const SettingsIn = z.object({
  displayName: z.string().nullable().optional(),
  gcashNumber: z.string().nullable().optional(),
  qrR2Key: z.string().nullable().optional(),
  instructions: z.string().nullable().optional(),
  managerConfirmAboveCentavos: z.number().int().nullable().optional(),
  referenceRequired: z.boolean().optional(),
});

ewalletRoutes.put("/settings", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = SettingsIn.parse(await c.req.json());
  const now = new Date().toISOString();

  const existing = await c.env.DB.prepare(`SELECT org_id FROM org_ewallet_settings WHERE org_id = ?`).bind(auth.orgId).first();
  if (!existing) {
    await c.env.DB.prepare(
      `INSERT INTO org_ewallet_settings (org_id, display_name, gcash_number, qr_r2_key, instructions, manager_confirm_above_centavos, reference_required, updated_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
    )
      .bind(
        auth.orgId,
        body.displayName ?? null,
        body.gcashNumber ?? null,
        body.qrR2Key ?? null,
        body.instructions ?? null,
        body.managerConfirmAboveCentavos ?? null,
        body.referenceRequired === undefined ? 0 : body.referenceRequired ? 1 : 0,
        now,
      )
      .run();
  } else {
    const sets: string[] = [];
    const vals: unknown[] = [];
    if (body.displayName !== undefined) {
      sets.push("display_name = ?");
      vals.push(body.displayName);
    }
    if (body.gcashNumber !== undefined) {
      sets.push("gcash_number = ?");
      vals.push(body.gcashNumber);
    }
    if (body.qrR2Key !== undefined) {
      sets.push("qr_r2_key = ?");
      vals.push(body.qrR2Key);
    }
    if (body.instructions !== undefined) {
      sets.push("instructions = ?");
      vals.push(body.instructions);
    }
    if (body.managerConfirmAboveCentavos !== undefined) {
      sets.push("manager_confirm_above_centavos = ?");
      vals.push(body.managerConfirmAboveCentavos);
    }
    if (body.referenceRequired !== undefined) {
      sets.push("reference_required = ?");
      vals.push(body.referenceRequired ? 1 : 0);
    }
    sets.push("updated_at = ?");
    vals.push(now);
    vals.push(auth.orgId);
    await c.env.DB.prepare(`UPDATE org_ewallet_settings SET ${sets.join(", ")} WHERE org_id = ?`).bind(...vals).run();
  }

  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "ewallet.settings_update", payload: body });

  return c.json({ ok: true });
});
