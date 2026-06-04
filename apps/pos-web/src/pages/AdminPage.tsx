import { FormEvent, useEffect, useState } from "react";
import { api, formatPhp } from "../api.js";

type Product = Record<string, unknown>;
type Category = { id: string; name: string; sort_order: number };
type TaxProfile = { id: string; name: string; rate_bps: number };
type ModGroup = { id: string; name: string; required: number; min_select: number; max_select: number; exclusive: number };
type Modifier = { id: string; modifier_group_id: string; name: string; price_adjust_centavos: number; sort_order: number };

export function AdminPage() {
  const PAGE_SIZE = 10;
  const MODIFIER_PAGE_SIZE = 5;
  const [tab, setTab] = useState<"products" | "categories" | "tax" | "modifiers">("products");
  const [products, setProducts] = useState<Product[]>([]);
  const [categories, setCategories] = useState<Category[]>([]);
  const [taxProfiles, setTaxProfiles] = useState<TaxProfile[]>([]);
  const [modGroups, setModGroups] = useState<ModGroup[]>([]);
  const [modifiers, setModifiers] = useState<Modifier[]>([]);
  const [msg, setMsg] = useState<string | null>(null);
  const [showAddProduct, setShowAddProduct] = useState(false);
  const [showEditProduct, setShowEditProduct] = useState(false);
  const [editingProduct, setEditingProduct] = useState<Product | null>(null);
  const [editProductModGroupId, setEditProductModGroupId] = useState<string>("");
  const [showLinkGroup, setShowLinkGroup] = useState(false);
  const [showAddCategory, setShowAddCategory] = useState(false);
  const [showAddTax, setShowAddTax] = useState(false);
  const [showAddModGroup, setShowAddModGroup] = useState(false);
  const [showAddModifier, setShowAddModifier] = useState(false);
  const [productPage, setProductPage] = useState(1);
  const [categoryPage, setCategoryPage] = useState(1);
  const [taxPage, setTaxPage] = useState(1);
  const [modGroupPage, setModGroupPage] = useState(1);
  const [modifierPage, setModifierPage] = useState(1);

  const productTotalPages = Math.max(1, Math.ceil(products.length / PAGE_SIZE));
  const categoryTotalPages = Math.max(1, Math.ceil(categories.length / PAGE_SIZE));
  const taxTotalPages = Math.max(1, Math.ceil(taxProfiles.length / PAGE_SIZE));
  const modGroupTotalPages = Math.max(1, Math.ceil(modGroups.length / PAGE_SIZE));
  const modifierTotalPages = Math.max(1, Math.ceil(modifiers.length / MODIFIER_PAGE_SIZE));

  useEffect(() => {
    setProductPage((prev) => Math.min(prev, productTotalPages));
  }, [productTotalPages]);
  useEffect(() => {
    setCategoryPage((prev) => Math.min(prev, categoryTotalPages));
  }, [categoryTotalPages]);
  useEffect(() => {
    setTaxPage((prev) => Math.min(prev, taxTotalPages));
  }, [taxTotalPages]);
  useEffect(() => {
    setModGroupPage((prev) => Math.min(prev, modGroupTotalPages));
  }, [modGroupTotalPages]);
  useEffect(() => {
    setModifierPage((prev) => Math.min(prev, modifierTotalPages));
  }, [modifierTotalPages]);

  function pageRows<T>(rows: T[], page: number, pageSize = PAGE_SIZE): T[] {
    const start = (page - 1) * pageSize;
    return rows.slice(start, start + pageSize);
  }

  function actionButtonClassName(tone: "default" | "danger" = "default") {
    return tone === "danger" ? "ghost-btn admin-action-btn is-danger" : "ghost-btn admin-action-btn";
  }

  async function uploadProductImage(file: File): Promise<string> {
    const csrf = sessionStorage.getItem("csrfToken") ?? "";
    const res = await fetch("/api/uploads/menu-image", {
      method: "POST",
      headers: {
        "Content-Type": file.type || "application/octet-stream",
        ...(csrf ? { "X-CSRF-Token": csrf } : {}),
      },
      credentials: "include",
      body: file,
    });
    const data = (await res.json()) as { key?: string; error?: string };
    if (!res.ok || !data.key) {
      throw new Error(data.error ?? "upload_failed");
    }
    return data.key;
  }

  async function reloadAll() {
    const [p, c, t, m, mods] = await Promise.all([
      api<{ products: Product[] }>("/catalog/products"),
      api<{ categories: Category[] }>("/catalog/categories"),
      api<{ taxProfiles: TaxProfile[] }>("/catalog/tax-profiles"),
      api<{ modifierGroups: ModGroup[] }>("/catalog/modifier-groups"),
      api<{ modifiers: Modifier[] }>("/catalog/modifiers"),
    ]);
    setProducts(p.products ?? []);
    setCategories(c.categories ?? []);
    setTaxProfiles(t.taxProfiles ?? []);
    setModGroups(m.modifierGroups ?? []);
    setModifiers(mods.modifiers ?? []);
  }

  useEffect(() => {
    void reloadAll();
  }, []);

  useEffect(() => {
    const onChanged = () => {
      void reloadAll();
    };
    window.addEventListener("pos:data-changed", onChanged);
    return () => window.removeEventListener("pos:data-changed", onChanged);
  }, []);

  useEffect(() => {
    if (!editingProduct) {
      setEditProductModGroupId("");
      return;
    }
    api<{ modifierGroups: { id: string }[] }>(`/catalog/products/${editingProduct.id}/pos-detail`)
      .then((res) => {
        if (res.modifierGroups && res.modifierGroups.length > 0) {
          setEditProductModGroupId(res.modifierGroups[0].id);
        } else {
          setEditProductModGroupId("");
        }
      })
      .catch(() => {
        setEditProductModGroupId("");
      });
  }, [editingProduct]);

  async function createProduct(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    const categoryId = String(fd.get("categoryId") ?? "").trim();
    const taxId = String(fd.get("taxProfileId") ?? "").trim();
    const imageFile = fd.get("imageFile");
    try {
      let imageR2Key: string | null = null;
      if (imageFile instanceof File && imageFile.size > 0) {
        imageR2Key = await uploadProductImage(imageFile);
      }
      const result = await api<{ id: string }>("/catalog/products", {
        method: "POST",
        json: {
          name: String(fd.get("name") ?? ""),
          priceCentavos: Math.round(Number(fd.get("price") ?? "0") * 100),
          categoryId: categoryId || null,
          taxProfileId: taxId || null,
          imageR2Key,
          sku: String(fd.get("sku") ?? "") || null,
          barcode: String(fd.get("barcode") ?? "") || null,
          isRetail: fd.get("isRetail") === "on",
          namesI18n: (() => {
            const en = String(fd.get("nameEn") ?? "").trim();
            return en ? { en } : undefined;
          })(),
        },
      });
      const modGroupId = String(fd.get("modifierGroupId") ?? "").trim();
      if (modGroupId && result.id) {
        await api(`/catalog/products/${result.id}/modifier-groups`, {
          method: "POST",
          json: { modifierGroupId: modGroupId },
        });
      }
      e.currentTarget.reset();
      setShowAddProduct(false);
      setMsg("Product created");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error");
    }
  }

  async function patchProduct(id: string, patch: Record<string, unknown>) {
    await api(`/catalog/products/${id}`, { method: "PATCH", json: patch });
    setMsg("Updated");
  }

  async function updateProduct(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!editingProduct) return;
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    const categoryId = String(fd.get("categoryId") ?? "").trim();
    const taxId = String(fd.get("taxProfileId") ?? "").trim();
    const imageFile = fd.get("imageFile");
    try {
      let imageR2Key: string | null | undefined = undefined;
      if (imageFile instanceof File && imageFile.size > 0) {
        imageR2Key = await uploadProductImage(imageFile);
      }

      const patchData: Record<string, unknown> = {
        name: String(fd.get("name") ?? ""),
        priceCentavos: Math.round(Number(fd.get("price") ?? "0") * 100),
        categoryId: categoryId || null,
        taxProfileId: taxId || null,
        sku: String(fd.get("sku") ?? "") || null,
        barcode: String(fd.get("barcode") ?? "") || null,
        isRetail: fd.get("isRetail") === "on",
        namesI18n: (() => {
          const en = String(fd.get("nameEn") ?? "").trim();
          return en ? { en } : undefined;
        })(),
      };

      if (imageR2Key !== undefined) {
        patchData.imageR2Key = imageR2Key;
      }

      await api(`/catalog/products/${editingProduct.id}`, {
        method: "PATCH",
        json: patchData,
      });

      const modGroupId = String(fd.get("modifierGroupId") ?? "").trim();
      if (modGroupId) {
        await api(`/catalog/products/${editingProduct.id}/modifier-groups`, {
          method: "POST",
          json: { modifierGroupId: modGroupId },
        });
      } else {
        await api(`/catalog/products/${editingProduct.id}/modifier-groups`, {
          method: "DELETE",
          json: {},
        });
      }

      setShowEditProduct(false);
      setEditingProduct(null);
      setEditProductModGroupId("");
      setMsg("Product updated");
      void reloadAll();
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error");
    }
  }

  async function removeProduct(id: string) {
    if (!window.confirm("Remove this product?")) return;
    await api(`/catalog/products/${id}`, { method: "DELETE", json: {} });
    setMsg("Product removed");
  }



  async function createCategory(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    try {
      await api("/catalog/categories", { method: "POST", json: { name: String(fd.get("name")), sortOrder: Number(fd.get("sort") ?? 0) } });
      e.currentTarget.reset();
      setShowAddCategory(false);
      setMsg("Category created");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error creating category");
    }
  }

  async function editCategory(category: Category) {
    const name = window.prompt("Category name", category.name);
    if (!name || !name.trim()) return;
    const sortRaw = window.prompt("Sort order", String(category.sort_order));
    if (sortRaw === null) return;
    await api(`/catalog/categories/${category.id}`, { method: "PATCH", json: { name: name.trim(), sortOrder: Number(sortRaw) || 0 } });
    setMsg("Category updated");
  }

  async function removeCategory(category: Category) {
    if (!window.confirm(`Remove category "${category.name}"?`)) return;
    await api(`/catalog/categories/${category.id}`, { method: "DELETE", json: {} });
    setMsg("Category removed");
  }

  async function createTax(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    try {
      await api("/catalog/tax-profiles", {
        method: "POST",
        json: { name: String(fd.get("name")), rateBps: Math.round(Number(fd.get("ratePct") ?? 0) * 100) },
      });
      e.currentTarget.reset();
      setShowAddTax(false);
      setMsg("Tax profile created");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error creating tax profile");
    }
  }

  async function editTaxProfile(taxProfile: TaxProfile) {
    const name = window.prompt("Tax profile name", taxProfile.name);
    if (!name || !name.trim()) return;
    const rateRaw = window.prompt("Rate %", (taxProfile.rate_bps / 100).toFixed(2));
    if (rateRaw === null) return;
    await api(`/catalog/tax-profiles/${taxProfile.id}`, {
      method: "PATCH",
      json: { name: name.trim(), rateBps: Math.round((Number(rateRaw) || 0) * 100) },
    });
    setMsg("Tax profile updated");
  }

  async function removeTaxProfile(taxProfile: TaxProfile) {
    if (!window.confirm(`Remove tax profile "${taxProfile.name}"?`)) return;
    await api(`/catalog/tax-profiles/${taxProfile.id}`, { method: "DELETE", json: {} });
    setMsg("Tax profile removed");
  }

  async function createModGroup(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    try {
      await api("/catalog/modifier-groups", {
        method: "POST",
        json: {
          name: String(fd.get("name")),
          required: fd.get("required") === "on",
          minSelect: fd.get("minSel") ? Number(fd.get("minSel")) : 0,
          maxSelect: fd.get("maxSel") ? Number(fd.get("maxSel")) : 99,
          exclusive: fd.get("exclusive") === "on",
        },
      });
      e.currentTarget.reset();
      setShowAddModGroup(false);
      setMsg("Modifier group created");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error creating modifier group");
    }
  }

  async function editModifierGroup(group: ModGroup) {
    const name = window.prompt("Modifier group name", group.name);
    if (!name || !name.trim()) return;
    await api(`/catalog/modifier-groups/${group.id}`, {
      method: "PATCH",
      json: {
        name: name.trim(),
        required: group.required === 1,
        minSelect: group.min_select,
        maxSelect: group.max_select,
        exclusive: group.exclusive === 1,
      },
    });
    setMsg("Modifier group updated");
  }

  async function removeModifierGroup(group: ModGroup) {
    if (!window.confirm(`Remove modifier group "${group.name}" and its modifiers?`)) return;
    await api(`/catalog/modifier-groups/${group.id}`, { method: "DELETE", json: {} });
    setMsg("Modifier group removed");
  }

  async function addModifier(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    const gid = String(fd.get("groupId"));
    try {
      await api(`/catalog/modifier-groups/${gid}/modifiers`, {
        method: "POST",
        json: { name: String(fd.get("mname")), priceAdjustCentavos: Math.round(Number(fd.get("adjPhp") ?? 0) * 100) },
      });
      e.currentTarget.reset();
      setShowAddModifier(false);
      setMsg("Modifier added");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error adding modifier");
    }
  }

  async function editModifier(modifier: Modifier) {
    const name = window.prompt("Modifier name", modifier.name);
    if (!name || !name.trim()) return;
    const priceRaw = window.prompt("Price adjust PHP", (modifier.price_adjust_centavos / 100).toFixed(2));
    if (priceRaw === null) return;
    await api(`/catalog/modifiers/${modifier.id}`, {
      method: "PATCH",
      json: { name: name.trim(), priceAdjustCentavos: Math.round((Number(priceRaw) || 0) * 100) },
    });
    setMsg("Modifier updated");
  }

  async function removeModifier(modifier: Modifier) {
    if (!window.confirm(`Remove modifier "${modifier.name}"?`)) return;
    await api(`/catalog/modifiers/${modifier.id}`, { method: "DELETE", json: {} });
    setMsg("Modifier removed");
  }

  async function linkGroup(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setMsg(null);
    const fd = new FormData(e.currentTarget);
    try {
      await api(`/catalog/products/${String(fd.get("productId"))}/modifier-groups`, {
        method: "POST",
        json: { modifierGroupId: String(fd.get("groupId")) },
      });
      e.currentTarget.reset();
      setShowLinkGroup(false);
      setMsg("Linked");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Error linking modifier group");
    }
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Catalog admin</h1>
      <div className="row" style={{ flexWrap: "wrap", gap: 8 }}>
        {(["products", "categories", "tax", "modifiers"] as const).map((t) => (
          <button key={t} type="button" className={tab === t ? "primary-btn" : "ghost-btn"} onClick={() => setTab(t)}>
            <span className="btn-icon" aria-hidden="true">
              {t === "products" ? "📦" : t === "categories" ? "🗂" : t === "tax" ? "🧾" : "🧩"}
            </span>
            <span>{t}</span>
          </button>
        ))}
      </div>
      {msg ? <div className="muted">{msg}</div> : null}

      {tab === "products" ? (
        <div className="card stack">
          <div className="row" style={{ justifyContent: "space-between", flexWrap: "wrap" }}>
            <h2 style={{ margin: 0, fontSize: 18 }}>Products ({products.length})</h2>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="ghost-btn" onClick={() => setShowLinkGroup(true)}>
                <span className="btn-icon">🔗</span>
                <span>Link modifier group</span>
              </button>
              <button type="button" className="primary-btn" onClick={() => setShowAddProduct(true)}>
                <span className="btn-icon">＋</span>
                <span>Add product</span>
              </button>
            </div>
          </div>
          <div className="table-wrap">
            <table className="admin-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Price</th>
                  <th>Stock</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {pageRows(products, productPage).map((p) => (
                  <tr key={String(p.id)}>
                    <td>{String(p.name)}</td>
                    <td>{formatPhp(Number(p.price_centavos))}</td>
                    <td>{p.out_of_stock === 1 ? "Out" : "In"}</td>
                    <td>{p.is_active === 0 ? "Inactive" : "Active"}</td>
                    <td>
                      <div className="row admin-table-actions">
                        <button
                          type="button"
                          className={actionButtonClassName()}
                          onClick={() => void patchProduct(String(p.id), { outOfStock: p.out_of_stock !== 1 })}
                        >
                          <span className="btn-icon" aria-hidden="true">
                            📦
                          </span>
                          <span>Stock</span>
                        </button>
                        <button
                          type="button"
                          className={actionButtonClassName()}
                          onClick={() => void patchProduct(String(p.id), { isActive: p.is_active === 0 })}
                        >
                          <span className="btn-icon" aria-hidden="true">
                            ⚡
                          </span>
                          <span>Status</span>
                        </button>
                        <button
                          type="button"
                          className={actionButtonClassName()}
                          onClick={() => {
                            setEditingProduct(p);
                            setShowEditProduct(true);
                          }}
                        >
                          <span className="btn-icon" aria-hidden="true">
                            ✏
                          </span>
                          <span>Edit</span>
                        </button>
                        <button type="button" className={actionButtonClassName("danger")} onClick={() => void removeProduct(String(p.id))}>
                          <span className="btn-icon" aria-hidden="true">
                            🗑
                          </span>
                          <span>Remove</span>
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="row" style={{ justifyContent: "space-between" }}>
            <span className="muted">
              Page {productPage} of {productTotalPages}
            </span>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="ghost-btn" disabled={productPage <= 1} onClick={() => setProductPage((p) => Math.max(1, p - 1))}>
                <span className="btn-icon">←</span>
                <span>Previous</span>
              </button>
              <button
                type="button"
                className="ghost-btn"
                disabled={productPage >= productTotalPages}
                onClick={() => setProductPage((p) => Math.min(productTotalPages, p + 1))}
              >
                <span>Next</span>
                <span className="btn-icon" style={{ marginRight: 0, marginLeft: 6 }}>
                  →
                </span>
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {tab === "categories" ? (
        <div className="card stack">
          <div className="row" style={{ justifyContent: "space-between", flexWrap: "wrap" }}>
            <h2 style={{ margin: 0, fontSize: 18 }}>Categories ({categories.length})</h2>
            <button type="button" className="primary-btn" onClick={() => setShowAddCategory(true)}>
              <span className="btn-icon">＋</span>
              <span>Add category</span>
            </button>
          </div>
          <div className="table-wrap">
            <table className="admin-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Sort</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {pageRows(categories, categoryPage).map((c) => (
                  <tr key={c.id}>
                    <td>{c.name}</td>
                    <td>{c.sort_order}</td>
                    <td>
                      <div className="row admin-table-actions">
                        <button type="button" className={actionButtonClassName()} onClick={() => void editCategory(c)}>
                          <span className="btn-icon" aria-hidden="true">
                            ✏
                          </span>
                          <span>Edit</span>
                        </button>
                        <button type="button" className={actionButtonClassName("danger")} onClick={() => void removeCategory(c)}>
                          <span className="btn-icon" aria-hidden="true">
                            🗑
                          </span>
                          <span>Remove</span>
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="row" style={{ justifyContent: "space-between" }}>
            <span className="muted">
              Page {categoryPage} of {categoryTotalPages}
            </span>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="ghost-btn" disabled={categoryPage <= 1} onClick={() => setCategoryPage((p) => Math.max(1, p - 1))}>
                <span className="btn-icon">←</span>
                <span>Previous</span>
              </button>
              <button
                type="button"
                className="ghost-btn"
                disabled={categoryPage >= categoryTotalPages}
                onClick={() => setCategoryPage((p) => Math.min(categoryTotalPages, p + 1))}
              >
                <span>Next</span>
                <span className="btn-icon" style={{ marginRight: 0, marginLeft: 6 }}>
                  →
                </span>
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {tab === "tax" ? (
        <div className="card stack">
          <div className="row" style={{ justifyContent: "space-between", flexWrap: "wrap" }}>
            <h2 style={{ margin: 0, fontSize: 18 }}>Tax Profiles ({taxProfiles.length})</h2>
            <button type="button" className="primary-btn" onClick={() => setShowAddTax(true)}>
              <span className="btn-icon">＋</span>
              <span>Add tax profile</span>
            </button>
          </div>
          <div className="table-wrap">
            <table className="admin-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Rate</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {pageRows(taxProfiles, taxPage).map((tp) => (
                  <tr key={tp.id}>
                    <td>{tp.name}</td>
                    <td>{(tp.rate_bps / 100).toFixed(2)}%</td>
                    <td>
                      <div className="row admin-table-actions">
                        <button type="button" className={actionButtonClassName()} onClick={() => void editTaxProfile(tp)}>
                          <span className="btn-icon" aria-hidden="true">
                            ✏
                          </span>
                          <span>Edit</span>
                        </button>
                        <button type="button" className={actionButtonClassName("danger")} onClick={() => void removeTaxProfile(tp)}>
                          <span className="btn-icon" aria-hidden="true">
                            🗑
                          </span>
                          <span>Remove</span>
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
          <div className="row" style={{ justifyContent: "space-between" }}>
            <span className="muted">
              Page {taxPage} of {taxTotalPages}
            </span>
            <div className="row" style={{ gap: 8 }}>
              <button type="button" className="ghost-btn" disabled={taxPage <= 1} onClick={() => setTaxPage((p) => Math.max(1, p - 1))}>
                <span className="btn-icon">←</span>
                <span>Previous</span>
              </button>
              <button type="button" className="ghost-btn" disabled={taxPage >= taxTotalPages} onClick={() => setTaxPage((p) => Math.min(taxTotalPages, p + 1))}>
                <span>Next</span>
                <span className="btn-icon" style={{ marginRight: 0, marginLeft: 6 }}>
                  →
                </span>
              </button>
            </div>
          </div>
        </div>
      ) : null}

      {tab === "modifiers" ? (
        <div className="stack">
          <div className="card stack admin-wide-card">
            <div className="row" style={{ justifyContent: "space-between", flexWrap: "wrap" }}>
              <h2 style={{ margin: 0, fontSize: 18 }}>Modifier Groups ({modGroups.length})</h2>
              <button type="button" className="primary-btn" onClick={() => setShowAddModGroup(true)}>
                <span className="btn-icon">＋</span>
                <span>Add group</span>
              </button>
            </div>
            <div className="table-wrap">
              <table className="admin-table">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Required</th>
                    <th>Min</th>
                    <th>Max</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {pageRows(modGroups, modGroupPage).map((g) => (
                    <tr key={g.id}>
                      <td>{g.name}</td>
                      <td>{g.required ? "Yes" : "No"}</td>
                      <td>{g.min_select}</td>
                      <td>{g.max_select}</td>
                      <td>
                        <div className="row admin-table-actions">
                          <button type="button" className={actionButtonClassName()} onClick={() => void editModifierGroup(g)}>
                            <span className="btn-icon" aria-hidden="true">
                              ✏
                            </span>
                            <span>Edit</span>
                          </button>
                          <button type="button" className={actionButtonClassName("danger")} onClick={() => void removeModifierGroup(g)}>
                            <span className="btn-icon" aria-hidden="true">
                              🗑
                            </span>
                            <span>Remove</span>
                          </button>
                        </div>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
            <div className="row" style={{ justifyContent: "space-between" }}>
              <span className="muted">
                Page {modGroupPage} of {modGroupTotalPages}
              </span>
              <div className="row" style={{ gap: 8 }}>
                <button
                  type="button"
                  className="ghost-btn"
                  disabled={modGroupPage <= 1}
                  onClick={() => setModGroupPage((p) => Math.max(1, p - 1))}
                >
                  <span className="btn-icon">←</span>
                  <span>Previous</span>
                </button>
                <button
                  type="button"
                  className="ghost-btn"
                  disabled={modGroupPage >= modGroupTotalPages}
                  onClick={() => setModGroupPage((p) => Math.min(modGroupTotalPages, p + 1))}
                >
                  <span>Next</span>
                  <span className="btn-icon" style={{ marginRight: 0, marginLeft: 6 }}>
                    →
                  </span>
                </button>
              </div>
            </div>
          </div>
          <div className="card stack admin-wide-card">
            <div className="row" style={{ justifyContent: "space-between", flexWrap: "wrap" }}>
              <h2 style={{ margin: 0, fontSize: 18 }}>Modifiers ({modifiers.length})</h2>
              <button type="button" className="primary-btn" onClick={() => setShowAddModifier(true)}>
                <span className="btn-icon">＋</span>
                <span>Add modifier</span>
              </button>
            </div>
            <div className="table-wrap">
              <table className="admin-table">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Group</th>
                    <th>Price Adjust</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {pageRows(modifiers, modifierPage, MODIFIER_PAGE_SIZE).map((m) => (
                    <tr key={m.id}>
                      <td>{m.name}</td>
                      <td>{modGroups.find((g) => g.id === m.modifier_group_id)?.name ?? "-"}</td>
                      <td>{formatPhp(m.price_adjust_centavos)}</td>
                      <td>
                        <div className="row admin-table-actions">
                          <button type="button" className={actionButtonClassName()} onClick={() => void editModifier(m)}>
                            <span className="btn-icon" aria-hidden="true">
                              ✏
                            </span>
                            <span>Edit</span>
                          </button>
                          <button type="button" className={actionButtonClassName("danger")} onClick={() => void removeModifier(m)}>
                            <span className="btn-icon" aria-hidden="true">
                              🗑
                            </span>
                            <span>Remove</span>
                          </button>
                        </div>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
            <div className="row" style={{ justifyContent: "space-between" }}>
              <span className="muted">
                Page {modifierPage} of {modifierTotalPages}
              </span>
              <div className="row" style={{ gap: 8 }}>
                <button type="button" className="ghost-btn" disabled={modifierPage <= 1} onClick={() => setModifierPage((p) => Math.max(1, p - 1))}>
                  <span className="btn-icon">←</span>
                  <span>Previous</span>
                </button>
                <button
                  type="button"
                  className="ghost-btn"
                  disabled={modifierPage >= modifierTotalPages}
                  onClick={() => setModifierPage((p) => Math.min(modifierTotalPages, p + 1))}
                >
                  <span>Next</span>
                  <span className="btn-icon" style={{ marginRight: 0, marginLeft: 6 }}>
                    →
                  </span>
                </button>
              </div>
            </div>
          </div>
        </div>
      ) : null}

      {showAddProduct ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Add product</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowAddProduct(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={createProduct}>
              <input className="field" name="name" placeholder="Name" required />
              <input className="field" name="nameEn" placeholder="English name (i18n, optional)" />
              <input className="field" name="price" type="number" step="0.01" placeholder="Price PHP" required />
              <input className="field" name="imageFile" type="file" accept="image/*" />
              <select className="field" name="categoryId" defaultValue="">
                <option value="">No category</option>
                {categories.map((c) => (
                  <option key={c.id} value={c.id}>
                    {c.name}
                  </option>
                ))}
              </select>
              <select className="field" name="modifierGroupId" defaultValue="">
                <option value="">No modifier group</option>
                {modGroups.map((g) => (
                  <option key={g.id} value={g.id}>
                    {g.name}
                  </option>
                ))}
              </select>
              <select className="field" name="taxProfileId" defaultValue="">
                <option value="">No tax profile</option>
                {taxProfiles.map((tp) => (
                  <option key={tp.id} value={tp.id}>
                    {tp.name} ({tp.rate_bps / 100}%)
                  </option>
                ))}
              </select>
              <input className="field" name="sku" placeholder="SKU" />
              <input className="field" name="barcode" placeholder="Barcode" />
              <label className="row">
                <input type="checkbox" name="isRetail" />
                Retail / track stock
              </label>
              <button className="primary-btn" type="submit">
                <span className="btn-icon">＋</span>
                <span>Add product</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showEditProduct && editingProduct ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Edit product</h2>
              <button
                type="button"
                className="ghost-btn"
                onClick={() => {
                  setShowEditProduct(false);
                  setEditingProduct(null);
                }}
              >
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={updateProduct}>
              <input className="field" name="name" placeholder="Name" defaultValue={String(editingProduct.name ?? "")} required />
              <input
                className="field"
                name="nameEn"
                placeholder="English name (i18n, optional)"
                defaultValue={(() => {
                  if (editingProduct.names_i18n_json) {
                    try {
                      const parsed = JSON.parse(String(editingProduct.names_i18n_json));
                      return parsed?.en ?? "";
                    } catch {
                      return "";
                    }
                  }
                  return "";
                })()}
              />
              <input
                className="field"
                name="price"
                type="number"
                step="0.01"
                placeholder="Price PHP"
                defaultValue={Number(editingProduct.price_centavos ?? 0) / 100}
                required
              />
              <div className="stack" style={{ gap: 4 }}>
                <label className="muted" style={{ fontSize: 12 }}>
                  Image (optional, leave empty to keep current)
                </label>
                <input className="field" name="imageFile" type="file" accept="image/*" />
                {editingProduct.image_r2_key ? (
                  <span className="muted" style={{ fontSize: 11 }}>
                    Current: {String(editingProduct.image_r2_key)}
                  </span>
                ) : null}
              </div>
              <select className="field" name="categoryId" defaultValue={String(editingProduct.category_id ?? "")}>
                <option value="">No category</option>
                {categories.map((c) => (
                  <option key={c.id} value={c.id}>
                    {c.name}
                  </option>
                ))}
              </select>
              <select
                className="field"
                name="modifierGroupId"
                value={editProductModGroupId}
                onChange={(e) => setEditProductModGroupId(e.target.value)}
              >
                <option value="">No modifier group</option>
                {modGroups.map((g) => (
                  <option key={g.id} value={g.id}>
                    {g.name}
                  </option>
                ))}
              </select>
              <select className="field" name="taxProfileId" defaultValue={String(editingProduct.tax_profile_id ?? "")}>
                <option value="">No tax profile</option>
                {taxProfiles.map((tp) => (
                  <option key={tp.id} value={tp.id}>
                    {tp.name} ({tp.rate_bps / 100}%)
                  </option>
                ))}
              </select>
              <input className="field" name="sku" placeholder="SKU" defaultValue={String(editingProduct.sku ?? "")} />
              <input className="field" name="barcode" placeholder="Barcode" defaultValue={String(editingProduct.barcode ?? "")} />
              <label className="row">
                <input type="checkbox" name="isRetail" defaultChecked={editingProduct.is_retail === 1} />
                Retail / track stock
              </label>
              <button className="primary-btn" type="submit">
                <span className="btn-icon">✓</span>
                <span>Update product</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showLinkGroup ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Link modifier group</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowLinkGroup(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={linkGroup}>
              <select className="field" name="productId" required defaultValue="">
                <option value="" disabled>
                  Product…
                </option>
                {products.map((p) => (
                  <option key={String(p.id)} value={String(p.id)}>
                    {String(p.name)}
                  </option>
                ))}
              </select>
              <select className="field" name="groupId" required defaultValue="">
                <option value="" disabled>
                  Modifier group…
                </option>
                {modGroups.map((g) => (
                  <option key={g.id} value={g.id}>
                    {g.name}
                  </option>
                ))}
              </select>
              <button className="primary-btn" type="submit">
                <span className="btn-icon">🔗</span>
                <span>Link</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showAddCategory ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Add category</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowAddCategory(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={createCategory}>
              <input className="field" name="name" required placeholder="Category name" />
              <input className="field" name="sort" type="number" defaultValue={0} placeholder="Sort order" />
              <button className="primary-btn" type="submit">
                <span className="btn-icon">＋</span>
                <span>Add category</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showAddTax ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Add tax profile</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowAddTax(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={createTax}>
              <input className="field" name="name" placeholder="VAT 12%" required />
              <input className="field" name="ratePct" type="number" step="0.01" placeholder="Rate % (e.g. 12)" required />
              <button className="primary-btn" type="submit">
                <span className="btn-icon">＋</span>
                <span>Add tax profile</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showAddModGroup ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Add modifier group</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowAddModGroup(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={createModGroup}>
              <input className="field" name="name" required placeholder="e.g. Size" />
              <input className="field" name="minSel" type="number" defaultValue={0} />
              <input className="field" name="maxSel" type="number" defaultValue={99} />
              <label className="row">
                <input type="checkbox" name="required" />
                Required
              </label>
              <label className="row">
                <input type="checkbox" name="exclusive" />
                Exclusive (pick one)
              </label>
              <button className="primary-btn" type="submit">
                <span className="btn-icon">＋</span>
                <span>Add group</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}

      {showAddModifier ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Add modifier</h2>
              <button type="button" className="ghost-btn" onClick={() => setShowAddModifier(false)}>
                <span className="btn-icon">✕</span>
                <span>Close</span>
              </button>
            </div>
            <form className="stack" onSubmit={addModifier}>
              <select className="field" name="groupId" required defaultValue="">
                <option value="" disabled>
                  Group…
                </option>
                {modGroups.map((g) => (
                  <option key={g.id} value={g.id}>
                    {g.name}
                  </option>
                ))}
              </select>
              <input className="field" name="mname" placeholder="Modifier name" required />
              <input className="field" name="adjPhp" type="number" step="0.01" placeholder="Price + PHP (can be 0)" defaultValue={0} />
              <button className="primary-btn" type="submit">
                <span className="btn-icon">＋</span>
                <span>Add modifier</span>
              </button>
            </form>
          </div>
        </div>
      ) : null}
    </div>
  );
}
