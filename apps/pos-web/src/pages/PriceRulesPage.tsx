import { FormEvent, useEffect, useMemo, useState } from "react";
import { api, formatPhp } from "../api.js";

type Product = {
  id: string;
  name: string;
  price_centavos: number;
  is_active?: number;
};

type PriceRule = {
  id: string;
  product_id: string | null;
  rule_type: string;
  value_json: string | { priceCentavos?: number };
  active: number;
  starts_at?: string | null;
  ends_at?: string | null;
  days_of_week_json?: string | null;
};

const DAY_LABELS = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

function rulePriceCentavos(rule: PriceRule): number | null {
  const raw = rule.value_json;
  let parsed: { priceCentavos?: number };
  if (typeof raw === "string") {
    try {
      parsed = JSON.parse(raw) as { priceCentavos?: number };
    } catch {
      return null;
    }
  } else {
    parsed = raw;
  }
  return typeof parsed?.priceCentavos === "number" ? parsed.priceCentavos : null;
}

function parseDays(json: string | null | undefined): number[] {
  if (!json) return [];
  try {
    const arr = JSON.parse(json) as unknown;
    return Array.isArray(arr) ? arr.filter((d): d is number => typeof d === "number") : [];
  } catch {
    return [];
  }
}

function formatSchedule(rule: PriceRule): string {
  const days = parseDays(rule.days_of_week_json);
  const parts: string[] = [];
  if (rule.starts_at) parts.push(`from ${formatWhen(rule.starts_at)}`);
  if (rule.ends_at) parts.push(`until ${formatWhen(rule.ends_at)}`);
  if (days.length > 0) parts.push(days.map((d) => DAY_LABELS[d] ?? String(d)).join(", "));
  return parts.length ? parts.join(" · ") : "Always (no schedule)";
}

function formatWhen(iso: string): string {
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return iso;
  return d.toLocaleString(undefined, { dateStyle: "short", timeStyle: "short" });
}

