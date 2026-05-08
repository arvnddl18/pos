import { FormEvent, useCallback, useDeferredValue, useEffect, useMemo, useRef, useState } from "react";
import { api, API_BASE, formatPhp } from "../api.js";

type EwalletUi = {
  display_name?: string | null;
  gcash_number?: string | null;
  qr_r2_key?: string | null;
  instructions?: string | null;
} | null;

function GcashCustomerPanel({ ew }: { ew: EwalletUi }) {
  if (!ew || (!ew.display_name && !ew.gcash_number && !ew.qr_r2_key && !ew.instructions)) {
    return (
      <div className="muted" style={{ fontSize: 13 }}>
        Set GCash number, receive QR, and instructions under <strong>GCash</strong> in the nav.
      </div>
    );
  }
  return (
    <div className="stack" style={{ gap: 8, padding: 12, borderRadius: 8, border: "1px solid #2a2a2a", background: "#141414" }}>
      <div className="label">Show customer</div>
      {ew.display_name ? <div style={{ fontWeight: 600 }}>{String(ew.display_name)}</div> : null}
      {ew.gcash_number ? (
        <div style={{ fontSize: 18, fontVariantNumeric: "tabular-nums", letterSpacing: "0.02em" }}>{String(ew.gcash_number)}</div>
      ) : null}
      {ew.qr_r2_key ? (
        <img
          alt="GCash receive QR"
          src={`${API_BASE}/uploads/asset?key=${encodeURIComponent(String(ew.qr_r2_key))}`}
          style={{ maxWidth: 220, alignSelf: "start", borderRadius: 6 }}
        />
      ) : null}
      {ew.instructions ? (
        <pre style={{ margin: 0, whiteSpace: "pre-wrap", fontSize: 12, fontFamily: "inherit", color: "#ccc" }}>
          {String(ew.instructions)}
        </pre>
      ) : null}
    </div>
  );
}

type Register = { id: string; name: string };
type Product = {
  id: string;
  name: string;
  price_centavos: number;
  category_id?: string | null;
  image_r2_key?: string | null;
  out_of_stock?: number;
  is_active?: number;
};
type Category = { id: string; name: string; sort_order: number };
type LineItem = {
  id: string;
  product_id: string;
  qty: number;
  unit_price_centavos: number;
  discount_centavos?: number | null;
  voided?: number;
  product_name?: string;
};
type PaymentRow = { id: string; tender_type: string; amount_centavos: number; status: string };
type Totals = {
  lineSubtotalCentavos: number;
  orderDiscountCentavos: number;
  serviceChargeCentavos: number;
  tipCentavos: number;
  taxCentavos?: number;
  taxByRate?: { rateBps: number; taxCentavos: number }[];
  dueCentavos: number;
  paidCompletedCentavos: number;
  remainingDueCentavos: number;
};
type PosDetail = {
  product: Record<string, unknown>;
  modifierGroups: { id: string; name: string; required: number; min_select: number; max_select: number; exclusive: number }[];
  modifiersByGroup: Record<string, { id: string; name: string; price_adjust_centavos: number }[]>;
};

function isManager(role: string) {
  return role === "manager" || role === "owner";
}

