import { FormEvent, useCallback, useState } from "react";
import { api } from "../api.js";
import { emitToast } from "./ToastProvider.js";

type ManagerCredentials = {
  staffCode: string;
  pin: string;
};

type PendingAction = {
  title: string;
  description?: string;
  action: (credentials: ManagerCredentials) => Promise<void>;
  resolve: () => void;
  reject: (err: unknown) => void;
};

export class ManagerPinCancelledError extends Error {
  constructor() {
    super("manager_pin_cancelled");
    this.name = "ManagerPinCancelledError";
  }
}

export function useManagerPinConfirm() {
  const [pending, setPending] = useState<PendingAction | null>(null);
  const [staffCode, setStaffCode] = useState("");
  const [pin, setPin] = useState("");
  const [busy, setBusy] = useState(false);

  const close = useCallback(() => {
    setPending(null);
    setStaffCode("");
    setPin("");
    setBusy(false);
  }, []);

  const confirmManagerPin = useCallback((options: {
    title: string;
    description?: string;
    action: (credentials: ManagerCredentials) => Promise<void>;
  }) => {
    return new Promise<void>((resolve, reject) => {
      setPending({
        title: options.title,
        description: options.description,
        action: options.action,
        resolve,
        reject,
      });
      setStaffCode("");
      setPin("");
      setBusy(false);
    });
  }, []);

  async function submitApproval(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!pending || busy) return;
    const code = staffCode.trim();
    if (!code) {
      emitToast("warning", "Enter the manager or owner staff code.");
      return;
    }
    if (pin.trim().length < 4) {
      emitToast("warning", "Enter the manager or owner PIN.");
      return;
    }
    setBusy(true);
    try {
      await api("/auth/verify-manager-credentials", {
        method: "POST",
        json: { staffCode: code, pin: pin.trim() },
      });
      await pending.action({ staffCode: code, pin: pin.trim() });
      pending.resolve();
      close();
    } catch (err) {
      const message = err instanceof Error ? err.message : "Manager approval failed";
      if (message === "invalid_manager_credentials") {
        emitToast("error", "Invalid manager or owner staff code / PIN.");
      } else {
        emitToast("error", message);
      }
      setBusy(false);
    }
  }

  function cancel() {
    if (pending) pending.reject(new ManagerPinCancelledError());
    close();
  }

  const modal = pending ? (
    <div className="sheet" role="dialog">
      <div className="sheet-inner stack" style={{ maxWidth: 440 }}>
        <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
          <h2 style={{ margin: 0 }}>{pending.title}</h2>
          <button type="button" className="ghost-btn tiny-btn" onClick={cancel} disabled={busy}>
            ✕
          </button>
        </div>
        <p className="muted" style={{ margin: 0, fontSize: 13 }}>
          {pending.description ?? "A manager or owner must approve this action. Your session will stay signed in."}
        </p>
        <form className="stack" onSubmit={submitApproval}>
          <div className="stack" style={{ gap: 4 }}>
            <div className="label">Manager / owner staff code</div>
            <input
              className="field"
              type="text"
              autoComplete="off"
              placeholder="Staff code"
              value={staffCode}
              onChange={(e) => setStaffCode(e.target.value)}
              autoFocus
              disabled={busy}
            />
          </div>
          <div className="stack" style={{ gap: 4 }}>
            <div className="label">PIN</div>
            <input
              className="field"
              type="password"
              inputMode="numeric"
              autoComplete="off"
              placeholder="PIN"
              value={pin}
              onChange={(e) => setPin(e.target.value)}
              disabled={busy}
            />
          </div>
          <div className="row" style={{ gap: 8, justifyContent: "flex-end" }}>
            <button type="button" className="ghost-btn" onClick={cancel} disabled={busy}>
              Cancel
            </button>
            <button type="submit" className="primary-btn" disabled={busy}>
              {busy ? "Approving…" : "Approve"}
            </button>
          </div>
        </form>
      </div>
    </div>
  ) : null;

  return { confirmManagerPin, managerPinModal: modal };
}
