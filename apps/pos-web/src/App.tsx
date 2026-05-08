import { Suspense, lazy } from "react";
import { Navigate, Route, Routes } from "react-router-dom";
import { ShellLayout } from "./layout/ShellLayout.js";

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
    <Suspense fallback={<div className="page-shell">Loading...</div>}>
      <Routes>
        <Route path="/setup" element={<SetupPage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/receipt/:ticketId" element={<ReceiptPrintPage />} />
        <Route element={<ShellLayout />}>
          <Route path="/" element={<Navigate to="/pos" replace />} />
          <Route path="/pos" element={<PosPage />} />
          <Route path="/admin" element={<AdminPage />} />
          <Route path="/reports" element={<ReportsPage />} />
          <Route path="/kds" element={<KdsPage />} />
          <Route path="/ewallet" element={<EwalletSettingsPage />} />
          <Route path="/staff" element={<StaffPage />} />
          <Route path="/inventory" element={<InventoryPage />} />
          <Route path="/shifts" element={<ShiftsPage />} />
          <Route path="/pricing" element={<PriceRulesPage />} />
        </Route>
        <Route path="*" element={<Navigate to="/login" replace />} />
      </Routes>
    </Suspense>
  );
}
