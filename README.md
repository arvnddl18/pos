# Coffee shop POS

Monorepo: **React PWA** (`apps/pos-web`) + **Cloudflare Workers API** (`workers`) + **D1** + **R2**.

## Prerequisites

- Node.js LTS
- `npm install` at repo root

## Configure Cloudflare

1. Create D1 database: `cd workers && npx wrangler d1 create pos-db`
2. Copy `database_id` into `workers/wrangler.toml` (`[[d1_databases]]`).
3. Create R2 bucket `pos-assets` or update `bucket_name` in wrangler.toml.
4. Secrets: `cd workers && npx wrangler secret put SESSION_SECRET` (production). When set, the `pos_session` cookie is **HMAC-signed** (tamper-resistant); omit it in local dev for plain session IDs.
5. Optional hardening: set `ALLOWED_ORIGINS` in Worker vars (comma-separated exact origins) to enforce origin checks for mutating API calls.

## Database migrations

```bash
cd workers
npx wrangler d1 migrations apply pos-db --local
```

For remote: `npx wrangler d1 migrations apply pos-db --remote`.

## Dev

Terminal 1 (API):

```bash
cd workers
copy ..\\.dev.vars.example .\\.dev.vars
npx wrangler dev
```

(`SESSION_SECRET` is optional locally; when set, session cookies are HMAC-signed. Recommended for production.)

Terminal 2 (web, proxies `/api` → `127.0.0.1:8787`):

```bash
cd apps/pos-web
npm run dev
```

Open http://localhost:5173 → **Setup** creates org + owner user, then **Login**.

## Deploy

- API: `cd workers && npx wrangler deploy`
- Web: build `apps/pos-web` and deploy `dist` to **Cloudflare Pages**. Set environment so browser calls same-origin `/api` or configure `VITE_API_URL` if you split origins (advanced).

## GCash (personal)

Configure **GCash / e-wallet** screen in the app: mobile number + instructions. Payments use **pending → staff confirm** flow.

## Tax (VAT)

Assign a **tax profile** to each product in Admin. Prices are **tax-exclusive**; VAT is calculated per line (after proportional order discount), added to due, shown on receipts, and snapshotted on paid tickets for EOD.
