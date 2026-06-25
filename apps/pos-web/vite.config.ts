import path from "node:path";
import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import { VitePWA } from "vite-plugin-pwa";

export default defineConfig({
  resolve: {
    alias: {
      "@pos/shared": path.resolve(__dirname, "../../packages/shared/src/index.ts"),
    },
  },
  plugins: [
    react(),
    VitePWA({
      registerType: "autoUpdate",
      workbox: {
        skipWaiting: true,
        clientsClaim: true,
      },
      includeAssets: ["favicon.svg"],
      manifest: {
        name: "Coffee POS",
        short_name: "POS",
        start_url: "/",
        display: "standalone",
        background_color: "#0f0f0f",
        theme_color: "#0f0f0f",
        icons: [
          { src: "/favicon.svg", sizes: "any", type: "image/svg+xml", purpose: "any" },
        ],
      },
    }),
  ],
  server: {
    port: 5173,
    proxy: {
      "/api": { target: "http://127.0.0.1:8787", changeOrigin: true, secure: false },
    },
  },
  build: {
    outDir: "dist",
  },
});