export function PosPage() {
  const [registers, setRegisters] = useState<Register[]>([]);
  const [registerId, setRegisterId] = useState(() => sessionStorage.getItem("registerId") ?? "");
  const [products, setProducts] = useState<Product[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);
  const [search, setSearch] = useState("");
  const [ticketId, setTicketId] = useState<string | null>(null);
  const [ticketNumber, setTicketNumber] = useState<number | null>(null);
  const [lines, setLines] = useState<LineItem[]>([]);
  const [payments, setPayments] = useState<PaymentRow[]>([]);
  const [ticketStatus, setTicketStatus] = useState("");
  const [selectedTicketType, setSelectedTicketType] = useState<"takeout" | "dine_in" | null>(null);
  const [totals, setTotals] = useState<Totals | null>(null);
  const [busy, setBusy] = useState(false);
  const [payOpen, setPayOpen] = useState(false);
  const [payTab, setPayTab] = useState<"cash" | "gcash">("cash");
  const [refundOpen, setRefundOpen] = useState(false);
  const [cashPesosInput, setCashPesosInput] = useState("");
  const [selectedTipPct, setSelectedTipPct] = useState<number | null>(null);
  const [me, setMe] = useState<{ role: string } | null>(null);
  const [modifierFlow, setModifierFlow] = useState<{ product: Product; detail: PosDetail } | null>(null);
  const [selectedMods, setSelectedMods] = useState<Record<string, string[]>>({});
  const [ewalletUi, setEwalletUi] = useState<EwalletUi>(null);
  const [bootLoading, setBootLoading] = useState(true);
  const [notice, setNotice] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);
  const deferredSearch = useDeferredValue(search);
  const [activeCategoryId, setActiveCategoryId] = useState("all");
  const isAddingProductRef = useRef(false);

  // New features state
  const [demographicColor, setDemographicColor] = useState<string | null>(null);
  const [feedbackOpen, setFeedbackOpen] = useState(false);
  const [ticketFeedback, setTicketFeedback] = useState<{ rating: number | null; notes: string }>({ rating: null, notes: "" });

  function publishKdsUpdate(reason: string) {
    if (typeof window === "undefined") return;
    window.dispatchEvent(new CustomEvent("kds:refresh", { detail: { reason } }));
    if (typeof BroadcastChannel !== "undefined") {
      const channel = new BroadcastChannel("pos-live");
      channel.postMessage({ type: "kds:refresh", reason, at: Date.now() });
      channel.close();
    }
  }

  function formatTicketLabel(id: string | null, number: number | null) {
    if (number && number > 0) return `#${String(number).padStart(4, "0")}`;
    return id ? id.slice(0, 8) : "—";
  }

  const refreshTicket = useCallback(async (id: string) => {
    const res = await api<{
      lineItems: LineItem[];
      payments: PaymentRow[];
      ticket: { status: string; ticket_no?: number | null; ticket_type?: string | null; demographic_color?: string | null; customer_id?: string | null; feedback_rating?: number | null; feedback_notes?: string | null };
      totals: Totals;
    }>(`/tickets/${id}`);
    setLines((res.lineItems ?? []).filter((l) => !l.voided));
    setPayments(res.payments ?? []);
    setTicketStatus(res.ticket.status);
    setSelectedTicketType(res.ticket.ticket_type === "dine_in" ? "dine_in" : res.ticket.ticket_type === "takeout" ? "takeout" : null);
    setTicketNumber(Number(res.ticket.ticket_no ?? 0) || null);
    setTotals(res.totals ?? null);
    setDemographicColor(res.ticket.demographic_color ?? null);
    setTicketFeedback({ rating: res.ticket.feedback_rating ?? null, notes: res.ticket.feedback_notes ?? "" });
    if (res.ticket.status === "paid") {
      setTicketId(null);
      setTicketNumber(null);
      setSelectedTicketType(null);
      setLines([]);
      setPayments([]);
      setTicketStatus("");
      setTotals(null);
      setDemographicColor(null);
      setTicketFeedback({ rating: null, notes: "" });
    }
  }, []);

  useEffect(() => {
    let mounted = true;
    async function bootstrap() {
      setBootLoading(true);
      const [reg, prod, cat, user, ew] = await Promise.allSettled([
        api<{ registers: Register[] }>("/registers"),
        api<{ products: Product[] }>("/catalog/products"),
        api<{ categories: Category[] }>("/catalog/categories"),
        api<{ user: { role: string } }>("/auth/me"),
        api<{ settings: Record<string, unknown> | null }>("/ewallet/settings"),
      ]);
      if (!mounted) return;
      if (reg.status === "fulfilled") setRegisters(reg.value.registers ?? []);
      if (prod.status === "fulfilled") setProducts((prod.value.products ?? []).filter((p) => p.is_active !== 0));
      if (cat.status === "fulfilled") setCategories(cat.value.categories ?? []);
      if (user.status === "fulfilled") setMe({ role: user.value.user.role });
      if (ew.status === "fulfilled") setEwalletUi((ew.value.settings as EwalletUi) ?? null);
      if ([reg, prod, cat, user].some((r) => r.status === "rejected")) {
        setError("Some POS data failed to load. Retry or refresh.");
      }
      setBootLoading(false);
    }
    void bootstrap();
    return () => {
      mounted = false;
    };
  }, []);

  useEffect(() => {
    if (!payOpen) return;
    void api<{ settings: Record<string, unknown> | null }>("/ewallet/settings").then((r) =>
      setEwalletUi((r.settings as EwalletUi) ?? null),
    );
  }, [payOpen]);

  useEffect(() => {
    if (!payOpen || !totals) return;
    setCashPesosInput((totals.remainingDueCentavos / 100).toFixed(2));
  }, [payOpen, totals]);

  useEffect(() => {
    if (!payOpen) return;
    setPayTab("cash");
  }, [payOpen]);

  useEffect(() => {
    if (registerId) sessionStorage.setItem("registerId", registerId);
  }, [registerId]);

  const filtered = useMemo(() => {
    const q = deferredSearch.trim().toLowerCase();
    const byCategory = activeCategoryId === "all" ? products : products.filter((p) => p.category_id === activeCategoryId);
    if (!q) return byCategory;
    return byCategory.filter((p) => p.name.toLowerCase().includes(q));
  }, [products, deferredSearch, activeCategoryId]);

  const categoryFilters = useMemo(() => {
    const usedCategoryIds = new Set(
      products.map((product) => product.category_id).filter((categoryId): categoryId is string => Boolean(categoryId)),
    );
    const categoryButtons = categories
      .filter((category) => usedCategoryIds.has(category.id))
      .map((category) => ({ id: category.id, label: category.name }));
    return [{ id: "all", label: "All" }, ...categoryButtons];
  }, [categories, products]);

  async function ensureTicket() {
    if (!registerId) throw new Error("Pick a register first");
    if (ticketId) return ticketId;
    const ticketTypeForCreate: "takeout" | "dine_in" = selectedTicketType ?? "takeout";
    const created = await api<{ id: string; ticketNo?: number | null }>("/tickets", {
      method: "POST",
      json: { registerId, ticketType: ticketTypeForCreate },
    });
    setTicketId(created.id);
    setTicketNumber(Number(created.ticketNo ?? 0) || null);
    setSelectedTicketType(ticketTypeForCreate);
    setTicketStatus("open");
    return created.id;
  }

  async function chooseTicketType(ticketType: "takeout" | "dine_in") {
    setSelectedTicketType(ticketType);
    if (!ticketId) return;
    await api(`/tickets/${ticketId}/type`, { method: "PATCH", json: { ticketType } });
    await refreshTicket(ticketId);
  }

  async function addLine(productId: string, qty: number, modifierIds: string[], discountCentavos?: number) {
    const tid = await ensureTicket();
    await api(`/tickets/${tid}/lines`, {
      method: "POST",
      json: { productId, qty, modifierIds, discountCentavos: discountCentavos ?? 0 },
    });
    await refreshTicket(tid);
    publishKdsUpdate("line_added");
  }

  async function onPickProduct(p: Product) {
    if (isAddingProductRef.current) return;
    if (p.out_of_stock === 1) return;
    if (!registerId) {
      setError("Select a register first before adding items.");
      return;
    }

    isAddingProductRef.current = true;
    setBusy(true);
    try {
      let detail: PosDetail | null = null;
      try {
        detail = await api<PosDetail>(`/catalog/products/${p.id}/pos-detail`);
      } catch {
        detail = null;
      }

      const groups = detail?.modifierGroups ?? [];
      if (groups.length === 0) {
        const existingLine = lines.find((lineItem) => lineItem.product_id === p.id);
        if (existingLine) {
          await updateLineQty(existingLine, existingLine.qty + 1);
        } else {
          await addLine(p.id, 1, []);
        }
        setError(null);
        setNotice(`${p.name} added`);
        return;
      }
      if (!detail) {
        setError(`Failed to load modifiers for ${p.name}.`);
        return;
      }

      const init: Record<string, string[]> = {};
      for (const g of groups) {
        const options = detail.modifiersByGroup[g.id] ?? [];
        const smallOption = options.find((option) => option.name.trim().toLowerCase() === "small");
        if (smallOption) {
          init[g.id] = [smallOption.id];
          continue;
        }
        if (g.required === 1 && g.exclusive === 1 && options.length > 0) {
          init[g.id] = [options[0].id];
          continue;
        }
        init[g.id] = [];
      }
      setSelectedMods(init);
      setModifierFlow({ product: p, detail });
      setError(null);
    } catch (err) {
      if (err instanceof Error && err.message) {
        setError(err.message);
      } else {
        setError(`Failed to add ${p.name}. Please try again.`);
      }
    } finally {
      isAddingProductRef.current = false;
      setBusy(false);
    }
  }

  function toggleMod(groupId: string, modId: string, exclusive: boolean) {
    setSelectedMods((prev) => {
      const cur = { ...prev };
      const g = cur[groupId] ? [...cur[groupId]] : [];
      if (exclusive) {
        cur[groupId] = g.includes(modId) ? [] : [modId];
        return cur;
      }
      if (g.includes(modId)) cur[groupId] = g.filter((x) => x !== modId);
      else cur[groupId] = [...g, modId];
      return cur;
    });
  }

  async function confirmModifiers() {
    if (!modifierFlow || isAddingProductRef.current) return;
    const ids = Object.values(selectedMods).flat();
    isAddingProductRef.current = true;
    setBusy(true);
    try {
      const existingLine = lines.find((lineItem) => lineItem.product_id === modifierFlow.product.id);
      if (existingLine) {
        await updateLineQty(existingLine, existingLine.qty + 1);
      } else {
        await addLine(modifierFlow.product.id, 1, ids);
      }
      setModifierFlow(null);
    } finally {
      isAddingProductRef.current = false;
      setBusy(false);
    }
  }

  async function skipModifiers() {
    if (!modifierFlow || isAddingProductRef.current) return;
    isAddingProductRef.current = true;
    setBusy(true);
    try {
      const existingLine = lines.find((lineItem) => lineItem.product_id === modifierFlow.product.id);
      if (existingLine) {
        await updateLineQty(existingLine, existingLine.qty + 1);
      } else {
        await addLine(modifierFlow.product.id, 1, []);
      }
      setModifierFlow(null);
    } finally {
      isAddingProductRef.current = false;
      setBusy(false);
    }
  }

  async function parkTicket() {
    if (!ticketId) return;
    await api(`/tickets/${ticketId}/park`, { method: "PATCH", json: {} });
    await refreshTicket(ticketId);
    publishKdsUpdate("ticket_parked");
    setNotice("Ticket parked");
  }

  function newTicket() {
    setTicketId(null);
    setTicketNumber(null);
    setSelectedTicketType(null);
    setLines([]);
    setPayments([]);
    setTicketStatus("");
    setTotals(null);
    setSelectedTipPct(null);
    setNotice("Ready for new ticket");
  }

  async function applyTipPercent(pct: number) {
    if (!ticketId || !totals) return;
    const isToggleOff = selectedTipPct === pct;
    const tip = isToggleOff ? 0 : Math.round(totals.lineSubtotalCentavos * (pct / 100));
    await api(`/tickets/${ticketId}/adjustments`, { method: "PATCH", json: { tipCentavos: tip } });
    await refreshTicket(ticketId); 
    setSelectedTipPct(isToggleOff ? null : pct);
  }

  async function payCash(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!ticketId) return;
    const fd = new FormData(e.currentTarget);
    const pesos = Number(cashPesosInput || "0");
    const rounding = Number(String(fd.get("roundingCentavos") ?? "0")) || 0;
    const centavos = Math.round(pesos * 100);
    const key = crypto.randomUUID();
    await api(`/tickets/${ticketId}/payments`, {
      method: "POST",
      headers: { "Idempotency-Key": key },
      json: { tenderType: "cash", amountCentavos: centavos, roundingCentavos: rounding },
    });
    await refreshTicket(ticketId);
    setPayOpen(false);
    setNotice("Cash payment recorded");
  }

  async function payGcashStart(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!ticketId) return;
    const fd = new FormData(e.currentTarget);
    const pesos = Number(String(fd.get("pesos") ?? "0"));
    const ref = String(fd.get("ref") ?? "").trim();
    const rounding = Number(String(fd.get("roundingCentavos") ?? "0")) || 0;
    const centavos = Math.round(pesos * 100);
    const key = crypto.randomUUID();
    await api(`/tickets/${ticketId}/payments`, {
      method: "POST",
      headers: { "Idempotency-Key": key },
      json: {
        tenderType: "e_wallet_personal",
        amountCentavos: centavos,
        referenceNote: ref || undefined,
        roundingCentavos: rounding,
      },
    });
    await refreshTicket(ticketId);
    setNotice("GCash pending payment started");
  }

  async function confirmPayment(pid: string) {
    await api(`/payments/${pid}/confirm-ewallet`, { method: "POST", json: {} });
    if (ticketId) await refreshTicket(ticketId);
    setPayOpen(false);
    setNotice("GCash payment confirmed");
  }

  async function voidLine(li: LineItem) {
    const reason = window.prompt("Void reason (manager only)?");
    if (!reason) return;
    if (!ticketId) return;
    await api(`/tickets/${ticketId}/lines/${li.id}/void`, { method: "POST", json: { reason } });
    await refreshTicket(ticketId);
    setNotice("Line voided");
  }

  async function updateLineQty(lineItem: LineItem, nextQty: number) {
    if (!ticketId) return;
    if (nextQty <= 0) {
      await api(`/tickets/${ticketId}/lines/${lineItem.id}`, { method: "DELETE", json: {} });
      await refreshTicket(ticketId);
      setNotice(`${lineItem.product_name ?? "Item"} removed`);
      return;
    }
    await api(`/tickets/${ticketId}/lines/${lineItem.id}`, {
      method: "PATCH",
      json: { qty: nextQty },
    });
    await refreshTicket(ticketId);
    setNotice(`${lineItem.product_name ?? "Item"} updated`);
  }

  async function voidWholeTicket() {
    const reason = window.prompt("Void entire ticket? Type reason:");
    if (!reason || !ticketId) return;
    await api(`/tickets/${ticketId}/void-ticket`, { method: "POST", json: { reason } });
    newTicket();
    publishKdsUpdate("ticket_voided");
    setNotice("Ticket voided");
  }

  async function submitRefund(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!ticketId) return;
    const fd = new FormData(e.currentTarget);
    await api(`/tickets/${ticketId}/refunds`, {
      method: "POST",
      json: {
        amountCentavos: Math.round(Number(fd.get("pesos") ?? "0") * 100),
        reason: String(fd.get("reason") ?? ""),
        note: String(fd.get("note") ?? "") || undefined,
      },
    });
    setRefundOpen(false);
    await refreshTicket(ticketId);
    setNotice("Refund recorded");
  }

  const pending = payments.filter((p) => p.status === "pending_ewallet");
  const paidCompleted = payments.filter((p) => p.status === "completed");
  const cashTenderedCentavos = Math.round((Number(cashPesosInput || "0") || 0) * 100);
  const cashDeltaCentavos = totals ? cashTenderedCentavos - totals.remainingDueCentavos : 0;

  async function updateTicketMeta(meta: { demographicColor?: string; feedbackRating?: number; feedbackNotes?: string; customerId?: string }) {
    if (!ticketId) return;
    await api(`/tickets/${ticketId}/meta`, { method: "PATCH", json: meta });
    await refreshTicket(ticketId);
    setNotice("Ticket metadata updated");
  }

  async function submitFeedback(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const rating = Number(fd.get("rating") ?? "0");
    const notes = String(fd.get("notes") ?? "");
    await updateTicketMeta({ feedbackRating: rating, feedbackNotes: notes });
    setFeedbackOpen(false);
  }

  const canVoid = me && isManager(me.role);

  return (
    <div className="pos-page stack" style={{ gap: 16 }}>
      {bootLoading ? <div className="card muted">Loading POS data…</div> : null}
      {error ? <div className="error">{error}</div> : null}
      {notice ? <div className="muted">{notice}</div> : null}
      <div className="pos-topbar">
        <div className="filter-icon-wrap pos-search">
          <span className="filter-icon">⌕</span>
          <input className="field" placeholder="Search for coffee, food etc" value={search} onChange={(e) => setSearch(e.target.value)} />
        </div>
        <div>
          <div className="label">Register</div>
          <select className="field" style={{ maxWidth: 360 }} value={registerId} onChange={(e) => setRegisterId(e.target.value)}>
            <option value="">Select…</option>
            {registers.map((r) => (
              <option key={r.id} value={r.id}>
                {r.name} — {r.id.slice(0, 8)}…
              </option>
            ))}
          </select>
        </div>
        <div className="row" style={{ flexWrap: "wrap" }}>
          <button type="button" className="ghost-btn" onClick={() => newTicket()} disabled={!ticketId}>
            <span className="btn-icon">＋</span>
            <span>New ticket</span>
          </button>
          <button type="button" className="ghost-btn" onClick={() => void parkTicket()} disabled={!ticketId}>
            <span className="btn-icon">⏸</span>
            <span>Park / hold</span>
          </button>
          {ticketId ? (
            <a className="ghost-btn" href={`/receipt/${ticketId}`} target="_blank" rel="noreferrer">
              <span className="btn-icon">🖨</span>
              <span>Print receipt</span>
            </a>
          ) : null}
          {ticketId && canVoid ? (
            <button type="button" className="ghost-btn" onClick={() => setRefundOpen(true)} disabled={!ticketId}>
              <span className="btn-icon">↩</span>
              <span>Refund…</span>
            </button>
          ) : null}
        </div>
      </div>
      <div className="row pos-categories" style={{ flexWrap: "wrap", gap: 8 }}>
        {categoryFilters.map((category) => (
          <button
            key={category.id}
            type="button"
            className={activeCategoryId === category.id ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
            onClick={() => setActiveCategoryId(category.id)}
          >
            {category.label}
          </button>
        ))}
      </div>

      <div className="panel-split">
        <div className="stack" style={{ gap: 12 }}>
          <div className="grid-products">
            {filtered.map((p) => {
              const categoryName = categories.find(c => c.id === p.category_id)?.name || "Uncategorized";
              return (
              <button key={p.id} type="button" className={`tile product-tile ${p.out_of_stock === 1 ? 'out-of-stock' : ''}`} disabled={busy || p.out_of_stock === 1} onClick={() => void onPickProduct(p)}>
                <div className="product-image-container">
                  {p.image_r2_key ? (
                    <img
                      className="product-image"
                      src={`${API_BASE}/uploads/asset?key=${encodeURIComponent(String(p.image_r2_key))}`}
                      alt={p.name}
                      loading="lazy"
                    />
                  ) : (
                    <div className="product-image" />
                  )}
                  {p.out_of_stock === 1 && <div className="out-of-stock-badge">Out of Stock</div>}
                </div>
                <div className="product-info">
                  <div className="product-category">{categoryName}</div>
                  <div className="product-name">{p.name}</div>
                  <div className="price">{formatPhp(p.price_centavos)}</div>
                </div>
              </button>
            )})}
          </div>
        </div>

        <aside className="cart stack">
          <div className="row" style={{ justifyContent: "space-between" }}>
            <strong>Ticket</strong>
            <span className="muted">{formatTicketLabel(ticketId, ticketNumber)}</span>
          </div>
          <div className="muted">Status: {ticketStatus || "—"}</div>
          <div className="row" style={{ flexWrap: "wrap", gap: 6 }}>
            <button
              type="button"
              className={selectedTicketType === "takeout" ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
              onClick={() => void chooseTicketType("takeout")}
            >
              Takeout
            </button>
            <button
              type="button"
              className={selectedTicketType === "dine_in" ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
              onClick={() => void chooseTicketType("dine_in")}
            >
              Dine-in
            </button>
          </div>

          {ticketId ? (
            <div className="stack" style={{ gap: 4, background: "var(--bg-elevated)", padding: 8, borderRadius: 6 }}>
              <div className="stack" style={{ gap: 10 }}>
                <span className="muted" style={{ fontSize: 13 }}>Demographic</span>
                <div style={{ display: "grid", gridTemplateColumns: "repeat(4, 1fr)", gap: 8 }}>
                  {[
                    { value: "blue", label: "Student", bg: "#3b82f6" },
                    { value: "green", label: "Pro", bg: "#22c55e" },
                    { value: "red", label: "Family", bg: "#ef4444" },
                    { value: "yellow", label: "Senior", bg: "#eab308" },
                    { value: "purple", label: "Tourist", bg: "#a855f7" },
                    { value: "orange", label: "Couple", bg: "#f97316" },
                    { value: "pink", label: "Teen", bg: "#ec4899" },
                    { value: "brown", label: "Group", bg: "#8b4513" },
                  ].map((c) => (
                    <button
                      key={c.value}
                      type="button"
                      onClick={() => void updateTicketMeta({ demographicColor: demographicColor === c.value ? "" : c.value })}
                      style={{
                        display: "flex",
                        flexDirection: "column",
                        alignItems: "center",
                        gap: 6,
                        padding: "10px 4px",
                        borderRadius: 12,
                        background: demographicColor === c.value ? `${c.bg}15` : "#fff",
                        border: `1px solid ${demographicColor === c.value ? c.bg : "var(--border)"}`,
                        cursor: "pointer",
                        transition: "all 0.2s cubic-bezier(0.25, 0.8, 0.25, 1)",
                        boxShadow: demographicColor === c.value ? `0 4px 12px ${c.bg}30` : "0 2px 4px rgba(0,0,0,0.02)",
                        transform: demographicColor === c.value ? "translateY(-2px)" : "none"
                      }}
                    >
                      <div style={{
                        width: 28,
                        height: 28,
                        borderRadius: "50%",
                        background: c.bg,
                        boxShadow: "inset 0 2px 4px rgba(255,255,255,0.4), 0 2px 5px rgba(0,0,0,0.1)",
                        border: demographicColor === c.value ? "2px solid #fff" : "2px solid transparent",
                        outline: demographicColor === c.value ? `2px solid ${c.bg}` : "none",
                      }} />
                      <span style={{
                        fontSize: 10,
                        fontWeight: 700,
                        color: demographicColor === c.value ? c.bg : "var(--muted)",
                        textTransform: "uppercase",
                        letterSpacing: "0.02em"
                      }}>
                        {c.label}
                      </span>
                    </button>
                  ))}
                </div>
              </div>

              <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
                <span className="muted" style={{ fontSize: 13 }}>Feedback</span>
                <button type="button" className="ghost-btn tiny-btn" onClick={() => setFeedbackOpen(true)}>
                  {ticketFeedback.rating ? `★ ${ticketFeedback.rating}/5` : "Add"}
                </button>
              </div>
            </div>
          ) : null}

          <div className="cart-lines">
            {lines.map((li) => (
            <div key={li.id} className="line">
              <div className="stack" style={{ gap: 4, flex: 1 }}>
                <strong>{li.product_name ?? "Item"}</strong>
                <span className="muted" style={{ fontSize: 13 }}>
                  Qty {li.qty} × {formatPhp(li.unit_price_centavos)}
                </span>
                <span>{formatPhp(li.unit_price_centavos * li.qty - (li.discount_centavos ?? 0))}</span>
              </div>
              <div className="row" style={{ gap: 6, flexWrap: "wrap", justifyContent: "flex-end" }}>
                <button type="button" className="ghost-btn" style={{ padding: "4px 8px", fontSize: 12 }} onClick={() => void updateLineQty(li, li.qty - 1)}>
                  −
                </button>
                <button type="button" className="ghost-btn" style={{ padding: "4px 8px", fontSize: 12 }} onClick={() => void updateLineQty(li, li.qty + 1)}>
                  +
                </button>
                <button type="button" className="ghost-btn" style={{ padding: "4px 8px", fontSize: 12 }} onClick={() => void updateLineQty(li, 0)}>
                  Remove
                </button>
                {canVoid ? (
                  <button type="button" className="ghost-btn" style={{ padding: "4px 8px", fontSize: 12 }} onClick={() => void voidLine(li)}>
                    Void
                  </button>
                ) : null}
              </div>
            </div>
            ))}
          </div>

          {totals ? (
            <div className="stack" style={{ gap: 4, fontSize: 14 }}>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Subtotal</span>
                <span>{formatPhp(totals.lineSubtotalCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Order discount</span>
                <span>-{formatPhp(totals.orderDiscountCentavos)}</span>
              </div>
              {(totals.taxByRate?.length ?? 0) > 0
                ? (totals.taxByRate ?? []).map((tr) => (
                    <div key={tr.rateBps} className="row" style={{ justifyContent: "space-between" }}>
                      <span className="muted">VAT ({(tr.rateBps / 100).toFixed(2)}%)</span>
                      <span>{formatPhp(tr.taxCentavos)}</span>
                    </div>
                  ))
                : totals.taxCentavos
                  ? (
                      <div className="row" style={{ justifyContent: "space-between" }}>
                        <span className="muted">Tax</span>
                        <span>{formatPhp(totals.taxCentavos)}</span>
                      </div>
                    )
                  : null}
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Service</span>
                <span>{formatPhp(totals.serviceChargeCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Tip</span>
                <span>{formatPhp(totals.tipCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between", fontWeight: 700 }}>
                <span>Due</span>
                <span>{formatPhp(totals.dueCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Paid</span>
                <span>{formatPhp(totals.paidCompletedCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Remaining</span>
                <span>{formatPhp(totals.remainingDueCentavos)}</span>
              </div>
            </div>
          ) : null}

          {ticketId ? (
            <div className="row" style={{ flexWrap: "wrap", gap: 6 }}>
              <button
                type="button"
                className={selectedTipPct === 10 ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
                onClick={() => void applyTipPercent(10)}
              >
                Tip 10%
              </button>
              <button
                type="button"
                className={selectedTipPct === 15 ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
                onClick={() => void applyTipPercent(15)}
              >
                Tip 15%
              </button>
            </div>
          ) : null}

          {pending.length > 0 ? <GcashCustomerPanel ew={ewalletUi} /> : null}
          {pending.map((p) => (
            <div key={p.id} className="stack" style={{ gap: 8 }}>
              <div className="muted">Pending GCash {formatPhp(p.amount_centavos)}</div>
              <button type="button" className="primary-btn" onClick={() => void confirmPayment(p.id)}>
                <span className="btn-icon">✔</span>
                <span>Confirm GCash received</span>
              </button>
            </div>
          ))}

          {paidCompleted.length ? (
            <div className="muted" style={{ fontSize: 13 }}>
              Payments recorded: {paidCompleted.length}
            </div>
          ) : null}

          <div className="pay-actions">
            <button
              type="button"
              className="primary-btn"
              disabled={!ticketId || !selectedTicketType || !totals || totals.dueCentavos === 0}
              onClick={() => setPayOpen(true)}
            >
              <span className="btn-icon">💳</span>
              <span>Pay / split</span>
            </button>
            {canVoid ? (
              <>
                <button type="button" className="ghost-btn" onClick={() => void voidWholeTicket()} disabled={!ticketId}>
                  <span className="btn-icon">✖</span>
                  <span>Void whole ticket</span>
                </button>
              </>
            ) : null}
          </div>
        </aside>
      </div>

      {payOpen && totals ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Payment</h2>
              <button type="button" className="ghost-btn" onClick={() => setPayOpen(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <p className="muted">
              Remaining due: <strong>{formatPhp(totals.remainingDueCentavos)}</strong>
            </p>
            <GcashCustomerPanel ew={ewalletUi} />
            <div className="row" style={{ gap: 8 }}>
              <button
                type="button"
                className={payTab === "cash" ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
                onClick={() => setPayTab("cash")}
              >
                Record cash
              </button>
              <button
                type="button"
                className={payTab === "gcash" ? "primary-btn tiny-btn" : "ghost-btn tiny-btn"}
                onClick={() => setPayTab("gcash")}
              >
                Start GCash
              </button>
            </div>
            {payTab === "cash" ? (
              <form className="stack" onSubmit={payCash}>
                <div className="label">Cash amount (PHP)</div>
                <input
                  className="field"
                  name="pesos"
                  type="number"
                  step="0.01"
                  min="0"
                  value={cashPesosInput}
                  onChange={(e) => setCashPesosInput(e.target.value)}
                  required
                />
                <div className="label">Rounding adjustment (centavos, optional)</div>
                <input className="field" name="roundingCentavos" type="number" step="1" defaultValue={0} />
                <div className="stack" style={{ gap: 4, border: "1px solid var(--border)", borderRadius: 10, padding: 10 }}>
                  <div className="row" style={{ justifyContent: "space-between" }}>
                    <span className="muted">Tendered</span>
                    <strong>{formatPhp(cashTenderedCentavos)}</strong>
                  </div>
                  <div className="row" style={{ justifyContent: "space-between" }}>
                    <span className="muted">Remaining due</span>
                    <strong>{formatPhp(totals.remainingDueCentavos)}</strong>
                  </div>
                  <div className="row" style={{ justifyContent: "space-between" }}>
                    <span className="muted">{cashDeltaCentavos >= 0 ? "Change" : "Still due"}</span>
                    <strong style={{ color: cashDeltaCentavos >= 0 ? "var(--ok)" : "var(--danger)" }}>
                      {formatPhp(Math.abs(cashDeltaCentavos))}
                    </strong>
                  </div>
                </div>
                <button className="primary-btn" type="submit">
                  <span className="btn-icon">🧾</span>
                  <span>Record cash</span>
                </button>
              </form>
            ) : null}
            {payTab === "gcash" ? (
              <form className="stack" onSubmit={payGcashStart}>
                <div className="label">GCash amount (PHP)</div>
                <input className="field" name="pesos" type="number" step="0.01" min="0" defaultValue={(totals.remainingDueCentavos / 100).toFixed(2)} required />
                <div className="label">Reference (optional)</div>
                <input className="field" name="ref" />
                <div className="label">Rounding (centavos)</div>
                <input className="field" name="roundingCentavos" type="number" defaultValue={0} />
                <button className="primary-btn" type="submit">
                  <span className="btn-icon">📲</span>
                  <span>Start GCash</span>
                </button>
              </form>
            ) : null}
          </div>
        </div>
      ) : null}

      {refundOpen && ticketId ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <h2 style={{ margin: 0 }}>Refund</h2>
            <form className="stack" onSubmit={submitRefund}>
              <input className="field" name="pesos" type="number" step="0.01" required placeholder="Amount PHP" />
              <input className="field" name="reason" required placeholder="Reason" />
              <input className="field" name="note" placeholder="Manual GCash note (optional)" />
              <div className="row">
                <button className="primary-btn" type="submit">
                  <span className="btn-icon">↩</span>
                  <span>Record refund</span>
                </button>
                <button type="button" className="ghost-btn" onClick={() => setRefundOpen(false)}>
                  <span className="btn-icon">✕</span>
                  <span>Cancel</span>
                </button>
              </div>
            </form>
          </div>
        </div>
      ) : null}

      {modifierFlow ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack" style={{ maxHeight: "85vh", overflow: "auto" }}>
            <h2 style={{ margin: 0 }}>{modifierFlow.product.name}</h2>
            <p className="muted">Choose modifiers. Required groups must be satisfied.</p>
            {modifierFlow.detail.modifierGroups.map((g) => {
              const mods = modifierFlow.detail.modifiersByGroup[g.id] ?? [];
              const excl = g.exclusive === 1;
              return (
                <div key={g.id} className="stack" style={{ gap: 8 }}>
                  <div>
                    <strong>{g.name}</strong>
                    <span className="muted" style={{ marginLeft: 8, fontSize: 12 }}>
                      {g.required ? "Required" : "Optional"} · min {g.min_select} · max {g.max_select}
                      {excl ? " · pick one" : ""}
                    </span>
                  </div>
                  <div className="stack" style={{ gap: 6 }}>
                    {mods.map((m) => {
                      const sel = selectedMods[g.id]?.includes(m.id) ?? false;
                      return (
                        <label key={m.id} className="row" style={{ cursor: "pointer" }}>
                          {excl ? (
                            <input
                              type="radio"
                              name={`mg-${g.id}`}
                              checked={sel}
                              onChange={() => setSelectedMods((p) => ({ ...p, [g.id]: [m.id] }))}
                            />
                          ) : (
                            <input type="checkbox" checked={sel} onChange={() => toggleMod(g.id, m.id, false)} />
                          )}
                          <span>
                            {m.name} ({formatPhp(m.price_adjust_centavos)})
                          </span>
                        </label>
                      );
                    })}
                  </div>
                </div>
              );
            })}
            <div className="row" style={{ flexWrap: "wrap", gap: 8 }}>
              <button type="button" className="primary-btn" disabled={busy} onClick={() => void confirmModifiers()}>
                <span className="btn-icon">＋</span>
                <span>Add to ticket</span>
              </button>
              <button type="button" className="ghost-btn" onClick={() => void skipModifiers()}>
                <span className="btn-icon">↷</span>
                <span>Skip modifiers</span>
              </button>
              <button type="button" className="ghost-btn" onClick={() => setModifierFlow(null)}>
                <span className="btn-icon">✕</span>
                <span>Cancel</span>
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {feedbackOpen ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <h2 style={{ margin: 0 }}>Customer Feedback</h2>
            <form className="stack" onSubmit={submitFeedback}>
              <div className="label">Rating (1-5)</div>
              <input className="field" name="rating" type="number" min="1" max="5" defaultValue={ticketFeedback.rating ?? 5} required />
              <div className="label">Notes / Comments</div>
              <textarea className="field" name="notes" defaultValue={ticketFeedback.notes} placeholder="What did they say?" style={{ minHeight: 80, resize: "vertical" }} />
              <div className="row" style={{ marginTop: 12 }}>
                <button className="primary-btn" type="submit">Save</button>
                <button type="button" className="ghost-btn" onClick={() => setFeedbackOpen(false)}>Cancel</button>
              </div>
            </form>
          </div>
        </div>
      ) : null}
    </div>
  );
}
