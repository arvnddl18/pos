import { useEffect, useState } from "react";
import { api } from "../api.js";

type QueueRow = {
  id: string;
  ticket_no?: number | null;
  status: string;
  kds_state?: string;
  ticket_type?: string;
  parked_label?: string | null;
  updated_at?: string;
};
type TicketLine = {
  id: string;
  qty: number;
  unit_price_centavos: number;
  discount_centavos?: number | null;
  product_name?: string;
};
type TicketDetail = { ticket: QueueRow; lines: TicketLine[] };

export function KdsPage() {
  const [rows, setRows] = useState<QueueRow[]>([]);
  const [selectedTicket, setSelectedTicket] = useState<TicketDetail | null>(null);
  const [busy, setBusy] = useState(false);

  function formatTicketLabel(ticket: QueueRow) {
    if (ticket.ticket_no && ticket.ticket_no > 0) return `#${String(ticket.ticket_no).padStart(4, "0")}`;
    return String(ticket.parked_label ?? ticket.id).slice(0, 12);
  }

  function kdsStateClass(state: string | undefined) {
    if (state === "ready") return "kds-ready";
    return "kds-preparing";
  }

  async function loadQueue() {
    const res = await api<{ tickets: QueueRow[] }>("/kds/queue");
    setRows(res.tickets ?? []);
  }

  useEffect(() => {
    void loadQueue().catch(() => {});
    const onVisible = () => {
      if (document.visibilityState === "visible") void loadQueue().catch(() => {});
    };
    const onFocus = () => {
      void loadQueue().catch(() => {});
    };
    document.addEventListener("visibilitychange", onVisible);
    window.addEventListener("focus", onFocus);
    const onKdsRefresh = () => {
      void loadQueue().catch(() => {});
    };
    window.addEventListener("kds:refresh", onKdsRefresh as EventListener);
    const channel = typeof BroadcastChannel !== "undefined" ? new BroadcastChannel("pos-live") : null;
    const onMessage = (ev: MessageEvent) => {
      const payload = ev.data as { type?: string };
      if (payload?.type === "kds:refresh") {
        void loadQueue().catch(() => {});
      }
    };
    if (channel) channel.addEventListener("message", onMessage);
    const id = window.setInterval(() => {
      void loadQueue().catch(() => {});
    }, 1000);
    return () => {
      window.clearInterval(id);
      document.removeEventListener("visibilitychange", onVisible);
      window.removeEventListener("focus", onFocus);
      window.removeEventListener("kds:refresh", onKdsRefresh as EventListener);
      if (channel) {
        channel.removeEventListener("message", onMessage);
        channel.close();
      }
    };
  }, []);

  async function openTicket(ticketId: string) {
    const detail = await api<TicketDetail>(`/kds/tickets/${ticketId}`);
    setSelectedTicket(detail);
  }

  async function setKdsState(state: "preparing" | "ready" | "served") {
    if (!selectedTicket) return;
    setBusy(true);
    try {
      await api(`/kds/tickets/${selectedTicket.ticket.id}/state`, { method: "PATCH", json: { state } });
      const [queue, detail] = await Promise.all([
        api<{ tickets: QueueRow[] }>("/kds/queue"),
        state === "served" ? Promise.resolve(null) : api<TicketDetail>(`/kds/tickets/${selectedTicket.ticket.id}`),
      ]);
      setRows(queue.tickets ?? []);
      setSelectedTicket(detail);
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="page-shell" style={{ gap: 12 }}>
      <h1 className="page-title">Kitchen display</h1>
      <div className="grid-products">
        {rows.map((t) => (
          <button key={String(t.id)} className={`tile ${kdsStateClass(t.kds_state)}`} type="button" onClick={() => void openTicket(String(t.id))}>
            <div style={{ fontWeight: 700 }}>{formatTicketLabel(t)}</div>
            <div className="muted" style={{ marginTop: 8 }}>
              {String(t.ticket_type)} · {String(t.status)}
            </div>
            <div className={`kds-badge ${kdsStateClass(t.kds_state)}`} style={{ marginTop: 8 }}>
              KDS: {String(t.kds_state ?? "preparing")}
            </div>
          </button>
        ))}
      </div>
      {selectedTicket ? (
        <div className="sheet" role="dialog">
          <div className="sheet-inner stack">
            <div className="row" style={{ justifyContent: "space-between" }}>
              <h2 style={{ margin: 0 }}>Order {formatTicketLabel(selectedTicket.ticket)}</h2>
              <button type="button" className="ghost-btn" onClick={() => setSelectedTicket(null)}>
                Close
              </button>
            </div>
            <div className="muted">
              {String(selectedTicket.ticket.ticket_type ?? "takeout")} · POS: {String(selectedTicket.ticket.status)} · KDS:{" "}
              {String(selectedTicket.ticket.kds_state ?? "preparing")}
            </div>
            <div className={`kds-badge ${kdsStateClass(selectedTicket.ticket.kds_state)}`}>
              {selectedTicket.ticket.kds_state === "ready" ? "Ready to serve" : "Preparing"}
            </div>
            <div className="stack" style={{ gap: 8 }}>
              {selectedTicket.lines.map((line) => (
                <div key={line.id} className="row" style={{ justifyContent: "space-between" }}>
                  <span>
                    {line.qty}× {line.product_name ?? "Item"}
                  </span>
                  <span>
                    ₱{((line.unit_price_centavos * line.qty - Number(line.discount_centavos ?? 0)) / 100).toFixed(2)}
                  </span>
                </div>
              ))}
            </div>
            <div className="row" style={{ flexWrap: "wrap", gap: 8 }}>
              <button type="button" className="ghost-btn" disabled={busy} onClick={() => void setKdsState("preparing")}>
                Mark preparing
              </button>
              <button type="button" className="primary-btn" disabled={busy} onClick={() => void setKdsState("ready")}>
                Ready to serve
              </button>
              <button type="button" className="ghost-btn" disabled={busy} onClick={() => void setKdsState("served")}>
                Mark served
              </button>
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
}
