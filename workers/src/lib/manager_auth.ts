import type { D1Database } from "@cloudflare/workers-types";
import { canManage, isRole } from "@pos/shared";
import { verifyPin } from "../crypto_pin.js";

export type VerifiedManager = {
  id: string;
  role: string;
  displayName: string;
  staffCode: string;
};

export async function verifyManagerCredentials(
  db: D1Database,
  orgId: string,
  staffCode: string,
  pin: string,
): Promise<VerifiedManager | null> {
  const user = await db
    .prepare(
      "SELECT id, staff_code, display_name, pin_hash, salt, role, active FROM users WHERE org_id = ? AND staff_code = ?",
    )
    .bind(orgId, staffCode)
    .first<{
      id: string;
      staff_code: string;
      display_name: string;
      pin_hash: string;
      salt: string;
      role: string;
      active: number;
    }>();

  if (!user || user.active !== 1 || !isRole(user.role) || !canManage(user.role)) {
    return null;
  }

  const ok = await verifyPin(pin, user.salt, user.pin_hash);
  if (!ok) return null;

  return {
    id: user.id,
    role: user.role,
    displayName: user.display_name,
    staffCode: user.staff_code,
  };
}
