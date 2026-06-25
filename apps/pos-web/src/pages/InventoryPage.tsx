import { FormEvent, useEffect, useState } from "react";
import { api } from "../api.js";
import { emitToast } from "../ui/ToastProvider.js";

export function InventoryPage() {
  const [stock, setStock] = useState<Record<string, unknown>[]>([]);
  const [ingredients, setIngredients] = useState<Record<string, unknown>[]>([]);

  async function load() {
    const [s, i] = await Promise.all([
      api<{ stock: Record<string, unknown>[] }>("/inventory/stock").catch(() => ({ stock: [] })),
      api<{ ingredients: Record<string, unknown>[] }>("/inventory/ingredients").catch(() => ({ ingredients: [] })),
    ]);
    setStock(s.stock ?? []);
    setIngredients(i.ingredients ?? []);
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

  async function addIngredient(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    try {
      await api("/inventory/ingredients", {
        method: "POST",
        json: { name: String(fd.get("name")), unit: String(fd.get("unit")) },
      });
      e.currentTarget.reset();
      emitToast("success", "Ingredient added");
    } catch {
      // API error toast handled by api()
    }
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Inventory</h1>
      <form className="card stack" onSubmit={addIngredient}>
        <h2 style={{ margin: 0, fontSize: 18 }}>New ingredient</h2>
        <input className="field" name="name" placeholder="Name" required />
        <input className="field" name="unit" placeholder="Unit (g, ml, pcs)" required />
        <button className="primary-btn" type="submit">
          Add
        </button>
      </form>

      <div className="card stack">
        <h2 style={{ margin: 0, fontSize: 18 }}>Ingredients</h2>
        {ingredients.map((x) => (
          <div key={String(x.id)} className="row" style={{ justifyContent: "space-between" }}>
            <span>{String(x.name)}</span>
            <span className="muted">{String(x.unit)}</span>
          </div>
        ))}
      </div>

      <div className="card stack">
        <h2 style={{ margin: 0, fontSize: 18 }}>Retail stock</h2>
        {stock.map((r) => (
          <div key={String(r.product_id)} className="row" style={{ justifyContent: "space-between" }}>
            <span>{String(r.product_name ?? r.product_id)}</span>
            <span>
              On hand: {String(r.on_hand)} · reorder {String(r.reorder_level ?? "")}
            </span>
          </div>
        ))}
      </div>
    </div>
  );
}
