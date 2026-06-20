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
          src={resolveAssetImageSrc(String(ew.qr_r2_key))}
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
  regular_price_centavos?: number;
  effective_price_centavos?: number;
  category_id?: string | null;
  image_r2_key?: string | null;
  out_of_stock?: number;
  is_active?: number;
};

function productSellPrice(p: Product): number {
  return p.effective_price_centavos ?? p.price_centavos;
}

function productRegularPrice(p: Product): number {
  return p.regular_price_centavos ?? p.price_centavos;
}
type Category = { id: string; name: string; sort_order: number };
type LineItem = {
  id: string;
  product_id: string;
  qty: number;
  unit_price_centavos: number;
  discount_centavos?: number | null;
  line_notes?: string | null;
  voided?: number;
  product_name?: string;
  rate_bps?: number | null;
};
type PaymentRow = { id: string; tender_type: string; amount_centavos: number; status: string };
type Totals = {
  lineGrossCentavos: number;
  lineItemDiscountCentavos: number;
  lineSubtotalCentavos: number;
  orderDiscountCentavos: number;
  totalDiscountCentavos: number;
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

type ParkedTicketRow = {
  id: string;
  ticket_no?: number | null;
  parked_label?: string | null;
  ticket_type?: string | null;
  updated_at?: string;
  line_count?: number;
  item_qty?: number;
  due_centavos?: number;
};

type PaidTicketRow = {
  id: string;
  ticket_no: number;
  ticket_type: string;
  created_at: string;
  updated_at: string;
  paid_centavos: number;
  refunded_centavos: number;
  refundable_centavos: number;
};

function formatParkedWhen(iso: string | undefined): string {
  if (!iso) return "";
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return "";
  const mins = Math.round((Date.now() - d.getTime()) / 60_000);
  if (mins < 1) return "Just now";
  if (mins < 60) return `${mins}m ago`;
  const hrs = Math.floor(mins / 60);
  if (hrs < 24) return `${hrs}h ago`;
  return d.toLocaleString(undefined, { month: "short", day: "numeric", hour: "2-digit", minute: "2-digit" });
}

const RELOAD_PARK_LABEL = "parked";

function activeTicketStorageKey(registerId: string) {
  return `posActiveTicketId:${registerId}`;
}

function isManager(role: string) {
  return role === "manager" || role === "owner";
}

function resolveAssetImageSrc(key: string) {
  const trimmed = key.trim();
  if (!trimmed) return "";
  if (/^(https?:)?\/\//i.test(trimmed) || trimmed.startsWith("data:image/")) return trimmed;
  if (trimmed.startsWith("/")) return trimmed;
  return `${API_BASE}/uploads/asset?key=${encodeURIComponent(trimmed)}`;
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
  const [cashReceiptModal, setCashReceiptModal] = useState(false);
  const [cashReceiptDetail, setCashReceiptDetail] = useState<any | null>(null);
  const [cashReceiptLoading, setCashReceiptLoading] = useState(false);
  const [cashReceiptError, setCashReceiptError] = useState<string | null>(null);
  const [parkedTickets, setParkedTickets] = useState<ParkedTicketRow[]>([]);
  const [parkModalOpen, setParkModalOpen] = useState(false);
  const [parkLabel, setParkLabel] = useState("");
  const [parkBusy, setParkBusy] = useState(false);
  const [refundPickerOpen, setRefundPickerOpen] = useState(false);
  const [paidTicketsForRefund, setPaidTicketsForRefund] = useState<PaidTicketRow[]>([]);
  const [refundSearch, setRefundSearch] = useState("");
  const [refundSelected, setRefundSelected] = useState<PaidTicketRow | null>(null);
  const [refundBusy, setRefundBusy] = useState(false);
  const deferredRefundSearch = useDeferredValue(refundSearch);
  const [cashPesosInput, setCashPesosInput] = useState("");
  const [me, setMe] = useState<{ role: string } | null>(null);
  const [modifierFlow, setModifierFlow] = useState<{ product: Product; detail: PosDetail } | null>(null);
  const [selectedMods, setSelectedMods] = useState<Record<string, string[]>>({});
  const [ewalletUi, setEwalletUi] = useState<EwalletUi>(null);
  const [bootLoading, setBootLoading] = useState(true);
  const setNotice = (_value: string | null) => {};
  const [error, setError] = useState<string | null>(null);
  const [imageLoadErrors, setImageLoadErrors] = useState<Record<string, true>>({});
  const deferredSearch = useDeferredValue(search);
  const [activeCategoryId, setActiveCategoryId] = useState("all");
  const isAddingProductRef = useRef(false);

  const [demographicColor, setDemographicColor] = useState<string | null>(null);
  const [demographicExpanded, setDemographicExpanded] = useState(true);
  const posDetailCache = useRef<Record<string, PosDetail>>({});
  const lastRequestSeq = useRef(0);

  const calculateTotalsClientSide = useCallback((
    currentLines: LineItem[],
    currentTotals: Totals
  ): Totals => {
    const lineNets: { net: number; rateBps: number }[] = [];
    let lineGross = 0;
    let lineItemDiscount = 0;
    for (const r of currentLines) {
      const gross = r.unit_price_centavos * r.qty;
      const disc = r.discount_centavos ?? 0;
      lineGross += gross;
      lineItemDiscount += disc;
      const net = Math.max(0, gross - disc);
      lineNets.push({ net, rateBps: r.rate_bps ?? 0 });
    }

    const lineNetSubtotal = lineNets.reduce((s, x) => s + x.net, 0);
    const orderDiscount = Math.min(Math.max(0, currentTotals.orderDiscountCentavos), lineNetSubtotal);
    
    const n = lineNets.length;
    const alloc = new Array(n).fill(0);
    if (n > 0 && orderDiscount > 0) {
      const total = lineNets.reduce((a, b) => a + b.net, 0);
      if (total > 0) {
        const od = Math.min(orderDiscount, total);
        let remaining = od;
        for (let i = 0; i < n - 1; i++) {
          const share = Math.floor((od * (lineNets[i]?.net ?? 0)) / total);
          alloc[i] = share;
          remaining -= share;
        }
        alloc[n - 1] = remaining;
      }
    }

    const byRateMap = new Map<number, number>();
    for (let i = 0; i < lineNets.length; i++) {
      const ln = lineNets[i]!;
      const taxable = Math.max(0, ln.net - (alloc[i] ?? 0));
      const tax = Math.round((taxable * ln.rateBps) / 10000);
      byRateMap.set(ln.rateBps, (byRateMap.get(ln.rateBps) ?? 0) + tax);
    }

    const taxByRate = [...byRateMap.entries()]
      .filter(([bps]) => bps > 0)
      .map(([rateBps, taxCentavos]) => ({ rateBps, taxCentavos }));

    const taxCentavos = [...byRateMap.values()].reduce((a, b) => a + b, 0);

    const dueCentavos = Math.max(
      0,
      lineNetSubtotal - orderDiscount + taxCentavos + currentTotals.serviceChargeCentavos + currentTotals.tipCentavos,
    );

    return {
      lineGrossCentavos: lineGross,
      lineItemDiscountCentavos: lineItemDiscount,
      lineSubtotalCentavos: lineNetSubtotal,
      orderDiscountCentavos: orderDiscount,
      totalDiscountCentavos: lineItemDiscount + orderDiscount,
      serviceChargeCentavos: currentTotals.serviceChargeCentavos,
      tipCentavos: currentTotals.tipCentavos,
      taxCentavos,
      taxByRate,
      dueCentavos,
      paidCompletedCentavos: currentTotals.paidCompletedCentavos,
      remainingDueCentavos: Math.max(0, dueCentavos - currentTotals.paidCompletedCentavos),
    };
  }, []);

  function publishKdsUpdate(reason: string) {
    if (typeof window === "undefined") return;
    window.dispatchEvent(new CustomEvent("kds:refresh", { detail: { reason } }));
    if (typeof BroadcastChannel !== "undefined") {
      const channel = new BroadcastChannel("pos-live");
      channel.postMessage({ type: "kds:refresh", reason, at: Date.now() });
      channel.close();
    }
  }

  function publishAnalyticsUpdate() {
    if (typeof window === "undefined") return;
    window.dispatchEvent(new CustomEvent("pos:analytics-changed"));
    window.dispatchEvent(new CustomEvent("pos:data-changed"));
    if (typeof BroadcastChannel !== "undefined") {
      const channel = new BroadcastChannel("pos-live");
      channel.postMessage({ type: "analytics:refresh", at: Date.now() });
      channel.close();
    }
  }

  function formatTicketLabel(id: string | null, number: number | null) {
    if (number && number > 0) return `#${String(number).padStart(4, "0")}`;
    return id ? id.slice(0, 8) : "—";
  }

  const updateTicketState = useCallback((res: {
    lineItems: LineItem[];
    payments: PaymentRow[];
    ticket: { status: string; ticket_no?: number | null; ticket_type?: string | null; demographic_color?: string | null; customer_id?: string | null; feedback_rating?: number | null; feedback_notes?: string | null };
    totals: Totals;
  }) => {
    setLines((res.lineItems ?? []).filter((l) => !l.voided));
    setPayments(res.payments ?? []);
    setTicketStatus(res.ticket.status);
    setSelectedTicketType(res.ticket.ticket_type === "dine_in" ? "dine_in" : res.ticket.ticket_type === "takeout" ? "takeout" : null);
    setTicketNumber(Number(res.ticket.ticket_no ?? 0) || null);
    setTotals(res.totals ?? null);
    setDemographicColor(res.ticket.demographic_color ?? null);
    if (res.ticket.status === "paid") {
      publishAnalyticsUpdate();
      publishKdsUpdate("ticket_paid");
      if (registerId) sessionStorage.removeItem(activeTicketStorageKey(registerId));
      setTicketId(null);
      setTicketNumber(null);
      setSelectedTicketType(null);
      setLines([]);
      setPayments([]);
      setTicketStatus("");
      setTotals(null);
      setDemographicColor(null);
    }
  }, [registerId]);

  const refreshTicket = useCallback(async (id: string) => {
    const res = await api<{
      lineItems: LineItem[];
      payments: PaymentRow[];
      ticket: { status: string; ticket_no?: number | null; ticket_type?: string | null; demographic_color?: string | null; customer_id?: string | null; feedback_rating?: number | null; feedback_notes?: string | null; parked_label?: string | null };
      totals: Totals;
    }>(`/tickets/${id}`);
    updateTicketState(res);
  }, [updateTicketState]);

  const loadParkedTickets = useCallback(async () => {
    if (!registerId) {
      setParkedTickets([]);
      return;
    }
    try {
      const res = await api<{ tickets: ParkedTicketRow[] }>(`/tickets/open?registerId=${encodeURIComponent(registerId)}&status=parked`);
      setParkedTickets(res.tickets ?? []);
    } catch {
      setParkedTickets([]);
    }
  }, [registerId]);

  useEffect(() => {
    if (!ticketId) {
      setDemographicExpanded(true);
      return;
    }
    if (demographicColor) setDemographicExpanded(false);
  }, [ticketId, demographicColor]);

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
    const refreshProducts = () => {
      void api<{ products: Product[] }>("/catalog/products")
        .then((res) => {
          if (mounted) setProducts((res.products ?? []).filter((p) => p.is_active !== 0));
        })
        .catch(() => {});
    };
    const intervalId = window.setInterval(refreshProducts, 60_000);
    const onVisible = () => {
      if (document.visibilityState === "visible") refreshProducts();
    };
    document.addEventListener("visibilitychange", onVisible);
    return () => {
      mounted = false;
      window.clearInterval(intervalId);
      document.removeEventListener("visibilitychange", onVisible);
    };
  }, []);

  // Preload all product images into browser cache so filter switching is instant
  useEffect(() => {
    if (products.length === 0) return;
    const preloaded: HTMLImageElement[] = [];
    for (const p of products) {
      const key = p.image_r2_key ? String(p.image_r2_key) : "";
      const src = resolveAssetImageSrc(key);
      if (!src) continue;
      const img = new Image();
      img.src = src;
      preloaded.push(img);
    }
    // Keep references alive until cleanup to avoid GC cancelling fetches
    return () => {
      preloaded.length = 0;
    };
  }, [products]);

  useEffect(() => {
    if (!payOpen) return;
    void api<{ settings: Record<string, unknown> | null }>("/ewallet/settings").then((r) =>
      setEwalletUi((r.settings as EwalletUi) ?? null),
    );
  }, [payOpen]);

  useEffect(() => {
    if (!payOpen || !totals) return;
    setCashPesosInput("");
  }, [payOpen, totals]);

  useEffect(() => {
    if (!payOpen) return;
    setPayTab("cash");
  }, [payOpen]);

  useEffect(() => {
    if (registerId) sessionStorage.setItem("registerId", registerId);
    void loadParkedTickets();
  }, [registerId, loadParkedTickets]);

  useEffect(() => {
    if (!registerId || !ticketId || ticketStatus !== "open") return;
    sessionStorage.setItem(activeTicketStorageKey(registerId), ticketId);
  }, [ticketId, ticketStatus, registerId]);

  useEffect(() => {
    if (!registerId || bootLoading) return;
    let cancelled = false;
    async function autoParkTicketAfterReload() {
      const storedId = sessionStorage.getItem(activeTicketStorageKey(registerId));
      if (!storedId) return;
      sessionStorage.removeItem(activeTicketStorageKey(registerId));
      try {
        const res = await api<{ ticket: { status: string } }>(`/tickets/${storedId}`);
        if (cancelled) return;
        if (res.ticket?.status === "open") {
          await api(`/tickets/${storedId}/park`, {
            method: "PATCH",
            json: { parkedLabel: RELOAD_PARK_LABEL },
          });
          publishKdsUpdate("ticket_parked_reload");
        }
      } catch {
        /* ticket may already be closed or missing */
      } finally {
        if (!cancelled) {
          clearActiveTicket();
          await loadParkedTickets();
        }
      }
    }
    void autoParkTicketAfterReload();
    return () => {
      cancelled = true;
    };
  }, [registerId, bootLoading, loadParkedTickets]);

  useEffect(() => {
    if (!registerId) return;
    const refresh = () => {
      void loadParkedTickets();
    };
    window.addEventListener("pos:data-changed", refresh);
    const channel = typeof BroadcastChannel !== "undefined" ? new BroadcastChannel("pos-live") : null;
    channel?.addEventListener("message", (ev: MessageEvent) => {
      if (ev.data?.type === "kds:refresh" || ev.data?.type === "analytics:refresh") refresh();
    });
    const intervalId = window.setInterval(refresh, 15_000);
    return () => {
      window.removeEventListener("pos:data-changed", refresh);
      channel?.close();
      window.clearInterval(intervalId);
    };
  }, [registerId, loadParkedTickets]);

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
    sessionStorage.setItem(activeTicketStorageKey(registerId), created.id);
    return created.id;
  }

  async function chooseTicketType(ticketType: "takeout" | "dine_in") {
    setSelectedTicketType(ticketType);
    if (!ticketId) return;
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/type`, { method: "PATCH", json: { ticketType } });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to update ticket type.");
      }
    }
  }

  async function addLine(productId: string, qty: number, modifierIds: string[], discountCentavos?: number) {
    const p = products.find(prod => prod.id === productId);
    const tempId = `temp-${crypto.randomUUID()}`;
    const regularUnit = p ? productRegularPrice(p) : 0;
    const sellUnit = p ? productSellPrice(p) : 0;
    const happyHourDisc = p ? Math.max(0, regularUnit - sellUnit) * qty : 0;
    const tempLine: LineItem = {
      id: tempId,
      product_id: productId,
      qty,
      unit_price_centavos: regularUnit,
      discount_centavos: (discountCentavos ?? 0) + happyHourDisc,
      line_notes: null,
      voided: 0,
      product_name: p ? p.name : "Item",
      rate_bps: 0
    };

    const nextLines = [...lines, tempLine];
    setLines(nextLines);

    const baseTotals = totals ?? {
      lineGrossCentavos: 0,
      lineItemDiscountCentavos: 0,
      lineSubtotalCentavos: 0,
      orderDiscountCentavos: 0,
      totalDiscountCentavos: 0,
      serviceChargeCentavos: 0,
      tipCentavos: 0,
      taxCentavos: 0,
      taxByRate: [],
      dueCentavos: 0,
      paidCompletedCentavos: 0,
      remainingDueCentavos: 0,
    };
    const nextTotals = calculateTotalsClientSide(nextLines, baseTotals);
    setTotals(nextTotals);

    const seq = ++lastRequestSeq.current;
    try {
      const tid = await ensureTicket();
      const res = await api<any>(`/tickets/${tid}/lines`, {
        method: "POST",
        json: { productId, qty, modifierIds, discountCentavos: discountCentavos ?? 0 },
      });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
      }
      publishKdsUpdate("line_added");
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        if (ticketId) {
          refreshTicket(ticketId);
        } else {
          setLines([]);
          setTotals(null);
        }
        setError("Failed to add product to ticket.");
      }
    }
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
      if (posDetailCache.current[p.id]) {
        detail = posDetailCache.current[p.id];
      } else {
        try {
          detail = await api<PosDetail>(`/catalog/products/${p.id}/pos-detail`);
          if (detail) {
            posDetailCache.current[p.id] = detail;
          }
        } catch {
          detail = null;
        }
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

  function openParkModal() {
    if (!ticketId || lines.length === 0) {
      setError("Add at least one item before parking a ticket.");
      return;
    }
    setParkLabel("");
    setParkModalOpen(true);
    setError(null);
  }

  async function confirmParkTicket(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!ticketId) return;
    const label = parkLabel.trim();
    if (!label) {
      setError("Enter a customer name or identifier.");
      return;
    }
    setParkBusy(true);
    setError(null);
    try {
      await api(`/tickets/${ticketId}/park`, { method: "PATCH", json: { parkedLabel: label } });
      publishKdsUpdate("ticket_parked");
      setParkModalOpen(false);
      setParkLabel("");
      clearActiveTicket();
      await loadParkedTickets();
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to park ticket.");
    } finally {
      setParkBusy(false);
    }
  }

  function clearActiveTicket() {
    if (registerId) sessionStorage.removeItem(activeTicketStorageKey(registerId));
    setTicketId(null);
    setTicketNumber(null);
    setSelectedTicketType(null);
    setLines([]);
    setPayments([]);
    setTicketStatus("");
    setTotals(null);
    setDemographicColor(null);
    setDemographicExpanded(true);
  }

  async function resumeParkedTicket(row: ParkedTicketRow) {
    if (ticketId && ticketStatus === "open" && lines.length > 0 && ticketId !== row.id) {
      setError("Park or complete the current ticket before opening a parked order.");
      return;
    }
    setBusy(true);
    setError(null);
    try {
      const res = await api<{
        lineItems: LineItem[];
        payments: PaymentRow[];
        ticket: { status: string; ticket_no?: number | null; ticket_type?: string | null; demographic_color?: string | null };
        totals: Totals;
      }>(`/tickets/${row.id}/resume`, { method: "PATCH", json: {} });
      setTicketId(row.id);
      updateTicketState(res);
      publishKdsUpdate("ticket_resumed");
      setParkModalOpen(false);
      await loadParkedTickets();
    } catch (err) {
      setError(err instanceof Error ? err.message : "Failed to resume parked ticket.");
    } finally {
      setBusy(false);
    }
  }

  async function parkTicket() {
    openParkModal();
  }

  function newTicket() {
    clearActiveTicket();
    setNotice("Ready for new ticket");
  }

  async function payCash(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!ticketId || !totals) return;
    const paidTicketId = ticketId;
    const fd = new FormData(e.currentTarget);
    const pesos = Number(cashPesosInput || "0");
    const rounding = Number(String(fd.get("roundingCentavos") ?? "0")) || 0;
    const centavos = Math.round(pesos * 100);
    if (centavos < totals.remainingDueCentavos) {
      setError(`Insufficient cash. Need at least ${formatPhp(totals.remainingDueCentavos)} to complete this payment.`);
      return;
    }
    const key = crypto.randomUUID();
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/payments`, {
        method: "POST",
        headers: { "Idempotency-Key": key },
        json: { tenderType: "cash", amountCentavos: centavos, roundingCentavos: rounding },
      });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        setPayOpen(false);
        void openCashReceiptDetail(paidTicketId);
        setNotice("Cash payment recorded");
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to record cash payment.");
      }
    }
  }
  async function openCashReceiptDetail(ticketIdToOpen: string) {
    setCashReceiptModal(true);
    setCashReceiptLoading(true);
    setCashReceiptError(null);
    setCashReceiptDetail(null);
    try {
      const detail = await api<{
        ticket: { id: string; ticket_no?: number | null; created_at?: string | null };
        textReceipt: string;
      }>(`/tickets/${ticketIdToOpen}/receipt`);
      setCashReceiptDetail(detail);
    } catch (err: any) {
      setCashReceiptError(err?.message ?? "Failed to load ticket receipt");
    } finally {
      setCashReceiptLoading(false);
    }
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
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/payments`, {
        method: "POST",
        headers: { "Idempotency-Key": key },
        json: {
          tenderType: "e_wallet_personal",
          amountCentavos: centavos,
          referenceNote: ref || undefined,
          roundingCentavos: rounding,
        },
      });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        setNotice("GCash pending payment started");
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to start GCash payment.");
      }
    }
  }

  async function confirmPayment(pid: string) {
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/payments/${pid}/confirm-ewallet`, { method: "POST", json: {} });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        setPayOpen(false);
        setNotice("GCash payment confirmed");
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        if (ticketId) refreshTicket(ticketId);
        setError("Failed to confirm GCash payment.");
      }
    }
  }

  async function closeMarketingFreebieTicket() {
    if (!ticketId || !totals) return;
    if (totals.remainingDueCentavos > 0) {
      setError("Ticket still has remaining due. Complete payment first.");
      return;
    }
    const influencerName = (window.prompt("Influencer name (optional):") ?? "").trim();
    const campaign = (window.prompt("Campaign name (optional):") ?? "").trim();
    const note = (window.prompt("Marketing note (optional):") ?? "").trim();
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/close-freebie`, {
        method: "POST",
        json: {
          influencerName: influencerName || undefined,
          campaign: campaign || undefined,
          note: note || undefined,
        },
      });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        setPayOpen(false);
        void openCashReceiptDetail(ticketId);
        setNotice("Ticket submitted as marketing freebie");
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to submit freebie ticket.");
      }
    }
  }

  async function voidLine(li: LineItem) {
    const reason = window.prompt("Void reason (manager only)?");
    if (!reason) return;
    if (!ticketId) return;
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/lines/${li.id}/void`, { method: "POST", json: { reason } });
        if (seq === lastRequestSeq.current) {
          updateTicketState(res);
          publishKdsUpdate("line_voided");
          setNotice("Line voided");
        }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to void line.");
      }
    }
  }

  async function updateLineQty(lineItem: LineItem, nextQty: number) {
    if (!ticketId) return;

    // 1. Optimistic Update
    const nextLines = lines
      .map(li => li.id === lineItem.id ? { ...li, qty: nextQty } : li)
      .filter(li => li.qty > 0 && !li.voided);
    
    setLines(nextLines);
    if (totals) {
      const nextTotals = calculateTotalsClientSide(nextLines, totals);
      setTotals(nextTotals);
    }

    const seq = ++lastRequestSeq.current;
    try {
      if (nextQty <= 0) {
        const res = await api<any>(`/tickets/${ticketId}/lines/${lineItem.id}`, { method: "DELETE", json: {} });
        if (seq === lastRequestSeq.current) {
          updateTicketState(res);
          publishKdsUpdate("line_removed");
          setNotice(`${lineItem.product_name ?? "Item"} removed`);
        }
      } else {
        const res = await api<any>(`/tickets/${ticketId}/lines/${lineItem.id}`, {
          method: "PATCH",
          json: { qty: nextQty },
        });
        if (seq === lastRequestSeq.current) {
          updateTicketState(res);
          publishKdsUpdate("line_updated");
          setNotice(`${lineItem.product_name ?? "Item"} updated`);
        }
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to update quantity. Reverting changes.");
      }
    }
  }

  async function setLineFreebie(lineItem: LineItem, nextFreebie: boolean) {
    if (!ticketId) return;
    const fullLinePrice = Math.max(0, lineItem.unit_price_centavos * lineItem.qty);
    if (fullLinePrice <= 0) return;

    const currentNotes = String(lineItem.line_notes ?? "").trim();
    const strippedNotes = currentNotes.startsWith("[FREEBIE] ") ? currentNotes.replace("[FREEBIE] ", "").trim() : currentNotes;
    let lineNotes = strippedNotes || undefined;
    let discountCentavos = 0;

    if (nextFreebie) {
      const reasonInput = window.prompt("Freebie reason (optional):", strippedNotes) ?? "";
      const reason = reasonInput.trim();
      lineNotes = reason ? `[FREEBIE] ${reason}` : "[FREEBIE]";
      discountCentavos = fullLinePrice;
    }

    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/lines/${lineItem.id}`, {
        method: "PATCH",
        json: { discountCentavos, lineNotes },
      });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        publishKdsUpdate("line_updated");
        setNotice(nextFreebie ? `${lineItem.product_name ?? "Item"} marked as freebie` : `${lineItem.product_name ?? "Item"} freebie removed`);
      }
    } catch (err) {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to update freebie status.");
      }
    }
  }

  async function loadPaidTicketsForRefund(query = "") {
    const q = query.trim();
    const qs = q ? `&q=${encodeURIComponent(q)}` : "";
    const res = await api<{ tickets: PaidTicketRow[] }>(`/tickets/paid?limit=50${qs}`);
    setPaidTicketsForRefund(res.tickets ?? []);
  }

  function openRefundPicker() {
    setRefundPickerOpen(true);
    setRefundSelected(null);
    setRefundSearch("");
    void loadPaidTicketsForRefund().catch(() => {
      setPaidTicketsForRefund([]);
      setError("Failed to load paid tickets.");
    });
  }

  function closeRefundPicker() {
    setRefundPickerOpen(false);
    setRefundSelected(null);
    setRefundSearch("");
    setPaidTicketsForRefund([]);
  }

  useEffect(() => {
    if (!refundPickerOpen || refundSelected) return;
    const handle = window.setTimeout(() => {
      void loadPaidTicketsForRefund(deferredRefundSearch).catch(() => setPaidTicketsForRefund([]));
    }, 250);
    return () => window.clearTimeout(handle);
  }, [refundPickerOpen, refundSelected, deferredRefundSearch]);

  async function submitRefundFromPicker(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!refundSelected) return;
    const fd = new FormData(e.currentTarget);
    const reason = String(fd.get("reason") ?? "").trim();
    if (!reason) return;
    const amountCentavos = Math.round(Number(fd.get("pesos") ?? "0") * 100);
    if (amountCentavos <= 0) {
      setError("Enter a valid refund amount.");
      return;
    }
    setRefundBusy(true);
    const seq = ++lastRequestSeq.current;
    try {
      await api(`/tickets/${refundSelected.id}/refunds`, {
        method: "POST",
        json: {
          amountCentavos,
          reason,
          note: String(fd.get("note") ?? "") || undefined,
        },
      });
      if (seq === lastRequestSeq.current) {
        closeRefundPicker();
        publishAnalyticsUpdate();
        setNotice("Refund recorded");
      }
    } catch {
      if (seq === lastRequestSeq.current) {
        setError("Failed to record refund.");
      }
    } finally {
      if (seq === lastRequestSeq.current) setRefundBusy(false);
    }
  }

  async function voidWholeTicket() {
    const reason = window.prompt("Void entire ticket? Type reason:");
    if (!reason || !ticketId) return;
    await api(`/tickets/${ticketId}/void-ticket`, { method: "POST", json: { reason } });
    newTicket();
    publishKdsUpdate("ticket_voided");
    setNotice("Ticket voided");
  }

  const pending = payments.filter((p) => p.status === "pending_ewallet");
  const paidCompleted = payments.filter((p) => p.status === "completed");
  const cashTenderedCentavos = Math.round((Number(cashPesosInput || "0") || 0) * 100);
  const cashDeltaCentavos = totals ? cashTenderedCentavos - totals.remainingDueCentavos : 0;
  const canPaySplit = Boolean(ticketId && totals && selectedTicketType && demographicColor);

  async function updateTicketMeta(meta: { demographicColor?: string; customerId?: string }) {
    if (!ticketId) return;
    const seq = ++lastRequestSeq.current;
    try {
      const res = await api<any>(`/tickets/${ticketId}/meta`, { method: "PATCH", json: meta });
      if (seq === lastRequestSeq.current) {
        updateTicketState(res);
        setNotice("Ticket metadata updated");
      }
    } catch {
      if (seq === lastRequestSeq.current) {
        refreshTicket(ticketId);
        setError("Failed to update ticket metadata.");
      }
    }
  }

  const canVoid = me && isManager(me.role);
  const canRefund = Boolean(canVoid);

  const filteredPaidTickets = useMemo(() => {
    const q = refundSearch.trim().toLowerCase().replace(/^#/, "");
    if (!q) return paidTicketsForRefund;
    return paidTicketsForRefund.filter((t) => {
      const no = String(t.ticket_no).padStart(4, "0");
      return no.includes(q.replace(/\D/g, "")) || `#${no}`.includes(q);
    });
  }, [paidTicketsForRefund, refundSearch]);

  return (
    <div className="pos-page stack" style={{ gap: 16 }}>
      {bootLoading ? <div className="card muted">Loading POS data…</div> : null}
      {error ? <div className="error">{error}</div> : null}

      <div className="panel-split pos-layout">
        <div className="pos-main-column stack">
          <div className="pos-topbar">
            <div className="filter-icon-wrap pos-search">
              <span className="filter-icon">⌕</span>
              <input className="field" placeholder="Search for coffee, food etc" value={search} onChange={(e) => setSearch(e.target.value)} />
            </div>
            <div className="pos-register-wrap">
              <div className="label">Register</div>
              <select className="field" value={registerId} onChange={(e) => setRegisterId(e.target.value)}>
                <option value="">Select…</option>
                {registers.map((r) => (
                  <option key={r.id} value={r.id}>
                    {r.name} — {r.id.slice(0, 8)}…
                  </option>
                ))}
              </select>
            </div>
            <div className="row pos-action-bar">
              <button type="button" className="ghost-btn pos-icon-btn" onClick={() => newTicket()} disabled={!ticketId} title="New ticket" aria-label="New ticket">
                <span aria-hidden="true">＋</span>
              </button>
              <button type="button" className="ghost-btn pos-icon-btn" onClick={() => void parkTicket()} disabled={!ticketId || lines.length === 0} title="Park / hold" aria-label="Park / hold">
                <span aria-hidden="true">⏸</span>
              </button>
              {parkedTickets.length > 0 ? (
                <button
                  type="button"
                  className="ghost-btn pos-parked-badge"
                  onClick={() => setParkModalOpen(true)}
                  title="View parked orders"
                >
                  <span aria-hidden="true">📋</span>
                  <span>{parkedTickets.length}</span>
                </button>
              ) : null}
              {canRefund ? (
                <button
                  type="button"
                  className="ghost-btn pos-icon-btn"
                  onClick={() => openRefundPicker()}
                  title="Refund ticket"
                  aria-label="Refund ticket"
                >
                  <span aria-hidden="true">↩</span>
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

          <div className="pos-products-pane">
            <div className="pos-products-scroll">
              <div className="grid-products">
              {filtered.map((p) => {
                const categoryName = categories.find(c => c.id === p.category_id)?.name || "Uncategorized";
                const imageKey = p.image_r2_key ? String(p.image_r2_key) : "";
                const imageSrc = resolveAssetImageSrc(imageKey);
                const imageLoadFailed = Boolean(imageSrc && imageLoadErrors[imageSrc]);
                return (
                <button key={p.id} type="button" className={`tile product-tile ${p.out_of_stock === 1 ? 'out-of-stock' : ''}`} disabled={busy || p.out_of_stock === 1} onClick={() => void onPickProduct(p)}>
                  <div className="product-image-container">
                    {imageSrc && !imageLoadFailed ? (
                      <img
                        className="product-image"
                        src={imageSrc}
                        alt={p.name}
                        loading="lazy"
                        onError={() =>
                          setImageLoadErrors((prev) =>
                            prev[imageSrc] ? prev : { ...prev, [imageSrc]: true },
                          )
                        }
                      />
                    ) : (
                      <div className="product-image product-image-fallback" aria-hidden="true" />
                    )}
                    {p.out_of_stock === 1 && <div className="out-of-stock-badge">Out of Stock</div>}
                  </div>
                  <div className="product-info">
                    <div className="product-category">{categoryName}</div>
                    <div className="product-name">{p.name}</div>
                    <div className="price">
                      {productSellPrice(p) < productRegularPrice(p) ? (
                        <>
                          <span className="price-regular">{formatPhp(productRegularPrice(p))}</span>{" "}
                          <span className="price-sale">{formatPhp(productSellPrice(p))}</span>
                        </>
                      ) : (
                        formatPhp(productSellPrice(p))
                      )}
                    </div>
                  </div>
                </button>
              )})}
            </div>
          </div>
        </div>
        </div>

        <aside className="cart stack pos-cart-panel">
          {parkedTickets.length > 0 ? (
            <div className="parked-queue">
              <div className="parked-queue-header">
                <span className="parked-queue-title">Parked orders</span>
                <span className="parked-queue-count">{parkedTickets.length}</span>
              </div>
              <div className="parked-queue-list">
                {parkedTickets.map((row) => {
                  const label = String(row.parked_label ?? "").trim() || formatTicketLabel(row.id, Number(row.ticket_no ?? 0) || null);
                  const qty = Number(row.item_qty ?? 0);
                  const due = Number(row.due_centavos ?? 0);
                  const isActive = ticketId === row.id;
                  return (
                    <button
                      key={row.id}
                      type="button"
                      className={`parked-queue-item${isActive ? " is-active" : ""}`}
                      disabled={busy}
                      onClick={() => void resumeParkedTicket(row)}
                    >
                      <div className="parked-queue-item-main">
                        <span className="parked-queue-name">{label}</span>
                        <span className="parked-queue-meta">
                          {formatTicketLabel(row.id, Number(row.ticket_no ?? 0) || null)}
                          {qty > 0 ? ` · ${qty} item${qty === 1 ? "" : "s"}` : ""}
                        </span>
                      </div>
                      <div className="parked-queue-item-side">
                        {due > 0 ? <span className="parked-queue-due">{formatPhp(due)}</span> : null}
                        <span className="parked-queue-time">{formatParkedWhen(row.updated_at)}</span>
                      </div>
                    </button>
                  );
                })}
              </div>
            </div>
          ) : null}

          <div className="row" style={{ justifyContent: "space-between" }}>
            <strong>Ticket</strong>
            <span className="muted">{formatTicketLabel(ticketId, ticketNumber)}</span>
          </div>
          <div className="muted">Status: {ticketStatus || "—"}</div>

          <div className="cart-lines">
            {lines.map((li) => {
            const lineSubtotalCentavos = li.unit_price_centavos * li.qty;
            const lineDiscountCentavos = li.discount_centavos ?? 0;
            const lineTotalCentavos = lineSubtotalCentavos - lineDiscountCentavos;
            const isFreebie = lineSubtotalCentavos > 0 && lineDiscountCentavos >= lineSubtotalCentavos;
            return (
            <div key={li.id} className="line">
              <div className="stack" style={{ gap: 4, flex: 1 }}>
                <strong>{li.product_name ?? "Item"}</strong>
                <span className="muted" style={{ fontSize: 13 }}>
                  Qty {li.qty} × {formatPhp(li.unit_price_centavos)}
                </span>
                {lineDiscountCentavos > 0 && !isFreebie ? (
                  <span className="muted" style={{ fontSize: 13 }}>
                    Discount −{formatPhp(lineDiscountCentavos)}
                  </span>
                ) : null}
                <span>
                  {isFreebie ? `${formatPhp(lineTotalCentavos)} (FREEBIE)` : formatPhp(lineTotalCentavos)}
                </span>
              </div>
              <div className="row" style={{ gap: 6, flexWrap: "wrap", justifyContent: "flex-end" }}>
                <button
                  type="button"
                  className="cart-action-btn"
                  title="Deduct quantity"
                  aria-label="Deduct quantity"
                  onClick={() => void updateLineQty(li, li.qty - 1)}
                >
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                  </svg>
                </button>
                <button
                  type="button"
                  className="cart-action-btn"
                  title="Add quantity"
                  aria-label="Add quantity"
                  onClick={() => void updateLineQty(li, li.qty + 1)}
                >
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
                    <line x1="12" y1="5" x2="12" y2="19"></line>
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                  </svg>
                </button>
                <button
                  type="button"
                  className="cart-action-btn is-danger"
                  title="Remove item"
                  aria-label="Remove item"
                  onClick={() => void updateLineQty(li, 0)}
                >
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                    <polyline points="3 6 5 6 21 6"></polyline>
                    <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                    <line x1="10" y1="11" x2="10" y2="17"></line>
                    <line x1="14" y1="11" x2="14" y2="17"></line>
                  </svg>
                </button>
                <button
                  type="button"
                  className={`cart-action-btn ${isFreebie ? "is-active" : ""}`}
                  title={isFreebie ? "Remove freebie status" : "Mark as freebie"}
                  aria-label={isFreebie ? "Remove freebie status" : "Mark as freebie"}
                  onClick={() => void setLineFreebie(li, !isFreebie)}
                >
                  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                    <polyline points="20 12 20 22 4 22 4 12"></polyline>
                    <rect x="2" y="7" width="20" height="5"></rect>
                    <line x1="12" y1="22" x2="12" y2="7"></line>
                    <path d="M12 7H7.5a2.5 2.5 0 0 1 0-5C11 2 12 7 12 7z"></path>
                    <path d="M12 7h4.5a2.5 2.5 0 0 0 0-5C13 2 12 7 12 7z"></path>
                  </svg>
                </button>
                {canVoid ? (
                  <button
                    type="button"
                    className="cart-action-btn is-danger"
                    title="Void line item"
                    aria-label="Void line item"
                    onClick={() => void voidLine(li)}
                  >
                    <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                      <circle cx="12" cy="12" r="10"></circle>
                      <line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line>
                    </svg>
                  </button>
                ) : null}
              </div>
            </div>
            );
            })}
          </div>

          {ticketId ? (
            <div className="stack" style={{ gap: 8, background: "var(--bg-elevated)", padding: 8, borderRadius: 6 }}>
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
              <div className="stack" style={{ gap: 8 }}>
                <button
                  type="button"
                  className="ghost-btn tiny-btn"
                  style={{ alignSelf: "flex-start" }}
                  onClick={() => setDemographicExpanded((prev) => !prev)}
                >
                  {demographicExpanded ? "Hide demographic" : demographicColor ? "Show demographic (selected)" : "Show demographic"}
                </button>
                {demographicExpanded ? (
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
                        onClick={async () => {
                          await updateTicketMeta({ demographicColor: demographicColor === c.value ? "" : c.value });
                          if (demographicColor !== c.value) setDemographicExpanded(false);
                        }}
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
                          transform: demographicColor === c.value ? "translateY(-2px)" : "none",
                        }}
                      >
                        <div
                          style={{
                            width: 28,
                            height: 28,
                            borderRadius: "50%",
                            background: c.bg,
                            boxShadow: "inset 0 2px 4px rgba(255,255,255,0.4), 0 2px 5px rgba(0,0,0,0.1)",
                            border: demographicColor === c.value ? "2px solid #fff" : "2px solid transparent",
                            outline: demographicColor === c.value ? `2px solid ${c.bg}` : "none",
                          }}
                        />
                        <span
                          style={{
                            fontSize: 10,
                            fontWeight: 700,
                            color: demographicColor === c.value ? c.bg : "var(--muted)",
                            textTransform: "uppercase",
                            letterSpacing: "0.02em",
                          }}
                        >
                          {c.label}
                        </span>
                      </button>
                    ))}
                  </div>
                ) : (
                  <span className="muted" style={{ fontSize: 12 }}>
                    {demographicColor ? "Demographic selected" : "No demographic selected"}
                  </span>
                )}
              </div>
            </div>
          ) : null}

          {totals ? (
            <div className="stack" style={{ gap: 4, fontSize: 14 }}>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Subtotal</span>
                <span>{formatPhp(totals.lineGrossCentavos ?? totals.lineSubtotalCentavos)}</span>
              </div>
              <div className="row" style={{ justifyContent: "space-between" }}>
                <span className="muted">Order discount</span>
                <span style={{ color: (totals.totalDiscountCentavos ?? 0) > 0 ? "#ef4444" : undefined }}>
                  −{formatPhp(totals.totalDiscountCentavos ?? 0)}
                </span>
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
              disabled={!canPaySplit}
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
              <form className="stack" onSubmit={payCash} autoComplete="off">
                <div className="label">Cash amount (PHP)</div>
                <input
                  className="field"
                  type="number"
                  step="0.01"
                  min="0"
                  value={cashPesosInput}
                  onChange={(e) => setCashPesosInput(e.target.value)}
                  autoComplete="off"
                  placeholder="0.00"
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
                <button className="primary-btn" type="submit" disabled={cashDeltaCentavos < 0}>
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
            {totals.remainingDueCentavos === 0 ? (
              <button type="button" className="primary-btn" onClick={() => void closeMarketingFreebieTicket()}>
                <span className="btn-icon">📣</span>
                <span>Submit as marketing freebie</span>
              </button>
            ) : null}
          </div>
        </div>
      ) : null}

      {refundPickerOpen ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack refund-picker-sheet">
            {!refundSelected ? (
              <>
                <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
                  <h2 style={{ margin: 0 }}>Refund ticket</h2>
                  <button type="button" className="ghost-btn tiny-btn" onClick={closeRefundPicker} aria-label="Close">
                    ✕
                  </button>
                </div>
                <p className="muted" style={{ margin: 0 }}>Select a paid ticket to refund. Search by ticket number.</p>
                <div className="filter-icon-wrap">
                  <span className="filter-icon">⌕</span>
                  <input
                    className="field"
                    placeholder="Search ticket # e.g. 0222"
                    value={refundSearch}
                    onChange={(e) => setRefundSearch(e.target.value)}
                    autoFocus
                  />
                </div>
                <div className="refund-ticket-list">
                  {filteredPaidTickets.length === 0 ? (
                    <p className="muted" style={{ margin: 0, padding: "12px 4px" }}>No refundable paid tickets found.</p>
                  ) : (
                    filteredPaidTickets.map((row) => {
                      const label = `#${String(row.ticket_no).padStart(4, "0")}`;
                      return (
                        <button
                          key={row.id}
                          type="button"
                          className="refund-ticket-item"
                          onClick={() => setRefundSelected(row)}
                        >
                          <div>
                            <strong>{label}</strong>
                            <span className="muted" style={{ marginLeft: 8, fontSize: 12 }}>
                              {row.ticket_type.replace("_", " ")} · {new Date(row.updated_at).toLocaleString()}
                            </span>
                          </div>
                          <div style={{ textAlign: "right" }}>
                            <div style={{ fontWeight: 700 }}>{formatPhp(row.refundable_centavos)}</div>
                            <span className="muted" style={{ fontSize: 11 }}>refundable</span>
                          </div>
                        </button>
                      );
                    })
                  )}
                </div>
              </>
            ) : (
              <>
                <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
                  <h2 style={{ margin: 0 }}>Refund #{String(refundSelected.ticket_no).padStart(4, "0")}</h2>
                  <button type="button" className="ghost-btn tiny-btn" onClick={() => setRefundSelected(null)} aria-label="Back">
                    ← Back
                  </button>
                </div>
                <p className="muted" style={{ margin: 0 }}>
                  Paid {formatPhp(refundSelected.paid_centavos)}
                  {refundSelected.refunded_centavos > 0 ? ` · Already refunded ${formatPhp(refundSelected.refunded_centavos)}` : ""}
                </p>
                <form className="stack" onSubmit={submitRefundFromPicker}>
                  <input
                    className="field"
                    name="pesos"
                    type="number"
                    step="0.01"
                    required
                    defaultValue={(refundSelected.refundable_centavos / 100).toFixed(2)}
                    placeholder="Amount PHP"
                  />
                  <input className="field" name="reason" required placeholder="Refund reason" autoFocus />
                  <input className="field" name="note" placeholder="Note (optional)" />
                  <div className="row">
                    <button className="primary-btn" type="submit" disabled={refundBusy}>
                      <span className="btn-icon">↩</span>
                      <span>{refundBusy ? "Processing…" : "Process refund"}</span>
                    </button>
                    <button type="button" className="ghost-btn" onClick={closeRefundPicker} disabled={refundBusy}>
                      Cancel
                    </button>
                  </div>
                </form>
              </>
            )}
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

      {parkModalOpen ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack" style={{ maxWidth: 480 }}>
            <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
              <h2 style={{ margin: 0 }}>{ticketId && lines.length > 0 ? "Park this order" : "Parked orders"}</h2>
              <button type="button" className="ghost-btn tiny-btn" onClick={() => { setParkModalOpen(false); setParkLabel(""); }}>
                ✕ Close
              </button>
            </div>
            {ticketId && lines.length > 0 ? (
              <form className="stack parked-park-form" onSubmit={confirmParkTicket}>
                <p className="muted" style={{ margin: 0, fontSize: 13 }}>
                  Hold {formatTicketLabel(ticketId, ticketNumber)} ({lines.length} item{lines.length === 1 ? "" : "s"}
                  {totals ? ` · ${formatPhp(totals.dueCentavos)}` : ""}) for a customer who will order later.
                </p>
                <div className="label">Customer name or identifier</div>
                <input
                  className="field"
                  value={parkLabel}
                  onChange={(e) => setParkLabel(e.target.value)}
                  placeholder="e.g. Maria, Table 3, Blue jacket"
                  autoFocus
                  required
                  maxLength={100}
                />
                <button className="primary-btn" type="submit" disabled={parkBusy}>
                  {parkBusy ? "Parking…" : "Park & start new order"}
                </button>
              </form>
            ) : null}
            {parkedTickets.length > 0 ? (
              <div className="stack" style={{ gap: 8 }}>
                <div className="label" style={{ marginBottom: 0 }}>Queue — tap to resume</div>
                <div className="parked-queue-list parked-queue-list-modal">
                  {parkedTickets.map((row) => {
                    const label = String(row.parked_label ?? "").trim() || formatTicketLabel(row.id, Number(row.ticket_no ?? 0) || null);
                    const qty = Number(row.item_qty ?? 0);
                    const due = Number(row.due_centavos ?? 0);
                    return (
                      <button
                        key={row.id}
                        type="button"
                        className="parked-queue-item"
                        disabled={busy}
                        onClick={() => void resumeParkedTicket(row)}
                      >
                        <div className="parked-queue-item-main">
                          <span className="parked-queue-name">{label}</span>
                          <span className="parked-queue-meta">
                            {formatTicketLabel(row.id, Number(row.ticket_no ?? 0) || null)}
                            {qty > 0 ? ` · ${qty} item${qty === 1 ? "" : "s"}` : ""}
                          </span>
                        </div>
                        <div className="parked-queue-item-side">
                          {due > 0 ? <span className="parked-queue-due">{formatPhp(due)}</span> : null}
                          <span className="parked-queue-time">{formatParkedWhen(row.updated_at)}</span>
                        </div>
                      </button>
                    );
                  })}
                </div>
              </div>
            ) : ticketId && lines.length > 0 ? null : (
              <p className="muted" style={{ margin: 0 }}>No parked orders on this register.</p>
            )}
          </div>
        </div>
      ) : null}

      {cashReceiptModal ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack" style={{ maxWidth: 760 }}>
            <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
              <h2 style={{ margin: 0 }}>
                Receipt {cashReceiptDetail?.ticket?.ticket_no ? `#${String(cashReceiptDetail.ticket.ticket_no).padStart(4, "0")}` : ""}
              </h2>
              <button type="button" className="ghost-btn tiny-btn" onClick={() => { setCashReceiptModal(false); setCashReceiptDetail(null); setCashReceiptError(null); }}>✕ Close</button>
            </div>
            {cashReceiptLoading ? <div className="muted">Loading ticket receipt...</div> : null}
            {cashReceiptError ? <div style={{ color: "#ef4444", fontSize: 13 }}>{cashReceiptError}</div> : null}
            {cashReceiptDetail && !cashReceiptLoading && !cashReceiptError ? (
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
                      {String(cashReceiptDetail?.textReceipt ?? "")}
                    </pre>
                    <div style={{ borderTop: "1px dashed #d1d5db", margin: "12px 0 8px" }} />
                    <div style={{ textAlign: "center", fontSize: 10, color: "#6b7280" }}>
                      Generated from ticket {String(cashReceiptDetail?.ticket?.id ?? "").slice(0, 8)}
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
                      w.document.write(`<!doctype html><html><head><title>Receipt</title><style>body{margin:0;padding:24px;background:#f3f4f6;font-family:system-ui} .paper{max-width:420px;margin:0 auto;background:#fff;border:1px solid #e5e7eb;border-radius:14px;padding:22px 20px} .title{text-align:center;font-weight:800;letter-spacing:.04em;font-size:15px} pre{white-space:pre-wrap;word-break:break-word;font:12px/1.45 'Courier New',monospace;color:#111;margin:0} .line{border-top:1px dashed #d1d5db;margin:10px 0}</style></head><body><div class="paper"><div class="title">OFFICIAL RECEIPT</div><div class="line"></div><pre>${String(cashReceiptDetail?.textReceipt ?? "").replace(/&/g, "&amp;").replace(/</g, "&lt;")}</pre></div></body></html>`);
                      w.document.close();
                      w.focus();
                      setTimeout(() => w.print(), 250);
                    }}
                  >
                    Print Receipt
                  </button>
                  <button type="button" className="ghost-btn" onClick={() => { setCashReceiptModal(false); setCashReceiptDetail(null); setCashReceiptError(null); }}>
                    Close
                  </button>
                </div>
              </>
            ) : null}
          </div>
        </div>
      ) : null}
    </div>
  );
}
