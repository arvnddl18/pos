export type PriceRuleRow = {
  id: string;
  product_id: string | null;
  rule_type: string;
  starts_at: string | null;
  ends_at: string | null;
  days_of_week_json: string | null;
  value_json: string;
  active: number;
};

export function parseRuleValue(valueJson: string): { priceCentavos?: number } {
  try {
    return JSON.parse(valueJson) as { priceCentavos?: number };
  } catch {
    return {};
  }
}

export function parseDaysOfWeek(json: string | null | undefined): number[] | null {
  if (!json) return null;
  try {
    const arr = JSON.parse(json) as unknown;
    if (!Array.isArray(arr)) return null;
    return arr.filter((d): d is number => typeof d === "number" && d >= 0 && d <= 6);
  } catch {
    return null;
  }
}

function timeOfDayMs(d: Date): number {
  return d.getHours() * 3_600_000 + d.getMinutes() * 60_000 + d.getSeconds() * 1000;
}

function isWithinDailyWindow(now: Date, startsAt: string, endsAt: string): boolean {
  const startMs = timeOfDayMs(new Date(startsAt));
  const endMs = timeOfDayMs(new Date(endsAt));
  const nowMs = timeOfDayMs(now);
  if (startMs <= endMs) return nowMs >= startMs && nowMs <= endMs;
  return nowMs >= startMs || nowMs <= endMs;
}

function calendarDayUtc(d: Date): number {
  return Date.UTC(d.getFullYear(), d.getMonth(), d.getDate());
}

/** Whether a price rule applies at `at` (local browser/server time). */
export function isPriceRuleActive(rule: PriceRuleRow, at: Date = new Date()): boolean {
  if (rule.active === 0) return false;
  if (rule.rule_type !== "happy_hour" && rule.rule_type !== "fixed_override") return false;

  const days = parseDaysOfWeek(rule.days_of_week_json);
  if (days && days.length > 0 && !days.includes(at.getDay())) return false;

  const starts = rule.starts_at;
  const ends = rule.ends_at;
  const hasRecurringDays = Boolean(days && days.length > 0);

  if (hasRecurringDays && starts && ends && !isWithinDailyWindow(at, starts, ends)) {
    return false;
  }

  const nowMs = at.getTime();
  if (starts && !hasRecurringDays && nowMs < new Date(starts).getTime()) return false;
  if (ends && !hasRecurringDays && nowMs > new Date(ends).getTime()) return false;

  if (hasRecurringDays && starts) {
    const startDay = calendarDayUtc(new Date(starts));
    if (calendarDayUtc(at) < startDay) return false;
  }
  if (hasRecurringDays && ends) {
    const endDay = calendarDayUtc(new Date(ends));
    if (calendarDayUtc(at) > endDay) return false;
  }

  return true;
}

export function resolveEffectivePrice(
  basePriceCentavos: number,
  productId: string,
  rules: PriceRuleRow[],
  at: Date = new Date(),
): { effectivePriceCentavos: number; appliedRuleId: string | null } {
  let best: { priceCentavos: number; ruleId: string } | null = null;

  for (const rule of rules) {
    if (rule.product_id !== productId) continue;
    if (!isPriceRuleActive(rule, at)) continue;
    const value = parseRuleValue(rule.value_json);
    if (typeof value.priceCentavos !== "number" || value.priceCentavos < 0) continue;
    if (!best || value.priceCentavos < best.priceCentavos) {
      best = { priceCentavos: value.priceCentavos, ruleId: rule.id };
    }
  }

  if (best) return { effectivePriceCentavos: best.priceCentavos, appliedRuleId: best.ruleId };
  return { effectivePriceCentavos: basePriceCentavos, appliedRuleId: null };
}

export async function loadActivePriceRules(
  db: D1Database,
  orgId: string,
): Promise<PriceRuleRow[]> {
  const rows = await db
    .prepare(
      `SELECT id, product_id, rule_type, starts_at, ends_at, days_of_week_json, value_json, active
       FROM price_rules WHERE org_id = ? AND active = 1`,
    )
    .bind(orgId)
    .all<PriceRuleRow>();
  return rows.results ?? [];
}

export function applyPriceRulesToProducts<T extends { id: string; price_centavos: number }>(
  products: T[],
  rules: PriceRuleRow[],
  at: Date = new Date(),
): (T & { regular_price_centavos: number; effective_price_centavos: number })[] {
  return products.map((p) => {
    const base = Number(p.price_centavos);
    const { effectivePriceCentavos } = resolveEffectivePrice(base, String(p.id), rules, at);
    return {
      ...p,
      regular_price_centavos: base,
      effective_price_centavos: effectivePriceCentavos,
    };
  });
}
