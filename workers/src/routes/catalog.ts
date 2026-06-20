import { Hono } from "hono";
import { z } from "zod";
import type { AppEnv } from "../ctx.js";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import { writeAudit } from "../audit.js";
import { applyPriceRulesToProducts, loadActivePriceRules, resolveEffectivePrice } from "../lib/price_rules.js";

export const catalogRoutes = new Hono<AppEnv>();

catalogRoutes.get("/categories", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    "SELECT id, name, sort_order, product_kind FROM categories WHERE org_id = ? AND is_archived = 0 ORDER BY sort_order, name",
  )
    .bind(auth.orgId)
    .all<{ id: string; name: string; sort_order: number; product_kind: string }>();
  return c.json({ categories: rows.results ?? [] });
});

const CategoryIn = z.object({
  name: z.string().min(1),
  sortOrder: z.number().int().optional(),
  productKind: z.enum(["cup", "item"]).optional(),
});

catalogRoutes.post("/categories", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = CategoryIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    "INSERT INTO categories (id, org_id, name, sort_order, product_kind, created_at) VALUES (?, ?, ?, ?, ?, ?)",
  )
    .bind(id, auth.orgId, body.name, body.sortOrder ?? 0, body.productKind ?? "cup", now)
    .run();
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "category.create", entityId: id, payload: body });
  return c.json({ id });
});

catalogRoutes.get("/products", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const priceRules = await loadActivePriceRules(c.env.DB, auth.orgId);
  const q = c.req.query("q")?.trim();
  if (q) {
    const like = `%${q}%`;
    const rows = await c.env.DB.prepare(
      `SELECT p.id, p.name, p.sku, p.barcode, p.price_centavos, p.category_id, p.tax_profile_id, p.is_active, p.out_of_stock, p.is_retail, p.image_r2_key, p.names_i18n_json
       FROM products p WHERE p.org_id = ? AND p.is_archived = 0 AND (p.name LIKE ? OR IFNULL(p.sku,'') LIKE ? OR IFNULL(p.barcode,'') LIKE ?) ORDER BY p.name LIMIT 200`,
    )
      .bind(auth.orgId, like, like, like)
      .all<{ id: string; price_centavos: number } & Record<string, unknown>>();
    const products = applyPriceRulesToProducts(rows.results ?? [], priceRules);
    return c.json({ products });
  }
  const rows = await c.env.DB.prepare(
    `SELECT p.id, p.name, p.sku, p.barcode, p.price_centavos, p.category_id, p.tax_profile_id, p.is_active, p.out_of_stock, p.is_retail, p.image_r2_key, p.names_i18n_json
     FROM products p WHERE p.org_id = ? AND p.is_archived = 0 ORDER BY p.name LIMIT 500`,
  )
    .bind(auth.orgId)
    .all<{ id: string; price_centavos: number } & Record<string, unknown>>();
  const products = applyPriceRulesToProducts(rows.results ?? [], priceRules);
  return c.json({ products });
});

catalogRoutes.get("/products/:productId/pos-detail", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const productId = c.req.param("productId");
  const p = await c.env.DB.prepare(
    `SELECT id, name, price_centavos, out_of_stock, is_active, sku, barcode, names_i18n_json
     FROM products WHERE id = ? AND org_id = ? AND is_archived = 0`,
  )
    .bind(productId, auth.orgId)
    .first<Record<string, unknown>>();
  if (!p) return c.json({ error: "not_found" }, 404);
  const priceRules = await loadActivePriceRules(c.env.DB, auth.orgId);
  const basePrice = Number(p.price_centavos);
  const { effectivePriceCentavos } = resolveEffectivePrice(basePrice, productId, priceRules);
  const product = {
    ...p,
    regular_price_centavos: basePrice,
    effective_price_centavos: effectivePriceCentavos,
  };
  const groups = await c.env.DB.prepare(
    `SELECT mg.id, mg.name, mg.required, mg.min_select, mg.max_select, mg.exclusive, pmg.sort_order as link_sort
     FROM product_modifier_groups pmg
     JOIN modifier_groups mg ON mg.id = pmg.modifier_group_id
     WHERE pmg.product_id = ? AND mg.org_id = ? AND mg.is_archived = 0
     ORDER BY pmg.sort_order, mg.name`,
  )
    .bind(productId, auth.orgId)
    .all<Record<string, unknown>>();

  const groupIds = (groups.results ?? []).map((g) => String(g.id));
  let modifiersByGroup: Record<string, Record<string, unknown>[]> = {};
  if (groupIds.length) {
    const ph = groupIds.map(() => "?").join(",");
    const mods = await c.env.DB.prepare(
      `SELECT id, modifier_group_id, name, price_adjust_centavos, sort_order
       FROM modifiers WHERE modifier_group_id IN (${ph}) AND is_archived = 0 ORDER BY sort_order, name`,
    )
      .bind(...groupIds)
      .all<Record<string, unknown>>();
    modifiersByGroup = {};
    for (const m of mods.results ?? []) {
      const gid = String(m.modifier_group_id);
      if (!modifiersByGroup[gid]) modifiersByGroup[gid] = [];
      modifiersByGroup[gid].push(m);
    }
  }

  return c.json({ product, modifierGroups: groups.results ?? [], modifiersByGroup });
});

