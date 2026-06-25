import { createContext, useContext, type ReactNode } from "react";
import type { Role } from "@pos/shared";

export type AuthUser = {
  id: string;
  role: Role;
  displayName: string;
};

const AuthContext = createContext<AuthUser | null>(null);

export function AuthProvider({ user, children }: { user: AuthUser; children: ReactNode }) {
  return <AuthContext.Provider value={user}>{children}</AuthContext.Provider>;
}

export function useAuth(): AuthUser {
  const user = useContext(AuthContext);
  if (!user) throw new Error("useAuth must be used within AuthProvider");
  return user;
}
