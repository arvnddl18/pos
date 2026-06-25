export const ROLES = ["cashier", "barista", "manager", "owner"] as const;
export type Role = (typeof ROLES)[number];

export const APP_PAGES = [
  "pos",
  "admin",
  "reports",
  "kds",
  "ewallet",
  "staff",
  "inventory",
  "shifts",
  "pricing",
] as const;
export type AppPage = (typeof APP_PAGES)[number];

export const PAGE_PATHS: Record<AppPage, string> = {
  pos: "/pos",
  admin: "/admin",
  reports: "/reports",
  kds: "/kds",
  ewallet: "/ewallet",
  staff: "/staff",
  inventory: "/inventory",
  shifts: "/shifts",
  pricing: "/pricing",
};

const PAGE_ACCESS: Record<Role, readonly AppPage[]> = {
  owner: APP_PAGES,
  manager: ["pos", "reports", "kds", "staff", "shifts", "pricing"],
  cashier: ["pos", "kds", "shifts"],
  barista: ["pos", "kds", "shifts"],
};

export const NAV_ITEMS: { page: AppPage; label: string }[] = [
  { page: "pos", label: "POS" },
  { page: "admin", label: "Admin" },
  { page: "reports", label: "Reports" },
  { page: "kds", label: "KDS" },
  { page: "ewallet", label: "E-Wallet" },
  { page: "staff", label: "Staff" },
  { page: "inventory", label: "Inventory" },
  { page: "shifts", label: "Shifts" },
  { page: "pricing", label: "Price Rules" },
];

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

export function isRole(value: string): value is Role {
  return (ROLES as readonly string[]).includes(value);
}

export function canAccessPage(role: Role, page: AppPage): boolean {
  return PAGE_ACCESS[role].includes(page);
}

export function pathToPage(pathname: string): AppPage | null {
  const normalized = pathname.replace(/\/+$/, "") || "/";
  for (const page of APP_PAGES) {
    if (PAGE_PATHS[page] === normalized) return page;
  }
  return null;
}