catalogRoutes.patch("/categories/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const Body = z.object({
    name: z.string().min(1).optional(),
    sortOrder: z.number().int().optional(),
    productKind: z.enum(["cup", "item"]).optional(),
  });
  const body = Body.parse(await c.req.json());
  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.name !== undefined) {
    sets.push("name = ?");
    vals.push(body.name);
  }
  if (body.sortOrder !== undefined) {
    sets.push("sort_order = ?");
    vals.push(body.sortOrder);
  }
  if (body.productKind !== undefined) {
    sets.push("product_kind = ?");
    vals.push(body.productKind);
  }
  if (!sets.length) return c.json({ error: "no_fields" }, 400);
  vals.push(id, auth.orgId);
  await c.env.DB.prepare(`UPDATE categories SET ${sets.join(", ")} WHERE id = ? AND org_id = ?`).bind(...vals).run();
  return c.json({ ok: true });
});

catalogRoutes.delete("/categories/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(`UPDATE categories SET is_archived = 1, archived_at = ? WHERE id = ? AND org_id = ?`).bind(now, id, auth.orgId).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "category.archive", entityId: id, payload: {} });
  return c.json({ ok: true });
});

const ProductIn = z.object({
  name: z.string().min(1),
  description: z.string().optional(),
  categoryId: z.string().uuid().optional().nullable(),
  priceCentavos: z.number().int().nonnegative(),
  taxProfileId: z.string().uuid().optional().nullable(),
  imageR2Key: z.string().max(500).optional().nullable(),
  sku: z.string().optional().nullable(),
  barcode: z.string().optional().nullable(),
  isRetail: z.boolean().optional(),
  namesI18n: z.record(z.string()).optional(),
});

catalogRoutes.post("/products", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = ProductIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  const i18n = body.namesI18n ? JSON.stringify(body.namesI18n) : null;
  await c.env.DB.prepare(
    `INSERT INTO products (id, org_id, category_id, name, description, sku, barcode, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, image_r2_key, names_i18n_json, created_at, updated_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 1, 0, ?, ?, ?, ?, ?)`,
  )
    .bind(
      id,
      auth.orgId,
      body.categoryId ?? null,
      body.name,
      body.description ?? null,
      body.sku ?? null,
      body.barcode ?? null,
      body.priceCentavos,
      body.taxProfileId ?? null,
      body.isRetail ? 1 : 0,
      body.imageR2Key ?? null,
      i18n,
      now,
      now,
    )
    .run();
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "product.create", entityId: id, payload: body });
  return c.json({ id });
});

