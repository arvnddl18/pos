import { type ChangeEvent, FormEvent, useEffect, useState } from "react";
import { api, API_BASE } from "../api.js";

export function EwalletSettingsPage() {
  const [settings, setSettings] = useState<Record<string, unknown> | null>(null);
  const [msg, setMsg] = useState<string | null>(null);
  const [uploadBusy, setUploadBusy] = useState(false);

  async function load() {
    const res = await api<{ settings: Record<string, unknown> | null }>("/ewallet/settings");
    setSettings(res.settings);
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

  const qrKey = settings?.qr_r2_key != null ? String(settings.qr_r2_key) : "";

  async function save(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const managerAbove = fd.get("managerAbove");
    await api("/ewallet/settings", {
      method: "PUT",
      json: {
        displayName: String(fd.get("displayName") ?? "") || null,
        gcashNumber: String(fd.get("gcashNumber") ?? "") || null,
        instructions: String(fd.get("instructions") ?? "") || null,
        managerConfirmAboveCentavos:
          managerAbove === "" ? null : Math.round(Number(String(managerAbove)) * 100),
        referenceRequired: fd.get("referenceRequired") === "on",
      },
    });
    setMsg("Saved");
  }

  async function onQrFile(e: ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    e.target.value = "";
    if (!file || !file.type.startsWith("image/")) return;
    setUploadBusy(true);
    setMsg(null);
    try {
      const res = await fetch(`${API_BASE}/uploads/ewallet-qr`, {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": file.type },
        body: file,
      });
      const data = (await res.json()) as { key?: string; error?: string };
      if (!res.ok) throw new Error(data.error ?? res.statusText);
      if (!data.key) throw new Error("missing_key");
      await api("/ewallet/settings", { method: "PUT", json: { qrR2Key: data.key } });
      setMsg("Receive QR updated");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Upload failed");
    } finally {
      setUploadBusy(false);
    }
  }

  async function clearQr() {
    setUploadBusy(true);
    setMsg(null);
    try {
      await api("/ewallet/settings", { method: "PUT", json: { qrR2Key: null } });
      setMsg("Receive QR removed");
    } catch (err) {
      setMsg(err instanceof Error ? err.message : "Failed");
    } finally {
      setUploadBusy(false);
    }
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Personal GCash</h1>
      <form className="card stack" onSubmit={save}>
        <div>
          <div className="label">Display name on receipt</div>
          <input className="field" name="displayName" defaultValue={String(settings?.display_name ?? "")} />
        </div>
        <div>
          <div className="label">GCash mobile number</div>
          <input className="field" name="gcashNumber" defaultValue={String(settings?.gcash_number ?? "")} />
        </div>
        <div>
          <div className="label">Receive QR (for customer scan)</div>
          <p className="muted" style={{ margin: "0 0 8px", fontSize: 13 }}>
            Upload a PNG/JPEG of your personal GCash “Receive money” QR. Shown on the register during pending GCash payments.
          </p>
          <div className="row" style={{ flexWrap: "wrap", gap: 8, alignItems: "center" }}>
            <input type="file" accept="image/png,image/jpeg,image/webp" onChange={(ev) => void onQrFile(ev)} disabled={uploadBusy} />
            {qrKey ? (
              <button type="button" className="ghost-btn" onClick={() => void clearQr()} disabled={uploadBusy}>
                Remove QR
              </button>
            ) : null}
          </div>
          {qrKey ? (
            <img
              alt="GCash receive QR"
              src={`${API_BASE}/uploads/asset?key=${encodeURIComponent(qrKey)}`}
              style={{ marginTop: 12, maxWidth: 220, borderRadius: 8, border: "1px solid #2a2a2a" }}
            />
          ) : null}
        </div>
        <div>
          <div className="label">Instructions for staff/customer</div>
          <textarea className="field" name="instructions" rows={4} defaultValue={String(settings?.instructions ?? "")} />
        </div>
        <div>
          <div className="label">Manager confirm above (PHP)</div>
          <input
            className="field"
            name="managerAbove"
            type="number"
            step="0.01"
            defaultValue={
              settings?.manager_confirm_above_centavos != null
                ? String(Number(settings.manager_confirm_above_centavos) / 100)
                : ""
            }
          />
        </div>
        <label className="row">
          <input type="checkbox" name="referenceRequired" defaultChecked={settings?.reference_required === 1} />
          <span>Require reference note when starting GCash payment</span>
        </label>
        {msg ? <div className="muted">{msg}</div> : null}
        <button className="primary-btn" type="submit">
          Save
        </button>
      </form>
    </div>
  );
}
