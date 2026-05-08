export const API_BASE = "/api";
const CSRF_KEY = "csrfToken";

function setCsrfToken(token: string | undefined) {
  if (!token) return;
  sessionStorage.setItem(CSRF_KEY, token);
}

function getCsrfToken(): string {
  return sessionStorage.getItem(CSRF_KEY) ?? "";
}

function isMutating(method: string | undefined): boolean {
  const m = (method ?? "GET").toUpperCase();
  return m === "POST" || m === "PUT" || m === "PATCH" || m === "DELETE";
}

function withFreshQuery(path: string, method: string | undefined): string {
  const m = (method ?? "GET").toUpperCase();
  if (m !== "GET") return path;
  const join = path.includes("?") ? "&" : "?";
  return `${path}${join}_ts=${Date.now()}`;
}

export async function api<T = unknown>(path: string, init?: RequestInit & { json?: unknown }): Promise<T> {
  const { json, ...rest } = init ?? {};
  const method = (rest.method ?? "GET").toUpperCase();
  const headers = new Headers(rest.headers);
  if (json !== undefined) {
    headers.set("Content-Type", "application/json");
  }
  if (isMutating(method)) {
    const csrf = getCsrfToken();
    if (csrf) headers.set("X-CSRF-Token", csrf);
  }
  const res = await fetch(`${API_BASE}${withFreshQuery(path, method)}`, {
    ...rest,
    method,
    headers,
    credentials: "include",
    cache: "no-store",
    body: json !== undefined ? JSON.stringify(json) : rest.body,
  });
  if (res.status === 204) return undefined as T;
  const text = await res.text();
  const data = text ? JSON.parse(text) : undefined;
  const maybeCsrf = (data as { csrfToken?: string } | undefined)?.csrfToken;
  if (maybeCsrf) setCsrfToken(maybeCsrf);
  if (!res.ok) {
    const err = new Error((data as { error?: string })?.error ?? res.statusText);
    (err as Error & { status?: number; body?: unknown }).status = res.status;
    (err as Error & { body?: unknown }).body = data;
    throw err;
  }
  if (isMutating(method) && typeof window !== "undefined") {
    window.dispatchEvent(
      new CustomEvent("pos:data-changed", {
        detail: { method, path },
      }),
    );
  }
  return data as T;
}

export function clearCsrfToken() {
  sessionStorage.removeItem(CSRF_KEY);
}

export function formatPhp(centavos: number): string {
  return (centavos / 100).toLocaleString("en-PH", { style: "currency", currency: "PHP" });
}
