# Non-functional safeguards (implemented)

- **Payments:** `Idempotency-Key` header supported on `/api/tickets/:ticketId/payments`; duplicate requests return existing payment id when key matches.
- **GCash confirm:** Same payment cannot be confirmed twice (`status` gate); manager threshold enforced on `/confirm-ewallet`.
- **Refunds:** Total refunds per ticket cannot exceed net completed payments (`refund_exceeds_net_paid`).
- **API rate limit:** ~300 requests/minute per client IP using D1 (`rate_limit_hits`), shared across Worker isolates.
- **Origin allowlist (optional):** Set `ALLOWED_ORIGINS` (comma-separated exact origins) to restrict `POST`/`PUT`/`PATCH`/`DELETE` when the browser sends `Origin`.
- **CSRF defense:** For authenticated mutating requests, API requires `X-CSRF-Token` derived from the signed session; web client auto-attaches it.
- **Session:** HTTP-only cookie; session row in D1 with expiry. If `SESSION_SECRET` is set, the cookie value is `sessionId.HMAC-SHA256` (hex) so IDs cannot be forged without the secret; without it, local dev uses a raw UUID in the cookie (legacy-compatible).
- **Reporting:** EOD and CSV attribute payments to `COALESCE(confirmed_at, created_at)` so GCash counts on confirmation time.

**Backups:** Use Cloudflare D1 backup/export on a schedule; verify restore periodically.

**Offline POS:** PWA precaches the shell; selling while offline is not implemented (no IndexedDB outbox).
