import { useCallback, useEffect, useState } from "react";
import { api } from "../api.js";

type QueueLine = { qty: number; product_name: string; line_notes?: string };
type QueueRow = {
  id: string;
  ticket_no?: number | null;
  status: string;
  kds_state?: string;
  ticket_type?: string;
  parked_label?: string | null;
  created_at?: string;
  updated_at?: string;
  lines?: QueueLine[];
  notes?: string | null;
};
type TicketLine = {
  id: string;
  qty: number;
  unit_price_centavos: number;
  discount_centavos?: number | null;
  product_name?: string;
  line_notes?: string | null;
};
type TicketDetail = { ticket: QueueRow; lines: TicketLine[] };

const KDS_POLL_MS = 5000;

function formatTicketLabel(ticket: QueueRow) {
  if (ticket.ticket_no && ticket.ticket_no > 0) return `#${String(ticket.ticket_no).padStart(4, "0")}`;
  return String(ticket.parked_label ?? ticket.id).slice(0, 12);
}

function formatOrderDateTime(iso: string | undefined) {
  if (!iso) return "";
  const d = new Date(iso);
  if (Number.isNaN(d.getTime())) return "";
  return d.toLocaleString(undefined, {
    month: "short",
    day: "numeric",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

function kdsStateClass(state: string | undefined) {
  if (state === "ready") return "kds-ready";
  return "kds-preparing";
}

function kdsCardClass(ticket: QueueRow) {
  if (ticket.status === "parked") return "kds-parked";
  return kdsStateClass(ticket.kds_state);
}

function isParkedTicket(ticket: QueueRow) {
  return ticket.status === "parked";
}

function isPaidTicket(ticket: QueueRow) {
  return ticket.status === "paid";
}

export function KdsPage() {
  const [rows, setRows] = useState<QueueRow[]>([]);
  const [selectedTicket, setSelectedTicket] = useState<TicketDetail | null>(null);
  const [busy, setBusy] = useState(false);

  const loadQueue = useCallback(async () => {
    const res = await api<{ tickets: QueueRow[] }>("/kds/queue");
    let tickets = res.tickets ?? [];
    if (tickets.some((t) => !Array.isArray(t.lines))) {
      tickets = await Promise.all(
        tickets.map(async (ticket) => {
          if (Array.isArray(ticket.lines)) return ticket;
          try {
            const detail = await api<TicketDetail>(`/kds/tickets/${ticket.id}`);
            return {
              ...ticket,
              created_at: ticket.created_at ?? detail.ticket.created_at,
              lines: detail.lines.map((line) => ({
                qty: line.qty,
                product_name: line.product_name ?? "Item",
              })),
            };
          } catch {
            return { ...ticket, lines: [] };
          }
        }),
      );
    }
    setRows(tickets);
  }, []);

  useEffect(() => {
    if ("serviceWorker" in navigator) {
      void navigator.serviceWorker.getRegistration().then((reg) => reg?.update()).catch(() => {});
    }
    void loadQueue().catch(() => {});
    const refresh = () => {
      void loadQueue().catch(() => {});
    };
    const onVisible = () => {
      if (document.visibilityState === "visible") refresh();
    };
    document.addEventListener("visibilitychange", onVisible);
    window.addEventListener("focus", refresh);
    window.addEventListener("kds:refresh", refresh);
    const channel = typeof BroadcastChannel !== "undefined" ? new BroadcastChannel("pos-live") : null;
    const onMessage = (ev: MessageEvent) => {
      const payload = ev.data as { type?: string };
      if (payload?.type === "kds:refresh") refresh();
    };
    if (channel) channel.addEventListener("message", onMessage);
    const id = window.setInterval(refresh, KDS_POLL_MS);
    return () => {
      window.clearInterval(id);
      document.removeEventListener("visibilitychange", onVisible);
      window.removeEventListener("focus", refresh);
      window.removeEventListener("kds:refresh", refresh);
      if (channel) {
        channel.removeEventListener("message", onMessage);
        channel.close();
      }
    };
  }, [loadQueue]);

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

  const preparingTickets = rows.filter((t) => isParkedTicket(t) || t.kds_state !== "ready");
  const readyTickets = rows.filter((t) => !isParkedTicket(t) && t.kds_state === "ready");

  const renderTicket = (t: QueueRow) => {
    const lines = t.lines ?? [];
    const parked = isParkedTicket(t);
    return (
      <button
        key={String(t.id)}
        className={`tile kds-card ${kdsCardClass(t)}`}
        type="button"
        onClick={() => void openTicket(String(t.id))}
      >
        <div className="kds-card-top">
          <div className="kds-card-number">{formatTicketLabel(t)}</div>
          <div className="kds-card-badges">
            {parked ? <span className="kds-badge kds-parked">Parked</span> : null}
            {!parked && isPaidTicket(t) ? <span className="kds-badge kds-paid">Paid</span> : null}
          </div>
        </div>
        <div className="kds-card-datetime">{formatOrderDateTime(t.created_at) || "—"}</div>
        <div className="kds-card-type">{String(t.ticket_type ?? "takeout").replace("_", " ")}</div>
        {t.notes ? (
          <div className="kds-card-note" style={{ color: "var(--color-primary)", fontWeight: "bold", fontSize: "0.9em", padding: "4px 0" }}>
            Note: {t.notes}
          </div>
        ) : null}
        <ul className="kds-card-lines" aria-label="Order items">
          {lines.length ? (
            lines.map((line, idx) => (
              <li key={`${t.id}-${idx}`} className="kds-card-line" style={{ display: "flex", flexDirection: "column", gap: 2, alignItems: "flex-start" }}>
                <div style={{ display: "flex", gap: "0.5rem" }}>
                  <span className="kds-card-line-qty">{line.qty}×</span>
                  <span className="kds-card-line-name">{line.product_name}</span>
                </div>
                {line.line_notes && line.line_notes !== "[FREEBIE]" ? (
                  <div style={{ fontSize: "0.85em", color: "var(--color-primary)", fontWeight: 600, paddingLeft: "1.8em" }}>
                    Note: {line.line_notes.replace("[FREEBIE] ", "").replace("[FREEBIE]", "")}
                  </div>
                ) : null}
              </li>
            ))
          ) : (
            <li className="kds-card-line muted">No items</li>
          )}
        </ul>
        {!parked ? (
          <div className={`kds-badge ${kdsStateClass(t.kds_state)}`}>KDS: {String(t.kds_state ?? "preparing")}</div>
        ) : null}
      </button>
    );
  };

  return (
    <div className="page-shell" style={{ gap: 24 }}>
      <h1 className="page-title" style={{ margin: 0 }}>Kitchen display</h1>
      
      <div className="stack" style={{ gap: 12 }}>
        <h2 style={{ margin: 0 }}>Preparing</h2>
        <div className="grid-products">
          {preparingTickets.length > 0 ? (
            preparingTickets.map(renderTicket)
          ) : (
            <div className="muted">No tickets preparing</div>
          )}
        </div>
      </div>

      <div className="stack" style={{ gap: 12 }}>
        <h2 style={{ margin: 0 }}>Ready to Serve</h2>
        <div className="grid-products">
          {readyTickets.length > 0 ? (
            readyTickets.map(renderTicket)
          ) : (
            <div className="muted">No tickets ready</div>
          )}
        </div>
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
              {formatOrderDateTime(selectedTicket.ticket.created_at)} · {String(selectedTicket.ticket.ticket_type ?? "takeout")} · KDS:{" "}
              {String(selectedTicket.ticket.kds_state ?? "preparing")}
              {isParkedTicket(selectedTicket.ticket) ? " · Parked" : ""}
              {isPaidTicket(selectedTicket.ticket) ? " · Paid" : ""}
            </div>
            {selectedTicket.ticket.notes ? (
              <div style={{ color: "var(--color-primary)", fontWeight: "bold", padding: "8px 0" }}>
                Note: {selectedTicket.ticket.notes}
              </div>
            ) : null}
            {isParkedTicket(selectedTicket.ticket) ? (
              <div className="kds-badge kds-parked">Parked</div>
            ) : (
              <div className={`kds-badge ${kdsStateClass(selectedTicket.ticket.kds_state)}`}>
                {selectedTicket.ticket.kds_state === "ready" ? "Ready to serve" : "Preparing"}
              </div>
            )}
            <div className="stack" style={{ gap: 8 }}>
              {selectedTicket.lines.map((line) => (
                <div key={line.id} className="stack" style={{ gap: 2 }}>
                  <div className="row" style={{ justifyContent: "space-between" }}>
                    <span>
                      {line.qty}× {line.product_name ?? "Item"}
                    </span>
                    <span>
                      ₱{((line.unit_price_centavos * line.qty - Number(line.discount_centavos ?? 0)) / 100).toFixed(2)}
                    </span>
                  </div>
                  {line.line_notes && line.line_notes !== "[FREEBIE]" ? (
                    <div style={{ fontSize: "0.85em", color: "var(--color-primary)", fontWeight: 600, paddingLeft: "1.5em" }}>
                      Note: {line.line_notes.replace("[FREEBIE] ", "").replace("[FREEBIE]", "")}
                    </div>
                  ) : null}
                </div>
              ))}
            </div>
            {!isParkedTicket(selectedTicket.ticket) ? (
              <div className="row" style={{ flexWrap: "wrap", gap: 8 }}>
                {selectedTicket.ticket.kds_state === "ready" ? (
                  <>
                    <button type="button" className="ghost-btn" disabled={busy} onClick={() => void setKdsState("preparing")}>
                      Mark preparing
                    </button>
                    <button type="button" className="ghost-btn" disabled={busy} onClick={() => void setKdsState("served")}>
                      Mark served
                    </button>
                  </>
                ) : (
                  <button type="button" className="primary-btn" disabled={busy} onClick={() => void setKdsState("ready")}>
                    Ready to serve
                  </button>
                )}
              </div>
            ) : null}
          </div>
        </div>
      ) : null}
    </div>
  );
}
