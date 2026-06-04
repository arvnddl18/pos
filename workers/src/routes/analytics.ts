import { Hono } from "hono";
import { requireAuth } from "../middleware/session.js";
import { requireManager } from "../middleware/rbac.js";
import type { AppEnv } from "../ctx.js";
import {
  getHistoricalSalesData,
  generateForecastWithAI,
  generateStatisticalForecast,
  type DailyForecast,
} from "../lib/forecasting.js";

export const analyticsRoutes = new Hono<AppEnv>();

const DEMO_LABELS: Record<string, string> = {
  blue: "Student", green: "Professional", red: "Family", yellow: "Senior",
  purple: "Tourist", orange: "Couple", pink: "Teenager", brown: "Group",
};

/** Build a date range WHERE clause from query params */
function dateClause(dateFrom: string | undefined, dateTo: string | undefined, dateMonth: string | undefined, alias = "t"): string {
  if (dateFrom && dateTo) {
    return `AND date(${alias}.created_at) >= '${dateFrom}' AND date(${alias}.created_at) <= '${dateTo}'`;
  }
  if (dateMonth) {
    return `AND strftime('%Y-%m', ${alias}.created_at) = '${dateMonth}'`;
  }
  return "";
}

// KPI Summary
analyticsRoutes.get("/kpi", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const demo = c.req.query("demographic") ?? null;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");

  const demoClause = demo ? `AND t.demographic_color = '${demo}'` : "";
  const dc = dateClause(dateFrom, dateTo, dateMonth, "t");

  const totals = await c.env.DB.prepare(
    `SELECT COUNT(DISTINCT t.id) as total_tickets,
       COALESCE(SUM(p.amount_centavos), 0) as total_revenue,
       COUNT(DISTINCT CASE WHEN t.ticket_type = 'dine_in' THEN t.id END) as dine_in_count,
       COUNT(DISTINCT CASE WHEN t.ticket_type = 'takeout' THEN t.id END) as takeout_count,
       ROUND(AVG(CASE WHEN t.feedback_rating IS NOT NULL THEN t.feedback_rating END), 2) as avg_rating,
       COUNT(DISTINCT CASE WHEN t.feedback_rating IS NOT NULL THEN t.id END) as feedback_count
     FROM tickets t
     LEFT JOIN payments p ON p.ticket_id = t.id AND p.status = 'completed'
     WHERE t.org_id = ? AND t.status = 'paid' ${demoClause} ${dc}`
  ).bind(auth.orgId).first<Record<string, number | null>>();

  const topProduct = await c.env.DB.prepare(
    `SELECT pr.name, COUNT(li.id) as sold
     FROM line_items li
     JOIN tickets t ON t.id = li.ticket_id
     JOIN products pr ON pr.id = li.product_id
     WHERE t.org_id = ? AND t.status = 'paid' AND li.voided = 0 ${demoClause} ${dc}
     GROUP BY pr.name ORDER BY sold DESC LIMIT 1`
  ).bind(auth.orgId).first<{ name: string; sold: number }>();

  const cupsSold = await c.env.DB.prepare(
    `SELECT COALESCE(SUM(li.qty), 0) as total
     FROM line_items li
     JOIN tickets t ON t.id = li.ticket_id
     WHERE t.org_id = ? AND t.status = 'paid' AND li.voided = 0 ${demoClause} ${dc}`
  ).bind(auth.orgId).first<{ total: number }>();

  const peakHour = await c.env.DB.prepare(
    `SELECT strftime('%H', t.created_at) as hour, COUNT(t.id) as count
     FROM tickets t WHERE t.org_id = ? AND t.status = 'paid' ${demoClause} ${dc}
     GROUP BY hour ORDER BY count DESC LIMIT 1`
  ).bind(auth.orgId).first<{ hour: string; count: number }>();

  const avgOrderValue = totals && Number(totals.total_tickets) > 0
    ? Math.round(Number(totals.total_revenue) / Number(totals.total_tickets)) : 0;

  return c.json({
    totalTickets: Number(totals?.total_tickets ?? 0),
    totalRevenueCentavos: Number(totals?.total_revenue ?? 0),
    avgOrderValueCentavos: avgOrderValue,
    totalCupsSold: Number(cupsSold?.total ?? 0),
    dineInCount: Number(totals?.dine_in_count ?? 0),
    takeoutCount: Number(totals?.takeout_count ?? 0),
    avgRating: totals?.avg_rating ?? null,
    feedbackCount: Number(totals?.feedback_count ?? 0),
    topProduct: topProduct ?? null,
    peakHour: peakHour ?? null,
  });
});

