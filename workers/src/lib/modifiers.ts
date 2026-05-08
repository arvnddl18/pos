type GroupRow = {
  id: string;
  name: string;
  required: number;
  min_select: number;
  max_select: number;
  exclusive: number;
};

type ModRow = {
  id: string;
  modifier_group_id: string;
  name: string;
  price_adjust_centavos: number;
};

export async function validateModifierSelection(input: {
  db: D1Database;
  orgId: string;
  productId: string;
  basePriceCentavos: number;
  selectedModifierIds: string[];
}): Promise<
  | { ok: true; unitPriceCentavos: number; modifiersSnapshot: { id: string; name: string; price_adjust_centavos: number }[] }
  | { ok: false; error: string }
> {
  const { db, orgId, productId, basePriceCentavos, selectedModifierIds } = input;
  const unique = [...new Set(selectedModifierIds)];

  const groups = await db.prepare(
    `SELECT mg.id, mg.name, mg.required, mg.min_select, mg.max_select, mg.exclusive
     FROM product_modifier_groups pmg
     JOIN modifier_groups mg ON mg.id = pmg.modifier_group_id
     WHERE pmg.product_id = ? AND mg.org_id = ?
     ORDER BY pmg.sort_order, mg.name`,
  )
    .bind(productId, orgId)
    .all<GroupRow>();
  const groupList = groups.results ?? [];

  if (groupList.length === 0) {
    if (unique.length > 0) return { ok: false, error: "product_has_no_modifier_groups" };
    return { ok: true, unitPriceCentavos: basePriceCentavos, modifiersSnapshot: [] };
  }

  const placeholders = groupList.map(() => "?").join(",");
  const allMods = await db.prepare(
    `SELECT m.id, m.modifier_group_id, m.name, m.price_adjust_centavos
     FROM modifiers m
     JOIN modifier_groups mg ON mg.id = m.modifier_group_id
     WHERE mg.org_id = ? AND m.modifier_group_id IN (${placeholders})`,
  )
    .bind(orgId, ...groupList.map((g) => g.id))
    .all<ModRow>();
  const modById = new Map((allMods.results ?? []).map((m) => [m.id, m]));

  for (const id of unique) {
    const m = modById.get(id);
    if (!m) return { ok: false, error: `unknown_modifier:${id}` };
    if (!groupList.some((g) => g.id === m.modifier_group_id)) {
      return { ok: false, error: `modifier_not_linked_to_product:${id}` };
    }
  }

  for (const g of groupList) {
    const selectedInGroup = unique.filter((id) => modById.get(id)?.modifier_group_id === g.id);
    const n = selectedInGroup.length;
    const minNeeded = g.required === 1 ? Math.max(1, g.min_select) : g.min_select;
    if (n < minNeeded) {
      return { ok: false, error: `group_min:${g.name}` };
    }
    if (n > g.max_select) {
      return { ok: false, error: `group_max:${g.name}` };
    }
    if (g.exclusive === 1 && n > 1) {
      return { ok: false, error: `group_exclusive:${g.name}` };
    }
  }

  let adjust = 0;
  const snapshot: { id: string; name: string; price_adjust_centavos: number }[] = [];
  for (const id of unique) {
    const m = modById.get(id)!;
    adjust += m.price_adjust_centavos;
    snapshot.push({ id: m.id, name: m.name, price_adjust_centavos: m.price_adjust_centavos });
  }

  return { ok: true, unitPriceCentavos: basePriceCentavos + adjust, modifiersSnapshot: snapshot };
}
