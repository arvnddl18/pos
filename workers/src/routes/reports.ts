import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import type { AppEnv } from "../ctx.js";

const PAY_TS = `COALESCE(p.confirmed_at, p.created_at)`;

export const reportRoutes = new Hono<AppEnv>();

/** Build a date range WHERE clause from query params */
function dateClause(dateFrom: string | undefined, dateTo: string | undefined, dateMonth: string | undefined, field = "t.updated_at"): { clause: string, start: string, end: string } {
  if (dateFrom && dateTo) {
    return { 
      clause: `AND date(${field}) >= '${dateFrom}' AND date(${field}) <= '${dateTo}'`,
      start: `${dateFrom}T00:00:00.000Z`,
      end: `${dateTo}T23:59:59.999Z`
    };
  }
  if (dateMonth) {
    return { 
      clause: `AND strftime('%Y-%m', ${field}) = '${dateMonth}'`,
      start: `${dateMonth}-01T00:00:00.000Z`,
      end: `${dateMonth}-31T23:59:59.999Z`
    };
  }
  const day = new Date().toISOString().slice(0, 10);
  return { 
    clause: `AND date(${field}) = '${day}'`,
    start: `${day}T00:00:00.000Z`,
    end: `${day}T23:59:59.999Z`
  };
}

// ── Enhanced EOD with full income statement data ──────────────────────────────
reportRoutes.get("/eod", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const day = c.req.query("date") ?? new Date().toISOString().slice(0, 10);

  let start: string, end: string, dc: string, dcPay: string, dcRefund: string;
  if (c.req.query("date")) {
    start = `${day}T00:00:00.000Z`;
    end = `${day}T23:59:59.999Z`;
    dc = `AND date(t.updated_at) = '${day}'`;
    dcPay = `AND date(${PAY_TS}) = '${day}'`;
    dcRefund = `AND date(r.created_at) = '${day}'`;
  } else {
    const res = dateClause(dateFrom, dateTo, dateMonth, "t.updated_at");
    start = res.start;
    end = res.end;
    dc = res.clause;
    dcPay = dateClause(dateFrom, dateTo, dateMonth, PAY_TS).clause;
    dcRefund = dateClause(dateFrom, dateTo, dateMonth, "r.created_at").clause;
  }

  // Payment totals (grouped by tender)
  const sales = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(p.amount_centavos), 0) as total, p.tender_type
     FROM payments p JOIN tickets t ON t.id = p.ticket_id
     WHERE t.org_id = ? AND p.status = 'completed' ${dcPay}
     GROUP BY p.tender_type`,
  ).bind(auth.orgId).all<{ total: number; tender_type: string }>();

  const cashRow = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(p.amount_centavos), 0) as total
     FROM payments p JOIN tickets t ON t.id = p.ticket_id
     WHERE t.org_id = ? AND p.status = 'completed' AND p.tender_type = 'cash' ${dcPay}`,
  ).bind(auth.orgId).first<{ total: number }>();

  const ewalletRow = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(p.amount_centavos), 0) as total
     FROM payments p JOIN tickets t ON t.id = p.ticket_id
     WHERE t.org_id = ? AND p.status = 'completed' AND p.tender_type LIKE 'e_wallet%' ${dcPay}`,
  ).bind(auth.orgId).first<{ total: number }>();

  const refunds = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(r.amount_centavos), 0) as total FROM refunds r
     JOIN tickets t ON t.id = r.ticket_id
     WHERE t.org_id = ? ${dcRefund}`,
  ).bind(auth.orgId).first<{ total: number }>();

  const voids = await c.env.DB.prepare(
    `SELECT COUNT(*) as n FROM line_items li
     JOIN tickets tk ON tk.id = li.ticket_id
     WHERE tk.org_id = ? AND li.voided = 1 AND date(li.created_at) >= date(?) AND date(li.created_at) <= date(?)`,
  ).bind(auth.orgId, start.slice(0,10), end.slice(0,10)).first<{ n: number }>();

  const taxRow = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(tax_centavos_snapshot), 0) as total FROM tickets t
     WHERE org_id = ? AND status = 'paid' ${dc}`,
  ).bind(auth.orgId).first<{ total: number }>();

  const lineRow = await c.env.DB.prepare(
    `SELECT
       COALESCE(SUM(li.unit_price_centavos * li.qty), 0) as gross_sales,
       COALESCE(SUM(CASE WHEN t.notes LIKE '%[MARKETING_FREEBIE]%' THEN 0 ELSE li.discount_centavos END), 0) as discount_only,
       COALESCE(SUM(CASE WHEN t.notes LIKE '%[MARKETING_FREEBIE]%' THEN li.unit_price_centavos * li.qty ELSE 0 END), 0) as marketing_expense
     FROM line_items li
     JOIN tickets t ON t.id = li.ticket_id
     WHERE t.org_id = ? AND t.status = 'paid' AND li.voided = 0 ${dc}`,
  ).bind(auth.orgId).first<{ gross_sales: number; discount_only: number; marketing_expense: number }>();

  const marketingCountRow = await c.env.DB.prepare(
    `SELECT COUNT(*) as marketing_tickets
     FROM tickets t
     WHERE t.org_id = ? AND t.status = 'paid' AND t.notes LIKE '%[MARKETING_FREEBIE]%' ${dc}`,
  ).bind(auth.orgId).first<{ marketing_tickets: number }>();

  const txRow = await c.env.DB.prepare(
    `SELECT
       COUNT(*) as total_tickets,
       SUM(CASE WHEN ticket_type = 'dine_in' THEN 1 ELSE 0 END) as dine_in_count,
       SUM(CASE WHEN ticket_type = 'takeout' THEN 1 ELSE 0 END) as takeout_count
     FROM tickets t
     WHERE org_id = ? AND status = 'paid' ${dc}`,
  ).bind(auth.orgId).first<{ total_tickets: number; dine_in_count: number; takeout_count: number }>();

  const grossSales    = Number(lineRow?.gross_sales ?? 0);
  const discounts     = Number(lineRow?.discount_only ?? 0);
  const netSales      = grossSales - discounts;
  const refundAmt     = Number(refunds?.total ?? 0);
  const adjustedNet   = netSales - refundAmt;
  const marketingExpense = Number(lineRow?.marketing_expense ?? 0);
  const totalDiscounts = discounts + marketingExpense;
  const adjustedAfterMarketing = adjustedNet - marketingExpense;
  const vatCollected  = Number(taxRow?.total ?? 0);
  const vatableSales  = vatCollected > 0 ? Math.round(adjustedNet / 1.12) : adjustedNet;
  const totalCollected = Number(cashRow?.total ?? 0) + Number(ewalletRow?.total ?? 0);

  return c.json({
    date: day,
    tenders: sales.results ?? [],
    grossSalesCentavos: grossSales,
    discountsCentavos: discounts,
    discountOnlyCentavos: discounts,
    totalDiscountsCentavos: totalDiscounts,
    netSalesCentavos: netSales,
    refundsCentavos: refundAmt,
    adjustedNetCentavos: adjustedNet,
    marketingExpenseCentavos: marketingExpense,
    adjustedAfterMarketingCentavos: adjustedAfterMarketing,
    marketingTicketCount: Number(marketingCountRow?.marketing_tickets ?? 0),
    taxCollectedCentavos: vatCollected,
    vatableSalesCentavos: vatableSales,
    cashCentavos: cashRow?.total ?? 0,
    ewalletCentavos: ewalletRow?.total ?? 0,
    totalCollectedCentavos: totalCollected,
    voidLineCount: voids?.n ?? 0,
    totalTickets: txRow?.total_tickets ?? 0,
    dineInCount: txRow?.dine_in_count ?? 0,
    takeoutCount: txRow?.takeout_count ?? 0,
  });
});

// ── BIR Daily Sales Summary (VAT-registered format) ────────────────────────
reportRoutes.get("/bir", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const day = c.req.query("date") ?? new Date().toISOString().slice(0, 10);

  let dc: string;
  if (c.req.query("date")) {
    dc = `AND date(t.updated_at) = '${day}'`;
  } else {
    dc = dateClause(dateFrom, dateTo, dateMonth, "t.updated_at").clause;
  }

  // Use subqueries for aggregation to avoid Cartesian product duplication from multiple line items
  let dcRefund: string;
  if (c.req.query("date")) {
    dcRefund = `AND date(r.created_at) = '${day}'`;
  } else {
    dcRefund = dateClause(dateFrom, dateTo, dateMonth, "r.created_at").clause;
  }

  const refundsRow = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(r.amount_centavos), 0) as total FROM refunds r
     JOIN tickets t ON t.id = r.ticket_id
     WHERE t.org_id = ? ${dcRefund}`,
  ).bind(auth.orgId).first<{ total: number }>();

  const tickets = await c.env.DB.prepare(
    `SELECT t.id, t.ticket_no, t.ticket_type, t.created_at, t.tax_centavos_snapshot, t.notes,
       (SELECT COALESCE(SUM(li.unit_price_centavos * li.qty), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as gross_amount,
       (SELECT COALESCE(SUM(li.discount_centavos), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as discount_amount
     FROM tickets t
     WHERE t.org_id = ? AND t.status = 'paid' ${dc}
     ORDER BY t.created_at ASC`,
  ).bind(auth.orgId).all();

  const rows = (tickets.results ?? []) as Record<string, number | string>[];
  let totalGross = 0, totalDiscountOnly = 0, totalMarketingExpense = 0, totalTax = 0, totalNet = 0;
  
  const items = rows.map((r, idx) => {
    const gross   = Number(r.gross_amount ?? 0);
    const discRaw = Number(r.discount_amount ?? 0);
    const isMarketingFreebie = String(r.notes ?? "").includes("[MARKETING_FREEBIE]");
    const marketingExpense = isMarketingFreebie ? gross : 0;
    const disc = isMarketingFreebie ? 0 : discRaw;
    const totalDiscount = disc + marketingExpense;
    const net     = gross - totalDiscount;
    const tax     = Number(r.tax_centavos_snapshot ?? 0);
    
    // In BIR reports, Net Sales = Vatable Sales + VAT
    const vatable = tax > 0 ? Math.round(net / 1.12) : net;
    const vatAmt  = tax > 0 ? net - vatable : 0;
    
    totalGross   += gross;
    totalDiscountOnly += disc;
    totalMarketingExpense += marketingExpense;
    totalTax     += vatAmt;
    totalNet     += net;
    
    return {
      no: idx + 1,
      ticketId: r.ticket_no ? `#${String(r.ticket_no).padStart(4, "0")}` : String(r.id).slice(0, 8).toUpperCase(),
      ticketNo: Number(r.ticket_no ?? 0) || null,
      time: new Date(String(r.created_at)).toLocaleTimeString("en-PH", { hour: "2-digit", minute: "2-digit" }),
      date: new Date(String(r.created_at)).toLocaleDateString("en-PH"),
      type: String(r.ticket_type).replace("_", "-"),
      grossAmount: gross,
      discount: totalDiscount,
      netAmount: net,
      vatableSales: vatable,
      vatAmount: vatAmt,
      totalAmount: net, // TOTAL MUST BE NET AMOUNT (Vatable + VAT)
    };
  });

  const refundAmt = Number(refundsRow?.total ?? 0);
  const adjustedNet = totalNet - refundAmt;

  return c.json({
    date: day,
    transactions: items,
    summary: {
      totalTransactions: items.length,
      grossSalesCentavos: totalGross,
      discountsCentavos: totalDiscountOnly,
      discountOnlyCentavos: totalDiscountOnly,
      marketingExpenseCentavos: totalMarketingExpense,
      totalDiscountsCentavos: totalDiscountOnly + totalMarketingExpense,
      netSalesCentavos: totalNet,
      refundsCentavos: refundAmt,
      adjustedNetSalesCentavos: adjustedNet,
      vatableSalesCentavos: totalTax > 0 ? Math.round(adjustedNet / 1.12) : adjustedNet,
      vatCollectedCentavos: totalTax,
      vatExemptCentavos: 0,
      zeroRatedCentavos: 0,
    },
  });
});

