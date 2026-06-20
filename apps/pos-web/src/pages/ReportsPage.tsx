import { FormEvent, useEffect, useMemo, useState } from "react";
import { api, formatPhp } from "../api.js";
import {
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend,
  ResponsiveContainer, PieChart, Pie, Cell, LineChart, Line,
} from "recharts";
import ExcelJS from "exceljs";
import { saveAs } from "file-saver";

const DEMOGRAPHICS = [
  { value: "", label: "All Profiles" },
  { value: "blue",   label: "🔵 Blue — Student" },
  { value: "green",  label: "🟢 Green — Professional" },
  { value: "red",    label: "🔴 Red — Family" },
  { value: "yellow", label: "🟡 Yellow — Senior" },
  { value: "purple", label: "🟣 Purple — Tourist" },
  { value: "orange", label: "🟠 Orange — Couple" },
  { value: "pink",   label: "🩷 Pink — Teenager" },
  { value: "brown",  label: "🟤 Brown — Group" },
];

const DEMO_COLORS: Record<string, string> = {
  blue: "#3b82f6", green: "#22c55e", red: "#ef4444", yellow: "#eab308",
  purple: "#a855f7", orange: "#f97316", pink: "#ec4899", brown: "#92400e",
};
const CHART_COLORS = ["#ee8a2f","#3b82f6","#22c55e","#ef4444","#a855f7","#eab308","#ec4899","#92400e"];

type Kpi = {
  totalTickets: number; totalRevenueCentavos: number; avgOrderValueCentavos: number; totalCupsSold: number;
  dineInCount: number; takeoutCount: number; avgRating: number | null;
  feedbackCount: number; topProduct: { name: string; sold: number } | null;
  peakHour: { hour: string; count: number } | null;
};

function KpiCard({ label, value, sub }: { label: string; value: string; sub?: string }) {
  return (
    <div className="card stack" style={{ flex: "1 1 150px", gap: 2, minWidth: 130, padding: "12px 16px" }}>
      <div className="muted" style={{ fontSize: 11, fontWeight: 700, textTransform: "uppercase", letterSpacing: "0.07em" }}>{label}</div>
      <div style={{ fontSize: 20, fontWeight: 800, color: "var(--text)", lineHeight: 1.2 }}>{value}</div>
      {sub && <div className="muted" style={{ fontSize: 11, marginTop: 2 }}>{sub}</div>}
    </div>
  );
}

type TopProductRow = { name: string; sold_count: number; revenue: number };

function TopProductsPanel({
  title,
  products,
  demo,
  unitLabel,
  emptyLabel,
  ct,
}: {
  title: string;
  products: TopProductRow[];
  demo: string;
  unitLabel: string;
  emptyLabel: string;
  ct: { grid: string; axis: string; bg: string };
}) {
  return (
    <div className="card stack" style={{ flex: "1 1 320px", gap: 10 }}>
      <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>{title}</h3>
      {products.length === 0 ? (
        <div className="muted" style={{ fontSize: 13 }}>{emptyLabel}</div>
      ) : (
        <>
          <div className="stack" style={{ gap: 6 }}>
            {products.slice(0, 5).map((p, i) => (
              <div
                key={`${p.name}-${i}`}
                className="row"
                style={{
                  justifyContent: "space-between",
                  alignItems: "center",
                  padding: "8px 12px",
                  background: "var(--bg)",
                  borderRadius: 8,
                  border: "1px solid var(--border)",
                }}
              >
                <div className="row" style={{ gap: 8, alignItems: "center", flex: 1, minWidth: 0 }}>
                  <span style={{ fontWeight: 700, fontSize: 11, color: "var(--muted)", minWidth: 18 }}>#{i + 1}</span>
                  <span
                    style={{
                      fontWeight: 600,
                      color: "var(--text)",
                      fontSize: 13,
                      overflow: "hidden",
                      textOverflow: "ellipsis",
                      whiteSpace: "nowrap",
                    }}
                  >
                    {p.name}
                  </span>
                </div>
                <div className="row" style={{ gap: 10, flexShrink: 0 }}>
                  <span style={{ fontWeight: 700, color: "var(--accent-strong)", fontSize: 13 }}>
                    {Number(p.sold_count).toLocaleString()} {unitLabel}
                  </span>
                  <span className="muted" style={{ fontSize: 11 }}>{formatPhp(Number(p.revenue))}</span>
                </div>
              </div>
            ))}
          </div>
          <ResponsiveContainer width="100%" height={150}>
            <BarChart data={products.slice(0, 6)} layout="vertical" margin={{ left: 0, right: 8, top: 0, bottom: 0 }}>
              <CartesianGrid strokeDasharray="3 3" stroke={ct.grid} />
              <XAxis type="number" stroke={ct.axis} tick={{ fontSize: 10 }} allowDecimals={false} />
              <YAxis type="category" dataKey="name" stroke={ct.axis} tick={{ fontSize: 10 }} width={100} />
              <Tooltip
                contentStyle={{
                  backgroundColor: ct.bg,
                  border: `1px solid ${ct.grid}`,
                  borderRadius: 10,
                  color: "var(--text)",
                  fontSize: 12,
                }}
                formatter={(v) => [Number(v ?? 0).toLocaleString(), unitLabel]}
              />
              <Bar
                dataKey="sold_count"
                name={unitLabel}
                fill={demo ? DEMO_COLORS[demo] ?? "var(--accent)" : "var(--accent)"}
                radius={[0, 4, 4, 0]}
              />
            </BarChart>
          </ResponsiveContainer>
        </>
      )}
    </div>
  );
}

