import { FormEvent, useCallback, useState } from "react";
import { api } from "../api.js";
import { emitToast } from "./ToastProvider.js";

type PendingAction = {
  title: string;
  description?: string;
  action: () => Promise<void>;
  resolve: () => void;
  reject: (err: unknown) => void;
};

export class OwnerPinCancelledError extends Error {
  constructor() {
    super("owner_pin_cancelled");
    this.name = "OwnerPinCancelledError";
  }
}

export function useOwnerPinConfirm() {
  const [pending, setPending] = useState<PendingAction | null>(null);
  const [pin, setPin] = useState("");
  const [busy, setBusy] = useState(false);

  const close = useCallback(() => {
    setPending(null);
    setPin("");
    setBusy(false);
  }, []);

  const confirmOwnerPin = useCallback((options: { title: string; description?: string; action: () => Promise<void> }) => {
    return new Promise<void>((resolve, reject) => {
      setPending({
        title: options.title,
        description: options.description,
        action: options.action,
        resolve,
        reject,
      });
      setPin("");
      setBusy(false);
    });
  }, []);

  async function submitPin(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!pending || busy) return;
    if (pin.trim().length < 4) {
      emitToast("warning", "Enter the owner PIN.");
      return;
    }
    setBusy(true);
    try {
      await api("/auth/verify-owner-pin", { method: "POST", json: { pin: pin.trim() } });
      await pending.action();
      pending.resolve();
      close();
    } catch (err) {
      const message = err instanceof Error ? err.message : "Owner PIN verification failed";
      if (message === "invalid_owner_pin") {
        emitToast("error", "Invalid owner PIN.");
      } else {
        emitToast("error", message);
      }
      setBusy(false);
    }
  }

  function cancel() {
    if (pending) pending.reject(new OwnerPinCancelledError());
    close();
  }

  const modal = pending ? (
    <div className="sheet" role="dialog">
      <div className="sheet-inner stack" style={{ maxWidth: 420 }}>
        <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
          <h2 style={{ margin: 0 }}>{pending.title}</h2>
          <button type="button" className="ghost-btn tiny-btn" onClick={cancel} disabled={busy}>
            ✕
          </button>
        </div>
        <p className="muted" style={{ margin: 0, fontSize: 13 }}>
          {pending.description ?? "Enter an owner PIN to confirm this catalog change."}
        </p>
        <form className="stack" onSubmit={submitPin}>
          <input
            className="field"
            type="password"
            inputMode="numeric"
            autoComplete="off"
            placeholder="Owner PIN"
            value={pin}
            onChange={(e) => setPin(e.target.value)}
            autoFocus
            disabled={busy}
          />
          <div className="row" style={{ gap: 8 }}>
            <button type="button" className="ghost-btn" onClick={cancel} disabled={busy}>
              Cancel
            </button>
            <button type="submit" className="primary-btn" disabled={busy}>
              {busy ? "Confirming…" : "Confirm"}
            </button>
          </div>
        </form>
      </div>
    </div>
  ) : null;

  return { confirmOwnerPin, ownerPinModal: modal };
}
