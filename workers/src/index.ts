import { Hono } from "hono";
import { cors } from "hono/cors";
import type { AppEnv } from "./ctx.js";
import { sessionMiddleware } from "./middleware/session.js";
import { apiRateLimit } from "./middleware/rate_limit.js";
import { requireAllowedOrigin } from "./middleware/origin.js";
import { requireCsrfToken } from "./middleware/csrf.js";
import { setupRoutes } from "./routes/setup.js";
import { authRoutes } from "./routes/auth.js";
import { registerRoutes } from "./routes/registers.js";
import { catalogRoutes } from "./routes/catalog.js";
import { ticketRoutes } from "./routes/tickets.js";
import { paymentRoutes } from "./routes/payments.js";
import { ewalletRoutes } from "./routes/ewallet.js";
import { reportRoutes } from "./routes/reports.js";
import { kdsRoutes } from "./routes/kds.js";
import { shiftRoutes } from "./routes/shifts.js";
import { inventoryRoutes } from "./routes/inventory.js";
import { priceRuleRoutes } from "./routes/price_rules.js";
import { staffAdminRoutes } from "./routes/staff_admin.js";
import { uploadRoutes } from "./routes/upload.js";
import { analyticsRoutes } from "./routes/analytics.js";
import { customerRoutes } from "./routes/customers.js";
import { auditRoutes } from "./routes/audit.js";

const app = new Hono<AppEnv>();

app.use(
  "*",
  cors({
    origin: (origin) => origin || "*",
    allowHeaders: ["Content-Type", "Cookie", "Idempotency-Key", "Authorization", "X-CSRF-Token"],
    exposeHeaders: ["Set-Cookie"],
    credentials: true,
  }),
);
app.use("*", apiRateLimit());
app.use("*", requireAllowedOrigin());
app.use("*", sessionMiddleware());
app.use("*", requireCsrfToken());

app.route("/api", setupRoutes);
app.route("/api/auth", authRoutes);
app.route("/api/registers", registerRoutes);
app.route("/api/catalog", catalogRoutes);
app.route("/api/tickets", ticketRoutes);
app.route("/api", paymentRoutes);
app.route("/api/ewallet", ewalletRoutes);
app.route("/api/reports", reportRoutes);
app.route("/api/kds", kdsRoutes);
app.route("/api/shifts", shiftRoutes);
app.route("/api/inventory", inventoryRoutes);
app.route("/api/price-rules", priceRuleRoutes);
app.route("/api/staff", staffAdminRoutes);
app.route("/api/uploads", uploadRoutes);
app.route("/api/analytics", analyticsRoutes);
app.route("/api/customers", customerRoutes);
app.route("/api/audit", auditRoutes);

app.all("*", (c) => c.json({ error: "not_found" }, 404));

export default app;
