import { validateModifierSelection } from "./modifiers.js";
import { loadActivePriceRules, resolveEffectivePrice, type PriceRuleRow } from "./price_rules.js";

export async function resolveLineItemPricing(input: {
  db: D1Database;
  orgId: string;
  productId: string;
  catalogPriceCentavos: number;
  qty: number;
  modifierIds: string[];
  priceRules?: PriceRuleRow[];
  extraDiscountCentavos?: number;
}): Promise<
  | {
      ok: true;
      unitPriceCentavos: number;
      discountCentavos: number;
      modifiersSnapshot: { id: string; name: string; price_adjust_centavos: number }[];
    }
  | { ok: false; error: string }
> {
  const priceRules = input.priceRules ?? (await loadActivePriceRules(input.db, input.orgId));
  const { effectivePriceCentavos } = resolveEffectivePrice(
    input.catalogPriceCentavos,
    input.productId,
    priceRules,
  );

  const catalogMod = await validateModifierSelection({
    db: input.db,
    orgId: input.orgId,
    productId: input.productId,
    basePriceCentavos: input.catalogPriceCentavos,
    selectedModifierIds: input.modifierIds,
  });
  if (!catalogMod.ok) return catalogMod;

  const effectiveMod = await validateModifierSelection({
    db: input.db,
    orgId: input.orgId,
    productId: input.productId,
    basePriceCentavos: effectivePriceCentavos,
    selectedModifierIds: input.modifierIds,
  });
  if (!effectiveMod.ok) return effectiveMod;

  const unitPriceCentavos = catalogMod.unitPriceCentavos;
  const effectiveUnit = effectiveMod.unitPriceCentavos;
  const priceRuleDiscount = Math.max(0, unitPriceCentavos - effectiveUnit) * input.qty;
  const discountCentavos = (input.extraDiscountCentavos ?? 0) + priceRuleDiscount;

  return {
    ok: true,
    unitPriceCentavos,
    discountCentavos,
    modifiersSnapshot: catalogMod.modifiersSnapshot,
  };
}
