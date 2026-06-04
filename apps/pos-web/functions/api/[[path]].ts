// Cloudflare Pages Function – reverse-proxy all /api/* requests to the Worker backend.
// PagesFunction type is provided by the Pages runtime; suppress IDE errors with the
// @ts-nocheck directive (wrangler compiles this separately from the app's tsconfig).

interface Env {}

export const onRequest: PagesFunction<Env> = async (context) => {
  const url = new URL(context.request.url);
  const target = new URL(
    `https://pos-api-production.arvnddl18.workers.dev${url.pathname}${url.search}`,
  );

  // Clone headers but fix Host to match the target (critical for Cloudflare routing)
  const headers = new Headers(context.request.headers);
  headers.set("Host", target.host);

  const method = context.request.method;

  // Build the outgoing request init
  const init: RequestInit = {
    method,
    headers,
    redirect: "manual",
  };

  // Forward the body for mutating methods
  if (!["GET", "HEAD"].includes(method)) {
    try {
      const body = await context.request.arrayBuffer();
      if (body.byteLength > 0) {
        init.body = body;
      }
    } catch {
      // Empty body is fine for some mutating requests
    }
  }

  try {
    const resp = await fetch(target.toString(), init);

    // Build a new response so we can adjust headers if needed
    const responseHeaders = new Headers(resp.headers);

    return new Response(resp.body, {
      status: resp.status,
      statusText: resp.statusText,
      headers: responseHeaders,
    });
  } catch (err: unknown) {
    const message = err instanceof Error ? err.message : String(err);
    return new Response(
      JSON.stringify({ error: "proxy_failed", message }),
      {
        status: 502,
        headers: { "Content-Type": "application/json" },
      },
    );
  }
};
