import { computeTicketDueCentavos, computeTicketTotals } from "./ticket_totals.js";

export async function sumCompletedPaymentsCentavos(db: D1Database, ticketId: string): Promise<number> {
  const res = await db
    .prepare(`SELECT SUM(amount_centavos) as s FROM payments WHERE ticket_id = ? AND status = 'completed'`)
    .bind(ticketId)
    .first<{ s: number | null }>();
  return Number(res?.s ?? 0);
}

/** Mark ticket paid when completed payments cover the current due amount. */
export async function finalizeIfPaid(db: D1Database, ticketId: string, orgId: string): Promise<boolean> {
  const due = await computeTicketDueCentavos(db, ticketId);
  const paid = await sumCompletedPaymentsCentavos(db, ticketId);
  if (due <= 0 || paid <= 0 || paid < due) return false;

  const activeLines = await db
    .prepare(`SELECT COUNT(*) as c FROM line_items WHERE ticket_id = ? AND voided = 0`)
    .bind(ticketId)
    .first<{ c: number }>();
  if (Number(activeLines?.c ?? 0) === 0) return false;

  const now = new Date().toISOString();
  const totals = await computeTicketTotals(db, ticketId);
  const result = await db
    .prepare(
      `UPDATE tickets SET status = 'paid', updated_at = ?, tax_centavos_snapshot = ?
       WHERE id = ? AND org_id = ? AND status IN ('open', 'parked')`,
    )
    .bind(now, totals.taxCentavos, ticketId, orgId)
    .run();
  return Number(result.meta.changes ?? 0) > 0;
}