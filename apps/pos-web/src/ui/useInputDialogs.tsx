import { FormEvent, useCallback, useState } from "react";

type PromptOptions = {
  title: string;
  message?: string;
  defaultValue?: string;
  placeholder?: string;
  required?: boolean;
  confirmLabel?: string;
  inputType?: "text" | "number";
};

type ConfirmOptions = {
  title: string;
  message: string;
  confirmLabel?: string;
  cancelLabel?: string;
  danger?: boolean;
};

type PendingPrompt = PromptOptions & {
  resolve: (value: string | null) => void;
};

type PendingConfirm = ConfirmOptions & {
  resolve: (value: boolean) => void;
};

export function useInputDialogs() {
  const [promptState, setPromptState] = useState<(PendingPrompt & { value: string }) | null>(null);
  const [confirmState, setConfirmState] = useState<PendingConfirm | null>(null);

  const prompt = useCallback((options: PromptOptions): Promise<string | null> => {
    return new Promise((resolve) => {
      setPromptState({
        ...options,
        value: options.defaultValue ?? "",
        resolve,
      });
    });
  }, []);

  const confirm = useCallback((options: ConfirmOptions): Promise<boolean> => {
    return new Promise((resolve) => {
      setConfirmState({ ...options, resolve });
    });
  }, []);

  function closePrompt(value: string | null) {
    if (!promptState) return;
    promptState.resolve(value);
    setPromptState(null);
  }

  function closeConfirm(value: boolean) {
    if (!confirmState) return;
    confirmState.resolve(value);
    setConfirmState(null);
  }

  function submitPrompt(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    if (!promptState) return;
    const trimmed = promptState.value.trim();
    if (promptState.required && !trimmed) return;
    closePrompt(trimmed);
  }

  const promptModal = promptState ? (
    <div className="sheet" role="dialog">
      <div className="sheet-inner stack" style={{ maxWidth: 440 }}>
        <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
          <h2 style={{ margin: 0 }}>{promptState.title}</h2>
          <button type="button" className="ghost-btn tiny-btn" onClick={() => closePrompt(null)}>
            ✕
          </button>
        </div>
        {promptState.message ? (
          <p className="muted" style={{ margin: 0, fontSize: 13 }}>
            {promptState.message}
          </p>
        ) : null}
        <form className="stack" onSubmit={submitPrompt}>
          <input
            className="field"
            type={promptState.inputType ?? "text"}
            placeholder={promptState.placeholder}
            value={promptState.value}
            onChange={(e) => setPromptState((prev) => (prev ? { ...prev, value: e.target.value } : prev))}
            autoFocus
            step={promptState.inputType === "number" ? "0.01" : undefined}
          />
          <div className="row" style={{ gap: 8, justifyContent: "flex-end" }}>
            <button type="button" className="ghost-btn" onClick={() => closePrompt(null)}>
              Cancel
            </button>
            <button type="submit" className="primary-btn">
              {promptState.confirmLabel ?? "OK"}
            </button>
          </div>
        </form>
      </div>
    </div>
  ) : null;

  const confirmModal = confirmState ? (
    <div className="sheet" role="dialog">
      <div className="sheet-inner stack" style={{ maxWidth: 440 }}>
        <div className="row" style={{ justifyContent: "space-between", alignItems: "center" }}>
          <h2 style={{ margin: 0 }}>{confirmState.title}</h2>
          <button type="button" className="ghost-btn tiny-btn" onClick={() => closeConfirm(false)}>
            ✕
          </button>
        </div>
        <p style={{ margin: 0, fontSize: 14, lineHeight: 1.5 }}>{confirmState.message}</p>
        <div className="row" style={{ gap: 8, justifyContent: "flex-end" }}>
          <button type="button" className="ghost-btn" onClick={() => closeConfirm(false)}>
            {confirmState.cancelLabel ?? "Cancel"}
          </button>
          <button
            type="button"
            className={confirmState.danger ? "ghost-btn admin-action-btn is-danger" : "primary-btn"}
            onClick={() => closeConfirm(true)}
          >
            {confirmState.confirmLabel ?? "Confirm"}
          </button>
        </div>
      </div>
    </div>
  ) : null;

  return { prompt, confirm, inputDialogs: <>{promptModal}{confirmModal}</> };
}
