ALTER TABLE categories ADD COLUMN is_archived INTEGER NOT NULL DEFAULT 0;
ALTER TABLE categories ADD COLUMN archived_at TEXT;

ALTER TABLE tax_profiles ADD COLUMN is_archived INTEGER NOT NULL DEFAULT 0;
ALTER TABLE tax_profiles ADD COLUMN archived_at TEXT;

ALTER TABLE products ADD COLUMN is_archived INTEGER NOT NULL DEFAULT 0;
ALTER TABLE products ADD COLUMN archived_at TEXT;

ALTER TABLE modifier_groups ADD COLUMN is_archived INTEGER NOT NULL DEFAULT 0;
ALTER TABLE modifier_groups ADD COLUMN archived_at TEXT;

ALTER TABLE modifiers ADD COLUMN is_archived INTEGER NOT NULL DEFAULT 0;
ALTER TABLE modifiers ADD COLUMN archived_at TEXT;
