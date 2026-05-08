CREATE TABLE IF NOT EXISTS rate_limit_hits (
  key TEXT PRIMARY KEY,
  window_start TEXT NOT NULL,
  hit_count INTEGER NOT NULL,
  updated_at TEXT NOT NULL
);
