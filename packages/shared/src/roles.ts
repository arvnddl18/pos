export const ROLES = ["cashier", "barista", "manager", "owner"] as const;
export type Role = (typeof ROLES)[number];

export function roleRank(role: Role): number {
  const order: Record<Role, number> = {
    cashier: 1,
    barista: 2,
    manager: 3,
    owner: 4,
  };
  return order[role];
}

export function canManage(role: Role): boolean {
  return role === "manager" || role === "owner";
}
