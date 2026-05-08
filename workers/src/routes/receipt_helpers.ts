import { computeTicketTotals } from "../lib/ticket_totals.js";

export async function buildReceiptPayload(db: D1Database, ticketId: string, orgId: string) {
  const t = await db.prepare(`SELECT * FROM tickets WHERE id = ? AND org_id = ?`).bind(ticketId, orgId).first<Record<string, unknown>>();
  if (!t) return null;

  const lines = await db
    .prepare(
      `SELECT li.*, p.name as product_name FROM line_items li JOIN products p ON p.id = li.product_id WHERE li.ticket_id = ? ORDER BY li.sort_order`,
    )
    .bind(ticketId)
    .all<Record<string, unknown>>();

  const pays = await db.prepare(`SELECT * FROM payments WHERE ticket_id = ? ORDER BY created_at`).bind(ticketId).all<Record<string, unknown>>();

  const totals = await computeTicketTotals(db, ticketId);
  const paid = await db
    .prepare(`SELECT SUM(amount_centavos) as s FROM payments WHERE ticket_id = ? AND status = 'completed'`)
    .bind(ticketId)
    .first<{ s: number | null }>();

  const org = await db.prepare(`SELECT name FROM organizations WHERE id = ?`).bind(orgId).first<{ name: string }>();

  const textLines: string[] = [];
  textLines.push(org?.name ?? "Receipt");
  textLines.push(`Ticket: ${String(t.id).slice(0, 8)}…`);
  textLines.push(`Status: ${t.status}`);
  textLines.push("---");
  for (const li of lines.results ?? []) {
    if (li.voided === 1) continue;
    const name = String(li.product_name ?? "Item");
    const qty = Number(li.qty);
    const unit = Number(li.unit_price_centavos);
    const disc = Number(li.discount_centavos ?? 0);
    const lineTotal = unit * qty - disc;
    textLines.push(`${qty}× ${name}  ${(lineTotal / 100).toFixed(2)} PHP`);
    if (li.modifiers_json) {
      try {
        const mods = JSON.parse(String(li.modifiers_json)) as { name?: string }[];
        if (Array.isArray(mods)) {
          for (const m of mods) {
            if (m?.name) textLines.push(`   + ${m.name}`);
          }
        }
      } catch {
        /* ignore */
      }
    }
  }
  textLines.push("---");
  textLines.push(`Subtotal: ${(totals.lineSubtotalCentavos / 100).toFixed(2)} PHP`);
  if (totals.orderDiscountCentavos) textLines.push(`Order discount: -${(totals.orderDiscountCentavos / 100).toFixed(2)} PHP`);
  for (const tr of totals.taxByRate) {
    textLines.push(`VAT (${(tr.rateBps / 100).toFixed(2)}%): ${(tr.taxCentavos / 100).toFixed(2)} PHP`);
  }
  if (totals.taxCentavos && totals.taxByRate.length === 0) {
    textLines.push(`Tax: ${(totals.taxCentavos / 100).toFixed(2)} PHP`);
  }
  if (totals.serviceChargeCentavos) textLines.push(`Service: ${(totals.serviceChargeCentavos / 100).toFixed(2)} PHP`);
  if (totals.tipCentavos) textLines.push(`Tip: ${(totals.tipCentavos / 100).toFixed(2)} PHP`);
  textLines.push(`TOTAL: ${(totals.dueCentavos / 100).toFixed(2)} PHP`);
  textLines.push(`Paid: ${(Number(paid?.s ?? 0) / 100).toFixed(2)} PHP`);

  const html = `<!DOCTYPE html><html><head><meta charset="utf-8"><title>Receipt</title>
  <style>body{font-family:system-ui;padding:16px;max-width:420px} pre{white-space:pre-wrap}</style></head><body><pre>${textLines
    .map((l) => l.replace(/&/g, "&amp;").replace(/</g, "&lt;"))
    .join("\n")}</pre></body></html>`;

  const subject = encodeURIComponent(`Receipt ${String(t.id).slice(0, 8)}`);
  const body = encodeURIComponent(textLines.join("\n"));
  const mailto = `mailto:?subject=${subject}&body=${body}`;

  return {
    ticket: t,
    lineItems: lines.results ?? [],
    payments: pays.results ?? [],
    totals: {
      lineSubtotalCentavos: totals.lineSubtotalCentavos,
      orderDiscountCentavos: totals.orderDiscountCentavos,
      serviceChargeCentavos: totals.serviceChargeCentavos,
      tipCentavos: totals.tipCentavos,
      taxCentavos: totals.taxCentavos,
      taxByRate: totals.taxByRate,
      dueCentavos: totals.dueCentavos,
      paidCompletedCentavos: Number(paid?.s ?? 0),
    },
    textReceipt: textLines.join("\n"),
    htmlReceipt: html,
    mailtoUrl: mailto,
  };
}
