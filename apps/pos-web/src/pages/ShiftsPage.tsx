import { FormEvent, useState } from "react";
import { api } from "../api.js";

export function ShiftsPage() {
  const [msg, setMsg] = useState<string | null>(null);

  async function clockIn() {
    const registerId = sessionStorage.getItem("registerId") ?? undefined;
    await api("/shifts/clock-in", { method: "POST", json: registerId ? { registerId } : {} });
    setMsg("Clocked in");
  }

  async function clockOut() {
    await api("/shifts/clock-out", { method: "POST", json: {} });
    setMsg("Clocked out");
  }

  async function openDrawer(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const registerId = String(fd.get("registerId") ?? "");
    const opening = Number(fd.get("opening") ?? "0");
    await api("/shifts/drawer/open", {
      method: "POST",
      json: { registerId, openingFloatCentavos: Math.round(opening * 100) },
    });
    setMsg("Drawer opened");
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
      {msg ? <div className="muted">{msg}</div> : null}
    </div>
  );
}
