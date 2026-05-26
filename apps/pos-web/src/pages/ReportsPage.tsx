import { FormEvent, useEffect, useState } from "react";
import { api, formatPhp } from "../api.js";
import {
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend,
  ResponsiveContainer, PieChart, Pie, Cell, LineChart, Line,
} from "recharts";

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
  totalTickets: number; totalRevenueCentavos: number; avgOrderValueCentavos: number;
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
  const [kpi, setKpi] = useState<Kpi | null>(null);
  const [demographics, setDemographics] = useState<any[]>([]);
  const [orderTypes, setOrderTypes] = useState<any[]>([]);
  const [daily, setDaily] = useState<any[]>([]);
  const [products, setProducts] = useState<any[]>([]);
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
    api<{ events: any[] }>("/audit?limit=200").then(r => setAudit(r.events ?? [])).catch(() => setAudit([]));
  }
  function refreshAnalytics() {
    const dq = buildDateQ();
    api<Kpi>(`/analytics/kpi?x=1${demoQ}${dq}`).then(setKpi).catch(() => setKpi(null));
    api<{ demographics: any[] }>(`/analytics/demographics?x=1${dq}`).then(r => setDemographics(r.demographics ?? [])).catch(() => setDemographics([]));
    api<{ orderTypes: any[] }>(`/analytics/order-types?x=1${demoQ}${dq}`).then(r => setOrderTypes(r.orderTypes ?? [])).catch(() => setOrderTypes([]));
    api<{ daily: any[] }>(`/analytics/trends/daily?x=1${demoQ}${dq}`).then(r => setDaily(r.daily ?? [])).catch(() => setDaily([]));
    api<{ products: any[] }>(`/analytics/trends/products?x=1${demoQ}${dq}`).then(r => setProducts(r.products ?? [])).catch(() => setProducts([]));
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

  async function submitRetroactiveFeedback(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!feedbackModalTicketId) return;
    const fd = new FormData(e.currentTarget);
    await api(`/tickets/${feedbackModalTicketId}/meta`, { method: "PATCH", json: { feedbackRating: Number(fd.get("rating")), feedbackNotes: String(fd.get("notes")) } });
    setFeedbackModalTicketId(null);
    if (tab === "feedback") refreshFeedback();
    alert("Feedback saved!");
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
                <a className="ghost-btn" href={`/api/reports/export.csv?x=1${buildDateQ()}`} style={{ textDecoration: "none" }}>
                  <span>⬇</span> CSV
                </a>
                <a className="ghost-btn" href={`/api/reports/bir.csv?x=1${buildDateQ()}`} style={{ textDecoration: "none" }}>
                  <span>⬇</span> BIR CSV
                </a>
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
                      ["Net Sales", Number(eodData?.netSalesCentavos ?? 0), true, false],
                      ["Less: Refunds / Returns", -Number(eodData?.refundsCentavos ?? 0), false, false],
                      ["Adjusted Net Revenue", Number(eodData?.adjustedNetCentavos ?? 0), true, true],
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
                      ["Total Discounts", formatPhp(Number(s.discountsCentavos))],
                      ["Net Sales", formatPhp(Number(s.netSalesCentavos))],
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

            {/* Row 3: Top Products + Order Type Split side by side */}
            <div className="row" style={{ gap: 18, flexWrap: "wrap", alignItems: "stretch" }}>

              {/* Top Products */}
              <div className="card stack" style={{ flex: "1 1 320px", gap: 10 }}>
                <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>
                  Top Products {demo ? `· ${DEMOGRAPHICS.find(d=>d.value===demo)?.label}` : ""}
                </h3>
                {products.length === 0
                  ? <div className="muted" style={{ fontSize: 13 }}>No product data.</div>
                  : (
                    <>
                      <div className="stack" style={{ gap: 6 }}>
                        {products.slice(0, 5).map((p, i) => (
                          <div key={i} className="row" style={{ justifyContent: "space-between", alignItems: "center", padding: "8px 12px", background: "var(--bg)", borderRadius: 8, border: "1px solid var(--border)" }}>
                            <div className="row" style={{ gap: 8, alignItems: "center", flex: 1, minWidth: 0 }}>
                              <span style={{ fontWeight: 700, fontSize: 11, color: "var(--muted)", minWidth: 18 }}>#{i+1}</span>
                              <span style={{ fontWeight: 600, color: "var(--text)", fontSize: 13, overflow: "hidden", textOverflow: "ellipsis", whiteSpace: "nowrap" }}>{p.name}</span>
                            </div>
                            <div className="row" style={{ gap: 10, flexShrink: 0 }}>
                              <span style={{ fontWeight: 700, color: "var(--accent-strong)", fontSize: 13 }}>{p.sold_count} cups</span>
                              <span className="muted" style={{ fontSize: 11 }}>{formatPhp(Number(p.revenue))}</span>
                            </div>
                          </div>
                        ))}
                      </div>
                      <ResponsiveContainer width="100%" height={150}>
                        <BarChart data={products.slice(0, 6)} layout="vertical" margin={{ left: 0, right: 8, top: 0, bottom: 0 }}>
                          <CartesianGrid strokeDasharray="3 3" stroke={ct.grid} />
                          <XAxis type="number" stroke={ct.axis} tick={{ fontSize: 10 }} />
                          <YAxis type="category" dataKey="name" stroke={ct.axis} tick={{ fontSize: 10 }} width={100} />
                          <Tooltip contentStyle={{ backgroundColor: ct.bg, border: `1px solid ${ct.grid}`, borderRadius: 10, color: "var(--text)", fontSize: 12 }} />
                          <Bar dataKey="sold_count" name="Units Sold" fill={demo ? DEMO_COLORS[demo] ?? "var(--accent)" : "var(--accent)"} radius={[0, 4, 4, 0]} />
                        </BarChart>
                      </ResponsiveContainer>
                    </>
                  )
                }
              </div>

              {/* Order Types */}
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

                {/* 7-Day Forecast Chart */}
                {forecast.forecasts && forecast.forecasts.length > 0 && (
                  <div className="card stack" style={{ gap: 12 }}>
                    <h3 style={{ margin: 0, fontWeight: 700, fontSize: 15, color: "var(--text)" }}>7-Day Forecast</h3>
                    <div className="muted" style={{ fontSize: 12 }}>Predicted daily order volume</div>
                    <ResponsiveContainer width="100%" height={250}>
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

                    {/* Daily Breakdown */}
                    <div className="stack" style={{ gap: 8, marginTop: 12 }}>
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

                {/* Insights */}
                <div className="card stack" style={{ gap: 10, background: "color-mix(in srgb, var(--accent) 8%, transparent)", border: "1px solid color-mix(in srgb, var(--accent) 20%, transparent)" }}>
                  <h3 style={{ margin: 0, fontWeight: 700, fontSize: 14, color: "var(--accent-strong)" }}>💡 Model Insights</h3>
                  <div style={{ fontSize: 13, color: "var(--text)", lineHeight: 1.6 }}>
                    <p style={{ margin: "0 0 8px 0" }}>
                      This forecast is generated using <strong>{forecast.usedAI ? "advanced AI analysis" : "statistical modeling"}</strong> based on your historical sales data.
                    </p>
                    {forecast.usedAI && (
                      <p style={{ margin: "0 0 8px 0" }}>
                        The model considers weekly patterns, customer demographics, and seasonal trends to predict demand for the next week.
                      </p>
                    )}
                    <p style={{ margin: 0, fontSize: 12, color: "var(--muted)" }}>
                      ℹ Forecasts become more accurate as more historical data accumulates. Currently using {forecast.historicalDataPoints} data points.
                    </p>
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
          {audit.map(ev => {
            const isPurchase = ev.action === "ticket.create";
            return (
              <div key={String(ev.id)} className="row" style={{ fontSize: 13, borderBottom: "1px solid var(--border)", padding: "14px 12px", gap: 16, alignItems: "center", background: isPurchase ? "color-mix(in srgb, var(--ok) 5%, transparent)" : "transparent", borderRadius: isPurchase ? 8 : 0, margin: isPurchase ? "3px 0" : 0 }}>
                <div className="muted" style={{ minWidth: 140 }}>{new Date(String(ev.created_at)).toLocaleString()}</div>
                <div style={{ flex: 1, color: "var(--text)" }}>
                  <strong style={{ color: "var(--ok)", fontSize: 14 }}>{String(ev.action)}</strong>
                  {ev.entity_type ? <span className="muted" style={{ marginLeft: 6 }}>· {String(ev.entity_type)}</span> : ""}
                  {isPurchase ? <span style={{ marginLeft: 8, padding: "2px 6px", background: "var(--ok)", color: "#fff", borderRadius: 4, fontSize: 10, fontWeight: 700 }}>ORDER PROCESSED</span> : null}
                </div>
                <div className="row" style={{ gap: 10 }}>
                  {isPurchase && ev.entity_id && (
                    <button type="button" className="ghost-btn tiny-btn" style={{ borderColor: "var(--accent)", color: "var(--accent-strong)" }} onClick={() => setFeedbackModalTicketId(String(ev.entity_id))}>
                      Add Feedback
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
    </div>
  );
}