// ── CSV Export ─────────────────────────────────────────────────────────────
reportRoutes.get("/export.csv", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const day = c.req.query("date") ?? new Date().toISOString().slice(0, 10);

  let dcPay: string;
  if (c.req.query("date")) {
    dcPay = `AND date(${PAY_TS}) = '${day}'`;
  } else {
    dcPay = dateClause(dateFrom, dateTo, dateMonth, PAY_TS).clause;
  }

  const rows = await c.env.DB.prepare(
    `SELECT p.id, p.tender_type, p.amount_centavos, p.status, p.created_at, p.confirmed_at,
       t.id as ticket_id, t.ticket_type,
       t.tax_centavos_snapshot
     FROM payments p JOIN tickets t ON t.id = p.ticket_id
     WHERE t.org_id = ? ${dcPay} ORDER BY p.created_at`,
  ).bind(auth.orgId).all();

  const header = "payment_id,ticket_id,ticket_type,tender_type,amount_centavos,amount_php,vat_centavos,status,created_at,confirmed_at\n";
  const lines = (rows.results as Record<string, unknown>[]).map((r) => {
    const amt = Number(r.amount_centavos ?? 0);
    const vat = Number(r.tax_centavos_snapshot ?? 0);
    return [
      r.id, r.ticket_id, r.ticket_type, r.tender_type,
      amt, (amt / 100).toFixed(2),
      vat,
      r.status, r.created_at, r.confirmed_at ?? "",
    ].join(",");
  }).join("\n") + "\n";

  return new Response(header + lines, {
    headers: {
      "Content-Type": "text/csv; charset=utf-8",
      "Content-Disposition": `attachment; filename="sales-report.csv"`,
    },
  });
});

