import type { D1Database } from "@cloudflare/workers-types";

export interface ForecastResult {
  productId: string;
  productName: string;
  forecastDate: string;
  forecastedUnits: number;
  confidence: number;
  modelInsight: string;
}

export interface MarketInsight {
  title: string;
  content: string;
  type: "trend" | "demographic" | "season" | "calendar";
}

export interface DailyForecast {
  date: string;
  totalForecastedUnits: number;
  byProduct: ForecastResult[];
}

export interface ForecastResponse {
  forecasts: DailyForecast[];
  insights: MarketInsight[];
}

interface HistoricalData {
  productName: string;
  productId: string;
  dailyData: Array<{
    date: string;
    units: number;
    revenue: number;
  }>;
}

/**
 * Fetch historical sales data for forecasting
 */
export async function getHistoricalSalesData(
  db: D1Database,
  orgId: string,
  daysBack: number = 30
): Promise<HistoricalData[]> {
  const startDate = new Date();
  startDate.setDate(startDate.getDate() - daysBack);
  const startDateStr = startDate.toISOString().split("T")[0];

  const results = await db
    .prepare(
      `
    SELECT 
      pr.id as product_id,
      pr.name as product_name,
      DATE(t.created_at) as sale_date,
      COUNT(li.id) as units_sold,
      SUM(li.unit_price_centavos * li.qty) as revenue
    FROM line_items li
    JOIN tickets t ON t.id = li.ticket_id
    JOIN products pr ON pr.id = li.product_id
    WHERE t.org_id = ? 
      AND t.status = 'paid' 
      AND li.voided = 0 
      AND DATE(t.created_at) >= ?
    GROUP BY pr.id, pr.name, DATE(t.created_at)
    ORDER BY pr.id, sale_date
    `
    )
    .bind(orgId, startDateStr)
    .all<{
      product_id: string;
      product_name: string;
      sale_date: string;
      units_sold: number;
      revenue: number;
    }>();

  // Group by product
  const productMap = new Map<string, HistoricalData>();

  for (const row of results.results ?? []) {
    if (!productMap.has(row.product_id)) {
      productMap.set(row.product_id, {
        productId: row.product_id,
        productName: row.product_name,
        dailyData: [],
      });
    }

    productMap.get(row.product_id)!.dailyData.push({
      date: row.sale_date,
      units: row.units_sold,
      revenue: row.revenue,
    });
  }

  return Array.from(productMap.values());
}

/**
 * Format historical data as a prompt for the AI model
 */
function formatHistoricalDataForPrompt(data: HistoricalData[]): string {
  return data
    .map((product) => {
      const dataStr = product.dailyData
        .map((d) => `${d.date}: ${d.units} units (₱${(d.revenue / 100).toFixed(2)})`)
        .join("\n");

      return `Product: ${product.productName}
Last 30 days sales:
${dataStr}`;
    })
    .join("\n\n");
}

/**
 * Call OpenRouter API with Nemotron model for demand forecasting
 */