// Demographic breakdown
analyticsRoutes.get("/demographics", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const dc = dateClause(dateFrom, dateTo, dateMonth, "t");

  const results = await c.env.DB.prepare(
    `SELECT t.demographic_color,
       COUNT(DISTINCT t.id) as ticket_count,
       COALESCE(SUM(p.amount_centavos), 0) as total_revenue,
       ROUND(AVG(CASE WHEN t.feedback_rating IS NOT NULL THEN CAST(t.feedback_rating AS REAL) END), 2) as avg_rating
     FROM tickets t
     LEFT JOIN payments p ON p.ticket_id = t.id AND p.status = 'completed'
     WHERE t.org_id = ? AND t.status = 'paid' AND t.demographic_color IS NOT NULL ${dc}
     GROUP BY t.demographic_color
     ORDER BY ticket_count DESC`
  ).bind(auth.orgId).all<{ demographic_color: string; ticket_count: number; total_revenue: number; avg_rating: number | null }>();

  const rows = (results.results ?? []).map(r => ({
    ...r,
    label: DEMO_LABELS[r.demographic_color] ?? r.demographic_color,
  }));

  return c.json({ demographics: rows });
});

// Daily trend
analyticsRoutes.get("/trends/daily", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const demo = c.req.query("demographic") ?? null;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const demoClause = demo ? `AND t.demographic_color = '${demo}'` : "";
  const dc = dateClause(dateFrom, dateTo, dateMonth, "t");

  const results = await c.env.DB.prepare(
    `SELECT date(t.created_at) as day,
       COUNT(DISTINCT t.id) as ticket_count,
       COALESCE(SUM(p.amount_centavos), 0) as revenue
     FROM tickets t
     LEFT JOIN payments p ON p.ticket_id = t.id AND p.status = 'completed'
     WHERE t.org_id = ? AND t.status = 'paid' ${demoClause} ${dc}
     GROUP BY day ORDER BY day ASC LIMIT 60`
  ).bind(auth.orgId).all();

  return c.json({ daily: results.results ?? [] });
});

// Product trends
analyticsRoutes.get("/trends/products", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const demo = c.req.query("demographic") ?? null;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const demoClause = demo ? `AND t.demographic_color = '${demo}'` : "";
  const dc = dateClause(dateFrom, dateTo, dateMonth, "t");

  const results = await c.env.DB.prepare(
    `SELECT pr.name, COUNT(li.id) as sold_count,
       COALESCE(SUM(li.unit_price_centavos * li.qty - li.discount_centavos), 0) as revenue
     FROM line_items li
     JOIN tickets t ON t.id = li.ticket_id
     JOIN products pr ON pr.id = li.product_id
     WHERE t.org_id = ? AND t.status = 'paid' AND li.voided = 0 ${demoClause} ${dc}
     GROUP BY pr.name ORDER BY sold_count DESC LIMIT 10`
  ).bind(auth.orgId).all();

  return c.json({ products: results.results ?? [] });
});

// Order types
analyticsRoutes.get("/order-types", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const demo = c.req.query("demographic") ?? null;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const demoClause = demo ? `AND t.demographic_color = '${demo}'` : "";
  const dc = dateClause(dateFrom, dateTo, dateMonth, "t");

  const results = await c.env.DB.prepare(
    `SELECT t.ticket_type, COUNT(DISTINCT t.id) as count, COALESCE(SUM(p.amount_centavos), 0) as total_sales
     FROM tickets t
     LEFT JOIN payments p ON p.ticket_id = t.id AND p.status = 'completed'
     WHERE t.org_id = ? AND t.ticket_type IS NOT NULL AND t.status = 'paid' ${demoClause} ${dc}
     GROUP BY t.ticket_type`
  ).bind(auth.orgId).all();

  return c.json({ orderTypes: results.results ?? [] });
});

