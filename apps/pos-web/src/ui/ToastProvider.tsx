import { createContext, useCallback, useContext, useEffect, useState, type ReactNode } from "react";

type ToastType = "success" | "error" | "warning";
type ToastItem = { id: string; type: ToastType; message: string };

type ToastContextValue = {
  pushToast: (type: ToastType, message: string) => void;
};

const ToastContext = createContext<ToastContextValue | null>(null);

const TOAST_MS = 3200;

export function ToastProvider({ children }: { children: ReactNode }) {
  const [toasts, setToasts] = useState<ToastItem[]>([]);

  const pushToast = useCallback((type: ToastType, message: string) => {
    const text = message.trim();
    if (!text) return;
    const id = crypto.randomUUID();
    setToasts((prev) => [...prev, { id, type, message: text }]);
    window.setTimeout(() => {
      setToasts((prev) => prev.filter((toast) => toast.id !== id));
    }, TOAST_MS);
  }, []);

  useEffect(() => {
    const onToast = (ev: Event) => {
      const detail = (ev as CustomEvent<{ type?: ToastType; message?: string }>).detail;
      if (!detail?.message) return;
      pushToast(detail.type === "error" ? "error" : detail.type === "warning" ? "warning" : "success", detail.message);
    };
    window.addEventListener("pos:toast", onToast as EventListener);
    return () => window.removeEventListener("pos:toast", onToast as EventListener);
  }, [pushToast]);

  return (
    <ToastContext.Provider value={{ pushToast }}>
      {children}
      <div className="toast-stack" aria-live="polite" aria-atomic="true">
        {toasts.map((toast) => (
          <div key={toast.id} className={`toast toast-${toast.type}`}>
            {toast.message}
          </div>
        ))}
      </div>
    </ToastContext.Provider>
  );
}

export function useToast() {
  const ctx = useContext(ToastContext);
  if (!ctx) throw new Error("useToast must be used within ToastProvider");
  return ctx;
}

export function emitToast(type: ToastType, message: string) {
  if (typeof window === "undefined") return;
  window.dispatchEvent(new CustomEvent("pos:toast", { detail: { type, message } }));
}

export function toastError(message: string) {
  emitToast("error", message);
}

export function toastSuccess(message: string) {
  emitToast("success", message);
}

export function toastWarning(message: string) {
  emitToast("warning", message);
}