catalogRoutes.patch("/products/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const Patch = ProductIn.partial().extend({
    isActive: z.boolean().optional(),
    outOfStock: z.boolean().optional(),
  });
  const body = Patch.parse(await c.req.json());
  const now = new Date().toISOString();
  const exists = await c.env.DB.prepare("SELECT id FROM products WHERE id = ? AND org_id = ?").bind(id, auth.orgId).first<{ id: string }>();
  if (!exists) return c.json({ error: "not_found" }, 404);

  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.name !== undefined) {
    sets.push("name = ?");
    vals.push(body.name);
  }
  if (body.description !== undefined) {
    sets.push("description = ?");
    vals.push(body.description);
  }
  if (body.categoryId !== undefined) {
    sets.push("category_id = ?");
    vals.push(body.categoryId);
  }
  if (body.priceCentavos !== undefined) {
    sets.push("price_centavos = ?");
    vals.push(body.priceCentavos);
  }
  if (body.taxProfileId !== undefined) {
    sets.push("tax_profile_id = ?");
    vals.push(body.taxProfileId);
  }
  if (body.imageR2Key !== undefined) {
    sets.push("image_r2_key = ?");
    vals.push(body.imageR2Key);
  }
  if (body.sku !== undefined) sets.push("sku = ?"), vals.push(body.sku);
  if (body.barcode !== undefined) sets.push("barcode = ?"), vals.push(body.barcode);
  if (body.isRetail !== undefined) sets.push("is_retail = ?"), vals.push(body.isRetail ? 1 : 0);
  if (body.namesI18n !== undefined) sets.push("names_i18n_json = ?"), vals.push(JSON.stringify(body.namesI18n));
  if (body.isActive !== undefined) sets.push("is_active = ?"), vals.push(body.isActive ? 1 : 0);
  if (body.outOfStock !== undefined) sets.push("out_of_stock = ?"), vals.push(body.outOfStock ? 1 : 0);
  sets.push("updated_at = ?");
  vals.push(now);
  vals.push(id, auth.orgId);

  await c.env.DB.prepare(`UPDATE products SET ${sets.join(", ")} WHERE id = ? AND org_id = ?`).bind(...vals).run();
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "product.update", entityId: id, payload: body });
  return c.json({ ok: true });
});

catalogRoutes.delete("/products/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE products SET is_archived = 1, is_active = 0, archived_at = ?, updated_at = ? WHERE id = ? AND org_id = ?`,
  )
    .bind(now, now, id, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "product.archive", entityId: id, payload: {} });
  return c.json({ ok: true });
});

catalogRoutes.get("/modifier-groups", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    "SELECT id, name, required, min_select, max_select, exclusive, sort_order FROM modifier_groups WHERE org_id = ? AND is_archived = 0 ORDER BY sort_order",
  )
    .bind(auth.orgId)
    .all<Record<string, unknown>>();
  return c.json({ modifierGroups: rows.results ?? [] });
});

const MGIn = z.object({
  name: z.string().min(1),
  required: z.boolean().optional(),
  minSelect: z.number().int().optional(),
  maxSelect: z.number().int().optional(),
  exclusive: z.boolean().optional(),
  sortOrder: z.number().int().optional(),
});

catalogRoutes.post("/modifier-groups", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = MGIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO modifier_groups (id, org_id, name, required, min_select, max_select, exclusive, sort_order, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(
      id,
      auth.orgId,
      body.name,
      body.required ? 1 : 0,
      body.minSelect ?? 0,
      body.maxSelect ?? 99,
      body.exclusive ? 1 : 0,
      body.sortOrder ?? 0,
      now,
    )
    .run();
  return c.json({ id });
});

catalogRoutes.patch("/modifier-groups/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const body = MGIn.partial().parse(await c.req.json());
  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.name !== undefined) sets.push("name = ?"), vals.push(body.name);
  if (body.required !== undefined) sets.push("required = ?"), vals.push(body.required ? 1 : 0);
  if (body.minSelect !== undefined) sets.push("min_select = ?"), vals.push(body.minSelect);
  if (body.maxSelect !== undefined) sets.push("max_select = ?"), vals.push(body.maxSelect);
  if (body.exclusive !== undefined) sets.push("exclusive = ?"), vals.push(body.exclusive ? 1 : 0);
  if (body.sortOrder !== undefined) sets.push("sort_order = ?"), vals.push(body.sortOrder);
  if (!sets.length) return c.json({ error: "no_fields" }, 400);
  vals.push(id, auth.orgId);
  const res = await c.env.DB.prepare(`UPDATE modifier_groups SET ${sets.join(", ")} WHERE id = ? AND org_id = ?`).bind(...vals).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "modifier_group.update", entityId: id, payload: body });
  return c.json({ ok: true });
});

catalogRoutes.delete("/modifier-groups/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const now = new Date().toISOString();
  await c.env.DB.prepare(`UPDATE modifiers SET is_archived = 1, archived_at = ? WHERE modifier_group_id = ?`).bind(now, id).run();
  const res = await c.env.DB.prepare(`UPDATE modifier_groups SET is_archived = 1, archived_at = ? WHERE id = ? AND org_id = ?`).bind(now, id, auth.orgId).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "modifier_group.archive", entityId: id, payload: {} });
  return c.json({ ok: true });
});

