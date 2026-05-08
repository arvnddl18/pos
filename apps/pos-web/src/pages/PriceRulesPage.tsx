import { FormEvent, useEffect, useState } from "react";
import { api } from "../api.js";

export function PriceRulesPage() {
  const [rules, setRules] = useState<Record<string, unknown>[]>([]);

  async function load() {
    const res = await api<{ priceRules: Record<string, unknown>[] }>("/price-rules");
    setRules(res.priceRules ?? []);
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

  async function createRule(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const price = Number(fd.get("price") ?? "0");
    await api("/price-rules", {
      method: "POST",
      json: {
        productId: String(fd.get("productId") || "") || null,
        ruleType: "happy_hour",
        valueJson: { priceCentavos: Math.round(price * 100) },
      },
    });
    e.currentTarget.reset();
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Price rules</h1>
      <form className="card stack" onSubmit={createRule}>
        <div className="label">Product ID (optional)</div>
        <input className="field" name="productId" placeholder="UUID" />
        <div className="label">Happy hour price (PHP)</div>
        <input className="field" name="price" type="number" step="0.01" required />
        <button className="primary-btn" type="submit">
          Add rule
        </button>
      </form>
      <div className="card stack">
        {rules.map((r) => (
          <pre key={String(r.id)} style={{ margin: 0, whiteSpace: "pre-wrap" }}>
            {JSON.stringify(r, null, 2)}
          </pre>
        ))}
      </div>
    </div>
  );
}