// ── BIR CSV Export ─────────────────────────────────────────────────────────
reportRoutes.get("/bir.csv", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const day = c.req.query("date") ?? new Date().toISOString().slice(0, 10);

  let dc: string;
  if (c.req.query("date")) {
    dc = `AND date(t.updated_at) = '${day}'`;
  } else {
    dc = dateClause(dateFrom, dateTo, dateMonth, "t.updated_at").clause;
  }

  const tickets = await c.env.DB.prepare(
    `SELECT t.id, t.ticket_type, t.created_at, t.tax_centavos_snapshot, t.notes,
       (SELECT COALESCE(SUM(li.unit_price_centavos * li.qty), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as gross_amount,
       (SELECT COALESCE(SUM(li.discount_centavos), 0) FROM line_items li WHERE li.ticket_id = t.id AND li.voided = 0) as discount_amount
     FROM tickets t
     WHERE t.org_id = ? AND t.status = 'paid' ${dc}
     ORDER BY t.created_at ASC`,
  ).bind(auth.orgId).all();

  const header = "No.,OR/Ticket No.,Date,Time,Type,Gross Amount (PHP),Discount (PHP),Net Amount (PHP),Vatable Sales (PHP),VAT 12% (PHP),Total Sales (PHP)\n";
  let idx = 1;
  const lines = (tickets.results as Record<string, number | string>[]).map((r) => {
    const gross  = Number(r.gross_amount ?? 0) / 100;
    const discRaw = Number(r.discount_amount ?? 0) / 100;
    const isMarketingFreebie = String(r.notes ?? "").includes("[MARKETING_FREEBIE]");
    const marketingExpense = isMarketingFreebie ? gross : 0;
    const disc   = isMarketingFreebie ? 0 : discRaw;
    const totalDiscount = disc + marketingExpense;
    const net    = gross - totalDiscount;
    const tax    = Number(r.tax_centavos_snapshot ?? 0) / 100;
    const vatable= tax > 0 ? net / 1.12 : net;
    const vat    = tax > 0 ? net - vatable : 0;
    const dt = new Date(String(r.created_at));
    return [
      idx++,
      String(r.id).slice(0, 8).toUpperCase(),
      dt.toLocaleDateString("en-PH"),
      dt.toLocaleTimeString("en-PH", { hour: "2-digit", minute: "2-digit" }),
      String(r.ticket_type).replace("_", "-"),
      gross.toFixed(2), totalDiscount.toFixed(2), net.toFixed(2),
      vatable.toFixed(2), vat.toFixed(2),
      net.toFixed(2), // TOTAL MUST BE NET
    ].join(",");
  }).join("\n") + "\n";

  return new Response(header + lines, {
    headers: {
      "Content-Type": "text/csv; charset=utf-8",
      "Content-Disposition": `attachment; filename="BIR-Sales-Journal.csv"`,
    },
  });
});

// ── Sales by hour ──────────────────────────────────────────────────────────
reportRoutes.get("/sales-by-hour", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const day = c.req.query("date") ?? new Date().toISOString().slice(0, 10);
  const rows = await c.env.DB.prepare(
    `SELECT strftime('%H', ${PAY_TS}) as hour, SUM(p.amount_centavos) as total
     FROM payments p JOIN tickets t ON t.id = p.ticket_id
     WHERE t.org_id = ? AND p.status = 'completed' AND date(${PAY_TS}) = date(?)
     GROUP BY strftime('%H', ${PAY_TS}) ORDER BY hour`,
  ).bind(auth.orgId, day).all();
  return c.json({ series: rows.results ?? [] });
});
