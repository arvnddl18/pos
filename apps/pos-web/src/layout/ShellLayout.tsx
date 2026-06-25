import { NavLink, Outlet, useNavigate } from "react-router-dom";
import { useEffect, useState } from "react";
import { api, clearCsrfToken } from "../api.js";
import { AuthProvider } from "../auth/AuthContext.js";
import { canAccessPage, isRole, NAV_ITEMS, PAGE_PATHS, type Role } from "@pos/shared";

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

  if (!state.ok || !state.me || !isRole(state.me.role)) return null;

  const role = state.me.role as Role;
  const visibleNavItems = NAV_ITEMS.filter((item) => canAccessPage(role, item.page));

  return (
    <AuthProvider user={{ id: state.me.id, role, displayName: state.me.displayName }}>
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
              {visibleNavItems.map((item) => (
                <NavLink
                  key={item.page}
                  to={PAGE_PATHS[item.page]}
                  className={({ isActive }) => (isActive ? "active" : "")}
                >
                  {item.label}
                </NavLink>
              ))}
            </nav>
            <div className="bottom account-area">
              <button type="button" className="ghost-btn account-btn" onClick={() => setMenuOpen((v) => !v)}>
                <span className="btn-icon">👤</span>
                <span>{state.me.displayName ?? "Account"}</span>
              </button>
              {menuOpen ? (
                <div className="account-menu">
                  <div className="muted" style={{ fontSize: 12 }}>
                    Signed in as {role}
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
    </AuthProvider>
  );
}
