import { computeTicketTotals } from "../lib/ticket_totals.js";

function peso(centavos: number): string {
  return (centavos / 100).toFixed(2);
}

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
  const ticketNoNum = Number(t.ticket_no ?? 0);
  const ticketNoLabel = ticketNoNum > 0 ? `#${String(ticketNoNum).padStart(4, "0")}` : String(t.id).slice(0, 8);
  textLines.push(org?.name ?? "Receipt");
  textLines.push(`Ticket No.: ${ticketNoLabel}`);
  textLines.push(`Status: ${t.status}`);
  textLines.push("---");
  for (const li of lines.results ?? []) {
    if (li.voided === 1) continue;
    const name = String(li.product_name ?? "Item");
    const qty = Number(li.qty);
    const unit = Number(li.unit_price_centavos);
    const gross = unit * qty;
    const disc = Number(li.discount_centavos ?? 0);
    const lineTotal = gross - disc;
    const freebie = gross > 0 && disc >= gross;

    if (disc > 0 && !freebie) {
      textLines.push(`${qty}× ${name}  ${peso(gross)} PHP`);
      textLines.push(`   Discount    -${peso(disc)} PHP`);
      textLines.push(`   Line total   ${peso(lineTotal)} PHP`);
    } else {
      textLines.push(`${qty}× ${name}${freebie ? " [FREEBIE]" : ""}  ${peso(lineTotal)} PHP`);
    }

    const lineNotes = String(li.line_notes ?? "").trim();
    if (freebie && lineNotes.startsWith("[FREEBIE] ")) {
      const reason = lineNotes.replace("[FREEBIE] ", "").trim();
      if (reason) textLines.push(`   reason: ${reason}`);
    }
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
  textLines.push(`Subtotal: ${peso(totals.lineGrossCentavos)} PHP`);
  if (totals.lineItemDiscountCentavos > 0) {
    textLines.push(`Item discounts: -${peso(totals.lineItemDiscountCentavos)} PHP`);
  }
  if (totals.orderDiscountCentavos > 0) {
    textLines.push(`Order discount: -${peso(totals.orderDiscountCentavos)} PHP`);
  }
  if (totals.totalDiscountCentavos > 0) {
    textLines.push(`Total discounts: -${peso(totals.totalDiscountCentavos)} PHP`);
  }
  for (const tr of totals.taxByRate) {
    textLines.push(`VAT (${(tr.rateBps / 100).toFixed(2)}%): ${peso(tr.taxCentavos)} PHP`);
  }
  if (totals.taxCentavos && totals.taxByRate.length === 0) {
    textLines.push(`Tax: ${peso(totals.taxCentavos)} PHP`);
  }
  if (totals.serviceChargeCentavos) textLines.push(`Service: ${peso(totals.serviceChargeCentavos)} PHP`);
  if (totals.tipCentavos) textLines.push(`Tip: ${peso(totals.tipCentavos)} PHP`);
  textLines.push(`TOTAL: ${peso(totals.dueCentavos)} PHP`);
  const paidCompletedCentavos = Number(paid?.s ?? 0);
  const remainingDueCentavos = Math.max(0, totals.dueCentavos - paidCompletedCentavos);
  const changeCentavos = Math.max(0, paidCompletedCentavos - totals.dueCentavos);
  textLines.push(`Paid: ${peso(paidCompletedCentavos)} PHP`);
  textLines.push(`Tendered: ${peso(paidCompletedCentavos)} PHP`);
  textLines.push(`Remaining due: ${peso(remainingDueCentavos)} PHP`);
  textLines.push(`Change: ${peso(changeCentavos)} PHP`);

  const html = `<!DOCTYPE html><html><head><meta charset="utf-8"><title>Receipt</title>
  <style>body{font-family:system-ui;padding:16px;max-width:420px} pre{white-space:pre-wrap}</style></head><body><pre>${textLines
    .map((l) => l.replace(/&/g, "&amp;").replace(/</g, "&lt;"))
    .join("\n")}</pre></body></html>`;

  const subject = encodeURIComponent(`Receipt ${ticketNoLabel}`);
  const body = encodeURIComponent(textLines.join("\n"));
  const mailto = `mailto:?subject=${subject}&body=${body}`;

  return {
    ticket: t,
    lineItems: lines.results ?? [],
    payments: pays.results ?? [],
    totals: {
      lineGrossCentavos: totals.lineGrossCentavos,
      lineItemDiscountCentavos: totals.lineItemDiscountCentavos,
      lineSubtotalCentavos: totals.lineSubtotalCentavos,
      orderDiscountCentavos: totals.orderDiscountCentavos,
      totalDiscountCentavos: totals.totalDiscountCentavos,
      serviceChargeCentavos: totals.serviceChargeCentavos,
      tipCentavos: totals.tipCentavos,
      taxCentavos: totals.taxCentavos,
      taxByRate: totals.taxByRate,
      dueCentavos: totals.dueCentavos,
      paidCompletedCentavos,
      remainingDueCentavos,
      changeCentavos,
    },
    textReceipt: textLines.join("\n"),
    htmlReceipt: html,
    mailtoUrl: mailto,
  };
}
