-- Core org / location / registers
CREATE TABLE organizations (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE locations (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE registers (
  id TEXT PRIMARY KEY,
  location_id TEXT NOT NULL REFERENCES locations(id),
  name TEXT NOT NULL,
  device_label TEXT,
  active INTEGER NOT NULL DEFAULT 1,
  created_at TEXT NOT NULL
);

-- Staff
CREATE TABLE users (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  staff_code TEXT NOT NULL,
  display_name TEXT NOT NULL,
  pin_hash TEXT NOT NULL,
  salt TEXT NOT NULL,
  role TEXT NOT NULL CHECK (role IN ('cashier','barista','manager','owner')),
  active INTEGER NOT NULL DEFAULT 1,
  created_at TEXT NOT NULL,
  UNIQUE (org_id, staff_code)
);

CREATE TABLE sessions (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  register_id TEXT REFERENCES registers(id),
  expires_at TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE INDEX idx_sessions_user ON sessions(user_id);

-- Audit
CREATE TABLE audit_events (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  user_id TEXT REFERENCES users(id),
  register_id TEXT REFERENCES registers(id),
  action TEXT NOT NULL,
  entity_type TEXT,
  entity_id TEXT,
  payload_json TEXT,
  idempotency_key TEXT,
  created_at TEXT NOT NULL
);

CREATE INDEX idx_audit_org_created ON audit_events(org_id, created_at);

-- Tax
CREATE TABLE tax_profiles (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  rate_bps INTEGER NOT NULL,
  created_at TEXT NOT NULL
);

-- Catalog
CREATE TABLE categories (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL
);

CREATE TABLE products (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  category_id TEXT REFERENCES categories(id),
  name TEXT NOT NULL,
  description TEXT,
  sku TEXT,
  barcode TEXT,
  price_centavos INTEGER NOT NULL,
  tax_profile_id TEXT REFERENCES tax_profiles(id),
  image_r2_key TEXT,
  is_active INTEGER NOT NULL DEFAULT 1,
  out_of_stock INTEGER NOT NULL DEFAULT 0,
  is_retail INTEGER NOT NULL DEFAULT 0,
  names_i18n_json TEXT,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE INDEX idx_products_org ON products(org_id);
CREATE INDEX idx_products_cat ON products(category_id);

CREATE TABLE menus (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  is_seasonal INTEGER NOT NULL DEFAULT 0,
  active INTEGER NOT NULL DEFAULT 1,
  schedule_json TEXT,
  created_at TEXT NOT NULL
);

CREATE TABLE menu_products (
  menu_id TEXT NOT NULL REFERENCES menus(id),
  product_id TEXT NOT NULL REFERENCES products(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (menu_id, product_id)
);

CREATE TABLE modifier_groups (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  required INTEGER NOT NULL DEFAULT 0,
  min_select INTEGER NOT NULL DEFAULT 0,
  max_select INTEGER NOT NULL DEFAULT 99,
  exclusive INTEGER NOT NULL DEFAULT 0,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL
);

CREATE TABLE modifiers (
  id TEXT PRIMARY KEY,
  modifier_group_id TEXT NOT NULL REFERENCES modifier_groups(id),
  name TEXT NOT NULL,
  price_adjust_centavos INTEGER NOT NULL DEFAULT 0,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL
);

CREATE TABLE product_modifier_groups (
  product_id TEXT NOT NULL REFERENCES products(id),
  modifier_group_id TEXT NOT NULL REFERENCES modifier_groups(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (product_id, modifier_group_id)
);

-- Time-based pricing & combos (Phase 2)
CREATE TABLE price_rules (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  product_id TEXT REFERENCES products(id),
  rule_type TEXT NOT NULL CHECK (rule_type IN ('happy_hour','combo','fixed_override')),
  starts_at TEXT,
  ends_at TEXT,
  days_of_week_json TEXT,
  value_json TEXT NOT NULL,
  active INTEGER NOT NULL DEFAULT 1,
  created_at TEXT NOT NULL
);

CREATE TABLE combo_components (
  id TEXT PRIMARY KEY,
  combo_product_id TEXT NOT NULL REFERENCES products(id),
  component_product_id TEXT NOT NULL REFERENCES products(id),
  qty INTEGER NOT NULL DEFAULT 1
);

-- Tickets
CREATE TABLE tickets (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  register_id TEXT NOT NULL REFERENCES registers(id),
  status TEXT NOT NULL CHECK (status IN ('open','parked','paid','voided')),
  ticket_type TEXT NOT NULL CHECK (ticket_type IN ('dine_in','takeout','delivery')),
  parked_label TEXT,
  table_ref TEXT,
  merged_from_json TEXT,
  notes TEXT,
  created_by TEXT REFERENCES users(id),
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE INDEX idx_tickets_org_status ON tickets(org_id, status);
CREATE INDEX idx_tickets_register ON tickets(register_id);

CREATE TABLE line_items (
  id TEXT PRIMARY KEY,
  ticket_id TEXT NOT NULL REFERENCES tickets(id),
  product_id TEXT NOT NULL REFERENCES products(id),
  qty INTEGER NOT NULL CHECK (qty > 0),
  unit_price_centavos INTEGER NOT NULL,
  discount_centavos INTEGER NOT NULL DEFAULT 0,
  line_notes TEXT,
  course INTEGER NOT NULL DEFAULT 0,
  voided INTEGER NOT NULL DEFAULT 0,
  void_reason TEXT,
  voided_by TEXT REFERENCES users(id),
  sort_order INTEGER NOT NULL DEFAULT 0,
  modifiers_json TEXT,
  created_at TEXT NOT NULL
);

CREATE INDEX idx_line_items_ticket ON line_items(ticket_id);

CREATE TABLE payments (
  id TEXT PRIMARY KEY,
  ticket_id TEXT NOT NULL REFERENCES tickets(id),
  tender_type TEXT NOT NULL CHECK (tender_type IN ('cash','e_wallet_personal','e_wallet_merchant')),
  amount_centavos INTEGER NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('pending_ewallet','completed','failed','cancelled')),
  idempotency_key TEXT,
  confirmed_by TEXT REFERENCES users(id),
  confirmed_at TEXT,
  reference_note TEXT,
  rounding_centavos INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_payments_idem ON payments(idempotency_key) WHERE idempotency_key IS NOT NULL;

CREATE TABLE refunds (
  id TEXT PRIMARY KEY,
  ticket_id TEXT NOT NULL REFERENCES tickets(id),
  payment_id TEXT REFERENCES payments(id),
  amount_centavos INTEGER NOT NULL,
  reason TEXT NOT NULL,
  note TEXT,
  created_by TEXT NOT NULL REFERENCES users(id),
  created_at TEXT NOT NULL
);

-- GCash / e-wallet settings (personal)
CREATE TABLE org_ewallet_settings (
  org_id TEXT PRIMARY KEY REFERENCES organizations(id),
  display_name TEXT,
  gcash_number TEXT,
  qr_r2_key TEXT,
  instructions TEXT,
  manager_confirm_above_centavos INTEGER,
  reference_required INTEGER NOT NULL DEFAULT 0,
  updated_at TEXT NOT NULL
);

-- Staff / drawer (Phase 2)
CREATE TABLE shifts (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  register_id TEXT REFERENCES registers(id),
  clock_in TEXT NOT NULL,
  clock_out TEXT,
  created_at TEXT NOT NULL
);

CREATE TABLE cash_drawer_sessions (
  id TEXT PRIMARY KEY,
  register_id TEXT NOT NULL REFERENCES registers(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  opened_at TEXT NOT NULL,
  closed_at TEXT,
  opening_float_centavos INTEGER NOT NULL DEFAULT 0,
  closing_count_centavos INTEGER,
  expected_centavos INTEGER,
  notes TEXT,
  created_at TEXT NOT NULL
);

CREATE TABLE drawer_open_events (
  id TEXT PRIMARY KEY,
  drawer_session_id TEXT NOT NULL REFERENCES cash_drawer_sessions(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  reason TEXT NOT NULL,
  created_at TEXT NOT NULL
);

-- Inventory (Phase 3)
CREATE TABLE ingredients (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  unit TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE recipes (
  id TEXT PRIMARY KEY,
  product_id TEXT NOT NULL REFERENCES products(id),
  ingredient_id TEXT NOT NULL REFERENCES ingredients(id),
  qty_per_unit REAL NOT NULL
);

CREATE TABLE retail_skus (
  product_id TEXT PRIMARY KEY REFERENCES products(id),
  on_hand REAL NOT NULL DEFAULT 0,
  reorder_level REAL NOT NULL DEFAULT 0,
  updated_at TEXT NOT NULL
);

CREATE TABLE stock_movements (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  product_id TEXT REFERENCES products(id),
  ingredient_id TEXT REFERENCES ingredients(id),
  delta REAL NOT NULL,
  reason TEXT NOT NULL,
  ref_ticket_id TEXT,
  created_by TEXT REFERENCES users(id),
  created_at TEXT NOT NULL
);

CREATE TABLE suppliers (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  name TEXT NOT NULL,
  contact_json TEXT,
  created_at TEXT NOT NULL
);

CREATE TABLE purchase_orders (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  supplier_id TEXT REFERENCES suppliers(id),
  status TEXT NOT NULL,
  lines_json TEXT NOT NULL,
  created_at TEXT NOT NULL
);

CREATE TABLE waste_events (
  id TEXT PRIMARY KEY,
  org_id TEXT NOT NULL REFERENCES organizations(id),
  ingredient_id TEXT REFERENCES ingredients(id),
  product_id TEXT REFERENCES products(id),
  qty REAL NOT NULL,
  reason TEXT NOT NULL,
  created_by TEXT REFERENCES users(id),
  created_at TEXT NOT NULL
);

-- KDS cursor / ordering helper
CREATE TABLE ticket_kds_meta (
  ticket_id TEXT PRIMARY KEY REFERENCES tickets(id),
  bump_order INTEGER NOT NULL DEFAULT 0,
  station TEXT,
  updated_at TEXT NOT NULL
);
