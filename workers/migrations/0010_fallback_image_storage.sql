-- Create uploaded_assets table for fallback image storage
CREATE TABLE IF NOT EXISTS uploaded_assets (
  key TEXT PRIMARY KEY,
  content_type TEXT NOT NULL,
  data BLOB NOT NULL,
  created_at TEXT NOT NULL
);
