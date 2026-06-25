import { FormEvent, useState } from "react";
import { useNavigate } from "react-router-dom";
import { api } from "../api.js";

export function SetupPage() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);

  async function onSubmit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    const organizationName = String(fd.get("organizationName") ?? "").trim();
    const locationName = String(fd.get("locationName") ?? "").trim();
    const registerName = String(fd.get("registerName") ?? "Register 1").trim();
    const ownerStaffCode = String(fd.get("ownerStaffCode") ?? "").trim();
    const ownerPin = String(fd.get("ownerPin") ?? "");
    const ownerDisplayName = String(fd.get("ownerDisplayName") ?? "").trim();

    setLoading(true);
    try {
      await api("/setup", {
        method: "POST",
        json: {
          organizationName,
          locationName,
          registerName,
          ownerStaffCode,
          ownerPin,
          ownerDisplayName,
        },
      });
      navigate("/login", { replace: true });
    } catch {
      // API error toast handled by api()
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="screen-center">
      <form className="card stack" onSubmit={onSubmit}>
        <h1 style={{ margin: 0 }}>First-time setup</h1>
        <p className="muted" style={{ margin: 0 }}>
          Create your organization and owner PIN. Runs only when the database is empty.
        </p>
        <div>
          <div className="label">Organization</div>
          <input className="field" name="organizationName" required />
        </div>
        <div>
          <div className="label">Location</div>
          <input className="field" name="locationName" required placeholder="Main shop" />
        </div>
        <div>
          <div className="label">First register name</div>
          <input className="field" name="registerName" defaultValue="Register 1" />
        </div>
        <div>
          <div className="label">Owner staff code</div>
          <input className="field" name="ownerStaffCode" required placeholder="e.g. 001" />
        </div>
        <div>
          <div className="label">Owner display name</div>
          <input className="field" name="ownerDisplayName" required />
        </div>
        <div>
          <div className="label">Owner PIN</div>
          <input className="field" name="ownerPin" type="password" required minLength={4} />
        </div>
        <button className="primary-btn" type="submit" disabled={loading}>
          {loading ? "Saving…" : "Create workspace"}
        </button>
      </form>
    </div>
  );
}
