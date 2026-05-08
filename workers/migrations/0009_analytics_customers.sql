-- Create customers table
CREATE TABLE customers (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT,
  phone TEXT,
  created_at TEXT NOT NULL,
  last_visit_at TEXT
);

CREATE INDEX idx_customers_org ON customers(org_id);

-- Alter tickets table to support demographic colors and feedback
ALTER TABLE tickets ADD COLUMN customer_id TEXT REFERENCES customers(id);
ALTER TABLE tickets ADD COLUMN demographic_color TEXT;
ALTER TABLE tickets ADD COLUMN feedback_rating INTEGER;
ALTER TABLE tickets ADD COLUMN feedback_notes TEXT;

-- Create feedback table (optional, but good for detailed tracking if we want separate from tickets, 
-- but since we added to tickets, we can just use tickets. I'll just stick to the tickets columns to avoid redundancy).
