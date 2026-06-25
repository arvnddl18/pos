import type { ReactNode } from "react";
import { Navigate } from "react-router-dom";
import { canAccessPage, PAGE_PATHS, type AppPage } from "@pos/shared";
import { useAuth } from "./AuthContext.js";

export function RequirePageAccess({ page, children }: { page: AppPage; children: ReactNode }) {
  const { role } = useAuth();
  if (!canAccessPage(role, page)) {
    return <Navigate to={PAGE_PATHS.pos} replace />;
  }
  return children;
}
