import { NavLink, Outlet, useNavigate } from "react-router-dom";
import { useEffect, useState } from "react";
import { api, clearCsrfToken } from "../api.js";

type Me = { user: { id: string; role: string; displayName: string } };

export function ShellLayout() {
  const navigate = useNavigate();
  const [state, setState] = useState<{ ok: boolean; loading: boolean; me: Me["user"] | null }>({
    ok: false,
    loading: true,
    me: null,
  });
  const [menuOpen, setMenuOpen] = useState(false);
  const [isSidebarCollapsed, setIsSidebarCollapsed] = useState(false);

  useEffect(() => {
    api<Me>("/auth/me")
      .then((me) => setState({ ok: true, loading: false, me: me.user }))
      .catch(() => {
        setState({ ok: false, loading: false, me: null });
        navigate("/login", { replace: true });
      });
  }, [navigate]);

  async function logout() {
    await api("/auth/logout", { method: "POST", json: {} }).catch(() => {});
    clearCsrfToken();
    navigate("/login", { replace: true });
  }

  if (state.loading) {
    return (
      <div className="screen-center muted">
        <p>Loading…</p>
      </div>
    );
  }

  if (!state.ok) return null;

  return (
    <div className={`app-shell${isSidebarCollapsed ? " sidebar-collapsed" : ""}`}>
      {!isSidebarCollapsed ? (
      <aside className="nav-rail">
        <button
          type="button"
          className="rail-toggle"
          aria-label="Collapse sidebar"
          aria-expanded
          onClick={() => setIsSidebarCollapsed((prev) => !prev)}
        >
          ☰
        </button>
        <div className="brand">
          Coffee
          <span className="brand-sub">POS EXPERIENCE</span>
        </div>
        <nav>
          <NavLink to="/pos" className={({ isActive }) => (isActive ? "active" : "")}>
            POS
          </NavLink>
          <NavLink to="/admin">Admin</NavLink>
          <NavLink to="/reports">Reports</NavLink>
          <NavLink to="/kds">KDS</NavLink>
          <NavLink to="/ewallet">E-Wallet</NavLink>
          <NavLink to="/staff">Staff</NavLink>
          <NavLink to="/inventory">Inventory</NavLink>
          <NavLink to="/shifts">Shifts</NavLink>
          <NavLink to="/pricing">Price Rules</NavLink>
        </nav>
        <div className="bottom account-area">
          <button type="button" className="ghost-btn account-btn" onClick={() => setMenuOpen((v) => !v)}>
            <span className="btn-icon">👤</span>
            <span>{state.me?.displayName ?? "Account"}</span>
          </button>
          {menuOpen ? (
            <div className="account-menu">
              <div className="muted" style={{ fontSize: 12 }}>
                Signed in as {state.me?.role ?? "staff"}
              </div>
              <button type="button" className="ghost-btn" onClick={() => void logout()}>
                <span className="btn-icon">↪</span>
                <span>Log out</span>
              </button>
            </div>
          ) : null}
        </div>
      </aside>
      ) : null}
      <main className="main-area">
        {isSidebarCollapsed ? (
          <button
            type="button"
            className="rail-toggle rail-toggle-main"
            aria-label="Expand sidebar"
            aria-expanded={false}
            onClick={() => setIsSidebarCollapsed(false)}
          >
            ☰
          </button>
        ) : null}
        <Outlet />
      </main>
    </div>
  );
}
