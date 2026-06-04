export type TicketAdjustmentRow = {
  order_discount_centavos: number;
  service_charge_centavos: number;
  tip_centavos: number;
};

export type TaxLineDetail = { rateBps: number; taxCentavos: number };

/** Allocate order discount across lines (integer centavos, sum equals orderDiscount). */
export function allocateOrderDiscountCentavos(lineNets: number[], orderDiscount: number): number[] {
  const n = lineNets.length;
  const alloc = new Array(n).fill(0);
  if (n === 0 || orderDiscount <= 0) return alloc;
  const total = lineNets.reduce((a, b) => a + b, 0);
  if (total <= 0) return alloc;
  const od = Math.min(orderDiscount, total);
  let remaining = od;
  for (let i = 0; i < n - 1; i++) {
    const share = Math.floor((od * (lineNets[i] ?? 0)) / total);
    alloc[i] = share;
    remaining -= share;
  }
  alloc[n - 1] = remaining;
  return alloc;
}

export async function sumLineSubtotalCentavos(db: D1Database, ticketId: string): Promise<number> {
  const rows = await db
    .prepare(
      `SELECT qty, unit_price_centavos, discount_centavos FROM line_items WHERE ticket_id = ? AND voided = 0`,
    )
    .bind(ticketId)
    .all<{ qty: number; unit_price_centavos: number; discount_centavos: number | null }>();
  let sum = 0;
  for (const r of rows.results ?? []) {
    sum += r.unit_price_centavos * r.qty - (r.discount_centavos ?? 0);
  }
  return Math.max(0, sum);
}

export async function getTicketAdjustments(db: D1Database, ticketId: string): Promise<TicketAdjustmentRow> {
  const row = await db
    .prepare(`SELECT order_discount_centavos, service_charge_centavos, tip_centavos FROM tickets WHERE id = ?`)
    .bind(ticketId)
    .first<TicketAdjustmentRow>();
  return (
    row ?? {
      order_discount_centavos: 0,
      service_charge_centavos: 0,
      tip_centavos: 0,
    }
  );
}

/**
 * Prices are tax-exclusive. VAT = sum over lines of round((taxable_line_centavos * rate_bps) / 10000),
 * where taxable_line_centavos = line_net - proportional share of order discount.
 */
export function computeTicketTotalsFromRows(
  adj: TicketAdjustmentRow,
  lines: { qty: number; unit_price_centavos: number; discount_centavos: number | null; rate_bps: number | null }[]
): {
  lineGrossCentavos: number;
  lineItemDiscountCentavos: number;
  lineSubtotalCentavos: number;
  orderDiscountCentavos: number;
  totalDiscountCentavos: number;
  serviceChargeCentavos: number;
  tipCentavos: number;
  taxCentavos: number;
  taxByRate: TaxLineDetail[];
  dueCentavos: number;
} {
  const lineNets: { net: number; rateBps: number }[] = [];
  let lineGross = 0;
  let lineItemDiscount = 0;
  for (const r of lines) {
    const gross = r.unit_price_centavos * r.qty;
    const disc = r.discount_centavos ?? 0;
    lineGross += gross;
    lineItemDiscount += disc;
    const net = Math.max(0, gross - disc);
    lineNets.push({ net, rateBps: r.rate_bps ?? 0 });
  }

  const lineNetSubtotal = lineNets.reduce((s, x) => s + x.net, 0);
  const orderDiscount = Math.min(Math.max(0, adj.order_discount_centavos), lineNetSubtotal);
  const alloc = allocateOrderDiscountCentavos(
    lineNets.map((x) => x.net),
    orderDiscount,
  );

  const byRateMap = new Map<number, number>();
  for (let i = 0; i < lineNets.length; i++) {
    const ln = lineNets[i]!;
    const taxable = Math.max(0, ln.net - (alloc[i] ?? 0));
    const tax = Math.round((taxable * ln.rateBps) / 10000);
    byRateMap.set(ln.rateBps, (byRateMap.get(ln.rateBps) ?? 0) + tax);
  }

  const taxByRate: TaxLineDetail[] = [...byRateMap.entries()]
    .filter(([bps]) => bps > 0)
    .map(([rateBps, taxCentavos]) => ({ rateBps, taxCentavos }));

  const taxCentavos = [...byRateMap.values()].reduce((a, b) => a + b, 0);

  const dueCentavos = Math.max(
    0,
    lineNetSubtotal - orderDiscount + taxCentavos + adj.service_charge_centavos + adj.tip_centavos,
  );

  return {
    lineGrossCentavos: lineGross,
    lineItemDiscountCentavos: lineItemDiscount,
    lineSubtotalCentavos: lineNetSubtotal,
    orderDiscountCentavos: orderDiscount,
    totalDiscountCentavos: lineItemDiscount + orderDiscount,
    serviceChargeCentavos: adj.service_charge_centavos,
    tipCentavos: adj.tip_centavos,
    taxCentavos,
    taxByRate,
    dueCentavos,
  };
}

export async function computeTicketTotals(db: D1Database, ticketId: string): Promise<{
  lineGrossCentavos: number;
  lineItemDiscountCentavos: number;
  lineSubtotalCentavos: number;
  orderDiscountCentavos: number;
  totalDiscountCentavos: number;
  serviceChargeCentavos: number;
  tipCentavos: number;
  taxCentavos: number;
  taxByRate: TaxLineDetail[];
  dueCentavos: number;
}> {
  const adj = await getTicketAdjustments(db, ticketId);
  const rows = await db
    .prepare(
      `SELECT li.qty, li.unit_price_centavos, li.discount_centavos, tp.rate_bps
       FROM line_items li
       JOIN products p ON p.id = li.product_id
       LEFT JOIN tax_profiles tp ON tp.id = p.tax_profile_id
       WHERE li.ticket_id = ? AND li.voided = 0`,
    )
    .bind(ticketId)
    .all<{ qty: number; unit_price_centavos: number; discount_centavos: number | null; rate_bps: number | null }>();

  return computeTicketTotalsFromRows(adj, rows.results ?? []);
}

export async function computeTicketDueCentavos(db: D1Database, ticketId: string): Promise<number> {
  const t = await computeTicketTotals(db, ticketId);
  return t.dueCentavos;
}
