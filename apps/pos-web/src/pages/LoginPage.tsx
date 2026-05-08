import { FormEvent, useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { api } from "../api.js";

export function LoginPage() {
  const navigate = useNavigate();
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    api<{ user: unknown }>("/auth/me")
      .then(() => navigate("/pos", { replace: true }))
      .catch(() => {});
  }, [navigate]);

  async function onSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setError(null);
    const fd = new FormData(e.currentTarget);
    const staffCode = String(fd.get("staffCode") ?? "").trim();
    const pin = String(fd.get("pin") ?? "");
    const registerId = String(fd.get("registerId") ?? "").trim();

    setLoading(true);
    try {
      await api("/auth/login", {
        method: "POST",
        json: {
          staffCode,
          pin,
          registerId: registerId || undefined,
        },
      });
      navigate("/pos", { replace: true });
    } catch (err) {
      setError(err instanceof Error ? err.message : "Login failed");
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="screen-center">
      <form className="card stack" onSubmit={onSubmit}>
        <h1 style={{ margin: 0 }}>Staff sign in</h1>
        <div>
          <div className="label">Staff code</div>
          <input className="field" name="staffCode" required autoComplete="username" />
        </div>
        <div>
          <div className="label">PIN</div>
          <input className="field" name="pin" type="password" required autoComplete="current-password" />
        </div>
        <div>
          <div className="label">Register ID (optional)</div>
          <input className="field" name="registerId" placeholder="UUID from Registers API" />
        </div>
        {error ? <div className="error">{error}</div> : null}
        <button className="primary-btn" type="submit" disabled={loading}>
          {loading ? "Signing in…" : "Sign in"}
        </button>
        <a className="muted" href="/setup" style={{ textAlign: "center", fontSize: 14 }}>
          First-time setup
        </a>
      </form>
    </div>
  );
}
