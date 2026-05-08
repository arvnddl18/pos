import type { Context } from "hono";
import type { Env } from "./types.js";

export type AuthUser = {
  id: string;
  orgId: string;
  role: "cashier" | "barista" | "manager" | "owner";
  staffCode: string;
  displayName: string;
};

export type Variables = {
  auth?: AuthUser;
  registerId?: string;
};

export type AppEnv = { Bindings: Env; Variables: Variables };

export function getDb(c: Context<AppEnv>) {
  return c.env.DB;
}
