export type Env = {
  DB: D1Database;
  R2_BUCKET: R2Bucket;
  SESSION_SECRET?: string;
  ENVIRONMENT?: string;
  /** Comma-separated exact origins (e.g. https://pos.example.com) for mutating API requests */
  ALLOWED_ORIGINS?: string;
};
