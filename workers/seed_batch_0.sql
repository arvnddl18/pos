
-- Create category and products for historical data if they don't exist
INSERT OR IGNORE INTO categories (id, org_id, name, sort_order, created_at)
SELECT 'cat-coffee-hist', id, 'Coffee', 1, '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO tax_profiles (id, org_id, name, rate_bps, created_at)
SELECT 'tax-standard-hist', id, 'Standard 12%', 1200, '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-americano', id, 'cat-coffee-hist', 'Americano (Davao Roast)', 12000, 'tax-standard-hist', 1, 0, 0, '2025-10-01T00:00:00.000Z', '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-latte', id, 'cat-coffee-hist', 'Mt. Apo Latte', 15000, 'tax-standard-hist', 1, 0, 0, '2025-10-01T00:00:00.000Z', '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-cappuccino', id, 'cat-coffee-hist', 'Mindanao Cappuccino', 14500, 'tax-standard-hist', 1, 0, 0, '2025-10-01T00:00:00.000Z', '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-mocha', id, 'cat-coffee-hist', 'Durian Mocha', 16500, 'tax-standard-hist', 1, 0, 0, '2025-10-01T00:00:00.000Z', '2025-10-01T00:00:00.000Z' FROM organizations LIMIT 1;
INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-1', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-10-30T18:29:45.000Z', '2025-10-30T18:29:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-1-1', 'hist-ticket-0-1', 'prod-americano', 1, 12000, 0, '2025-10-30T18:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-1-2', 'hist-ticket-0-1', 'prod-americano', 1, 12000, 0, '2025-10-30T18:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-1-3', 'hist-ticket-0-1', 'prod-mocha', 1, 16500, 0, '2025-10-30T18:29:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-1', 'hist-ticket-0-1', 'cash', 40500, 'completed', '2025-10-30T18:29:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-2', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-10-30T14:20:20.000Z', '2025-10-30T14:20:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-2-1', 'hist-ticket-0-2', 'prod-mocha', 1, 16500, 0, '2025-10-30T14:20:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-2-2', 'hist-ticket-0-2', 'prod-latte', 1, 15000, 0, '2025-10-30T14:20:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-2-3', 'hist-ticket-0-2', 'prod-latte', 1, 15000, 0, '2025-10-30T14:20:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-2', 'hist-ticket-0-2', 'cash', 46500, 'completed', '2025-10-30T14:20:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-3', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-10-30T14:53:41.000Z', '2025-10-30T14:53:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-3-1', 'hist-ticket-0-3', 'prod-americano', 1, 12000, 0, '2025-10-30T14:53:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-3', 'hist-ticket-0-3', 'cash', 12000, 'completed', '2025-10-30T14:53:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-4', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-10-30T09:02:42.000Z', '2025-10-30T09:02:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-4-1', 'hist-ticket-0-4', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T09:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-4-2', 'hist-ticket-0-4', 'prod-americano', 1, 12000, 0, '2025-10-30T09:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-4-3', 'hist-ticket-0-4', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T09:02:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-4', 'hist-ticket-0-4', 'cash', 41000, 'completed', '2025-10-30T09:02:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-5', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-10-30T18:33:53.000Z', '2025-10-30T18:33:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-5-1', 'hist-ticket-0-5', 'prod-latte', 1, 15000, 0, '2025-10-30T18:33:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-5-2', 'hist-ticket-0-5', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T18:33:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-5-3', 'hist-ticket-0-5', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T18:33:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-5-4', 'hist-ticket-0-5', 'prod-mocha', 1, 16500, 0, '2025-10-30T18:33:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-5', 'hist-ticket-0-5', 'cash', 60500, 'completed', '2025-10-30T18:33:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-6', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-30T19:59:11.000Z', '2025-10-30T19:59:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-6-1', 'hist-ticket-0-6', 'prod-latte', 1, 15000, 0, '2025-10-30T19:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-6-2', 'hist-ticket-0-6', 'prod-latte', 1, 15000, 0, '2025-10-30T19:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-6-3', 'hist-ticket-0-6', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T19:59:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-6', 'hist-ticket-0-6', 'cash', 44500, 'completed', '2025-10-30T19:59:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-7', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-30T10:36:01.000Z', '2025-10-30T10:36:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-7-1', 'hist-ticket-0-7', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T10:36:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-7', 'hist-ticket-0-7', 'cash', 14500, 'completed', '2025-10-30T10:36:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-8', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-30T19:58:34.000Z', '2025-10-30T19:58:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-8-1', 'hist-ticket-0-8', 'prod-latte', 1, 15000, 0, '2025-10-30T19:58:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-8-2', 'hist-ticket-0-8', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T19:58:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-8', 'hist-ticket-0-8', 'cash', 29500, 'completed', '2025-10-30T19:58:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-9', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-10-30T13:08:37.000Z', '2025-10-30T13:08:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-9-1', 'hist-ticket-0-9', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T13:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-9-2', 'hist-ticket-0-9', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T13:08:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-9', 'hist-ticket-0-9', 'cash', 29000, 'completed', '2025-10-30T13:08:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-10', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-10-30T11:17:53.000Z', '2025-10-30T11:17:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-10-1', 'hist-ticket-0-10', 'prod-americano', 1, 12000, 0, '2025-10-30T11:17:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-10-2', 'hist-ticket-0-10', 'prod-americano', 1, 12000, 0, '2025-10-30T11:17:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-10-3', 'hist-ticket-0-10', 'prod-mocha', 1, 16500, 0, '2025-10-30T11:17:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-10-4', 'hist-ticket-0-10', 'prod-mocha', 1, 16500, 0, '2025-10-30T11:17:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-10', 'hist-ticket-0-10', 'cash', 57000, 'completed', '2025-10-30T11:17:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-11', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-10-30T16:58:21.000Z', '2025-10-30T16:58:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-11-1', 'hist-ticket-0-11', 'prod-latte', 1, 15000, 0, '2025-10-30T16:58:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-11', 'hist-ticket-0-11', 'cash', 15000, 'completed', '2025-10-30T16:58:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-12', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-10-30T18:26:17.000Z', '2025-10-30T18:26:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-12-1', 'hist-ticket-0-12', 'prod-americano', 1, 12000, 0, '2025-10-30T18:26:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-12-2', 'hist-ticket-0-12', 'prod-mocha', 1, 16500, 0, '2025-10-30T18:26:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-12', 'hist-ticket-0-12', 'cash', 28500, 'completed', '2025-10-30T18:26:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-13', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-10-30T11:47:03.000Z', '2025-10-30T11:47:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-13-1', 'hist-ticket-0-13', 'prod-latte', 1, 15000, 0, '2025-10-30T11:47:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-13-2', 'hist-ticket-0-13', 'prod-mocha', 1, 16500, 0, '2025-10-30T11:47:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-13-3', 'hist-ticket-0-13', 'prod-mocha', 1, 16500, 0, '2025-10-30T11:47:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-13-4', 'hist-ticket-0-13', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T11:47:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-13', 'hist-ticket-0-13', 'cash', 62500, 'completed', '2025-10-30T11:47:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-14', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-10-30T17:08:40.000Z', '2025-10-30T17:08:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-14-1', 'hist-ticket-0-14', 'prod-mocha', 1, 16500, 0, '2025-10-30T17:08:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-14', 'hist-ticket-0-14', 'cash', 16500, 'completed', '2025-10-30T17:08:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-15', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-10-30T18:13:36.000Z', '2025-10-30T18:13:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-15-1', 'hist-ticket-0-15', 'prod-latte', 1, 15000, 0, '2025-10-30T18:13:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-15-2', 'hist-ticket-0-15', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T18:13:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-15', 'hist-ticket-0-15', 'cash', 29500, 'completed', '2025-10-30T18:13:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-16', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-10-30T12:55:39.000Z', '2025-10-30T12:55:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-16-1', 'hist-ticket-0-16', 'prod-americano', 1, 12000, 0, '2025-10-30T12:55:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-16', 'hist-ticket-0-16', 'cash', 12000, 'completed', '2025-10-30T12:55:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-17', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-10-30T13:40:04.000Z', '2025-10-30T13:40:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-17-1', 'hist-ticket-0-17', 'prod-mocha', 1, 16500, 0, '2025-10-30T13:40:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-17-2', 'hist-ticket-0-17', 'prod-cappuccino', 1, 14500, 0, '2025-10-30T13:40:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-17-3', 'hist-ticket-0-17', 'prod-mocha', 1, 16500, 0, '2025-10-30T13:40:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-17', 'hist-ticket-0-17', 'cash', 47500, 'completed', '2025-10-30T13:40:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-0-18', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-10-30T15:55:09.000Z', '2025-10-30T15:55:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-18-1', 'hist-ticket-0-18', 'prod-americano', 1, 12000, 0, '2025-10-30T15:55:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-18-2', 'hist-ticket-0-18', 'prod-latte', 1, 15000, 0, '2025-10-30T15:55:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-0-18-3', 'hist-ticket-0-18', 'prod-mocha', 1, 16500, 0, '2025-10-30T15:55:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-0-18', 'hist-ticket-0-18', 'cash', 43500, 'completed', '2025-10-30T15:55:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-19', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2025-10-31T14:09:59.000Z', '2025-10-31T14:09:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-19-1', 'hist-ticket-1-19', 'prod-mocha', 1, 16500, 0, '2025-10-31T14:09:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-19-2', 'hist-ticket-1-19', 'prod-americano', 1, 12000, 0, '2025-10-31T14:09:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-19', 'hist-ticket-1-19', 'cash', 28500, 'completed', '2025-10-31T14:09:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-20', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-31T18:55:32.000Z', '2025-10-31T18:55:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-20-1', 'hist-ticket-1-20', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T18:55:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-20', 'hist-ticket-1-20', 'cash', 14500, 'completed', '2025-10-31T18:55:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-21', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-10-31T12:09:02.000Z', '2025-10-31T12:09:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-21-1', 'hist-ticket-1-21', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T12:09:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-21', 'hist-ticket-1-21', 'cash', 14500, 'completed', '2025-10-31T12:09:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-22', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-10-31T16:03:00.000Z', '2025-10-31T16:03:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-22-1', 'hist-ticket-1-22', 'prod-mocha', 1, 16500, 0, '2025-10-31T16:03:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-22', 'hist-ticket-1-22', 'cash', 16500, 'completed', '2025-10-31T16:03:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-23', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-10-31T12:08:37.000Z', '2025-10-31T12:08:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-23-1', 'hist-ticket-1-23', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T12:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-23-2', 'hist-ticket-1-23', 'prod-latte', 1, 15000, 0, '2025-10-31T12:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-23-3', 'hist-ticket-1-23', 'prod-latte', 1, 15000, 0, '2025-10-31T12:08:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-23', 'hist-ticket-1-23', 'cash', 44500, 'completed', '2025-10-31T12:08:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-24', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-31T14:09:50.000Z', '2025-10-31T14:09:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-24-1', 'hist-ticket-1-24', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T14:09:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-24-2', 'hist-ticket-1-24', 'prod-latte', 1, 15000, 0, '2025-10-31T14:09:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-24', 'hist-ticket-1-24', 'cash', 29500, 'completed', '2025-10-31T14:09:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-25', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-10-31T18:09:08.000Z', '2025-10-31T18:09:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-25-1', 'hist-ticket-1-25', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T18:09:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-25-2', 'hist-ticket-1-25', 'prod-americano', 1, 12000, 0, '2025-10-31T18:09:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-25', 'hist-ticket-1-25', 'cash', 26500, 'completed', '2025-10-31T18:09:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-26', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-10-31T19:13:58.000Z', '2025-10-31T19:13:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-26-1', 'hist-ticket-1-26', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T19:13:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-26-2', 'hist-ticket-1-26', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T19:13:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-26-3', 'hist-ticket-1-26', 'prod-americano', 1, 12000, 0, '2025-10-31T19:13:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-26', 'hist-ticket-1-26', 'cash', 41000, 'completed', '2025-10-31T19:13:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-27', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-10-31T13:27:20.000Z', '2025-10-31T13:27:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-27-1', 'hist-ticket-1-27', 'prod-latte', 1, 15000, 0, '2025-10-31T13:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-27-2', 'hist-ticket-1-27', 'prod-americano', 1, 12000, 0, '2025-10-31T13:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-27-3', 'hist-ticket-1-27', 'prod-latte', 1, 15000, 0, '2025-10-31T13:27:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-27', 'hist-ticket-1-27', 'cash', 42000, 'completed', '2025-10-31T13:27:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-28', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-10-31T10:50:08.000Z', '2025-10-31T10:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-28-1', 'hist-ticket-1-28', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T10:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-28-2', 'hist-ticket-1-28', 'prod-americano', 1, 12000, 0, '2025-10-31T10:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-28-3', 'hist-ticket-1-28', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T10:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-28', 'hist-ticket-1-28', 'cash', 41000, 'completed', '2025-10-31T10:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-29', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-10-31T13:16:29.000Z', '2025-10-31T13:16:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-29-1', 'hist-ticket-1-29', 'prod-mocha', 1, 16500, 0, '2025-10-31T13:16:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-29-2', 'hist-ticket-1-29', 'prod-latte', 1, 15000, 0, '2025-10-31T13:16:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-29-3', 'hist-ticket-1-29', 'prod-americano', 1, 12000, 0, '2025-10-31T13:16:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-29', 'hist-ticket-1-29', 'cash', 43500, 'completed', '2025-10-31T13:16:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-30', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-10-31T14:05:51.000Z', '2025-10-31T14:05:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-30-1', 'hist-ticket-1-30', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T14:05:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-30', 'hist-ticket-1-30', 'cash', 14500, 'completed', '2025-10-31T14:05:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-31', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-10-31T18:29:47.000Z', '2025-10-31T18:29:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-31-1', 'hist-ticket-1-31', 'prod-latte', 1, 15000, 0, '2025-10-31T18:29:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-31-2', 'hist-ticket-1-31', 'prod-mocha', 1, 16500, 0, '2025-10-31T18:29:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-31', 'hist-ticket-1-31', 'cash', 31500, 'completed', '2025-10-31T18:29:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-32', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-10-31T11:46:51.000Z', '2025-10-31T11:46:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-32-1', 'hist-ticket-1-32', 'prod-latte', 1, 15000, 0, '2025-10-31T11:46:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-32-2', 'hist-ticket-1-32', 'prod-latte', 1, 15000, 0, '2025-10-31T11:46:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-32-3', 'hist-ticket-1-32', 'prod-latte', 1, 15000, 0, '2025-10-31T11:46:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-32', 'hist-ticket-1-32', 'cash', 45000, 'completed', '2025-10-31T11:46:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-33', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-10-31T15:14:14.000Z', '2025-10-31T15:14:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-33-1', 'hist-ticket-1-33', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T15:14:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-33-2', 'hist-ticket-1-33', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T15:14:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-33-3', 'hist-ticket-1-33', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T15:14:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-33', 'hist-ticket-1-33', 'cash', 43500, 'completed', '2025-10-31T15:14:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-34', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-10-31T16:32:23.000Z', '2025-10-31T16:32:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-34-1', 'hist-ticket-1-34', 'prod-latte', 1, 15000, 0, '2025-10-31T16:32:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-34-2', 'hist-ticket-1-34', 'prod-mocha', 1, 16500, 0, '2025-10-31T16:32:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-34-3', 'hist-ticket-1-34', 'prod-mocha', 1, 16500, 0, '2025-10-31T16:32:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-34', 'hist-ticket-1-34', 'cash', 48000, 'completed', '2025-10-31T16:32:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-35', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-10-31T17:37:10.000Z', '2025-10-31T17:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-35-1', 'hist-ticket-1-35', 'prod-latte', 1, 15000, 0, '2025-10-31T17:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-35', 'hist-ticket-1-35', 'cash', 15000, 'completed', '2025-10-31T17:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-36', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-10-31T08:14:02.000Z', '2025-10-31T08:14:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-36-1', 'hist-ticket-1-36', 'prod-latte', 1, 15000, 0, '2025-10-31T08:14:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-36', 'hist-ticket-1-36', 'cash', 15000, 'completed', '2025-10-31T08:14:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-37', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-10-31T19:29:26.000Z', '2025-10-31T19:29:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-37-1', 'hist-ticket-1-37', 'prod-mocha', 1, 16500, 0, '2025-10-31T19:29:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-37-2', 'hist-ticket-1-37', 'prod-mocha', 1, 16500, 0, '2025-10-31T19:29:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-37', 'hist-ticket-1-37', 'cash', 33000, 'completed', '2025-10-31T19:29:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-38', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-10-31T11:11:27.000Z', '2025-10-31T11:11:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-38-1', 'hist-ticket-1-38', 'prod-americano', 1, 12000, 0, '2025-10-31T11:11:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-38', 'hist-ticket-1-38', 'cash', 12000, 'completed', '2025-10-31T11:11:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-39', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-10-31T08:43:52.000Z', '2025-10-31T08:43:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-39-1', 'hist-ticket-1-39', 'prod-cappuccino', 1, 14500, 0, '2025-10-31T08:43:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-39-2', 'hist-ticket-1-39', 'prod-mocha', 1, 16500, 0, '2025-10-31T08:43:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-39', 'hist-ticket-1-39', 'cash', 31000, 'completed', '2025-10-31T08:43:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-1-40', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-10-31T11:58:40.000Z', '2025-10-31T11:58:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-40-1', 'hist-ticket-1-40', 'prod-americano', 1, 12000, 0, '2025-10-31T11:58:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-1-40-2', 'hist-ticket-1-40', 'prod-mocha', 1, 16500, 0, '2025-10-31T11:58:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-1-40', 'hist-ticket-1-40', 'cash', 28500, 'completed', '2025-10-31T11:58:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-41', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-01T12:17:25.000Z', '2025-11-01T12:17:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-41-1', 'hist-ticket-2-41', 'prod-americano', 1, 12000, 0, '2025-11-01T12:17:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-41-2', 'hist-ticket-2-41', 'prod-latte', 1, 15000, 0, '2025-11-01T12:17:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-41-3', 'hist-ticket-2-41', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T12:17:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-41', 'hist-ticket-2-41', 'cash', 41500, 'completed', '2025-11-01T12:17:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-42', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-01T11:01:09.000Z', '2025-11-01T11:01:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-42-1', 'hist-ticket-2-42', 'prod-mocha', 1, 16500, 0, '2025-11-01T11:01:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-42-2', 'hist-ticket-2-42', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T11:01:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-42-3', 'hist-ticket-2-42', 'prod-latte', 1, 15000, 0, '2025-11-01T11:01:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-42', 'hist-ticket-2-42', 'cash', 46000, 'completed', '2025-11-01T11:01:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-43', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-01T15:31:46.000Z', '2025-11-01T15:31:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-43-1', 'hist-ticket-2-43', 'prod-americano', 1, 12000, 0, '2025-11-01T15:31:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-43', 'hist-ticket-2-43', 'cash', 12000, 'completed', '2025-11-01T15:31:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-44', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-01T11:06:22.000Z', '2025-11-01T11:06:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-44-1', 'hist-ticket-2-44', 'prod-latte', 1, 15000, 0, '2025-11-01T11:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-44-2', 'hist-ticket-2-44', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T11:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-44-3', 'hist-ticket-2-44', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T11:06:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-44', 'hist-ticket-2-44', 'cash', 44000, 'completed', '2025-11-01T11:06:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-45', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-11-01T10:29:32.000Z', '2025-11-01T10:29:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-45-1', 'hist-ticket-2-45', 'prod-latte', 1, 15000, 0, '2025-11-01T10:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-45-2', 'hist-ticket-2-45', 'prod-mocha', 1, 16500, 0, '2025-11-01T10:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-45-3', 'hist-ticket-2-45', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T10:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-45-4', 'hist-ticket-2-45', 'prod-mocha', 1, 16500, 0, '2025-11-01T10:29:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-45', 'hist-ticket-2-45', 'cash', 62500, 'completed', '2025-11-01T10:29:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-46', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-01T14:47:12.000Z', '2025-11-01T14:47:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-46-1', 'hist-ticket-2-46', 'prod-mocha', 1, 16500, 0, '2025-11-01T14:47:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-46-2', 'hist-ticket-2-46', 'prod-mocha', 1, 16500, 0, '2025-11-01T14:47:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-46', 'hist-ticket-2-46', 'cash', 33000, 'completed', '2025-11-01T14:47:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-47', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-01T18:24:32.000Z', '2025-11-01T18:24:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-47-1', 'hist-ticket-2-47', 'prod-americano', 1, 12000, 0, '2025-11-01T18:24:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-47', 'hist-ticket-2-47', 'cash', 12000, 'completed', '2025-11-01T18:24:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-48', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-01T15:52:49.000Z', '2025-11-01T15:52:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-48-1', 'hist-ticket-2-48', 'prod-americano', 1, 12000, 0, '2025-11-01T15:52:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-48-2', 'hist-ticket-2-48', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T15:52:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-48-3', 'hist-ticket-2-48', 'prod-americano', 1, 12000, 0, '2025-11-01T15:52:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-48', 'hist-ticket-2-48', 'cash', 38500, 'completed', '2025-11-01T15:52:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-49', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-01T08:20:33.000Z', '2025-11-01T08:20:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-49-1', 'hist-ticket-2-49', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T08:20:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-49', 'hist-ticket-2-49', 'cash', 14500, 'completed', '2025-11-01T08:20:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-50', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-01T09:36:11.000Z', '2025-11-01T09:36:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-50-1', 'hist-ticket-2-50', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T09:36:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-50-2', 'hist-ticket-2-50', 'prod-latte', 1, 15000, 0, '2025-11-01T09:36:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-50-3', 'hist-ticket-2-50', 'prod-mocha', 1, 16500, 0, '2025-11-01T09:36:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-50-4', 'hist-ticket-2-50', 'prod-americano', 1, 12000, 0, '2025-11-01T09:36:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-50', 'hist-ticket-2-50', 'cash', 58000, 'completed', '2025-11-01T09:36:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-51', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-01T18:40:39.000Z', '2025-11-01T18:40:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-51-1', 'hist-ticket-2-51', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T18:40:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-51-2', 'hist-ticket-2-51', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T18:40:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-51-3', 'hist-ticket-2-51', 'prod-mocha', 1, 16500, 0, '2025-11-01T18:40:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-51', 'hist-ticket-2-51', 'cash', 45500, 'completed', '2025-11-01T18:40:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-52', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-01T16:25:36.000Z', '2025-11-01T16:25:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-52-1', 'hist-ticket-2-52', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T16:25:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-52-2', 'hist-ticket-2-52', 'prod-latte', 1, 15000, 0, '2025-11-01T16:25:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-52', 'hist-ticket-2-52', 'cash', 29500, 'completed', '2025-11-01T16:25:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-53', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-01T14:34:16.000Z', '2025-11-01T14:34:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-53-1', 'hist-ticket-2-53', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T14:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-53-2', 'hist-ticket-2-53', 'prod-mocha', 1, 16500, 0, '2025-11-01T14:34:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-53', 'hist-ticket-2-53', 'cash', 31000, 'completed', '2025-11-01T14:34:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-54', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-01T13:09:57.000Z', '2025-11-01T13:09:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-54-1', 'hist-ticket-2-54', 'prod-americano', 1, 12000, 0, '2025-11-01T13:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-54-2', 'hist-ticket-2-54', 'prod-americano', 1, 12000, 0, '2025-11-01T13:09:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-54-3', 'hist-ticket-2-54', 'prod-americano', 1, 12000, 0, '2025-11-01T13:09:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-54', 'hist-ticket-2-54', 'cash', 36000, 'completed', '2025-11-01T13:09:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-55', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-01T18:12:13.000Z', '2025-11-01T18:12:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-55-1', 'hist-ticket-2-55', 'prod-latte', 1, 15000, 0, '2025-11-01T18:12:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-55-2', 'hist-ticket-2-55', 'prod-latte', 1, 15000, 0, '2025-11-01T18:12:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-55-3', 'hist-ticket-2-55', 'prod-americano', 1, 12000, 0, '2025-11-01T18:12:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-55-4', 'hist-ticket-2-55', 'prod-latte', 1, 15000, 0, '2025-11-01T18:12:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-55', 'hist-ticket-2-55', 'cash', 57000, 'completed', '2025-11-01T18:12:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-56', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-11-01T19:47:10.000Z', '2025-11-01T19:47:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-56-1', 'hist-ticket-2-56', 'prod-latte', 1, 15000, 0, '2025-11-01T19:47:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-56', 'hist-ticket-2-56', 'cash', 15000, 'completed', '2025-11-01T19:47:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-57', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-01T12:36:34.000Z', '2025-11-01T12:36:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-57-1', 'hist-ticket-2-57', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T12:36:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-57', 'hist-ticket-2-57', 'cash', 14500, 'completed', '2025-11-01T12:36:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-58', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-01T16:25:08.000Z', '2025-11-01T16:25:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-58-1', 'hist-ticket-2-58', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T16:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-58-2', 'hist-ticket-2-58', 'prod-mocha', 1, 16500, 0, '2025-11-01T16:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-58-3', 'hist-ticket-2-58', 'prod-americano', 1, 12000, 0, '2025-11-01T16:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-58-4', 'hist-ticket-2-58', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T16:25:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-58', 'hist-ticket-2-58', 'cash', 57500, 'completed', '2025-11-01T16:25:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-59', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-01T13:58:57.000Z', '2025-11-01T13:58:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-59-1', 'hist-ticket-2-59', 'prod-americano', 1, 12000, 0, '2025-11-01T13:58:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-59', 'hist-ticket-2-59', 'cash', 12000, 'completed', '2025-11-01T13:58:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-60', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-01T08:40:54.000Z', '2025-11-01T08:40:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-60-1', 'hist-ticket-2-60', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T08:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-60-2', 'hist-ticket-2-60', 'prod-americano', 1, 12000, 0, '2025-11-01T08:40:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-60', 'hist-ticket-2-60', 'cash', 26500, 'completed', '2025-11-01T08:40:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-61', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-01T10:39:02.000Z', '2025-11-01T10:39:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-61-1', 'hist-ticket-2-61', 'prod-latte', 1, 15000, 0, '2025-11-01T10:39:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-61-2', 'hist-ticket-2-61', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T10:39:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-61', 'hist-ticket-2-61', 'cash', 29500, 'completed', '2025-11-01T10:39:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-62', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-01T10:33:54.000Z', '2025-11-01T10:33:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-62-1', 'hist-ticket-2-62', 'prod-americano', 1, 12000, 0, '2025-11-01T10:33:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-62-2', 'hist-ticket-2-62', 'prod-latte', 1, 15000, 0, '2025-11-01T10:33:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-62', 'hist-ticket-2-62', 'cash', 27000, 'completed', '2025-11-01T10:33:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-63', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-11-01T19:33:24.000Z', '2025-11-01T19:33:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-63-1', 'hist-ticket-2-63', 'prod-americano', 1, 12000, 0, '2025-11-01T19:33:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-63-2', 'hist-ticket-2-63', 'prod-latte', 1, 15000, 0, '2025-11-01T19:33:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-63', 'hist-ticket-2-63', 'cash', 27000, 'completed', '2025-11-01T19:33:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-64', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-11-01T13:02:28.000Z', '2025-11-01T13:02:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-64-1', 'hist-ticket-2-64', 'prod-latte', 1, 15000, 0, '2025-11-01T13:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-64-2', 'hist-ticket-2-64', 'prod-latte', 1, 15000, 0, '2025-11-01T13:02:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-64', 'hist-ticket-2-64', 'cash', 30000, 'completed', '2025-11-01T13:02:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-65', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-11-01T12:07:46.000Z', '2025-11-01T12:07:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-65-1', 'hist-ticket-2-65', 'prod-americano', 1, 12000, 0, '2025-11-01T12:07:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-65-2', 'hist-ticket-2-65', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T12:07:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-65-3', 'hist-ticket-2-65', 'prod-latte', 1, 15000, 0, '2025-11-01T12:07:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-65', 'hist-ticket-2-65', 'cash', 41500, 'completed', '2025-11-01T12:07:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-66', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-01T13:51:35.000Z', '2025-11-01T13:51:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-66-1', 'hist-ticket-2-66', 'prod-americano', 1, 12000, 0, '2025-11-01T13:51:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-66-2', 'hist-ticket-2-66', 'prod-latte', 1, 15000, 0, '2025-11-01T13:51:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-66-3', 'hist-ticket-2-66', 'prod-latte', 1, 15000, 0, '2025-11-01T13:51:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-66', 'hist-ticket-2-66', 'cash', 42000, 'completed', '2025-11-01T13:51:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-67', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-01T19:39:21.000Z', '2025-11-01T19:39:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-67-1', 'hist-ticket-2-67', 'prod-latte', 1, 15000, 0, '2025-11-01T19:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-67-2', 'hist-ticket-2-67', 'prod-latte', 1, 15000, 0, '2025-11-01T19:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-67-3', 'hist-ticket-2-67', 'prod-latte', 1, 15000, 0, '2025-11-01T19:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-67-4', 'hist-ticket-2-67', 'prod-mocha', 1, 16500, 0, '2025-11-01T19:39:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-67', 'hist-ticket-2-67', 'cash', 61500, 'completed', '2025-11-01T19:39:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-68', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-01T15:48:22.000Z', '2025-11-01T15:48:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-68-1', 'hist-ticket-2-68', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T15:48:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-68', 'hist-ticket-2-68', 'cash', 14500, 'completed', '2025-11-01T15:48:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-69', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-01T10:10:54.000Z', '2025-11-01T10:10:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-69-1', 'hist-ticket-2-69', 'prod-americano', 1, 12000, 0, '2025-11-01T10:10:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-69-2', 'hist-ticket-2-69', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T10:10:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-69', 'hist-ticket-2-69', 'cash', 26500, 'completed', '2025-11-01T10:10:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-70', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-01T13:17:07.000Z', '2025-11-01T13:17:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-70-1', 'hist-ticket-2-70', 'prod-mocha', 1, 16500, 0, '2025-11-01T13:17:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-70', 'hist-ticket-2-70', 'cash', 16500, 'completed', '2025-11-01T13:17:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-71', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-01T08:27:39.000Z', '2025-11-01T08:27:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-71-1', 'hist-ticket-2-71', 'prod-americano', 1, 12000, 0, '2025-11-01T08:27:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-71-2', 'hist-ticket-2-71', 'prod-americano', 1, 12000, 0, '2025-11-01T08:27:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-71-3', 'hist-ticket-2-71', 'prod-latte', 1, 15000, 0, '2025-11-01T08:27:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-71', 'hist-ticket-2-71', 'cash', 39000, 'completed', '2025-11-01T08:27:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-72', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-01T19:06:12.000Z', '2025-11-01T19:06:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-72-1', 'hist-ticket-2-72', 'prod-latte', 1, 15000, 0, '2025-11-01T19:06:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-72', 'hist-ticket-2-72', 'cash', 15000, 'completed', '2025-11-01T19:06:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-73', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-01T12:12:26.000Z', '2025-11-01T12:12:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-73-1', 'hist-ticket-2-73', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T12:12:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-73-2', 'hist-ticket-2-73', 'prod-mocha', 1, 16500, 0, '2025-11-01T12:12:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-73', 'hist-ticket-2-73', 'cash', 31000, 'completed', '2025-11-01T12:12:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-2-74', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-01T18:39:37.000Z', '2025-11-01T18:39:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-74-1', 'hist-ticket-2-74', 'prod-latte', 1, 15000, 0, '2025-11-01T18:39:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-2-74-2', 'hist-ticket-2-74', 'prod-cappuccino', 1, 14500, 0, '2025-11-01T18:39:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-2-74', 'hist-ticket-2-74', 'cash', 29500, 'completed', '2025-11-01T18:39:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-75', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-02T10:47:55.000Z', '2025-11-02T10:47:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-75-1', 'hist-ticket-3-75', 'prod-mocha', 1, 16500, 0, '2025-11-02T10:47:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-75-2', 'hist-ticket-3-75', 'prod-latte', 1, 15000, 0, '2025-11-02T10:47:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-75-3', 'hist-ticket-3-75', 'prod-americano', 1, 12000, 0, '2025-11-02T10:47:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-75-4', 'hist-ticket-3-75', 'prod-americano', 1, 12000, 0, '2025-11-02T10:47:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-75', 'hist-ticket-3-75', 'cash', 55500, 'completed', '2025-11-02T10:47:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-76', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-11-02T19:56:35.000Z', '2025-11-02T19:56:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-76-1', 'hist-ticket-3-76', 'prod-americano', 1, 12000, 0, '2025-11-02T19:56:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-76', 'hist-ticket-3-76', 'cash', 12000, 'completed', '2025-11-02T19:56:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-77', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-11-02T14:30:29.000Z', '2025-11-02T14:30:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-77-1', 'hist-ticket-3-77', 'prod-latte', 1, 15000, 0, '2025-11-02T14:30:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-77-2', 'hist-ticket-3-77', 'prod-americano', 1, 12000, 0, '2025-11-02T14:30:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-77', 'hist-ticket-3-77', 'cash', 27000, 'completed', '2025-11-02T14:30:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-78', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-02T13:06:39.000Z', '2025-11-02T13:06:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-78-1', 'hist-ticket-3-78', 'prod-mocha', 1, 16500, 0, '2025-11-02T13:06:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-78-2', 'hist-ticket-3-78', 'prod-americano', 1, 12000, 0, '2025-11-02T13:06:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-78', 'hist-ticket-3-78', 'cash', 28500, 'completed', '2025-11-02T13:06:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-79', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-02T12:41:26.000Z', '2025-11-02T12:41:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-79-1', 'hist-ticket-3-79', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:41:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-79-2', 'hist-ticket-3-79', 'prod-americano', 1, 12000, 0, '2025-11-02T12:41:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-79-3', 'hist-ticket-3-79', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:41:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-79', 'hist-ticket-3-79', 'cash', 45000, 'completed', '2025-11-02T12:41:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-80', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-11-02T09:28:15.000Z', '2025-11-02T09:28:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-80-1', 'hist-ticket-3-80', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T09:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-80-2', 'hist-ticket-3-80', 'prod-latte', 1, 15000, 0, '2025-11-02T09:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-80-3', 'hist-ticket-3-80', 'prod-latte', 1, 15000, 0, '2025-11-02T09:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-80-4', 'hist-ticket-3-80', 'prod-mocha', 1, 16500, 0, '2025-11-02T09:28:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-80', 'hist-ticket-3-80', 'cash', 61000, 'completed', '2025-11-02T09:28:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-81', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-02T19:08:02.000Z', '2025-11-02T19:08:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-81-1', 'hist-ticket-3-81', 'prod-latte', 1, 15000, 0, '2025-11-02T19:08:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-81-2', 'hist-ticket-3-81', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T19:08:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-81-3', 'hist-ticket-3-81', 'prod-latte', 1, 15000, 0, '2025-11-02T19:08:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-81', 'hist-ticket-3-81', 'cash', 44500, 'completed', '2025-11-02T19:08:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-82', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-02T09:17:14.000Z', '2025-11-02T09:17:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-82-1', 'hist-ticket-3-82', 'prod-americano', 1, 12000, 0, '2025-11-02T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-82-2', 'hist-ticket-3-82', 'prod-mocha', 1, 16500, 0, '2025-11-02T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-82-3', 'hist-ticket-3-82', 'prod-americano', 1, 12000, 0, '2025-11-02T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-82-4', 'hist-ticket-3-82', 'prod-americano', 1, 12000, 0, '2025-11-02T09:17:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-82', 'hist-ticket-3-82', 'cash', 52500, 'completed', '2025-11-02T09:17:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-83', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-02T16:17:30.000Z', '2025-11-02T16:17:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-83-1', 'hist-ticket-3-83', 'prod-americano', 1, 12000, 0, '2025-11-02T16:17:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-83-2', 'hist-ticket-3-83', 'prod-mocha', 1, 16500, 0, '2025-11-02T16:17:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-83-3', 'hist-ticket-3-83', 'prod-americano', 1, 12000, 0, '2025-11-02T16:17:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-83', 'hist-ticket-3-83', 'cash', 40500, 'completed', '2025-11-02T16:17:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-84', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-02T17:36:40.000Z', '2025-11-02T17:36:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-84-1', 'hist-ticket-3-84', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T17:36:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-84-2', 'hist-ticket-3-84', 'prod-mocha', 1, 16500, 0, '2025-11-02T17:36:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-84-3', 'hist-ticket-3-84', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T17:36:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-84-4', 'hist-ticket-3-84', 'prod-latte', 1, 15000, 0, '2025-11-02T17:36:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-84', 'hist-ticket-3-84', 'cash', 60500, 'completed', '2025-11-02T17:36:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-85', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-02T09:39:50.000Z', '2025-11-02T09:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-85-1', 'hist-ticket-3-85', 'prod-americano', 1, 12000, 0, '2025-11-02T09:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-85-2', 'hist-ticket-3-85', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T09:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-85-3', 'hist-ticket-3-85', 'prod-latte', 1, 15000, 0, '2025-11-02T09:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-85-4', 'hist-ticket-3-85', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T09:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-85', 'hist-ticket-3-85', 'cash', 56000, 'completed', '2025-11-02T09:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-86', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-02T13:05:38.000Z', '2025-11-02T13:05:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-86-1', 'hist-ticket-3-86', 'prod-mocha', 1, 16500, 0, '2025-11-02T13:05:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-86', 'hist-ticket-3-86', 'cash', 16500, 'completed', '2025-11-02T13:05:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-87', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-02T18:56:59.000Z', '2025-11-02T18:56:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-87-1', 'hist-ticket-3-87', 'prod-mocha', 1, 16500, 0, '2025-11-02T18:56:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-87-2', 'hist-ticket-3-87', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T18:56:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-87', 'hist-ticket-3-87', 'cash', 31000, 'completed', '2025-11-02T18:56:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-88', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-02T19:38:58.000Z', '2025-11-02T19:38:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-88-1', 'hist-ticket-3-88', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T19:38:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-88', 'hist-ticket-3-88', 'cash', 14500, 'completed', '2025-11-02T19:38:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-89', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-02T10:03:22.000Z', '2025-11-02T10:03:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-89-1', 'hist-ticket-3-89', 'prod-latte', 1, 15000, 0, '2025-11-02T10:03:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-89', 'hist-ticket-3-89', 'cash', 15000, 'completed', '2025-11-02T10:03:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-90', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-02T14:33:27.000Z', '2025-11-02T14:33:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-90-1', 'hist-ticket-3-90', 'prod-latte', 1, 15000, 0, '2025-11-02T14:33:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-90-2', 'hist-ticket-3-90', 'prod-americano', 1, 12000, 0, '2025-11-02T14:33:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-90-3', 'hist-ticket-3-90', 'prod-mocha', 1, 16500, 0, '2025-11-02T14:33:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-90', 'hist-ticket-3-90', 'cash', 43500, 'completed', '2025-11-02T14:33:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-91', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-11-02T13:32:33.000Z', '2025-11-02T13:32:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-91-1', 'hist-ticket-3-91', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T13:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-91-2', 'hist-ticket-3-91', 'prod-americano', 1, 12000, 0, '2025-11-02T13:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-91-3', 'hist-ticket-3-91', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T13:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-91-4', 'hist-ticket-3-91', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T13:32:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-91', 'hist-ticket-3-91', 'cash', 55500, 'completed', '2025-11-02T13:32:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-92', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-02T12:34:12.000Z', '2025-11-02T12:34:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-92-1', 'hist-ticket-3-92', 'prod-latte', 1, 15000, 0, '2025-11-02T12:34:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-92-2', 'hist-ticket-3-92', 'prod-latte', 1, 15000, 0, '2025-11-02T12:34:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-92-3', 'hist-ticket-3-92', 'prod-latte', 1, 15000, 0, '2025-11-02T12:34:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-92-4', 'hist-ticket-3-92', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:34:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-92', 'hist-ticket-3-92', 'cash', 61500, 'completed', '2025-11-02T12:34:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-93', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-02T12:34:23.000Z', '2025-11-02T12:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-93-1', 'hist-ticket-3-93', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T12:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-93-2', 'hist-ticket-3-93', 'prod-americano', 1, 12000, 0, '2025-11-02T12:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-93-3', 'hist-ticket-3-93', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-93-4', 'hist-ticket-3-93', 'prod-americano', 1, 12000, 0, '2025-11-02T12:34:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-93', 'hist-ticket-3-93', 'cash', 55000, 'completed', '2025-11-02T12:34:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-94', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-02T17:03:48.000Z', '2025-11-02T17:03:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-94-1', 'hist-ticket-3-94', 'prod-mocha', 1, 16500, 0, '2025-11-02T17:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-94-2', 'hist-ticket-3-94', 'prod-latte', 1, 15000, 0, '2025-11-02T17:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-94-3', 'hist-ticket-3-94', 'prod-americano', 1, 12000, 0, '2025-11-02T17:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-94-4', 'hist-ticket-3-94', 'prod-latte', 1, 15000, 0, '2025-11-02T17:03:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-94', 'hist-ticket-3-94', 'cash', 58500, 'completed', '2025-11-02T17:03:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-95', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-02T14:46:48.000Z', '2025-11-02T14:46:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-95-1', 'hist-ticket-3-95', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T14:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-95-2', 'hist-ticket-3-95', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T14:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-95-3', 'hist-ticket-3-95', 'prod-mocha', 1, 16500, 0, '2025-11-02T14:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-95-4', 'hist-ticket-3-95', 'prod-mocha', 1, 16500, 0, '2025-11-02T14:46:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-95', 'hist-ticket-3-95', 'cash', 62000, 'completed', '2025-11-02T14:46:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-96', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-02T19:24:23.000Z', '2025-11-02T19:24:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-96-1', 'hist-ticket-3-96', 'prod-mocha', 1, 16500, 0, '2025-11-02T19:24:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-96-2', 'hist-ticket-3-96', 'prod-mocha', 1, 16500, 0, '2025-11-02T19:24:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-96', 'hist-ticket-3-96', 'cash', 33000, 'completed', '2025-11-02T19:24:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-97', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-02T08:53:02.000Z', '2025-11-02T08:53:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-97-1', 'hist-ticket-3-97', 'prod-latte', 1, 15000, 0, '2025-11-02T08:53:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-97-2', 'hist-ticket-3-97', 'prod-latte', 1, 15000, 0, '2025-11-02T08:53:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-97-3', 'hist-ticket-3-97', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T08:53:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-97', 'hist-ticket-3-97', 'cash', 44500, 'completed', '2025-11-02T08:53:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-98', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-02T12:49:01.000Z', '2025-11-02T12:49:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-98-1', 'hist-ticket-3-98', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:49:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-98-2', 'hist-ticket-3-98', 'prod-americano', 1, 12000, 0, '2025-11-02T12:49:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-98-3', 'hist-ticket-3-98', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:49:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-98', 'hist-ticket-3-98', 'cash', 45000, 'completed', '2025-11-02T12:49:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-99', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-02T08:37:10.000Z', '2025-11-02T08:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-99-1', 'hist-ticket-3-99', 'prod-americano', 1, 12000, 0, '2025-11-02T08:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-99-2', 'hist-ticket-3-99', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T08:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-99-3', 'hist-ticket-3-99', 'prod-latte', 1, 15000, 0, '2025-11-02T08:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-99', 'hist-ticket-3-99', 'cash', 41500, 'completed', '2025-11-02T08:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-100', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-11-02T16:26:54.000Z', '2025-11-02T16:26:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-100-1', 'hist-ticket-3-100', 'prod-latte', 1, 15000, 0, '2025-11-02T16:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-100-2', 'hist-ticket-3-100', 'prod-americano', 1, 12000, 0, '2025-11-02T16:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-100-3', 'hist-ticket-3-100', 'prod-mocha', 1, 16500, 0, '2025-11-02T16:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-100-4', 'hist-ticket-3-100', 'prod-latte', 1, 15000, 0, '2025-11-02T16:26:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-100', 'hist-ticket-3-100', 'cash', 58500, 'completed', '2025-11-02T16:26:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-101', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-02T10:38:26.000Z', '2025-11-02T10:38:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-101-1', 'hist-ticket-3-101', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T10:38:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-101', 'hist-ticket-3-101', 'cash', 14500, 'completed', '2025-11-02T10:38:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-102', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-02T09:17:49.000Z', '2025-11-02T09:17:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-102-1', 'hist-ticket-3-102', 'prod-latte', 1, 15000, 0, '2025-11-02T09:17:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-102', 'hist-ticket-3-102', 'cash', 15000, 'completed', '2025-11-02T09:17:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-103', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-02T09:39:35.000Z', '2025-11-02T09:39:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-103-1', 'hist-ticket-3-103', 'prod-latte', 1, 15000, 0, '2025-11-02T09:39:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-103', 'hist-ticket-3-103', 'cash', 15000, 'completed', '2025-11-02T09:39:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-104', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-02T17:36:50.000Z', '2025-11-02T17:36:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-104-1', 'hist-ticket-3-104', 'prod-mocha', 1, 16500, 0, '2025-11-02T17:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-104-2', 'hist-ticket-3-104', 'prod-mocha', 1, 16500, 0, '2025-11-02T17:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-104-3', 'hist-ticket-3-104', 'prod-mocha', 1, 16500, 0, '2025-11-02T17:36:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-104', 'hist-ticket-3-104', 'cash', 49500, 'completed', '2025-11-02T17:36:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-105', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-11-02T08:46:31.000Z', '2025-11-02T08:46:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-105-1', 'hist-ticket-3-105', 'prod-americano', 1, 12000, 0, '2025-11-02T08:46:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-105-2', 'hist-ticket-3-105', 'prod-americano', 1, 12000, 0, '2025-11-02T08:46:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-105-3', 'hist-ticket-3-105', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T08:46:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-105', 'hist-ticket-3-105', 'cash', 38500, 'completed', '2025-11-02T08:46:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-106', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-11-02T14:06:14.000Z', '2025-11-02T14:06:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-106-1', 'hist-ticket-3-106', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T14:06:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-106', 'hist-ticket-3-106', 'cash', 14500, 'completed', '2025-11-02T14:06:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-107', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-02T15:42:40.000Z', '2025-11-02T15:42:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-107-1', 'hist-ticket-3-107', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T15:42:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-107', 'hist-ticket-3-107', 'cash', 14500, 'completed', '2025-11-02T15:42:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-3-108', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-02T12:52:33.000Z', '2025-11-02T12:52:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-108-1', 'hist-ticket-3-108', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:52:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-108-2', 'hist-ticket-3-108', 'prod-mocha', 1, 16500, 0, '2025-11-02T12:52:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-108-3', 'hist-ticket-3-108', 'prod-cappuccino', 1, 14500, 0, '2025-11-02T12:52:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-3-108-4', 'hist-ticket-3-108', 'prod-americano', 1, 12000, 0, '2025-11-02T12:52:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-3-108', 'hist-ticket-3-108', 'cash', 59500, 'completed', '2025-11-02T12:52:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-109', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-03T13:56:26.000Z', '2025-11-03T13:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-109-1', 'hist-ticket-4-109', 'prod-mocha', 1, 16500, 0, '2025-11-03T13:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-109-2', 'hist-ticket-4-109', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T13:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-109-3', 'hist-ticket-4-109', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T13:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-109-4', 'hist-ticket-4-109', 'prod-americano', 1, 12000, 0, '2025-11-03T13:56:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-109', 'hist-ticket-4-109', 'cash', 57500, 'completed', '2025-11-03T13:56:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-110', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-03T08:58:40.000Z', '2025-11-03T08:58:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-110-1', 'hist-ticket-4-110', 'prod-americano', 1, 12000, 0, '2025-11-03T08:58:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-110-2', 'hist-ticket-4-110', 'prod-mocha', 1, 16500, 0, '2025-11-03T08:58:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-110-3', 'hist-ticket-4-110', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T08:58:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-110-4', 'hist-ticket-4-110', 'prod-americano', 1, 12000, 0, '2025-11-03T08:58:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-110', 'hist-ticket-4-110', 'cash', 55000, 'completed', '2025-11-03T08:58:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-111', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-11-03T14:51:39.000Z', '2025-11-03T14:51:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-111-1', 'hist-ticket-4-111', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T14:51:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-111-2', 'hist-ticket-4-111', 'prod-cappuccino', 1, 14500, 0, '2025-11-03T14:51:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-111-3', 'hist-ticket-4-111', 'prod-latte', 1, 15000, 0, '2025-11-03T14:51:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-111', 'hist-ticket-4-111', 'cash', 44000, 'completed', '2025-11-03T14:51:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-4-112', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-03T17:16:24.000Z', '2025-11-03T17:16:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-112-1', 'hist-ticket-4-112', 'prod-latte', 1, 15000, 0, '2025-11-03T17:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-4-112-2', 'hist-ticket-4-112', 'prod-mocha', 1, 16500, 0, '2025-11-03T17:16:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-4-112', 'hist-ticket-4-112', 'cash', 31500, 'completed', '2025-11-03T17:16:24.000Z');