// Feedback
analyticsRoutes.get("/feedback", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const demo = c.req.query("demographic") ?? null;
  const dateFrom = c.req.query("dateFrom");
  const dateTo = c.req.query("dateTo");
  const dateMonth = c.req.query("dateMonth");
  const demoClause = demo ? `AND demographic_color = '${demo}'` : "";
  const dc = dateClause(dateFrom, dateTo, dateMonth);

  const results = await c.env.DB.prepare(
    `SELECT id, demographic_color, feedback_rating, feedback_notes, created_at
     FROM tickets
     WHERE org_id = ? AND (feedback_rating IS NOT NULL OR feedback_notes IS NOT NULL) ${demoClause} ${dc.replace(/t\./g, "")}
     ORDER BY created_at DESC LIMIT 100`
  ).bind(auth.orgId).all();

  return c.json({ feedbacks: results.results ?? [] });
});

// Demand Forecasting (AI-powered)
analyticsRoutes.get("/forecast/7day", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const daysBack = Number(c.req.query("daysBack") || 30);
  const useAI = c.req.query("useAI") !== "false";

  try {
    // Get historical data
    const historicalData = await getHistoricalSalesData(
      c.env.DB,
      auth.orgId,
      daysBack
    );

    if (historicalData.length === 0) {
      return c.json(
        { error: "Insufficient historical data for forecasting" },
        400
      );
    }

    let forecastResult;
    let actuallyUsedAI = false;

    // Try to use AI if available
    if (
      useAI &&
      c.env.OPENROUTER_API_KEY &&
      c.env.OPENROUTER_MODEL
    ) {
      try {
        forecastResult = await generateForecastWithAI(
          c.env.OPENROUTER_API_KEY,
          c.env.OPENROUTER_MODEL,
          historicalData
        );
        actuallyUsedAI = true;
      } catch (aiError) {
        console.warn("AI forecasting failed, falling back to statistical:", aiError);
        // Fall back to statistical forecasting
        forecastResult = generateStatisticalForecast(historicalData);
      }
    } else {
      // Use statistical forecasting
      forecastResult = generateStatisticalForecast(historicalData);
    }

    return c.json({
      forecasts: forecastResult.forecasts,
      insights: forecastResult.insights,
      usedAI: actuallyUsedAI,
      historicalDataPoints: historicalData.reduce(
        (sum, p) => sum + p.dailyData.length,
        0
      ),
    });
  } catch (error) {
    console.error("Forecasting error:", error);
    return c.json(
      { error: "Failed to generate forecast", details: String(error) },
      500
    );
  }
});

// Product-specific forecast
analyticsRoutes.get("/forecast/product/:productId", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;
  const productId = c.req.param("productId");
  const daysBack = Number(c.req.query("daysBack") || 30);

  try {
    const historicalData = await getHistoricalSalesData(
      c.env.DB,
      auth.orgId,
      daysBack
    );

    const productData = historicalData.find((p) => p.productId === productId);

    if (!productData) {
      return c.json({ error: "Product not found in historical data" }, 404);
    }

    const result = generateStatisticalForecast([productData]);

    return c.json({
      productId,
      productName: productData.productName,
      forecasts: result.forecasts.map((f) => ({
        date: f.date,
        forecastedUnits: f.byProduct[0]?.forecastedUnits || 0,
        confidence: f.byProduct[0]?.confidence || 0.7,
      })),
    });
  } catch (error) {
    console.error("Product forecast error:", error);
    return c.json(
      { error: "Failed to generate product forecast", details: String(error) },
      500
    );
  }
});

// Forecast comparison (forecasted vs actual)
analyticsRoutes.get("/forecast/accuracy", requireAuth(), requireManager(), async (c) => {
  const auth = c.get("auth")!;

  try {
    // Get forecast data
    const forecastRes = await c.env.DB.prepare(
      `SELECT 
        DATE(created_at) as forecast_date,
        COUNT(DISTINCT id) as actual_tickets,
        SUM(CASE WHEN status = 'paid' THEN 1 ELSE 0 END) as paid_tickets
      FROM tickets
      WHERE org_id = ? AND DATE(created_at) >= DATE('now', '-14 days')
      GROUP BY DATE(created_at)
      ORDER BY forecast_date DESC`
    )
      .bind(auth.orgId)
      .all();

    // Generate current forecast for comparison
    const historicalData = await getHistoricalSalesData(c.env.DB, auth.orgId, 30);
    const result = generateStatisticalForecast(historicalData);

    return c.json({
      actual: forecastRes.results ?? [],
      forecast: result.forecasts.slice(0, 7),
    });
  } catch (error) {
    console.error("Accuracy check error:", error);
    return c.json(
      { error: "Failed to check forecast accuracy", details: String(error) },
      500
    );
  }
});
