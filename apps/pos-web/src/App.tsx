import { Suspense, lazy } from "react";
import { Navigate, Route, Routes } from "react-router-dom";
import { ShellLayout } from "./layout/ShellLayout.js";
import { RequirePageAccess } from "./auth/RequirePageAccess.js";
import { ToastProvider } from "./ui/ToastProvider.js";

const SetupPage = lazy(() => import("./pages/SetupPage.js").then((module) => ({ default: module.SetupPage })));
const LoginPage = lazy(() => import("./pages/LoginPage.js").then((module) => ({ default: module.LoginPage })));
const PosPage = lazy(() => import("./pages/PosPage.js").then((module) => ({ default: module.PosPage })));
const AdminPage = lazy(() => import("./pages/AdminPage.js").then((module) => ({ default: module.AdminPage })));
const ReportsPage = lazy(() => import("./pages/ReportsPage.js").then((module) => ({ default: module.ReportsPage })));
const KdsPage = lazy(() => import("./pages/KdsPage.js").then((module) => ({ default: module.KdsPage })));
const EwalletSettingsPage = lazy(() =>
  import("./pages/EwalletSettingsPage.js").then((module) => ({ default: module.EwalletSettingsPage })),
);
const StaffPage = lazy(() => import("./pages/StaffPage.js").then((module) => ({ default: module.StaffPage })));
const InventoryPage = lazy(() => import("./pages/InventoryPage.js").then((module) => ({ default: module.InventoryPage })));
const ShiftsPage = lazy(() => import("./pages/ShiftsPage.js").then((module) => ({ default: module.ShiftsPage })));
const PriceRulesPage = lazy(() => import("./pages/PriceRulesPage.js").then((module) => ({ default: module.PriceRulesPage })));
const ReceiptPrintPage = lazy(() =>
  import("./pages/ReceiptPrintPage.js").then((module) => ({ default: module.ReceiptPrintPage })),
);

export default function App() {
  return (
    <ToastProvider>
      <Suspense fallback={<div className="page-shell">Loading...</div>}>
        <Routes>
        <Route path="/setup" element={<SetupPage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/receipt/:ticketId" element={<ReceiptPrintPage />} />
        <Route path="/" element={<Navigate to="/login" replace />} />
        <Route element={<ShellLayout />}>
          <Route
            path="/pos"
            element={
              <RequirePageAccess page="pos">
                <PosPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/admin"
            element={
              <RequirePageAccess page="admin">
                <AdminPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/reports"
            element={
              <RequirePageAccess page="reports">
                <ReportsPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/kds"
            element={
              <RequirePageAccess page="kds">
                <KdsPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/ewallet"
            element={
              <RequirePageAccess page="ewallet">
                <EwalletSettingsPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/staff"
            element={
              <RequirePageAccess page="staff">
                <StaffPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/inventory"
            element={
              <RequirePageAccess page="inventory">
                <InventoryPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/shifts"
            element={
              <RequirePageAccess page="shifts">
                <ShiftsPage />
              </RequirePageAccess>
            }
          />
          <Route
            path="/pricing"
            element={
              <RequirePageAccess page="pricing">
                <PriceRulesPage />
              </RequirePageAccess>
            }
          />
        </Route>
        <Route path="*" element={<Navigate to="/login" replace />} />
        </Routes>
      </Suspense>
    </ToastProvider>
  );
}