catalogRoutes.post("/modifier-groups/:groupId/modifiers", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const groupId = c.req.param("groupId");
  const g = await c.env.DB.prepare("SELECT id FROM modifier_groups WHERE id = ? AND org_id = ?").bind(groupId, auth.orgId).first();
  if (!g) return c.json({ error: "not_found" }, 404);
  const ModIn = z.object({ name: z.string().min(1), priceAdjustCentavos: z.number().int(), sortOrder: z.number().int().optional() });
  const body = ModIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO modifiers (id, modifier_group_id, name, price_adjust_centavos, sort_order, created_at) VALUES (?, ?, ?, ?, ?, ?)`,
  )
    .bind(id, groupId, body.name, body.priceAdjustCentavos, body.sortOrder ?? 0, now)
    .run();
  return c.json({ id });
});

catalogRoutes.get("/modifiers", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(
    `SELECT m.id, m.modifier_group_id, m.name, m.price_adjust_centavos, m.sort_order
     FROM modifiers m
     JOIN modifier_groups mg ON mg.id = m.modifier_group_id
     WHERE mg.org_id = ? AND mg.is_archived = 0 AND m.is_archived = 0
     ORDER BY mg.sort_order, m.sort_order, m.name`,
  )
    .bind(auth.orgId)
    .all<Record<string, unknown>>();
  return c.json({ modifiers: rows.results ?? [] });
});

catalogRoutes.patch("/modifiers/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const Body = z.object({
    name: z.string().min(1).optional(),
    priceAdjustCentavos: z.number().int().optional(),
    sortOrder: z.number().int().optional(),
  });
  const body = Body.parse(await c.req.json());
  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.name !== undefined) sets.push("name = ?"), vals.push(body.name);
  if (body.priceAdjustCentavos !== undefined) sets.push("price_adjust_centavos = ?"), vals.push(body.priceAdjustCentavos);
  if (body.sortOrder !== undefined) sets.push("sort_order = ?"), vals.push(body.sortOrder);
  if (!sets.length) return c.json({ error: "no_fields" }, 400);
  vals.push(id, auth.orgId);
  const res = await c.env.DB.prepare(
    `UPDATE modifiers
     SET ${sets.join(", ")}
     WHERE id = ? AND modifier_group_id IN (SELECT id FROM modifier_groups WHERE org_id = ?)`,
  )
    .bind(...vals)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "modifier.update", entityId: id, payload: body });
  return c.json({ ok: true });
});

catalogRoutes.delete("/modifiers/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(
    `UPDATE modifiers
     SET is_archived = 1, archived_at = ?
     WHERE id = ? AND modifier_group_id IN (SELECT id FROM modifier_groups WHERE org_id = ?)`,
  )
    .bind(now, id, auth.orgId)
    .run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "modifier.archive", entityId: id, payload: {} });
  return c.json({ ok: true });
});

catalogRoutes.post("/products/:productId/modifier-groups", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const productId = c.req.param("productId");
  const Link = z.object({ modifierGroupId: z.string().uuid(), sortOrder: z.number().int().optional() });
  const body = Link.parse(await c.req.json());
  const p = await c.env.DB.prepare("SELECT id FROM products WHERE id = ? AND org_id = ? AND is_archived = 0").bind(productId, auth.orgId).first();
  if (!p) return c.json({ error: "not_found" }, 404);
  const g = await c.env.DB.prepare("SELECT id FROM modifier_groups WHERE id = ? AND org_id = ? AND is_archived = 0").bind(body.modifierGroupId, auth.orgId).first();
  if (!g) return c.json({ error: "bad_group" }, 400);
  await c.env.DB.prepare(
    `INSERT OR REPLACE INTO product_modifier_groups (product_id, modifier_group_id, sort_order) VALUES (?, ?, ?)`,
  )
    .bind(productId, body.modifierGroupId, body.sortOrder ?? 0)
    .run();
  return c.json({ ok: true });
});

catalogRoutes.delete("/products/:productId/modifier-groups", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const productId = c.req.param("productId");
  const p = await c.env.DB.prepare("SELECT id FROM products WHERE id = ? AND org_id = ? AND is_archived = 0").bind(productId, auth.orgId).first();
  if (!p) return c.json({ error: "not_found" }, 404);
  await c.env.DB.prepare("DELETE FROM product_modifier_groups WHERE product_id = ?").bind(productId).run();
  return c.json({ ok: true });
});


catalogRoutes.get("/menus", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare("SELECT id, name, is_seasonal, active, schedule_json FROM menus WHERE org_id = ?").bind(auth.orgId).all();
  return c.json({ menus: rows.results ?? [] });
});

const MenuIn = z.object({
  name: z.string().min(1),
  isSeasonal: z.boolean().optional(),
  scheduleJson: z.record(z.unknown()).optional(),
});

catalogRoutes.post("/menus", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const body = MenuIn.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(
    `INSERT INTO menus (id, org_id, name, is_seasonal, active, schedule_json, created_at) VALUES (?, ?, ?, ?, 1, ?, ?)`,
  )
    .bind(id, auth.orgId, body.name, body.isSeasonal ? 1 : 0, body.scheduleJson ? JSON.stringify(body.scheduleJson) : null, now)
    .run();
  return c.json({ id });
});

catalogRoutes.get("/tax-profiles", requireAuth(), async (c) => {
  const auth = c.get("auth")!;
  const rows = await c.env.DB.prepare(`SELECT id, name, rate_bps FROM tax_profiles WHERE org_id = ? AND is_archived = 0 ORDER BY name`)
    .bind(auth.orgId)
    .all<{ id: string; name: string; rate_bps: number }>();
  return c.json({ taxProfiles: rows.results ?? [] });
});

catalogRoutes.post("/tax-profiles", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const Body = z.object({ name: z.string().min(1), rateBps: z.number().int().min(0).max(10000) });
  const body = Body.parse(await c.req.json());
  const id = crypto.randomUUID();
  const now = new Date().toISOString();
  await c.env.DB.prepare(`INSERT INTO tax_profiles (id, org_id, name, rate_bps, created_at) VALUES (?, ?, ?, ?, ?)`)
    .bind(id, auth.orgId, body.name, body.rateBps, now)
    .run();
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "tax_profile.create", entityId: id, payload: body });
  return c.json({ id });
});

catalogRoutes.patch("/tax-profiles/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const Body = z.object({ name: z.string().min(1).optional(), rateBps: z.number().int().min(0).max(10000).optional() });
  const body = Body.parse(await c.req.json());
  const sets: string[] = [];
  const vals: unknown[] = [];
  if (body.name !== undefined) sets.push("name = ?"), vals.push(body.name);
  if (body.rateBps !== undefined) sets.push("rate_bps = ?"), vals.push(body.rateBps);
  if (!sets.length) return c.json({ error: "no_fields" }, 400);
  vals.push(id, auth.orgId);
  const res = await c.env.DB.prepare(`UPDATE tax_profiles SET ${sets.join(", ")} WHERE id = ? AND org_id = ?`).bind(...vals).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "tax_profile.update", entityId: id, payload: body });
  return c.json({ ok: true });
});

catalogRoutes.delete("/tax-profiles/:id", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const id = c.req.param("id");
  const now = new Date().toISOString();
  const res = await c.env.DB.prepare(`UPDATE tax_profiles SET is_archived = 1, archived_at = ? WHERE id = ? AND org_id = ?`).bind(now, id, auth.orgId).run();
  if (!res.success || res.meta.changes === 0) return c.json({ error: "not_found" }, 404);
  await writeAudit({ db: c.env.DB, orgId: auth.orgId, userId: auth.id, action: "tax_profile.archive", entityId: id, payload: {} });
  return c.json({ ok: true });
});

catalogRoutes.post("/menus/:menuId/products", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const menuId = c.req.param("menuId");
  const m = await c.env.DB.prepare("SELECT id FROM menus WHERE id = ? AND org_id = ?").bind(menuId, auth.orgId).first();
  if (!m) return c.json({ error: "not_found" }, 404);
  const Body = z.object({ productId: z.string().uuid(), sortOrder: z.number().int().optional() });
  const body = Body.parse(await c.req.json());
  await c.env.DB.prepare(`INSERT OR REPLACE INTO menu_products (menu_id, product_id, sort_order) VALUES (?, ?, ?)`)
    .bind(menuId, body.productId, body.sortOrder ?? 0)
    .run();
  return c.json({ ok: true });
});
