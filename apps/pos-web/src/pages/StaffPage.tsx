import { FormEvent, useEffect, useState } from "react";
import { api } from "../api.js";

type User = Record<string, unknown>;

export function StaffPage() {
  const [users, setUsers] = useState<User[]>([]);
  const [msg, setMsg] = useState<string | null>(null);

  async function load() {
    const res = await api<{ users: User[] }>("/staff/users");
    setUsers(res.users ?? []);
  }

  useEffect(() => {
    void load();
  }, []);

  useEffect(() => {
    const onChanged = () => {
      void load();
    };
    window.addEventListener("pos:data-changed", onChanged);
    return () => window.removeEventListener("pos:data-changed", onChanged);
  }, []);

  async function createUser(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    const fd = new FormData(e.currentTarget);
    await api("/staff/users", {
      method: "POST",
      json: {
        staffCode: String(fd.get("staffCode") ?? ""),
        displayName: String(fd.get("displayName") ?? ""),
        pin: String(fd.get("pin") ?? ""),
        role: String(fd.get("role") ?? "cashier"),
      },
    });
    e.currentTarget.reset();
    setMsg("Created");
  }

  return (
    <div className="page-shell">
      <h1 className="page-title">Staff</h1>
      <form className="card stack" onSubmit={createUser}>
        <h2 style={{ margin: 0, fontSize: 18 }}>Add user</h2>
        <input className="field" name="staffCode" placeholder="Staff code" required />
        <input className="field" name="displayName" placeholder="Display name" required />
        <input className="field" name="pin" type="password" placeholder="PIN" required />
        <select className="field" name="role" defaultValue="cashier">
          <option value="cashier">cashier</option>
          <option value="barista">barista</option>
          <option value="manager">manager</option>
          <option value="owner">owner</option>
        </select>
        {msg ? <div className="muted">{msg}</div> : null}
        <button className="primary-btn" type="submit">
          Create
        </button>
      </form>

      <div className="card stack">
        {users.map((u) => (
          <div key={String(u.id)} className="row" style={{ justifyContent: "space-between" }}>
            <span>
              {String(u.staff_code)} · {String(u.display_name)}
            </span>
            <span className="muted">{String(u.role)}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
