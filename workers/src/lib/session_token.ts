const UUID_LEN = 36;

function timingSafeEqual(a: string, b: string): boolean {
  if (a.length !== b.length) return false;
  let out = 0;
  for (let i = 0; i < a.length; i++) out |= a.charCodeAt(i) ^ b.charCodeAt(i);
  return out === 0;
}

async function hmacSha256Hex(secret: string, message: string): Promise<string> {
  const enc = new TextEncoder();
  const key = await crypto.subtle.importKey("raw", enc.encode(secret), { name: "HMAC", hash: "SHA-256" }, false, ["sign"]);
  const sig = new Uint8Array(await crypto.subtle.sign("HMAC", key, enc.encode(message)));
  return [...sig].map((b) => b.toString(16).padStart(2, "0")).join("");
}

const uuidRe = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function isUuid(s: string): boolean {
  return s.length === UUID_LEN && uuidRe.test(s);
}

/** When SESSION_SECRET is set, cookie value is `${sessionId}.${hexHmac}`. Otherwise raw sessionId. */
export async function formatSessionCookieValue(sessionId: string, sessionSecret: string | undefined): Promise<string> {
  if (!sessionSecret) return sessionId;
  const sig = await hmacSha256Hex(sessionSecret, sessionId);
  return `${sessionId}.${sig}`;
}

/** CSRF token bound to a session id; requires SESSION_SECRET. */
export async function buildCsrfToken(sessionId: string, sessionSecret: string | undefined): Promise<string> {
  if (!sessionSecret) return "";
  return hmacSha256Hex(sessionSecret, `csrf:${sessionId}`);
}

/**
 * Resolves DB session id from cookie payload.
 * - With secret: accepts signed `uuid.sig` or legacy plain `uuid`.
 * - Without secret: accepts plain `uuid` only.
 */
export async function resolveSessionIdFromCookiePayload(raw: string, sessionSecret: string | undefined): Promise<string | undefined> {
  const trimmed = raw.trim();
  if (!trimmed) return undefined;

  if (!sessionSecret) {
    return isUuid(trimmed) ? trimmed : undefined;
  }

  const dot = trimmed.indexOf(".");
  if (dot === UUID_LEN && trimmed.length > UUID_LEN + 1) {
    const sessionId = trimmed.slice(0, UUID_LEN);
    const sig = trimmed.slice(UUID_LEN + 1);
    if (!isUuid(sessionId)) return undefined;
    const expected = await hmacSha256Hex(sessionSecret, sessionId);
    if (!timingSafeEqual(sig.toLowerCase(), expected.toLowerCase())) return undefined;
    return sessionId;
  }

  if (isUuid(trimmed)) return trimmed;
  return undefined;
}
