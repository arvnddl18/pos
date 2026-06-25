import { FormEvent } from "react";
import { api } from "../api.js";
import { emitToast } from "../ui/ToastProvider.js";

export function ShiftsPage() {
  async function clockIn() {
    try {
      const registerId = sessionStorage.getItem("registerId") ?? undefined;
      await api("/shifts/clock-in", { method: "POST", json: registerId ? { registerId } : {} });
      emitToast("success", "Clocked in");
    } catch {
      // API error toast handled by api()
    }
  }

  async function clockOut() {
    try {
      await api("/shifts/clock-out", { method: "POST", json: {} });
      emitToast("success", "Clocked out");
    } catch {
      // API error toast handled by api()
    }
  }

  async function openDrawer(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const registerId = String(fd.get("registerId") ?? "");
    const opening = Number(fd.get("opening") ?? "0");
    try {
      await api("/shifts/drawer/open", {
        method: "POST",
        json: { registerId, openingFloatCentavos: Math.round(opening * 100) },
      });
      emitToast("success", "Drawer opened");
    } catch {
      // API error toast handled by api()
    }
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Shifts</h1>
      <div className="row">
        <button type="button" className="primary-btn" onClick={() => void clockIn()}>
          Clock in
        </button>
        <button type="button" className="ghost-btn" onClick={() => void clockOut()}>
          Clock out
        </button>
      </div>
      <form className="card stack" onSubmit={openDrawer}>
        <h2 style={{ margin: 0, fontSize: 18 }}>Open drawer</h2>
        <input className="field" name="registerId" placeholder="Register UUID" required />
        <input className="field" name="opening" type="number" step="0.01" placeholder="Opening float PHP" required />
        <button className="primary-btn" type="submit">
          Open
        </button>
      </form>
    </div>
  );
}
