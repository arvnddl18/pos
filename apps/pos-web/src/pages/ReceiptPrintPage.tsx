import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { api } from "../api.js";
import "../styles.css";

export function ReceiptPrintPage() {
  const { ticketId } = useParams<{ ticketId: string }>();
  const [text, setText] = useState<string>("Loading…");

  useEffect(() => {
    if (!ticketId) return;
    api<{ textReceipt: string }>(`/tickets/${ticketId}/receipt`)
      .then((r) => setText(r.textReceipt))
      .catch(() => setText("Could not load receipt (sign in required)."));
  }, [ticketId]);

  return (
    <>
      <style>{`@media print { .no-print { display: none !important; } }`}</style>
      <div style={{ padding: 24, maxWidth: 480, margin: "0 auto", fontFamily: "system-ui" }}>
        <pre style={{ whiteSpace: "pre-wrap", fontSize: 14 }}>{text}</pre>
        <button type="button" className="primary-btn no-print" style={{ marginTop: 16 }} onClick={() => window.print()}>
          Print
        </button>
      </div>
    </>
  );
}