export function ReportsPage() {
  const [tab, setTab] = useState<"eod" | "analytics" | "forecast" | "feedback" | "audit">("eod");
  const [demo, setDemo] = useState("");
  const [filterOpen, setFilterOpen] = useState(false);
  const activeLabel = DEMOGRAPHICS.find(d => d.value === demo)?.label ?? "All Profiles";

  // Date filter
  const [dateType, setDateType] = useState<"all" | "day" | "range" | "month">("all");
  const [dateDay, setDateDay] = useState(() => new Date().toISOString().slice(0, 10));
  const [dateFrom, setDateFrom] = useState(() => new Date().toISOString().slice(0, 10));
  const [dateTo, setDateTo] = useState(() => new Date().toISOString().slice(0, 10));
  const [dateMonth, setDateMonth] = useState(() => new Date().toISOString().slice(0, 7));

  const activeDateLabel = dateType === "all" ? "" :
    dateType === "day" ? dateDay :
    dateType === "range" ? `${dateFrom} → ${dateTo}` :
    dateMonth;

  function buildDateQ() {
    if (dateType === "day") return `&dateFrom=${dateDay}&dateTo=${dateDay}`;
    if (dateType === "range") return `&dateFrom=${dateFrom}&dateTo=${dateTo}`;
    if (dateType === "month") return `&dateMonth=${dateMonth}`;
    return "";
  }

  const [eodData, setEodData] = useState<Record<string, unknown> | null>(null);
  const [birData, setBirData] = useState<Record<string, unknown> | null>(null);
  const [birView, setBirView] = useState(false);
  const [birPage, setBirPage] = useState(1);
  const birLimit = 10;
  const [audit, setAudit] = useState<any[]>([]);
  const [auditSearch, setAuditSearch] = useState("");
  const [auditActionFilter, setAuditActionFilter] = useState("all");
  const [auditUserFilter, setAuditUserFilter] = useState("all");
  const [auditOrderFilter, setAuditOrderFilter] = useState<"all" | "order_processed" | "non_order">("all");
  const [auditTicketDetail, setAuditTicketDetail] = useState<any | null>(null);
  const [auditTicketLoading, setAuditTicketLoading] = useState(false);
  const [auditTicketError, setAuditTicketError] = useState<string | null>(null);
  const [kpi, setKpi] = useState<Kpi | null>(null);
  const [demographics, setDemographics] = useState<any[]>([]);
  const [orderTypes, setOrderTypes] = useState<any[]>([]);
  const [daily, setDaily] = useState<any[]>([]);
  const [cupProducts, setCupProducts] = useState<TopProductRow[]>([]);
  const [itemProducts, setItemProducts] = useState<TopProductRow[]>([]);
  const [feedbacks, setFeedbacks] = useState<any[]>([]);
  const [feedbackModalTicketId, setFeedbackModalTicketId] = useState<string | null>(null);
  const [forecast, setForecast] = useState<any>(null);
  const [forecastLoading, setForecastLoading] = useState(false);
  const [forecastError, setForecastError] = useState<string | null>(null);

  const demoQ = demo ? `&demographic=${encodeURIComponent(demo)}` : "";

  function refreshEod() {
    const dq = buildDateQ();
    api<Record<string, unknown>>(`/reports/eod?x=1${dq}`).then(setEodData).catch(() => setEodData(null));
    api<Record<string, unknown>>(`/reports/bir?x=1${dq}`).then(r => { setBirData(r); setBirPage(1); }).catch(() => setBirData(null));
  }
  function refreshAudit() {
    const dq = buildDateQ();
    api<{ events: any[] }>(`/audit?limit=200${dq}`).then(r => setAudit(r.events ?? [])).catch(() => setAudit([]));
  }
  const auditActions = useMemo(
    () => Array.from(new Set(audit.map((ev) => String(ev.action ?? "")).filter(Boolean))).sort(),
    [audit],
  );
  const auditUsers = useMemo(
    () => Array.from(new Set(audit.map((ev) => String(ev.user_name ?? "System")))).sort(),
    [audit],
  );
  const filteredAudit = useMemo(() => {
    const q = auditSearch.trim().toLowerCase();
    return audit.filter((ev) => {
      const isOrderProcessed = ev.action === "ticket.create";
      if (auditOrderFilter === "order_processed" && !isOrderProcessed) return false;
      if (auditOrderFilter === "non_order" && isOrderProcessed) return false;
      if (auditActionFilter !== "all" && String(ev.action) !== auditActionFilter) return false;
      if (auditUserFilter !== "all" && String(ev.user_name ?? "System") !== auditUserFilter) return false;
      if (!q) return true;
      const haystack = [
        ev.action,
        ev.entity_type,
        ev.entity_id,
        ev.ticket_no,
        ev.ticket_no ? `#${String(ev.ticket_no).padStart(4, "0")}` : "",
        ev.user_name ?? "System",
        new Date(String(ev.created_at)).toLocaleString(),
      ]
        .map((v) => String(v ?? "").toLowerCase())
        .join(" ");
      return haystack.includes(q);
    });
  }, [audit, auditSearch, auditActionFilter, auditUserFilter, auditOrderFilter]);
  function refreshAnalytics() {
    const dq = buildDateQ();
    api<Kpi>(`/analytics/kpi?x=1${demoQ}${dq}`).then(setKpi).catch(() => setKpi(null));
    api<{ demographics: any[] }>(`/analytics/demographics?x=1${dq}`).then(r => setDemographics(r.demographics ?? [])).catch(() => setDemographics([]));
    api<{ orderTypes: any[] }>(`/analytics/order-types?x=1${demoQ}${dq}`).then(r => setOrderTypes(r.orderTypes ?? [])).catch(() => setOrderTypes([]));
    api<{ daily: any[] }>(`/analytics/trends/daily?x=1${demoQ}${dq}`).then(r => setDaily(r.daily ?? [])).catch(() => setDaily([]));
    api<{ products: TopProductRow[] }>(`/analytics/trends/products?x=1&kind=cup${demoQ}${dq}`)
      .then(r => setCupProducts(r.products ?? []))
      .catch(() => setCupProducts([]));
    api<{ products: TopProductRow[] }>(`/analytics/trends/products?x=1&kind=item${demoQ}${dq}`)
      .then(r => setItemProducts(r.products ?? []))
      .catch(() => setItemProducts([]));
  }
  function refreshFeedback() {
    const dq = buildDateQ();
    api<{ feedbacks: any[] }>(`/analytics/feedback?x=1${demoQ}${dq}`).then(r => setFeedbacks(r.feedbacks ?? [])).catch(() => setFeedbacks([]));
  }
  function refreshForecast() {
    setForecastLoading(true);
    setForecastError(null);
    api<any>(`/analytics/forecast/7day?x=1`).then(r => {
      setForecast(r);
      setForecastLoading(false);
    }).catch(err => {
      setForecastError(err?.error || "Failed to load forecast");
      setForecastLoading(false);
    });
  }

  useEffect(() => {
    if (tab === "eod") refreshEod();
    else if (tab === "audit") refreshAudit();
    else if (tab === "analytics") refreshAnalytics();
    else if (tab === "feedback") refreshFeedback();
    else if (tab === "forecast") refreshForecast();
  }, [tab, demo, dateType, dateDay, dateFrom, dateTo, dateMonth]);

  useEffect(() => {
    if (tab !== "eod" && tab !== "audit") return;
    const onDataChanged = () => {
      if (tab === "eod") refreshEod();
      else if (tab === "audit") refreshAudit();
    };
    window.addEventListener("pos:data-changed", onDataChanged);
    window.addEventListener("pos:analytics-changed", onDataChanged);
    const channel = typeof BroadcastChannel !== "undefined" ? new BroadcastChannel("pos-live") : null;
    channel?.addEventListener("message", (ev: MessageEvent) => {
      if (ev.data?.type === "analytics:refresh") onDataChanged();
    });
    return () => {
      window.removeEventListener("pos:data-changed", onDataChanged);
      window.removeEventListener("pos:analytics-changed", onDataChanged);
      channel?.close();
    };
  }, [tab, demo, dateType, dateDay, dateFrom, dateTo, dateMonth]);

  useEffect(() => {
    if (tab !== "analytics") return;
    const onAnalyticsChanged = () => {
      refreshAnalytics();
    };
    window.addEventListener("pos:analytics-changed", onAnalyticsChanged);
    window.addEventListener("pos:data-changed", onAnalyticsChanged);
    const channel = typeof BroadcastChannel !== "undefined" ? new BroadcastChannel("pos-live") : null;
    channel?.addEventListener("message", (ev: MessageEvent) => {
      if (ev.data?.type === "analytics:refresh") onAnalyticsChanged();
    });
    const intervalId = window.setInterval(onAnalyticsChanged, 30_000);
    return () => {
      window.removeEventListener("pos:analytics-changed", onAnalyticsChanged);
      window.removeEventListener("pos:data-changed", onAnalyticsChanged);
      channel?.close();
      window.clearInterval(intervalId);
    };
  }, [tab, demo, dateType, dateDay, dateFrom, dateTo, dateMonth]);

  async function submitRetroactiveFeedback(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!feedbackModalTicketId) return;
    const fd = new FormData(e.currentTarget);
    await api(`/tickets/${feedbackModalTicketId}/meta`, { method: "PATCH", json: { feedbackRating: Number(fd.get("rating")), feedbackNotes: String(fd.get("notes")) } });
    setFeedbackModalTicketId(null);
    if (tab === "feedback") refreshFeedback();
    alert("Feedback saved!");
  }

  async function handleVoid(ticketId: string) {
    const reason = window.prompt("Void entire ticket? Type reason:");
    if (!reason) return;
    try {
      await api(`/tickets/${ticketId}/void-ticket`, { method: "POST", json: { reason } });
      refreshAudit();
      alert("Ticket voided successfully.");
    } catch (e: any) {
      alert("Failed to void ticket: " + e.message);
    }
  }

  async function handleRefund(ticketId: string) {
    const pesosStr = window.prompt("Refund Amount (PHP):");
    if (!pesosStr) return;
    const pesos = Number(pesosStr);
    if (isNaN(pesos) || pesos <= 0) {
      alert("Invalid amount.");
      return;
    }
    const reason = window.prompt("Refund Reason:") || "Customer request";
    try {
      await api(`/tickets/${ticketId}/refunds`, {
        method: "POST",
        json: { amountCentavos: Math.round(pesos * 100), reason, note: "Refunded from Audit log" }
      });
      refreshAudit();
      refreshEod();
      window.dispatchEvent(new CustomEvent("pos:data-changed"));
      alert("Refund recorded successfully.");
    } catch (e: any) {
      alert("Failed to refund: " + e.message);
    }
  }

  async function openTicketDetail(ticketId: string) {
    setAuditTicketLoading(true);
    setAuditTicketError(null);
    setAuditTicketDetail(null);
    try {
      const detail = await api<{
        ticket: { id: string; ticket_no?: number | null; created_at?: string | null };
        textReceipt: string;
        htmlReceipt?: string;
        mailtoUrl?: string;
      }>(`/tickets/${ticketId}/receipt`);
      setAuditTicketDetail(detail);
    } catch (err: any) {
      setAuditTicketError(err?.message ?? "Failed to load ticket receipt");
    } finally {
      setAuditTicketLoading(false);
    }
  }

  async function downloadIncomeSummaryXlsx() {
    if (!eodData) {
      alert("No data available to export.");
      return;
    }
    
    const wb = new ExcelJS.Workbook();
    const ws = wb.addWorksheet("Income Summary");
    
    ws.columns = [
      { header: "Metric", key: "metric", width: 35 },
      { header: "Value", key: "value", width: 20 },
    ];
    
    ws.getRow(1).font = { bold: true, color: { argb: "FFFFFFFF" } };
    ws.getRow(1).fill = { type: "pattern", pattern: "solid", fgColor: { argb: "FF4F81BD" } };

    const c = (val: any) => (Number(val) || 0) / 100;
    
    const data = [
      { metric: "Gross Sales", value: c(eodData.grossSalesCentavos) },
      { metric: "Less: Discounts", value: -c(eodData.discountsCentavos) },
      { metric: "Less: Marketing Expense", value: -c(eodData.marketingExpenseCentavos) },
      { metric: "Total Discounts", value: -c(eodData.totalDiscountsCentavos) },
      { metric: "Net Sales", value: c(eodData.netSalesCentavos) },
      { metric: "Less: Refunds / Returns", value: -c(eodData.refundsCentavos) },
      { metric: "Adjusted Net Revenue", value: c(eodData.adjustedNetCentavos) },
      { metric: "Adjusted Net After Marketing", value: c(eodData.adjustedAfterMarketingCentavos) },
      {},
      { metric: "VATable Sales (excl. VAT)", value: c(eodData.vatableSalesCentavos) },
      { metric: "Output VAT 12%", value: c(eodData.taxCollectedCentavos) },
      { metric: "VAT-Exempt Sales", value: 0 },
      { metric: "Zero-Rated Sales", value: 0 },
      {},
      { metric: "Cash", value: c(eodData.cashCentavos) },
      { metric: "E-Wallet", value: c(eodData.ewalletCentavos) },
      { metric: "Total Collected", value: c(eodData.totalCollectedCentavos) },
      {},
      { metric: "Total Tickets", value: Number(eodData.totalTickets) || 0, isCount: true },
      { metric: "Dine-in", value: Number(eodData.dineInCount) || 0, isCount: true },
      { metric: "Takeout", value: Number(eodData.takeoutCount) || 0, isCount: true },
      { metric: "Void Lines", value: Number(eodData.voidLineCount) || 0, isCount: true },
      { metric: "Marketing Freebie Tickets", value: Number(eodData.marketingTicketCount) || 0, isCount: true },
    ];
    
    data.forEach(row => {
      const addedRow = ws.addRow(row);
      if (row.metric) {
        if (!row.isCount) {
          addedRow.getCell('value').numFmt = '₱#,##0.00;[Red]-₱#,##0.00';
        } else {
          addedRow.getCell('value').numFmt = '#,##0';
        }
        if (["Gross Sales", "Net Sales", "Adjusted Net Revenue", "Total Collected"].includes(row.metric as string)) {
          addedRow.font = { bold: true };
          if (row.metric === "Total Collected" || row.metric === "Adjusted Net Revenue" || row.metric === "Net Sales") {
            addedRow.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFF2F2F2' } };
          }
        }
      }
    });

    const buf = await wb.xlsx.writeBuffer();
    saveAs(new Blob([buf]), `Income_Summary_${activeDateLabel || "Today"}.xlsx`);
  }

  async function downloadBirXlsx() {
    if (!birData || !birData.transactions || !birData.summary) {
      alert("No data available to export.");
      return;
    }
    const wb = new ExcelJS.Workbook();
    const ws = wb.addWorksheet("BIR Report");
    
    const s = birData.summary as any;
    const c = (val: any) => (Number(val) || 0) / 100;
    
    ws.getColumn('A').width = 25;
    ws.getColumn('B').width = 20;

    ws.addRow(["BIR Summary", ""]);
    ws.getRow(1).font = { bold: true, size: 14, color: { argb: "FFFFFFFF" } };
    ws.getRow(1).fill = { type: "pattern", pattern: "solid", fgColor: { argb: "FF4F81BD" } };
    ws.mergeCells('A1:B1');

    const summaryRows = [
      { label: "Total Transactions", value: Number(s.totalTransactions) || 0, isCount: true },
      { label: "Gross Sales", value: c(s.grossSalesCentavos) },
      { label: "Discounts", value: c(s.discountOnlyCentavos ?? s.discountsCentavos) },
      { label: "Marketing Expense", value: c(s.marketingExpenseCentavos) },
      { label: "Total Discounts", value: c(s.totalDiscountsCentavos ?? s.discountsCentavos) },
      { label: "Net Sales", value: c(s.netSalesCentavos) },
      { label: "VATable Sales", value: c(s.vatableSalesCentavos) },
      { label: "Output VAT 12%", value: c(s.vatCollectedCentavos) },
      { label: "VAT-Exempt", value: 0 },
      { label: "Zero-Rated", value: 0 },
    ];
    
    summaryRows.forEach(row => {
      const addedRow = ws.addRow([row.label, row.value]);
      if (row.isCount) {
        addedRow.getCell(2).numFmt = '#,##0';
      } else {
        addedRow.getCell(2).numFmt = '₱#,##0.00;[Red]-₱#,##0.00';
      }
      if (["Gross Sales", "Net Sales", "Total Transactions"].includes(row.label)) {
        addedRow.font = { bold: true };
        addedRow.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFF2F2F2' } };
      }
    });

    ws.addRow([]);
    ws.addRow([]);

    const txHeaderRow = ws.addRow(["No.", "OR/Ticket", "Date", "Time", "Type", "Gross", "Discount", "Net Sales", "Vatable", "VAT 12%", "Total"]);
    txHeaderRow.font = { bold: true, color: { argb: "FFFFFFFF" } };
    txHeaderRow.fill = { type: "pattern", pattern: "solid", fgColor: { argb: "FF00B050" } };
    
    const widths = [8, 15, 12, 10, 10, 12, 12, 12, 12, 12, 12];
    widths.forEach((w, i) => {
      ws.getColumn(i + 1).width = Math.max(ws.getColumn(i + 1).width || 0, w);
    });

    const txs = birData.transactions as any[];
    txs.forEach((r: any) => {
      const addedRow = ws.addRow([
        r.no, r.ticketId, r.date, r.time, r.type,
        c(r.grossAmount), c(r.discount), c(r.netAmount),
        c(r.vatableSales), c(r.vatAmount), c(r.totalAmount)
      ]);
      [6, 7, 8, 9, 10, 11].forEach(colIdx => {
        addedRow.getCell(colIdx).numFmt = '₱#,##0.00;[Red]-₱#,##0.00';
      });
    });

    const buf = await wb.xlsx.writeBuffer();
    saveAs(new Blob([buf]), `BIR_Report_${activeDateLabel || "Today"}.xlsx`);
  }

  const ct = { grid: "var(--border)", axis: "var(--muted)", bg: "var(--panel)" };

  return (
    <div className="page-shell stack" style={{ padding: "16px 24px", maxWidth: 1280, width: "100%", margin: "0 auto", position: "relative" }}>
      {/* Header */}
      <div className="row" style={{ justifyContent: "space-between", alignItems: "center", marginBottom: 24, flexWrap: "wrap", gap: 16 }}>
        <h1 className="page-title" style={{ margin: 0, fontSize: "2rem", color: "var(--text)" }}>Reports & Analytics</h1>
        <div className="row" style={{ gap: 10, alignItems: "center", flexWrap: "wrap" }}>
          <div className="row" style={{ gap: 8, background: "var(--panel)", padding: 6, borderRadius: 16, border: "1px solid var(--border)", flexWrap: "wrap" }}>
            {(["eod","analytics","forecast","feedback","audit"] as const).map(t => (
              <button key={t} type="button" className={tab === t ? "primary-btn" : "ghost-btn"} onClick={() => setTab(t)}>
                {t === "eod" ? "Sales Summary" : t === "analytics" ? "Analytics & KPI" : t === "forecast" ? "📈 AI Forecast" : t === "feedback" ? "Customer Feedback" : "Audit Logs"}
              </button>
            ))}
          </div>
          {(tab === "eod" || tab === "analytics" || tab === "feedback") && (
            <button type="button" className="ghost-btn" style={{ gap: 8, display: "flex", alignItems: "center", border: (demo || dateType !== "all") ? `2px solid ${demo ? DEMO_COLORS[demo] ?? "var(--accent)" : "var(--accent)"}` : "1px solid var(--border)", color: demo ? (DEMO_COLORS[demo] ?? "var(--accent-strong)") : "var(--text)" }} onClick={() => setFilterOpen(true)}>
              <span>⚙</span>
              <span style={{ fontWeight: 600 }}>{tab === "eod" ? (activeDateLabel || "Today") : `${activeLabel}${activeDateLabel ? ` · ${activeDateLabel}` : ""}`}</span>
              {(demo || dateType !== "all") && <span style={{ background: demo ? DEMO_COLORS[demo] : "var(--accent)", color: "#fff", borderRadius: "50%", width: 8, height: 8, display: "inline-block" }} />}
            </button>
          )}
        </div>
      </div>

      {/* ── SALES SUMMARY ── */}
      {tab === "eod" && (
        <div style={{ overflowY: "auto", maxHeight: "calc(100vh - 180px)", paddingRight: 4 }}>
          <div className="stack" style={{ gap: 18 }}>

            {/* Toolbar */}
            <div className="row" style={{ gap: 12, flexWrap: "wrap", alignItems: "center" }}>
              <div className="row" style={{ gap: 8, flexWrap: "wrap" }}>
                <button type="button" className={!birView ? "primary-btn" : "ghost-btn"} onClick={() => setBirView(false)}>Income Summary</button>
                <button type="button" className={birView ? "primary-btn" : "ghost-btn"} onClick={() => setBirView(true)}>BIR Report</button>
              </div>
              <div className="row" style={{ gap: 8 }}>
                <button type="button" className="ghost-btn" onClick={downloadIncomeSummaryXlsx}>
                  <span>⬇</span> XLSX
                </button>
                <button type="button" className="ghost-btn" onClick={downloadBirXlsx}>
                  <span>⬇</span> BIR XLSX
                </button>
                <button type="button" className="ghost-btn" onClick={() => {
                  const el = document.getElementById("printable-report");
                  if (!el) return;
                  const w = window.open("", "_blank")!;
                  w.document.write(`<!DOCTYPE html><html><head><title>Sales Report – ${activeDateLabel || "Today"}</title><style>body{font-family:Arial,sans-serif;padding:32px;color:#111;font-size:13px;}h1,h2,h3{margin:0 0 8px}table{width:100%;border-collapse:collapse;margin-top:8px}td,th{padding:6px 10px;text-align:left;border-bottom:1px solid #ddd}th{background:#f5f5f5;font-weight:700}.right{text-align:right}.sep{border-top:2px solid #333;font-weight:700}.total{font-weight:800;font-size:14px}</style></head><body>${el.innerHTML}</body></html>`);
                  w.document.close();
                  w.focus();
                  setTimeout(() => { w.print(); }, 500);
                }}>
                  🖨 Print / PDF
                </button>
              </div>
            </div>

            {/* Printable area */}
            <div id="printable-report">
              <div style={{ textAlign: "center", marginBottom: 16 }}>
                <h2 style={{ margin: 0, fontSize: 18, color: "var(--text)" }}>{birView ? "BIR Sales Journal" : "Sales Summary"}</h2>
                <div className="muted" style={{ fontSize: 13 }}>Range: {activeDateLabel || "Today (to now)"}</div>
              </div>

              {!birView ? (
                <div className="row" style={{ gap: 18, flexWrap: "wrap", alignItems: "stretch" }}>

                  {/* Income Statement */}
                  <div className="card stack" style={{ flex: "1 1 320px", gap: 0 }}>
                    <div style={{ fontWeight: 700, fontSize: 14, color: "var(--text)", borderBottom: "2px solid var(--border)", paddingBottom: 10, marginBottom: 10 }}>📊 Income Statement</div>
                    {[
                      ["Gross Sales", Number(eodData?.grossSalesCentavos ?? 0), false, false],
                      ["Less: Discounts", -Number(eodData?.discountsCentavos ?? 0), false, false],
                      ["Less: Marketing Expense", -Number(eodData?.marketingExpenseCentavos ?? 0), false, false],
                      ["Total Discounts", -Number(eodData?.totalDiscountsCentavos ?? 0), false, false],
                      ["Net Sales", Number(eodData?.netSalesCentavos ?? 0), true, false],
                      ["Less: Refunds / Returns", -Number(eodData?.refundsCentavos ?? 0), false, false],
                      ["Adjusted Net Revenue", Number(eodData?.adjustedNetCentavos ?? 0), true, false],
                      ["Adjusted Net After Marketing", Number(eodData?.adjustedAfterMarketingCentavos ?? 0), true, true],
                    ].map(([label, val, sep, bold]) => (
                      <div key={String(label)} className="row" style={{ justifyContent: "space-between", padding: "8px 0", borderBottom: sep ? "2px solid var(--border)" : "1px solid var(--border)", marginBottom: sep ? 6 : 0 }}>
                        <span style={{ fontSize: 13, color: "var(--muted)" }}>{String(label)}</span>
                        <strong style={{ fontSize: bold ? 16 : 13, color: Number(val) < 0 ? "#ef4444" : "var(--text)" }}>{Number(val) < 0 ? `(${formatPhp(-Number(val))})` : formatPhp(Number(val))}</strong>
                      </div>
                    ))}
                    <div className="row" style={{ justifyContent: "space-between", padding: "6px 0", marginTop: 8 }}>
                      <span className="muted" style={{ fontSize: 12 }}>Void Lines</span>
                      <span style={{ fontSize: 13, fontWeight: 600 }}>{String(eodData?.voidLineCount ?? 0)}</span>
                    </div>
                    <div className="row" style={{ justifyContent: "space-between", padding: "6px 0" }}>
                      <span className="muted" style={{ fontSize: 12 }}>Marketing Freebie Tickets</span>
                      <span style={{ fontSize: 13, fontWeight: 600 }}>{String(eodData?.marketingTicketCount ?? 0)}</span>
                    </div>
                  </div>

                  <div className="stack" style={{ flex: "1 1 280px", gap: 18 }}>
                    {/* VAT / Tax */}
                    <div className="card stack" style={{ gap: 0 }}>
                      <div style={{ fontWeight: 700, fontSize: 14, color: "var(--text)", borderBottom: "2px solid var(--border)", paddingBottom: 10, marginBottom: 10 }}>🧾 Tax Summary (BIR)</div>
                      {[
                        ["VATable Sales (excl. VAT)", Number(eodData?.vatableSalesCentavos ?? 0)],
                        ["Output VAT 12%", Number(eodData?.taxCollectedCentavos ?? 0)],
                        ["VAT-Exempt Sales", 0],
                        ["Zero-Rated Sales", 0],
                      ].map(([label, val]) => (
                        <div key={String(label)} className="row" style={{ justifyContent: "space-between", padding: "8px 0", borderBottom: "1px solid var(--border)" }}>
                          <span style={{ fontSize: 13, color: "var(--muted)" }}>{String(label)}</span>
                          <strong style={{ fontSize: 13, color: "var(--text)" }}>{formatPhp(Number(val))}</strong>
                        </div>
                      ))}
                    </div>

                    {/* Collections */}
                    <div className="card stack" style={{ gap: 0 }}>
                      <div style={{ fontWeight: 700, fontSize: 14, color: "var(--text)", borderBottom: "2px solid var(--border)", paddingBottom: 10, marginBottom: 10 }}>💰 Collections</div>
                      {[
                        ["Cash", Number(eodData?.cashCentavos ?? 0)],
                        ["E-Wallet", Number(eodData?.ewalletCentavos ?? 0)],
                        ["Total Collected", Number(eodData?.totalCollectedCentavos ?? 0)],
                      ].map(([label, val], i, arr) => (
                        <div key={String(label)} className="row" style={{ justifyContent: "space-between", padding: "8px 0", borderBottom: i === arr.length - 2 ? "2px solid var(--border)" : "1px solid var(--border)" }}>
                          <span style={{ fontSize: 13, color: i === arr.length - 1 ? "var(--text)" : "var(--muted)" }}>{String(label)}</span>
                          <strong style={{ fontSize: i === arr.length - 1 ? 16 : 13, color: "var(--text)" }}>{formatPhp(Number(val))}</strong>
                        </div>
                      ))}
                    </div>

                    {/* Transaction Stats */}
                    <div className="card stack" style={{ gap: 0 }}>
                      <div style={{ fontWeight: 700, fontSize: 14, color: "var(--text)", borderBottom: "2px solid var(--border)", paddingBottom: 10, marginBottom: 10 }}>🎫 Transactions</div>
                      {[
                        ["Total Tickets", String(eodData?.totalTickets ?? 0)],
                        ["Dine-in", String(eodData?.dineInCount ?? 0)],
                        ["Takeout", String(eodData?.takeoutCount ?? 0)],
                      ].map(([label, val]) => (
                        <div key={String(label)} className="row" style={{ justifyContent: "space-between", padding: "8px 0", borderBottom: "1px solid var(--border)" }}>
                          <span style={{ fontSize: 13, color: "var(--muted)" }}>{String(label)}</span>
                          <strong style={{ fontSize: 13, color: "var(--text)" }}>{String(val)}</strong>
                        </div>
                      ))}
                    </div>
                  </div>
                </div>

              ) : (
                /* BIR Report */
                <div className="stack" style={{ gap: 16 }}>
                  {/* BIR Summary */}
                  <div className="row" style={{ gap: 18, flexWrap: "wrap" }}>
                    {(() => { const s = birData?.summary as any; return s && ([
                      ["Total Transactions", String(s.totalTransactions)],
                      ["Gross Sales", formatPhp(Number(s.grossSalesCentavos))],
                      ["Discounts", formatPhp(Number(s.discountOnlyCentavos ?? s.discountsCentavos ?? 0))],
                      ["Marketing Expense", formatPhp(Number(s.marketingExpenseCentavos ?? 0))],
                      ["Total Discounts", formatPhp(Number(s.totalDiscountsCentavos ?? s.discountsCentavos ?? 0))],
                      ["Net Sales", formatPhp(Number(s.netSalesCentavos))],
                      ["Less: Refunds / Returns", formatPhp(-Number(s.refundsCentavos ?? 0))],
                      ["Adjusted Net Sales", formatPhp(Number(s.adjustedNetSalesCentavos ?? s.netSalesCentavos))],
                      ["VATable Sales", formatPhp(Number(s.vatableSalesCentavos))],
                      ["Output VAT 12%", formatPhp(Number(s.vatCollectedCentavos))],
                      ["VAT-Exempt", "₱0.00"],
                      ["Zero-Rated", "₱0.00"],
                    ] as [string,string][]).map(([l,v]) => (
                      <div key={l} className="card stack" style={{ flex: "1 1 130px", gap: 2, padding: "10px 14px" }}>
                        <div className="muted" style={{ fontSize: 10, fontWeight: 700, textTransform: "uppercase" }}>{l}</div>
                        <div style={{ fontSize: 16, fontWeight: 800, color: "var(--text)" }}>{v}</div>
                      </div>
                    )); })()}
                  </div>


                  {/* BIR Transaction Table */}
                  <div className="card" style={{ padding: 0, overflow: "hidden", border: "1px solid var(--border)", width: "100%", maxWidth: "none" }}>
                    <div style={{ padding: "14px 20px", background: "var(--bg-elevated)", borderBottom: "1px solid var(--border)", display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                      <span style={{ fontWeight: 800, fontSize: 13, textTransform: "uppercase", letterSpacing: "0.05em", color: "var(--text)" }}>Sales Journal — {activeDateLabel || "Today"}</span>
                      <span className="muted" style={{ fontSize: 11 }}>{((birData?.transactions ?? []) as any[]).length} Transactions</span>
                    </div>
                    <div style={{ overflowX: "auto" }}>
                      <table style={{ width: "100%", borderCollapse: "collapse", fontSize: 12, minWidth: 1000, tableLayout: "fixed" }}>
                        <thead>
                          <tr style={{ background: "var(--panel)" }}>
                            {[
                              { label: "No.", width: "50px", align: "left" },
                              { label: "OR/Ticket", width: "110px", align: "left" },
                              { label: "Date/Time", width: "130px", align: "left" },
                              { label: "Type", width: "90px", align: "left" },
                              { label: "Gross", width: "100px", align: "right" },
                              { label: "Discount", width: "100px", align: "right" },
                              { label: "Net Sales", width: "110px", align: "right" },
                              { label: "Vatable", width: "110px", align: "right" },
                              { label: "VAT 12%", width: "90px", align: "right" },
                              { label: "Total", width: "110px", align: "right" }
                            ].map(h => (
                              <th key={h.label} style={{ width: h.width, padding: "10px 12px", textAlign: h.align as any, fontWeight: 700, fontSize: 11, textTransform: "uppercase", color: "var(--muted)", borderBottom: "1px solid var(--border)", whiteSpace: "nowrap" }}>{h.label}</th>
                            ))}
                          </tr>
                        </thead>
                        <tbody>
                          {(() => {
                            const all = (birData?.transactions ?? []) as any[];
                            const start = (birPage - 1) * birLimit;
                            const slice = all.slice(start, start + birLimit);
                            
                            if (slice.length === 0) return <tr><td colSpan={10} style={{ padding: 40, textAlign: "center", color: "var(--muted)" }}>No transactions found.</td></tr>;

                            return slice.map((r: any) => (
                              <tr key={r.no} className="hover-row" style={{ borderBottom: "1px solid var(--border-subtle)" }}>
                                <td style={{ padding: "10px 12px", color: "var(--muted)" }}>{r.no}</td>
                                <td style={{ padding: "10px 12px", fontFamily: "'JetBrains Mono', monospace", fontSize: 11, fontWeight: 600 }}>{r.ticketId}</td>
                                <td style={{ padding: "10px 12px" }}>
                                  <div style={{ fontSize: 11, fontWeight: 500 }}>{r.date}</div>
                                  <div className="muted" style={{ fontSize: 10 }}>{r.time}</div>
                                </td>
                                <td style={{ padding: "10px 12px" }}>
                                  <span style={{ fontSize: 10, padding: "2px 6px", borderRadius: 4, background: r.type === "takeout" ? "var(--accent-muted)" : "var(--bg-elevated)", color: r.type === "takeout" ? "var(--accent-strong)" : "var(--text)", fontWeight: 700, textTransform: "uppercase" }}>{r.type}</span>
                                </td>
                                <td style={{ padding: "10px 12px", textAlign: "right" }}>{formatPhp(r.grossAmount)}</td>
                                <td style={{ padding: "10px 12px", textAlign: "right", color: "#ef4444" }}>{r.discount ? `(${formatPhp(r.discount)})` : "—"}</td>
                                <td style={{ padding: "10px 12px", textAlign: "right", fontWeight: 700 }}>{formatPhp(r.netAmount)}</td>
                                <td style={{ padding: "10px 12px", textAlign: "right" }}>{formatPhp(r.vatableSales)}</td>
                                <td style={{ padding: "10px 12px", textAlign: "right" }}>{r.vatAmount ? formatPhp(r.vatAmount) : "—"}</td>
                                <td style={{ padding: "10px 12px", textAlign: "right", fontWeight: 800, color: "var(--accent-strong)", fontSize: 13 }}>{formatPhp(r.totalAmount)}</td>
                              </tr>
                            ));
                          })()}
                        </tbody>
                      </table>
                    </div>

                    {/* Pagination Footer */}
                    {((birData?.transactions as any[])?.length > birLimit) && (
                      <div style={{ padding: "12px 20px", background: "var(--bg-elevated)", borderTop: "1px solid var(--border)", display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                        <div className="muted" style={{ fontSize: 12 }}>
                          Showing {Math.min(((birData?.transactions as any[]).length), (birPage - 1) * birLimit + 1)} to {Math.min((birPage * birLimit), (birData?.transactions as any[]).length)} of {(birData?.transactions as any[]).length}
                        </div>
                        <div className="row" style={{ gap: 6 }}>
                          <button type="button" className="ghost-btn tiny-btn" disabled={birPage === 1} onClick={() => setBirPage(p => Math.max(1, p - 1))}>Previous</button>
                          <div className="row" style={{ gap: 4, padding: "0 8px" }}>
                            {Array.from({ length: Math.ceil((birData?.transactions as any[]).length / birLimit) }).map((_, i) => (
                              <button key={i} type="button" 
                                onClick={() => setBirPage(i + 1)}
                                style={{ width: 28, height: 28, borderRadius: 6, border: "none", background: birPage === i + 1 ? "var(--accent)" : "transparent", color: birPage === i + 1 ? "#fff" : "var(--text)", fontWeight: 700, fontSize: 12, cursor: "pointer" }}>
                                {i + 1}
                              </button>
                            )).slice(Math.max(0, birPage - 3), Math.min(Math.ceil((birData?.transactions as any[]).length / birLimit), birPage + 2))}
                          </div>
                          <button type="button" className="ghost-btn tiny-btn" disabled={birPage >= Math.ceil((birData?.transactions as any[]).length / birLimit)} onClick={() => setBirPage(p => p + 1)}>Next</button>
                        </div>
                      </div>
                    )}
                  </div>


                </div>
              )}
            </div>
          </div>
        </div>
      )}

      {/* ── ANALYTICS & KPI ── */}
      {tab === "analytics" && (
        <div style={{ overflowY: "auto", maxHeight: "calc(100vh - 180px)", paddingRight: 4 }}>
          <div className="stack" style={{ gap: 18 }}>

            {/* KPI Cards — 4 per row */}
            {kpi && (
              <div className="row" style={{ gap: 12, flexWrap: "wrap" }}>
                <KpiCard label="Total Orders" value={kpi.totalTickets.toLocaleString()} sub={demo ? DEMOGRAPHICS.find(d=>d.value===demo)?.label : "All profiles"} />
                <KpiCard label="Total Cups Sold" value={kpi.totalCupsSold.toLocaleString()} sub="Items sold" />
                <KpiCard label="Total Revenue" value={formatPhp(kpi.totalRevenueCentavos)} sub="Completed payments" />
                <KpiCard label="Avg Order Value" value={formatPhp(kpi.avgOrderValueCentavos)} sub="Per ticket" />
                <KpiCard label="Avg Rating" value={kpi.avgRating != null ? `★ ${Number(kpi.avgRating).toFixed(1)}` : "—"} sub={`${kpi.feedbackCount} reviews`} />
                <KpiCard label="Dine-in" value={kpi.dineInCount.toLocaleString()} sub={`${kpi.totalTickets > 0 ? Math.round(kpi.dineInCount/kpi.totalTickets*100) : 0}% of orders`} />
                <KpiCard label="Takeout" value={kpi.takeoutCount.toLocaleString()} sub={`${kpi.totalTickets > 0 ? Math.round(kpi.takeoutCount/kpi.totalTickets*100) : 0}% of orders`} />
                <KpiCard label="Top Product" value={kpi.topProduct?.name ?? "—"} sub={kpi.topProduct ? `${kpi.topProduct.sold} sold` : ""} />
                <KpiCard label="Peak Hour" value={kpi.peakHour ? `${kpi.peakHour.hour}:00` : "—"} sub={kpi.peakHour ? `${kpi.peakHour.count} orders` : ""} />
              </div>
            )}

            {/* Row 2: Profile Counts + Daily Trend side by side */}
            <div className="row" style={{ gap: 18, flexWrap: "wrap", alignItems: "stretch" }}>

              {/* Profile Counts */}
              <div className="card stack" style={{ flex: "1 1 340px", gap: 12 }}>
                <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>Customer Profile Counts</h3>
                {demographics.length === 0
                  ? <div className="muted" style={{ fontSize: 13 }}>No demographic data yet.</div>
                  : (
                    <>
                      <div className="row" style={{ gap: 8, flexWrap: "wrap" }}>
                        {demographics.map(d => (
                          <div key={d.demographic_color} style={{ padding: "8px 12px", background: DEMO_COLORS[d.demographic_color] + "15", border: `1.5px solid ${DEMO_COLORS[d.demographic_color] ?? "#ccc"}`, borderRadius: 10, minWidth: 90, flex: "1 1 90px" }}>
                            <div style={{ fontWeight: 700, fontSize: 11, color: DEMO_COLORS[d.demographic_color], textTransform: "capitalize", marginBottom: 2 }}>{d.label ?? d.demographic_color}</div>
                            <div style={{ fontSize: 18, fontWeight: 800, color: "var(--text)" }}>{Number(d.ticket_count)}</div>
                            <div className="muted" style={{ fontSize: 10 }}>{formatPhp(Number(d.total_revenue))}</div>
                          </div>
                        ))}
                      </div>
                      <ResponsiveContainer width="100%" height={160}>
                        <BarChart data={demographics} margin={{ top: 0, right: 8, bottom: 0, left: -10 }}>
                          <CartesianGrid strokeDasharray="3 3" stroke={ct.grid} />
                          <XAxis dataKey="label" stroke={ct.axis} tick={{ fontSize: 10 }} />
                          <YAxis stroke={ct.axis} tick={{ fontSize: 10 }} />
                          <Tooltip contentStyle={{ backgroundColor: ct.bg, border: `1px solid ${ct.grid}`, borderRadius: 10, color: "var(--text)", fontSize: 12 }} />
                          <Bar dataKey="ticket_count" name="Orders" radius={[4, 4, 0, 0]}>
                            {demographics.map((d, i) => <Cell key={i} fill={DEMO_COLORS[d.demographic_color] ?? CHART_COLORS[i % CHART_COLORS.length]} />)}
                          </Bar>
                        </BarChart>
                      </ResponsiveContainer>
                    </>
                  )
                }
              </div>

              {/* Daily Trend */}
              <div className="card stack" style={{ flex: "1 1 340px", gap: 8 }}>
                <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>
                  Daily Orders Trend {demo ? `· ${DEMOGRAPHICS.find(d=>d.value===demo)?.label}` : "· All Profiles"}
                </h3>
                <div className="muted" style={{ fontSize: 12 }}>Ticket count & revenue over time</div>
                {daily.length === 0
                  ? <div className="muted" style={{ fontSize: 13, marginTop: 8 }}>No data for this filter.</div>
                  : (
                    <ResponsiveContainer width="100%" height={200}>
                      <LineChart data={daily} margin={{ top: 4, right: 8, bottom: 0, left: -10 }}>
                        <CartesianGrid strokeDasharray="3 3" stroke={ct.grid} />
                        <XAxis dataKey="day" stroke={ct.axis} tick={{ fontSize: 10 }} />
                        <YAxis yAxisId="left" stroke={ct.axis} tick={{ fontSize: 10 }} />
                        <YAxis yAxisId="right" orientation="right" stroke={ct.axis} tick={{ fontSize: 10 }} tickFormatter={v => `₱${(v/100).toFixed(0)}`} />
                        <Tooltip contentStyle={{ backgroundColor: ct.bg, border: `1px solid ${ct.grid}`, borderRadius: 10, color: "var(--text)", fontSize: 12 }} formatter={(v: any, name: any) => name === "revenue" ? formatPhp(Number(v)) : v} />
                        <Legend iconSize={10} wrapperStyle={{ fontSize: 11 }} />
                        <Line yAxisId="left" type="monotone" dataKey="ticket_count" stroke={demo ? DEMO_COLORS[demo] ?? "var(--accent)" : "var(--accent)"} name="Orders" strokeWidth={2} dot={false} activeDot={{ r: 4 }} />
                        <Line yAxisId="right" type="monotone" dataKey="revenue" stroke="#5bbf7a" name="Revenue" strokeWidth={2} dot={false} activeDot={{ r: 4 }} />
                      </LineChart>
                    </ResponsiveContainer>
                  )
                }
              </div>
            </div>

            {/* Row 3: Top Cup Products + Top Item Product */}
            <div className="row" style={{ gap: 18, flexWrap: "wrap", alignItems: "stretch" }}>
              <TopProductsPanel
                title={`Top Cup Products${demo ? ` · ${DEMOGRAPHICS.find(d => d.value === demo)?.label}` : ""}`}
                products={cupProducts}
                demo={demo}
                unitLabel="cups"
                emptyLabel="No cup product sales for this filter."
                ct={ct}
              />
              <TopProductsPanel
                title={`Top Item Product${demo ? ` · ${DEMOGRAPHICS.find(d => d.value === demo)?.label}` : ""}`}
                products={itemProducts}
                demo={demo}
                unitLabel="items"
                emptyLabel="No food/item sales for this filter. Mark categories as Item (e.g. Scrolls) in Catalog admin."
                ct={ct}
              />
            </div>

            {/* Row 4: Order Type Split */}
            <div className="row" style={{ gap: 18, flexWrap: "wrap", alignItems: "stretch" }}>
              <div className="card stack" style={{ flex: "1 1 240px", gap: 10 }}>
                <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>Order Type Split</h3>
                {orderTypes.length === 0
                  ? <div className="muted" style={{ fontSize: 13 }}>No order type data.</div>
                  : (
                    <>
                      <div className="row" style={{ gap: 10, flexWrap: "wrap" }}>
                        {orderTypes.map(o => (
                          <div key={o.ticket_type} className="stack" style={{ padding: "8px 14px", background: "var(--bg)", borderRadius: 10, border: "1px solid var(--border)", gap: 1, flex: 1 }}>
                            <div className="muted" style={{ fontSize: 11, textTransform: "capitalize" }}>{String(o.ticket_type).replace("_", " ")}</div>
                            <div style={{ fontSize: 18, fontWeight: 800, color: "var(--text)" }}>{Number(o.count).toLocaleString()}</div>
                            <div className="muted" style={{ fontSize: 11 }}>{formatPhp(Number(o.total_sales))}</div>
                          </div>
                        ))}
                      </div>
                      <ResponsiveContainer width="100%" height={180}>
                        <PieChart>
                          <Pie data={orderTypes} dataKey="count" nameKey="ticket_type" cx="50%" cy="50%" outerRadius={65} label={(entry: any) => `${String(entry.ticket_type ?? entry.name ?? "").replace("_","-")} ${(Number(entry.percent)*100).toFixed(0)}%`}>
                            {orderTypes.map((_, i) => <Cell key={i} fill={CHART_COLORS[i % CHART_COLORS.length]} />)}
                          </Pie>
                          <Tooltip formatter={(v: any) => [`${v} orders`]} contentStyle={{ backgroundColor: ct.bg, border: `1px solid ${ct.grid}`, borderRadius: 10, color: "var(--text)", fontSize: 12 }} />
                        </PieChart>
                      </ResponsiveContainer>
                    </>
                  )
                }
              </div>
            </div>

          </div>
        </div>
      )}

      {/* ── FEEDBACK ── */}
      {tab === "feedback" && (
        <div className="stack" style={{ gap: 16 }}>
          {demo && (
            <div className="row" style={{ alignItems: "center", gap: 10 }}>
              <span className="muted" style={{ fontSize: 13 }}>Filtered by:</span>
              <div style={{ background: DEMO_COLORS[demo] + "22", border: `1px solid ${DEMO_COLORS[demo]}`, color: DEMO_COLORS[demo], padding: "4px 12px", borderRadius: 20, fontSize: 13, fontWeight: 600 }}>{activeLabel}</div>
              <button type="button" className="ghost-btn tiny-btn" onClick={() => setDemo("")}>✕ Clear</button>
            </div>
          )}
          <div className="card stack" style={{ gap: 16, maxHeight: "65vh", overflow: "auto" }}>
            <h2 style={{ marginTop: 0, marginBottom: 8, fontWeight: 700, color: "var(--text)" }}>Customer Feedback</h2>
            {feedbacks.length === 0 ? <div className="muted">No feedback recorded yet.</div> : null}
            {feedbacks.map((f, i) => (
              <div key={i} className="stack" style={{ padding: "16px 20px", background: "var(--bg)", border: "1px solid var(--border)", borderRadius: 16 }}>
                <div className="row" style={{ justifyContent: "space-between", marginBottom: 8 }}>
                  <strong style={{ fontSize: 15, color: "var(--text)" }}>Ticket: {f.id.slice(0,8)}</strong>
                  <span className="muted" style={{ fontSize: 12 }}>{new Date(f.created_at).toLocaleString()}</span>
                </div>
                <div className="row" style={{ gap: 12, flexWrap: "wrap" }}>
                  {f.feedback_rating && <div style={{ background: "color-mix(in srgb, var(--accent) 15%, transparent)", color: "var(--accent-strong)", padding: "6px 12px", borderRadius: 8, fontWeight: 700, fontSize: 14, border: "1px solid color-mix(in srgb, var(--accent) 30%, transparent)" }}>★ {f.feedback_rating}/5</div>}
                  {f.demographic_color && (
                    <div style={{ background: DEMO_COLORS[f.demographic_color] + "22", border: `1px solid ${DEMO_COLORS[f.demographic_color] ?? "var(--border)"}`, padding: "6px 12px", borderRadius: 8, fontSize: 13, fontWeight: 600, color: DEMO_COLORS[f.demographic_color] ?? "var(--text)" }}>
                      {DEMOGRAPHICS.find(d => d.value === f.demographic_color)?.label ?? f.demographic_color}
                    </div>
                  )}
                </div>
                {f.feedback_notes && <div style={{ marginTop: 12, fontStyle: "italic", padding: "12px 16px", background: "var(--panel)", borderRadius: 10, borderLeft: "4px solid var(--accent-soft)", color: "var(--text)" }}>"{f.feedback_notes}"</div>}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* ── AI FORECAST ── */}
      {tab === "forecast" && (
        <div style={{ overflowY: "auto", maxHeight: "calc(100vh - 180px)", paddingRight: 4 }}>
          <div className="stack" style={{ gap: 18 }}>
            {/* Header */}
            <div className="row" style={{ gap: 12, alignItems: "center", justifyContent: "space-between", flexWrap: "wrap" }}>
              <div className="stack" style={{ gap: 4 }}>
                <h2 style={{ margin: 0, fontSize: 18, fontWeight: 700, color: "var(--text)" }}>📈 AI-Powered Demand Forecast</h2>
                <p className="muted" style={{ margin: 0, fontSize: 12 }}>Next 7 days predicted sales using historical patterns</p>
              </div>
              <button 
                type="button" 
                className={forecastLoading ? "ghost-btn" : "primary-btn"} 
                onClick={refreshForecast}
                disabled={forecastLoading}
                style={{ minWidth: 140 }}>
                {forecastLoading ? "⟳ Loading..." : "🔄 Refresh"}
              </button>
            </div>

            {/* Error State */}
            {forecastError && (
              <div style={{ padding: "14px 16px", background: "#ef4444", color: "#fff", borderRadius: 12, border: "1px solid #ef4444", fontSize: 13 }}>
                <strong>⚠ Error:</strong> {forecastError}
              </div>
            )}

            {/* Loading State */}
            {forecastLoading && (
              <div style={{ textAlign: "center", padding: "40px 20px", color: "var(--muted)" }}>
                <div style={{ fontSize: 14, marginBottom: 12 }}>Computing forecast with AI model...</div>
                <div style={{ animation: "spin 1s linear infinite", display: "inline-block", fontSize: 24 }}>⟳</div>
              </div>
            )}

            {/* Forecast Content */}
            {forecast && !forecastLoading && (
              <div className="stack" style={{ gap: 16 }}>
                {/* Model Info */}
                <div className="row" style={{ gap: 16, flexWrap: "wrap", padding: "12px 16px", background: "var(--bg-elevated)", borderRadius: 12, border: "1px solid var(--border)" }}>
                  <div className="stack" style={{ gap: 2, flex: 1 }}>
                    <div className="muted" style={{ fontSize: 11, textTransform: "uppercase", fontWeight: 700 }}>Model</div>
                    <div style={{ fontSize: 13, fontWeight: 600, color: "var(--text)" }}>
                      {forecast.usedAI ? "🧠 Nemotron 3 Super (OpenRouter)" : "📊 Statistical Forecast"}
                    </div>
                  </div>
                  <div className="stack" style={{ gap: 2, flex: 1 }}>
                    <div className="muted" style={{ fontSize: 11, textTransform: "uppercase", fontWeight: 700 }}>Historical Data</div>
                    <div style={{ fontSize: 13, fontWeight: 600, color: "var(--text)" }}>
                      {forecast.historicalDataPoints || 0} data points
                    </div>
                  </div>
                </div>

                <div style={{ display: "grid", gridTemplateColumns: "repeat(auto-fit, minmax(400px, 1fr))", gap: 18, alignItems: "start" }}>
                  <div className="stack" style={{ gap: 18 }}>
                    {/* 7-Day Forecast Chart */}
                    {forecast.forecasts && forecast.forecasts.length > 0 && (
                      <div className="card stack" style={{ gap: 12 }}>
                        <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>7-Day Forecast</h3>
                        <div className="muted" style={{ fontSize: 12 }}>Predicted daily order volume</div>
                        <ResponsiveContainer width="100%" height={280}>
                          <BarChart 
                            data={forecast.forecasts.map((f: any) => ({
                              date: new Date(f.date).toLocaleDateString("en-US", { month: "short", day: "numeric" }),
                              units: f.totalForecastedUnits,
                              fullDate: f.date,
                            }))}
                            margin={{ top: 0, right: 8, bottom: 0, left: -10 }}>
                            <CartesianGrid strokeDasharray="3 3" stroke={ct.grid} />
                            <XAxis dataKey="date" stroke={ct.axis} tick={{ fontSize: 10 }} />
                            <YAxis stroke={ct.axis} tick={{ fontSize: 10 }} />
                            <Tooltip 
                              contentStyle={{ backgroundColor: ct.bg, border: `1px solid ${ct.grid}`, borderRadius: 10, color: "var(--text)", fontSize: 12 }}
                              formatter={(v: any) => [`${v} units`, "Forecasted"]}
                              labelFormatter={(label) => `Forecast: ${String(label)}`}
                            />
                            <Bar dataKey="units" name="Forecasted Units" fill="#3b82f6" radius={[4, 4, 0, 0]} />
                          </BarChart>
                        </ResponsiveContainer>
                      </div>
                    )}

                    {/* Product Breakdown */}
                    {forecast.forecasts && forecast.forecasts[0]?.byProduct && (
                      <div className="card stack" style={{ gap: 12 }}>
                        <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>Product Forecast Breakdown</h3>
                        <div className="muted" style={{ fontSize: 12 }}>Predicted units per product across 7 days</div>
                        
                        {/* Product rows */}
                        <div className="stack" style={{ gap: 8 }}>
                          {forecast.forecasts[0].byProduct.map((product: any, i: number) => {
                            const total = forecast.forecasts.reduce((sum: number, day: any) => {
                              const p = day.byProduct.find((bp: any) => bp.productName === product.productName);
                              return sum + (p?.forecastedUnits || 0);
                            }, 0);
                            
                            return (
                              <div key={i} className="row" style={{ justifyContent: "space-between", alignItems: "center", padding: "10px 12px", background: "var(--bg)", borderRadius: 8, border: "1px solid var(--border)" }}>
                                <div className="stack" style={{ gap: 2, flex: 1 }}>
                                  <div style={{ fontWeight: 600, fontSize: 13, color: "var(--text)" }}>{product.productName}</div>
                                  <div className="muted" style={{ fontSize: 10 }}>7-day total: {total} units</div>
                                </div>
                                <div style={{ fontSize: 16, fontWeight: 800, color: "#22c55e" }}>{total}</div>
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    )}
                  </div>

                  <div className="stack" style={{ gap: 18 }}>
                    {/* Insights */}
                    {forecast.insights && forecast.insights.length > 0 && (
                      <div className="card stack" style={{ gap: 12, border: "1px solid color-mix(in srgb, var(--accent) 30%, transparent)" }}>
                        <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--accent-strong)" }}>💡 Market & Trend Insights</h3>
                        <div className="stack" style={{ gap: 10 }}>
                          {forecast.insights.map((insight: any, i: number) => {
                            const colors = { trend: '#3b82f6', demographic: '#8b5cf6', season: '#eab308', calendar: '#ec4899' };
                            const icons = { trend: '📈', demographic: '👥', season: '🌤️', calendar: '📅' };
                            const color = colors[insight.type as keyof typeof colors] || '#3b82f6';
                            const icon = icons[insight.type as keyof typeof icons] || '💡';
                            return (
                              <div key={i} style={{ padding: "14px 16px", background: "var(--bg-elevated)", borderLeft: `4px solid ${color}`, borderRadius: "4px 8px 8px 4px", borderTop: "1px solid var(--border)", borderRight: "1px solid var(--border)", borderBottom: "1px solid var(--border)", display: "flex", flexDirection: "column", gap: 6 }}>
                                <div className="row" style={{ gap: 8, alignItems: "center" }}>
                                  <span style={{ fontSize: 16 }}>{icon}</span>
                                  <div style={{ fontWeight: 700, fontSize: 13, color: "var(--text)" }}>{insight.title}</div>
                                </div>
                                <div className="muted" style={{ fontSize: 12, lineHeight: 1.5, paddingLeft: 24 }}>{insight.content}</div>
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    )}

                    {/* Daily Breakdown */}
                    {forecast.forecasts && forecast.forecasts.length > 0 && (
                      <div className="card stack" style={{ gap: 12 }}>
                        <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>Daily Overview</h3>
                        <div className="stack" style={{ gap: 8 }}>
                          {forecast.forecasts.slice(0, 7).map((day: any, i: number) => (
                            <div key={i} className="row" style={{ justifyContent: "space-between", alignItems: "center", padding: "12px 14px", background: "var(--bg)", borderRadius: 10, border: "1px solid var(--border)" }}>
                              <div className="stack" style={{ gap: 2, flex: 1 }}>
                                <div style={{ fontWeight: 700, fontSize: 13, color: "var(--text)" }}>
                                  {new Date(day.date).toLocaleDateString("en-US", { weekday: "short", month: "short", day: "numeric" })}
                                </div>
                                <div className="muted" style={{ fontSize: 11 }}>
                                  {day.byProduct.length} products
                                </div>
                              </div>
                              <div className="stack" style={{ gap: 2, alignItems: "flex-end" }}>
                                <div style={{ fontSize: 18, fontWeight: 800, color: "var(--accent-strong)" }}>
                                  {day.totalForecastedUnits}
                                </div>
                                <div className="muted" style={{ fontSize: 11 }}>units</div>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}

                    {/* Generic Model Info */}
                    <div className="card stack" style={{ gap: 10, background: "color-mix(in srgb, var(--accent) 8%, transparent)", border: "1px solid color-mix(in srgb, var(--accent) 20%, transparent)" }}>
                      <div style={{ fontSize: 13, color: "var(--text)", lineHeight: 1.6 }}>
                        <p style={{ margin: "0 0 8px 0" }}>
                          This forecast is generated using <strong>{forecast.usedAI ? "advanced AI analysis" : "statistical modeling"}</strong> based on your historical sales data.
                        </p>
                        <p style={{ margin: 0, fontSize: 12, color: "var(--muted)" }}>
                          ℹ Currently using {forecast.historicalDataPoints} data points for analysis.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            )}

            {/* Empty State */}
            {!forecast && !forecastLoading && !forecastError && (
              <div className="card" style={{ padding: "40px 24px", textAlign: "center", color: "var(--muted)" }}>
                <div style={{ fontSize: 14, marginBottom: 12 }}>Click "Refresh" to generate a 7-day demand forecast</div>
              </div>
            )}
          </div>
        </div>
      )}

      {/* ── AUDIT ── */}
      {tab === "audit" && (
        <div className="card stack" style={{ gap: 0, maxHeight: "75vh", overflow: "auto" }}>
          <h2 style={{ marginTop: 0, marginBottom: 16, fontWeight: 700, color: "var(--text)" }}>System Audit Logs</h2>
          <div className="row" style={{ gap: 10, flexWrap: "wrap", marginBottom: 14, alignItems: "center" }}>
            <input
              className="field"
              type="search"
              placeholder="Search action, user, receipt/ticket no, date..."
              value={auditSearch}
              onChange={(e) => setAuditSearch(e.target.value)}
              style={{ flex: "1 1 200px" }}
            />
            <select className="field" value={auditActionFilter} onChange={(e) => setAuditActionFilter(e.target.value)} style={{ flex: "1 1 120px" }}>
              <option value="all">All Actions</option>
              {auditActions.map((action) => (
                <option key={action} value={action}>{action}</option>
              ))}
            </select>
            <select className="field" value={auditUserFilter} onChange={(e) => setAuditUserFilter(e.target.value)} style={{ flex: "1 1 120px" }}>
              <option value="all">All Users</option>
              {auditUsers.map((user) => (
                <option key={user} value={user}>{user}</option>
              ))}
            </select>
            <select className="field" value={auditOrderFilter} onChange={(e) => setAuditOrderFilter(e.target.value as "all" | "order_processed" | "non_order")} style={{ flex: "1 1 140px" }}>
              <option value="all">All Log Types</option>
              <option value="order_processed">Order Processed Only</option>
              <option value="non_order">Exclude Order Processed</option>
            </select>
            <button type="button" className="ghost-btn" style={{ fontWeight: 600, padding: "8px 12px", border: "1px solid var(--border)" }} onClick={() => setFilterOpen(true)}>
              📅 Date Filter
            </button>
            {(auditSearch || auditActionFilter !== "all" || auditUserFilter !== "all" || auditOrderFilter !== "all" || dateType !== "all") && (
              <button
                type="button"
                className="ghost-btn tiny-btn"
                onClick={() => {
                  setAuditSearch("");
                  setAuditActionFilter("all");
                  setAuditUserFilter("all");
                  setAuditOrderFilter("all");
                  setDateType("all");
                }}
              >
                Clear
              </button>
            )}
          </div>
          <div className="muted" style={{ fontSize: 12, marginBottom: 10 }}>
            Showing {filteredAudit.length} of {audit.length} logs
          </div>
          {filteredAudit.length === 0 && (
            <div className="muted" style={{ padding: "20px 8px" }}>No audit logs match your current filters.</div>
          )}
          {filteredAudit.map(ev => {
            const isPurchase = ev.action === "ticket.create" || ev.action === "ticket.close_freebie";
            const isTicketLifecycle = [
              "ticket.opened",
              "ticket.parked",
              "ticket.resumed",
              "ticket.void",
              "ticket.refund",
              "refund.create",
            ].includes(String(ev.action));
            const formattedTicketNo = ev.ticket_no ? `#${String(ev.ticket_no).padStart(4, "0")}` : null;
            return (
              <div key={String(ev.id)} className="row" style={{ fontSize: 13, borderBottom: "1px solid var(--border)", padding: "14px 12px", gap: 16, alignItems: "center", background: isPurchase ? "color-mix(in srgb, var(--ok) 5%, transparent)" : "transparent", borderRadius: isPurchase ? 8 : 0, margin: isPurchase ? "3px 0" : 0 }}>
                <div className="muted" style={{ minWidth: 140 }}>{new Date(String(ev.created_at)).toLocaleString()}</div>
                <div style={{ flex: 1, color: "var(--text)" }}>
                  <strong style={{ color: "var(--ok)", fontSize: 14 }}>{String(ev.action)}</strong>
                  {isPurchase ? <span style={{ marginLeft: 8, padding: "2px 6px", background: "var(--ok)", color: "#fff", borderRadius: 4, fontSize: 10, fontWeight: 700 }}>ORDER PROCESSED</span> : null}
                  {formattedTicketNo && (isPurchase || isTicketLifecycle) ? (
                    <span style={{ marginLeft: 8, padding: "2px 7px", background: "var(--accent-muted)", color: "var(--accent-strong)", borderRadius: 999, fontSize: 11, fontWeight: 700, border: "1px solid var(--accent)" }}>
                      Ticket {formattedTicketNo}
                    </span>
                  ) : null}
                  {ev.entity_type && !isTicketLifecycle && !isPurchase ? <span className="muted" style={{ marginLeft: 6 }}>· {String(ev.entity_type)}</span> : ""}
                </div>
                <div className="row" style={{ gap: 8 }}>
                  {isPurchase && ev.entity_id && (
                    <button
                      type="button"
                      className="ghost-btn tiny-btn"
                      style={{ borderColor: "var(--border)", color: "var(--text)", padding: "4px 8px" }}
                      onClick={() => void openTicketDetail(String(ev.entity_id))}
                      title="View Ticket"
                    >
                      <span className="btn-icon" style={{ marginRight: 0 }}>📄</span> <span className="hide-mobile">View</span>
                    </button>
                  )}
                  {isPurchase && ev.entity_id && (
                    <button type="button" className="ghost-btn tiny-btn" style={{ borderColor: "var(--accent)", color: "var(--accent-strong)", padding: "4px 8px" }} onClick={() => setFeedbackModalTicketId(String(ev.entity_id))} title="Add Feedback">
                      <span className="btn-icon" style={{ marginRight: 0 }}>💬</span>
                    </button>
                  )}
                  {isPurchase && ev.entity_id && (
                    <button type="button" className="ghost-btn tiny-btn" style={{ borderColor: "#f59e0b", color: "#d97706", padding: "4px 8px" }} onClick={() => void handleRefund(String(ev.entity_id))} title="Refund Ticket">
                      <span className="btn-icon" style={{ marginRight: 0 }}>↩</span>
                    </button>
                  )}
                  {isPurchase && ev.entity_id && (
                    <button type="button" className="ghost-btn tiny-btn" style={{ borderColor: "#ef4444", color: "#ef4444", padding: "4px 8px" }} onClick={() => void handleVoid(String(ev.entity_id))} title="Void Ticket">
                      <span className="btn-icon" style={{ marginRight: 0 }}>✕</span>
                    </button>
                  )}
                  <div className="muted" style={{ minWidth: 90, textAlign: "center", fontWeight: 600, background: "var(--bg)", padding: "4px 10px", borderRadius: 12, border: "1px solid var(--border)", fontSize: 12 }}>
                    {ev.user_name ?? "System"}
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Filter Modal */}
      {filterOpen && (
        <div className="sheet" role="dialog" onClick={e => { if (e.target === e.currentTarget) setFilterOpen(false); }}>
          <div className="sheet-inner stack" style={{ maxWidth: 500, maxHeight: "85vh", overflowY: "auto", gap: 0 }}>
            <div className="row" style={{ justifyContent: "space-between", alignItems: "center", marginBottom: 4 }}>
              <h2 style={{ margin: 0 }}>Filters</h2>
              <button type="button" className="ghost-btn tiny-btn" onClick={() => setFilterOpen(false)}>✕ Close</button>
            </div>
            <p className="muted" style={{ fontSize: 13, marginTop: 0, marginBottom: 20 }}>Filter charts and KPI cards by profile and date.</p>

            {/* ── DATE FILTER SECTION ── */}
            <div className="stack" style={{ gap: 10, marginBottom: 24 }}>
              <div style={{ fontWeight: 700, fontSize: 13, color: "var(--text)", borderBottom: "1px solid var(--border)", paddingBottom: 8, marginBottom: 4 }}>📅 Date Range</div>
              <div className="row" style={{ gap: 8, flexWrap: "wrap" }}>
                {(["all", "day", "range", "month"] as const).map(t => (
                  <button key={t} type="button"
                    className={dateType === t ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
                    onClick={() => setDateType(t)}>
                    {t === "all" ? "All Time" : t === "day" ? "Specific Day" : t === "range" ? "Date Range" : "Monthly"}
                  </button>
                ))}
              </div>

              {dateType === "day" && (
                <div className="stack" style={{ gap: 4 }}>
                  <div className="label">Select Date</div>
                  <input className="field" type="date" value={dateDay} onChange={e => setDateDay(e.target.value)} />
                </div>
              )}

              {dateType === "range" && (
                <div className="row" style={{ gap: 12 }}>
                  <div className="stack" style={{ gap: 4, flex: 1 }}>
                    <div className="label">From</div>
                    <input className="field" type="date" value={dateFrom} onChange={e => setDateFrom(e.target.value)} />
                  </div>
                  <div className="stack" style={{ gap: 4, flex: 1 }}>
                    <div className="label">To</div>
                    <input className="field" type="date" value={dateTo} onChange={e => setDateTo(e.target.value)} />
                  </div>
                </div>
              )}

              {dateType === "month" && (
                <div className="stack" style={{ gap: 4 }}>
                  <div className="label">Select Month</div>
                  <input className="field" type="month" value={dateMonth} onChange={e => setDateMonth(e.target.value)} />
                </div>
              )}

              {activeDateLabel && (
                <div className="row" style={{ alignItems: "center", gap: 8, marginTop: 4 }}>
                  <span className="muted" style={{ fontSize: 12 }}>Active:</span>
                  <span style={{ fontSize: 12, fontWeight: 700, color: "var(--accent-strong)", background: "color-mix(in srgb, var(--accent) 12%, transparent)", padding: "3px 10px", borderRadius: 8, border: "1px solid color-mix(in srgb, var(--accent) 25%, transparent)" }}>{activeDateLabel}</span>
                  <button type="button" className="ghost-btn tiny-btn" onClick={() => setDateType("all")}>✕ Clear</button>
                </div>
              )}
            </div>

            {/* ── PROFILE FILTER SECTION ── */}
            <div className="stack" style={{ gap: 10 }}>
              <div style={{ fontWeight: 700, fontSize: 13, color: "var(--text)", borderBottom: "1px solid var(--border)", paddingBottom: 8, marginBottom: 4 }}>👤 Customer Profile</div>
              <div className="stack" style={{ gap: 8 }}>
                {DEMOGRAPHICS.map(d => (
                  <button key={d.value} type="button"
                    onClick={() => setDemo(d.value)}
                    style={{ display: "flex", alignItems: "center", gap: 14, padding: "10px 14px", borderRadius: 12, border: demo === d.value ? `2px solid ${DEMO_COLORS[d.value] ?? "var(--accent)"}` : "1px solid var(--border)", background: demo === d.value ? (d.value ? DEMO_COLORS[d.value] + "18" : "var(--bg-elevated)") : "var(--bg)", cursor: "pointer", textAlign: "left", width: "100%" }}>
                    <span style={{ fontSize: 18 }}>{d.label.split(" ")[0]}</span>
                    <div className="stack" style={{ gap: 2, flex: 1 }}>
                      <span style={{ fontWeight: 700, fontSize: 13, color: d.value ? (DEMO_COLORS[d.value] ?? "var(--text)") : "var(--text)" }}>
                        {d.label.replace(/^\S+\s+/, "")}
                      </span>
                      {d.value && (
                        <span className="muted" style={{ fontSize: 11 }}>
                          {demographics.find(dm => dm.demographic_color === d.value)?.ticket_count ?? 0} orders recorded
                        </span>
                      )}
                    </div>
                    {demo === d.value && <span style={{ color: DEMO_COLORS[d.value] ?? "var(--accent)", fontSize: 16, fontWeight: 700 }}>✓</span>}
                  </button>
                ))}
              </div>
            </div>

            {/* Apply / Reset */}
            <div className="row" style={{ marginTop: 20, gap: 10 }}>
              <button type="button" className="primary-btn" style={{ flex: 1 }} onClick={() => setFilterOpen(false)}>Apply Filters</button>
              <button type="button" className="ghost-btn" onClick={() => { setDemo(""); setDateType("all"); }}>Reset All</button>
            </div>
          </div>
        </div>
      )}

      {/* Feedback modal */}
      {feedbackModalTicketId && (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <h2 style={{ margin: 0 }}>Add Retroactive Feedback</h2>
            <p className="muted" style={{ fontSize: 13, marginTop: 0 }}>Ticket {feedbackModalTicketId.slice(0, 8)}</p>
            <form className="stack" onSubmit={submitRetroactiveFeedback}>
              <div className="label">Rating (1–5)</div>
              <input className="field" name="rating" type="number" min="1" max="5" defaultValue={5} required />
              <div className="label">Notes / Comments</div>
              <textarea className="field" name="notes" placeholder="What did they say?" style={{ minHeight: 80, resize: "vertical" }} />
              <div className="row" style={{ marginTop: 12 }}>
                <button className="primary-btn" type="submit">Save Feedback</button>
                <button type="button" className="ghost-btn" onClick={() => setFeedbackModalTicketId(null)}>Cancel</button>
              </div>
            </form>
          </div>
        </div>
      )}
      {auditTicketLoading && (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <h2 style={{ margin: 0 }}>Ticket Details</h2>
            <div className="muted">Loading ticket information...</div>
            <div className="row">
              <button type="button" className="ghost-btn" onClick={() => setAuditTicketLoading(false)}>Close</button>
            </div>
          </div>
        </div>
      )}
      {(auditTicketDetail || auditTicketError) && !auditTicketLoading && (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack" style={{ maxWidth: 760 }}>
            <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
              <h2 style={{ margin: 0 }}>
                Receipt {auditTicketDetail?.ticket?.ticket_no ? `#${String(auditTicketDetail.ticket.ticket_no).padStart(4, "0")}` : ""}
              </h2>
              <button type="button" className="ghost-btn tiny-btn" onClick={() => { setAuditTicketDetail(null); setAuditTicketError(null); }}>✕ Close</button>
            </div>
            {auditTicketError ? (
              <div style={{ color: "#ef4444", fontSize: 13 }}>{auditTicketError}</div>
            ) : (
              <>
                <div style={{ display: "grid", placeItems: "center", padding: "6px 0 2px" }}>
                  <div
                    style={{
                      width: "100%",
                      maxWidth: 430,
                      background: "#fff",
                      color: "#111",
                      border: "1px solid #e5e7eb",
                      borderRadius: 14,
                      boxShadow: "0 14px 34px rgba(0,0,0,.12)",
                      padding: "22px 20px",
                    }}
                  >
                    <div style={{ textAlign: "center", marginBottom: 8, fontWeight: 800, fontSize: 15, letterSpacing: ".04em" }}>
                      OFFICIAL RECEIPT
                    </div>
                    <div style={{ borderTop: "1px dashed #d1d5db", margin: "8px 0 10px" }} />
                    <pre
                      style={{
                        margin: 0,
                        whiteSpace: "pre-wrap",
                        wordBreak: "break-word",
                        fontFamily: "'JetBrains Mono', 'Courier New', monospace",
                        fontSize: 12,
                        lineHeight: 1.45,
                        color: "#111",
                      }}
                    >
                      {String(auditTicketDetail?.textReceipt ?? "")}
                    </pre>
                    <div style={{ borderTop: "1px dashed #d1d5db", margin: "12px 0 8px" }} />
                    <div style={{ textAlign: "center", fontSize: 10, color: "#6b7280" }}>
                      Generated from ticket {String(auditTicketDetail?.ticket?.id ?? "").slice(0, 8)}
                    </div>
                  </div>
                </div>
                <div className="row" style={{ justifyContent: "center", gap: 10, marginTop: 4 }}>
                  <button
                    type="button"
                    className="primary-btn"
                    onClick={() => {
                      const w = window.open("", "_blank");
                      if (!w) return;
                      w.document.write(`<!doctype html><html><head><title>Receipt</title><style>body{margin:0;padding:24px;background:#f3f4f6;font-family:system-ui} .paper{max-width:420px;margin:0 auto;background:#fff;border:1px solid #e5e7eb;border-radius:14px;padding:22px 20px} .title{text-align:center;font-weight:800;letter-spacing:.04em;font-size:15px} pre{white-space:pre-wrap;word-break:break-word;font:12px/1.45 'Courier New',monospace;color:#111;margin:0} .line{border-top:1px dashed #d1d5db;margin:10px 0}</style></head><body><div class="paper"><div class="title">OFFICIAL RECEIPT</div><div class="line"></div><pre>${String(auditTicketDetail?.textReceipt ?? "").replace(/&/g, "&amp;").replace(/</g, "&lt;")}</pre></div></body></html>`);
                      w.document.close();
                      w.focus();
                      setTimeout(() => w.print(), 250);
                    }}
                  >
                    Print Receipt
                  </button>
                  <button type="button" className="ghost-btn" onClick={() => { setAuditTicketDetail(null); setAuditTicketError(null); }}>
                    Close
                  </button>
                </div>
              </>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