export async function generateForecastWithAI(
  apiKey: string,
  model: string,
  historicalData: HistoricalData[]
): Promise<ForecastResponse> {
  if (!apiKey || !model) {
    throw new Error("OpenRouter API key or model not configured");
  }

  const historicalPrompt = formatHistoricalDataForPrompt(historicalData);

  const prompt = `You are an AI sales forecasting and market analysis expert for a coffee shop POS system located in Davao City, Philippines.
Analyze the following historical sales data and provide demand forecasts for the next 7 days, as well as actionable market insights.

Historical Data (Last 30 days):
${historicalPrompt}

Based on this data and your knowledge of the area, provide a JSON response with forecasts for each product for the next 7 days, along with a list of market insights.
When generating market insights, consider:
1. Davao City, Philippines local context (weather, lifestyle).
2. The Philippines calendar (approaching holidays, paydays).
3. Demographic insights (e.g. what Professionals, Students, Families, etc., want this season). Analyze all demographics relevant to a coffee shop.
4. Current internet and social media trends in food and beverage.

Respond with ONLY valid JSON in this exact format (no markdown, no extra text):
{
  "marketInsights": [
    {
      "title": "Short catchy title (e.g., 'Professional Rush', 'Summer Coolers')",
      "content": "A concise, 1-2 sentence actionable insight.",
      "type": "trend" // must be one of: "trend", "demographic", "season", "calendar"
    }
  ],
  "forecasts": [
    {
      "date": "YYYY-MM-DD",
      "forecastedUnits": {
        "product_name_1": {
          "units": 45,
          "confidence": 0.85,
          "insight": "Expected increase due to typical weekend pattern"
        },
        "product_name_2": {
          "units": 32,
          "confidence": 0.78,
          "insight": "Stable demand continues"
        }
      }
    }
  ]
}`;

  const response = await fetch("https://openrouter.ai/api/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${apiKey}`,
      "HTTP-Referer": "https://pos.local",
      "X-Title": "POS Forecasting",
    },
    body: JSON.stringify({
      model,
      messages: [
        {
          role: "user",
          content: prompt,
        },
      ],
      temperature: 0.7,
      max_tokens: 8000,
    }),
  });

  if (!response.ok) {
    const errorText = await response.text();
    throw new Error(
      `OpenRouter API error: ${response.status} - ${errorText}`
    );
  }

  const data = (await response.json()) as any;
  const content = data.choices?.[0]?.message?.content || "";

  // Parse the JSON response
  let jsonResponse;
  try {
    // Try to extract JSON from the response (in case there's extra text)
    const jsonMatch = content.match(/\{[\s\S]*\}/);
    if (!jsonMatch) {
      throw new Error("No JSON found in response");
    }
    jsonResponse = JSON.parse(jsonMatch[0]);
  } catch (e) {
    console.error("Failed to parse AI response:", content);
    throw new Error("Failed to parse AI forecast response");
  }

  // Transform the response to our format
  const dailyForecasts: DailyForecast[] = [];

  for (const forecast of jsonResponse.forecasts || []) {
    const byProduct: ForecastResult[] = [];
    let totalUnits = 0;

    for (const [productName, prediction] of Object.entries(
      forecast.forecastedUnits || {}
    ) as any[]) {
      const units = prediction.units || 0;
      totalUnits += units;

      // Find matching product in historical data
      const histProduct = historicalData.find(
        (p) =>
          p.productName.toLowerCase() === productName.toLowerCase() ||
          p.productName.includes(productName)
      );

      byProduct.push({
        productId: histProduct?.productId || "",
        productName,
        forecastDate: forecast.date,
        forecastedUnits: units,
        confidence: prediction.confidence || 0.75,
        modelInsight: prediction.insight || "",
      });
    }

    dailyForecasts.push({
      date: forecast.date,
      totalForecastedUnits: totalUnits,
      byProduct,
    });
  }

  // Validate and parse market insights safely
  const rawInsights = jsonResponse.marketInsights;
  const marketInsights = Array.isArray(rawInsights)
    ? rawInsights.map((insight: any) => ({
        title: insight?.title || "Market Insight",
        content: insight?.content || "",
        type: ["trend", "demographic", "season", "calendar"].includes(insight?.type) 
          ? insight.type 
          : "trend",
      })).filter((i: any) => i.content.length > 0)
    : [];

  return { forecasts: dailyForecasts, insights: marketInsights };
}

/**
 * Calculate simple statistical forecast as fallback
 */
export function generateStatisticalForecast(
  historicalData: HistoricalData[]
): ForecastResponse {
  const forecastDays = 7;
  const forecasts: DailyForecast[] = [];

  // Generate dates for next 7 days
  for (let i = 1; i <= forecastDays; i++) {
    const forecastDate = new Date();
    forecastDate.setDate(forecastDate.getDate() + i);
    const dateStr = forecastDate.toISOString().split("T")[0];

    const byProduct: ForecastResult[] = [];
    let totalUnits = 0;

    for (const product of historicalData) {
      // Calculate average
      const avg =
        product.dailyData.reduce((sum, d) => sum + d.units, 0) /
        (product.dailyData.length || 1);

      // Add some variance based on day of week
      const dayOfWeek = forecastDate.getDay();
      const weekendMultiplier = dayOfWeek === 0 || dayOfWeek === 6 ? 1.15 : 1;
      const forecastedUnits = Math.round(avg * weekendMultiplier);

      totalUnits += forecastedUnits;

      byProduct.push({
        productId: product.productId,
        productName: product.productName,
        forecastDate: dateStr,
        forecastedUnits,
        confidence: 0.7,
        modelInsight: "Statistical average with weekend adjustment",
      });
    }

    forecasts.push({
      date: dateStr,
      totalForecastedUnits: totalUnits,
      byProduct,
    });
  }

    const defaultInsights: MarketInsight[] = [
      {
        title: "Upcoming Holiday Promo",
        content: "Consider offering a 10% discount on signature drinks this upcoming payday weekend to boost afternoon sales.",
        type: "calendar"
      },
      {
        title: "Professional Rush",
        content: "Professionals in Davao City tend to purchase more espresso-based drinks in the morning. Target them with a breakfast pastry combo.",
        type: "demographic"
      },
      {
        title: "Rainy Season Comforts",
        content: "Hot beverages typically see a 20% spike during the rainy season. Ensure sufficient stock of hot cups and emphasize hot lattes.",
        type: "season"
      },
      {
        title: "Matcha Social Trend",
        content: "Matcha-based drinks are currently trending heavily on local social media. Highlight your Matcha Cloud on your digital menus.",
        type: "trend"
      }
    ];

    return { forecasts, insights: defaultInsights };
}