export function PriceRulesPage() {
  const [rules, setRules] = useState<PriceRule[]>([]);
  const [products, setProducts] = useState<Product[]>([]);
  const [productFilter, setProductFilter] = useState("");
  const [selectedDays, setSelectedDays] = useState<number[]>([]);
  const [msg, setMsg] = useState<string | null>(null);
  const [removingId, setRemovingId] = useState<string | null>(null);

  async function load() {
    const [rulesRes, productsRes] = await Promise.all([
      api<{ priceRules: PriceRule[] }>("/price-rules"),
      api<{ products: Product[] }>("/catalog/products"),
    ]);
    setRules(rulesRes.priceRules ?? []);
    setProducts(productsRes.products ?? []);
  }

  useEffect(() => {
    void load();
  }, []);

  useEffect(() => {
    const onChanged = () => {
      void load();
    };
    window.addEventListener("pos:data-changed", onChanged);
    return () => window.removeEventListener("pos:data-changed", onChanged);
  }, []);

  const productById = useMemo(() => new Map(products.map((p) => [p.id, p])), [products]);

  const sortedProducts = useMemo(
    () => [...products].sort((a, b) => a.name.localeCompare(b.name, undefined, { sensitivity: "base" })),
    [products],
  );

  const filteredProducts = useMemo(() => {
    const q = productFilter.trim().toLowerCase();
    if (!q) return sortedProducts;
    return sortedProducts.filter((p) => p.name.toLowerCase().includes(q));
  }, [sortedProducts, productFilter]);

  function toggleDay(day: number) {
    setSelectedDays((prev) => (prev.includes(day) ? prev.filter((d) => d !== day) : [...prev, day].sort()));
  }

  async function removeRule(rule: PriceRule) {
    const product = rule.product_id ? productById.get(rule.product_id) : undefined;
    const label = product?.name ?? "this rule";
    if (!window.confirm(`Remove happy hour price for ${label}? The product will use its regular price on POS.`)) return;
    setMsg(null);
    setRemovingId(rule.id);
    try {
      await api(`/price-rules/${rule.id}`, { method: "DELETE", json: {} });
      setMsg("Rule removed.");
      await load();
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Could not remove rule.");
    } finally {
      setRemovingId(null);
    }
  }

  async function createRule(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    const productId = String(fd.get("productId") || "");
    const price = Number(fd.get("price") ?? "0");
    const startsRaw = String(fd.get("startsAt") || "");
    const endsRaw = String(fd.get("endsAt") || "");
    if (!productId) {
      setMsg("Choose a product.");
      return;
    }
    if (!startsRaw || !endsRaw) {
      setMsg("Set both start and end date/time for when the happy hour applies.");
      return;
    }
    const startsAt = new Date(startsRaw).toISOString();
    const endsAt = new Date(endsRaw).toISOString();
    if (new Date(endsAt).getTime() <= new Date(startsAt).getTime()) {
      setMsg("End must be after start.");
      return;
    }
    try {
      await api("/price-rules", {
        method: "POST",
        json: {
          productId,
          ruleType: "happy_hour",
          startsAt,
          endsAt,
          daysOfWeekJson: selectedDays.length > 0 ? selectedDays : undefined,
          valueJson: { priceCentavos: Math.round(price * 100) },
        },
      });
      e.currentTarget.reset();
      setProductFilter("");
      setSelectedDays([]);
      setMsg("Happy hour price added.");
      await load();
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Could not save rule.");
    }
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Price rules</h1>
      <p className="muted" style={{ marginTop: -8 }}>
        Set a discounted price for menu items during a date/time window. The POS uses this price only while the
        schedule is active.
      </p>

      <form className="card stack" onSubmit={createRule}>
        <h2 style={{ margin: 0, fontSize: 18 }}>Add happy hour price</h2>
        <div className="label">Search products</div>
        <input
          className="field"
          type="search"
          placeholder="Type to filter the list…"
          value={productFilter}
          onChange={(e) => setProductFilter(e.target.value)}
          autoComplete="off"
        />
        <div className="label">Product</div>
        <select className="field" name="productId" required defaultValue="">
          <option value="" disabled>
            {filteredProducts.length === 0 ? "No matching products" : "Choose a product…"}
          </option>
          {filteredProducts.map((p) => (
            <option key={p.id} value={p.id}>
              {p.name}
              {p.is_active === 0 ? " (inactive)" : ""} — {formatPhp(p.price_centavos)} regular
            </option>
          ))}
        </select>
        <div className="label">Happy hour price (PHP)</div>
        <input className="field" name="price" type="number" step="0.01" min="0" required placeholder="e.g. 150.00" />
        <div className="row" style={{ gap: 12, flexWrap: "wrap" }}>
          <div className="stack" style={{ flex: "1 1 200px", gap: 6 }}>
            <div className="label">Starts</div>
            <input className="field" name="startsAt" type="datetime-local" required />
          </div>
          <div className="stack" style={{ flex: "1 1 200px", gap: 6 }}>
            <div className="label">Ends</div>
            <input className="field" name="endsAt" type="datetime-local" required />
          </div>
        </div>
        <div className="label">Repeat on days (optional)</div>
        <p className="muted" style={{ margin: 0, fontSize: 13 }}>
          Leave all unchecked for every day within the date range. Select days to limit the daily time window above
          to those weekdays only (e.g. Fri–Sun happy hour).
        </p>
        <div className="row" style={{ gap: 8, flexWrap: "wrap" }}>
          {DAY_LABELS.map((label, day) => (
            <label key={label} className="row" style={{ gap: 6, cursor: "pointer" }}>
              <input
                type="checkbox"
                checked={selectedDays.includes(day)}
                onChange={() => toggleDay(day)}
              />
              <span>{label}</span>
            </label>
          ))}
        </div>
        <button className="primary-btn" type="submit" disabled={filteredProducts.length === 0}>
          Add rule
        </button>
        {msg ? <div className="muted">{msg}</div> : null}
      </form>

      <div className="card stack">
        <h2 style={{ margin: 0, fontSize: 18 }}>Rules ({rules.length})</h2>
        {rules.length === 0 ? (
          <p className="muted" style={{ margin: 0 }}>
            No price rules yet.
          </p>
        ) : (
          <div className="table-wrap">
            <table className="admin-table">
              <thead>
                <tr>
                  <th>Product</th>
                  <th>Happy hour</th>
                  <th>Schedule</th>
                  <th>Status</th>
                  <th style={{ width: 56 }} aria-label="Actions" />
                </tr>
              </thead>
              <tbody>
                {rules.map((r) => {
                  const product = r.product_id ? productById.get(r.product_id) : undefined;
                  const happyCentavos = rulePriceCentavos(r);
                  return (
                    <tr key={r.id}>
                      <td>{product?.name ?? (r.product_id ? "Unknown product" : "All products")}</td>
                      <td>{happyCentavos != null ? formatPhp(happyCentavos) : "—"}</td>
                      <td style={{ fontSize: 13 }}>{formatSchedule(r)}</td>
                      <td>{r.active === 0 ? "Inactive" : "Active"}</td>
                      <td>
                        <button
                          type="button"
                          className="ghost-btn admin-action-btn is-danger"
                          aria-label={`Remove rule for ${product?.name ?? "product"}`}
                          title="Remove rule"
                          disabled={removingId === r.id}
                          onClick={() => void removeRule(r)}
                        >
                          <span className="btn-icon" aria-hidden="true">
                            🗑
                          </span>
                        </button>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </div>
  );
}
