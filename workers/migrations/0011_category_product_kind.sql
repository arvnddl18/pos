ALTER TABLE categories ADD COLUMN product_kind TEXT NOT NULL DEFAULT 'cup' CHECK (product_kind IN ('cup', 'item'));

UPDATE categories SET product_kind = 'item' WHERE LOWER(TRIM(name)) = 'scrolls';
