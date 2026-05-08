
-- Create category and products
INSERT OR IGNORE INTO categories (id, org_id, name, sort_order, created_at)
SELECT 'cat-coffee-seed', id, 'Coffee', 1, '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO tax_profiles (id, org_id, name, rate_bps, created_at)
SELECT 'tax-standard-seed', id, 'Standard 12%', 1200, '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-americano', id, 'cat-coffee-seed', 'Americano (Davao Roast)', 12000, 'tax-standard-seed', 1, 0, 0, '2026-04-01T00:00:00.000Z', '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-latte', id, 'cat-coffee-seed', 'Mt. Apo Latte', 15000, 'tax-standard-seed', 1, 0, 0, '2026-04-01T00:00:00.000Z', '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-cappuccino', id, 'cat-coffee-seed', 'Mindanao Cappuccino', 14500, 'tax-standard-seed', 1, 0, 0, '2026-04-01T00:00:00.000Z', '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;

INSERT OR IGNORE INTO products (id, org_id, category_id, name, price_centavos, tax_profile_id, is_active, out_of_stock, is_retail, created_at, updated_at)
SELECT 'prod-mocha', id, 'cat-coffee-seed', 'Durian Mocha', 16500, 'tax-standard-seed', 1, 0, 0, '2026-04-01T00:00:00.000Z', '2026-04-01T00:00:00.000Z' FROM organizations LIMIT 1;
INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-1', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-04-01T10:04:58.000Z', '2026-04-01T10:04:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-1-1', 'seed-ticket-1', 'prod-americano', 1, 12000, 0, '2026-04-01T10:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-1-2', 'seed-ticket-1', 'prod-americano', 1, 12000, 0, '2026-04-01T10:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-1-3', 'seed-ticket-1', 'prod-mocha', 1, 16500, 0, '2026-04-01T10:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-1-4', 'seed-ticket-1', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T10:04:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-1', 'seed-ticket-1', 'cash', 55000, 'completed', '2026-04-01T10:04:58.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-1', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-1', '2026-04-01T10:04:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-2', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-01T13:13:30.000Z', '2026-04-01T13:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-2-1', 'seed-ticket-2', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-2-2', 'seed-ticket-2', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-2-3', 'seed-ticket-2', 'prod-mocha', 1, 16500, 0, '2026-04-01T13:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-2-4', 'seed-ticket-2', 'prod-mocha', 1, 16500, 0, '2026-04-01T13:13:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-2', 'seed-ticket-2', 'cash', 62000, 'completed', '2026-04-01T13:13:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-2', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-2', '2026-04-01T13:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-3', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-01T11:23:39.000Z', '2026-04-01T11:23:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-3-1', 'seed-ticket-3', 'prod-americano', 1, 12000, 0, '2026-04-01T11:23:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-3', 'seed-ticket-3', 'cash', 12000, 'completed', '2026-04-01T11:23:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-3', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-3', '2026-04-01T11:23:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-4', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-01T11:33:44.000Z', '2026-04-01T11:33:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-4-1', 'seed-ticket-4', 'prod-mocha', 1, 16500, 0, '2026-04-01T11:33:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-4-2', 'seed-ticket-4', 'prod-latte', 1, 15000, 0, '2026-04-01T11:33:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-4', 'seed-ticket-4', 'cash', 31500, 'completed', '2026-04-01T11:33:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-4', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-4', '2026-04-01T11:33:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-5', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-01T09:24:41.000Z', '2026-04-01T09:24:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-5-1', 'seed-ticket-5', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T09:24:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-5', 'seed-ticket-5', 'cash', 14500, 'completed', '2026-04-01T09:24:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-5', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-5', '2026-04-01T09:24:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-6', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-01T19:43:50.000Z', '2026-04-01T19:43:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-6-1', 'seed-ticket-6', 'prod-americano', 1, 12000, 0, '2026-04-01T19:43:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-6-2', 'seed-ticket-6', 'prod-mocha', 1, 16500, 0, '2026-04-01T19:43:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-6-3', 'seed-ticket-6', 'prod-americano', 1, 12000, 0, '2026-04-01T19:43:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-6-4', 'seed-ticket-6', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T19:43:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-6', 'seed-ticket-6', 'cash', 55000, 'completed', '2026-04-01T19:43:50.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-6', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-6', '2026-04-01T19:43:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-7', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-01T09:10:15.000Z', '2026-04-01T09:10:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-7-1', 'seed-ticket-7', 'prod-mocha', 1, 16500, 0, '2026-04-01T09:10:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-7-2', 'seed-ticket-7', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T09:10:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-7', 'seed-ticket-7', 'cash', 31000, 'completed', '2026-04-01T09:10:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-7', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-7', '2026-04-01T09:10:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-8', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-01T10:41:42.000Z', '2026-04-01T10:41:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-8-1', 'seed-ticket-8', 'prod-americano', 1, 12000, 0, '2026-04-01T10:41:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-8-2', 'seed-ticket-8', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T10:41:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-8', 'seed-ticket-8', 'cash', 26500, 'completed', '2026-04-01T10:41:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-8', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-8', '2026-04-01T10:41:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-9', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-01T08:03:00.000Z', '2026-04-01T08:03:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-9-1', 'seed-ticket-9', 'prod-mocha', 1, 16500, 0, '2026-04-01T08:03:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-9-2', 'seed-ticket-9', 'prod-americano', 1, 12000, 0, '2026-04-01T08:03:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-9-3', 'seed-ticket-9', 'prod-latte', 1, 15000, 0, '2026-04-01T08:03:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-9', 'seed-ticket-9', 'cash', 43500, 'completed', '2026-04-01T08:03:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-9', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-9', '2026-04-01T08:03:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-10', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-01T13:54:39.000Z', '2026-04-01T13:54:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-10-1', 'seed-ticket-10', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:54:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-10-2', 'seed-ticket-10', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:54:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-10-3', 'seed-ticket-10', 'prod-latte', 1, 15000, 0, '2026-04-01T13:54:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-10', 'seed-ticket-10', 'cash', 44000, 'completed', '2026-04-01T13:54:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-10', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-10', '2026-04-01T13:54:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-11', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-01T16:12:34.000Z', '2026-04-01T16:12:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-11-1', 'seed-ticket-11', 'prod-latte', 1, 15000, 0, '2026-04-01T16:12:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-11', 'seed-ticket-11', 'cash', 15000, 'completed', '2026-04-01T16:12:34.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-11', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-11', '2026-04-01T16:12:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-12', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-01T14:35:38.000Z', '2026-04-01T14:35:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-12-1', 'seed-ticket-12', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T14:35:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-12-2', 'seed-ticket-12', 'prod-latte', 1, 15000, 0, '2026-04-01T14:35:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-12', 'seed-ticket-12', 'cash', 29500, 'completed', '2026-04-01T14:35:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-12', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-12', '2026-04-01T14:35:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-13', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-01T09:11:24.000Z', '2026-04-01T09:11:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-13-1', 'seed-ticket-13', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T09:11:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-13-2', 'seed-ticket-13', 'prod-latte', 1, 15000, 0, '2026-04-01T09:11:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-13', 'seed-ticket-13', 'cash', 29500, 'completed', '2026-04-01T09:11:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-13', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-13', '2026-04-01T09:11:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-14', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-01T13:41:01.000Z', '2026-04-01T13:41:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-14-1', 'seed-ticket-14', 'prod-mocha', 1, 16500, 0, '2026-04-01T13:41:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-14', 'seed-ticket-14', 'cash', 16500, 'completed', '2026-04-01T13:41:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-14', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-14', '2026-04-01T13:41:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-15', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-01T16:29:29.000Z', '2026-04-01T16:29:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-15-1', 'seed-ticket-15', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-15-2', 'seed-ticket-15', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T16:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-15-3', 'seed-ticket-15', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T16:29:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-15-4', 'seed-ticket-15', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:29:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-15', 'seed-ticket-15', 'cash', 62000, 'completed', '2026-04-01T16:29:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-15', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-15', '2026-04-01T16:29:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-16', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-01T14:50:02.000Z', '2026-04-01T14:50:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-16-1', 'seed-ticket-16', 'prod-mocha', 1, 16500, 0, '2026-04-01T14:50:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-16-2', 'seed-ticket-16', 'prod-latte', 1, 15000, 0, '2026-04-01T14:50:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-16-3', 'seed-ticket-16', 'prod-mocha', 1, 16500, 0, '2026-04-01T14:50:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-16-4', 'seed-ticket-16', 'prod-mocha', 1, 16500, 0, '2026-04-01T14:50:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-16', 'seed-ticket-16', 'cash', 64500, 'completed', '2026-04-01T14:50:02.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-16', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-16', '2026-04-01T14:50:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-17', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-01T14:55:45.000Z', '2026-04-01T14:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-17-1', 'seed-ticket-17', 'prod-americano', 1, 12000, 0, '2026-04-01T14:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-17-2', 'seed-ticket-17', 'prod-latte', 1, 15000, 0, '2026-04-01T14:55:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-17', 'seed-ticket-17', 'cash', 27000, 'completed', '2026-04-01T14:55:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-17', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-17', '2026-04-01T14:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-18', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-01T19:12:05.000Z', '2026-04-01T19:12:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-18-1', 'seed-ticket-18', 'prod-americano', 1, 12000, 0, '2026-04-01T19:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-18-2', 'seed-ticket-18', 'prod-mocha', 1, 16500, 0, '2026-04-01T19:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-18-3', 'seed-ticket-18', 'prod-americano', 1, 12000, 0, '2026-04-01T19:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-18-4', 'seed-ticket-18', 'prod-latte', 1, 15000, 0, '2026-04-01T19:12:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-18', 'seed-ticket-18', 'cash', 55500, 'completed', '2026-04-01T19:12:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-18', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-18', '2026-04-01T19:12:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-19', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-01T13:37:19.000Z', '2026-04-01T13:37:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-19-1', 'seed-ticket-19', 'prod-americano', 1, 12000, 0, '2026-04-01T13:37:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-19-2', 'seed-ticket-19', 'prod-latte', 1, 15000, 0, '2026-04-01T13:37:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-19-3', 'seed-ticket-19', 'prod-americano', 1, 12000, 0, '2026-04-01T13:37:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-19-4', 'seed-ticket-19', 'prod-mocha', 1, 16500, 0, '2026-04-01T13:37:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-19', 'seed-ticket-19', 'cash', 55500, 'completed', '2026-04-01T13:37:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-19', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-19', '2026-04-01T13:37:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-20', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-02T13:15:24.000Z', '2026-04-02T13:15:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-20-1', 'seed-ticket-20', 'prod-mocha', 1, 16500, 0, '2026-04-02T13:15:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-20-2', 'seed-ticket-20', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T13:15:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-20-3', 'seed-ticket-20', 'prod-latte', 1, 15000, 0, '2026-04-02T13:15:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-20', 'seed-ticket-20', 'cash', 46000, 'completed', '2026-04-02T13:15:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-20', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-20', '2026-04-02T13:15:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-21', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-02T12:43:15.000Z', '2026-04-02T12:43:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-21-1', 'seed-ticket-21', 'prod-americano', 1, 12000, 0, '2026-04-02T12:43:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-21-2', 'seed-ticket-21', 'prod-mocha', 1, 16500, 0, '2026-04-02T12:43:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-21', 'seed-ticket-21', 'cash', 28500, 'completed', '2026-04-02T12:43:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-21', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-21', '2026-04-02T12:43:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-22', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-04-02T17:31:43.000Z', '2026-04-02T17:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-22-1', 'seed-ticket-22', 'prod-mocha', 1, 16500, 0, '2026-04-02T17:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-22-2', 'seed-ticket-22', 'prod-mocha', 1, 16500, 0, '2026-04-02T17:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-22-3', 'seed-ticket-22', 'prod-mocha', 1, 16500, 0, '2026-04-02T17:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-22-4', 'seed-ticket-22', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T17:31:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-22', 'seed-ticket-22', 'cash', 64000, 'completed', '2026-04-02T17:31:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-22', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-22', '2026-04-02T17:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-23', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-02T16:45:41.000Z', '2026-04-02T16:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-23-1', 'seed-ticket-23', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-23-2', 'seed-ticket-23', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-23-3', 'seed-ticket-23', 'prod-latte', 1, 15000, 0, '2026-04-02T16:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-23-4', 'seed-ticket-23', 'prod-latte', 1, 15000, 0, '2026-04-02T16:45:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-23', 'seed-ticket-23', 'cash', 63000, 'completed', '2026-04-02T16:45:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-23', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-23', '2026-04-02T16:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-24', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-02T11:14:25.000Z', '2026-04-02T11:14:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-24-1', 'seed-ticket-24', 'prod-mocha', 1, 16500, 0, '2026-04-02T11:14:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-24-2', 'seed-ticket-24', 'prod-mocha', 1, 16500, 0, '2026-04-02T11:14:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-24-3', 'seed-ticket-24', 'prod-americano', 1, 12000, 0, '2026-04-02T11:14:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-24-4', 'seed-ticket-24', 'prod-mocha', 1, 16500, 0, '2026-04-02T11:14:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-24', 'seed-ticket-24', 'cash', 61500, 'completed', '2026-04-02T11:14:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-24', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-24', '2026-04-02T11:14:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-25', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-02T16:26:18.000Z', '2026-04-02T16:26:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-25-1', 'seed-ticket-25', 'prod-americano', 1, 12000, 0, '2026-04-02T16:26:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-25-2', 'seed-ticket-25', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:26:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-25-3', 'seed-ticket-25', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:26:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-25-4', 'seed-ticket-25', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:26:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-25', 'seed-ticket-25', 'cash', 61500, 'completed', '2026-04-02T16:26:18.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-25', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-25', '2026-04-02T16:26:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-26', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-02T11:39:39.000Z', '2026-04-02T11:39:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-26-1', 'seed-ticket-26', 'prod-americano', 1, 12000, 0, '2026-04-02T11:39:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-26', 'seed-ticket-26', 'cash', 12000, 'completed', '2026-04-02T11:39:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-26', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-26', '2026-04-02T11:39:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-27', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-02T15:41:32.000Z', '2026-04-02T15:41:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-27-1', 'seed-ticket-27', 'prod-latte', 1, 15000, 0, '2026-04-02T15:41:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-27', 'seed-ticket-27', 'cash', 15000, 'completed', '2026-04-02T15:41:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-27', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-27', '2026-04-02T15:41:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-28', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-02T19:21:37.000Z', '2026-04-02T19:21:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-28-1', 'seed-ticket-28', 'prod-americano', 1, 12000, 0, '2026-04-02T19:21:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-28', 'seed-ticket-28', 'cash', 12000, 'completed', '2026-04-02T19:21:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-28', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-28', '2026-04-02T19:21:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-29', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-02T13:20:05.000Z', '2026-04-02T13:20:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-29-1', 'seed-ticket-29', 'prod-latte', 1, 15000, 0, '2026-04-02T13:20:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-29-2', 'seed-ticket-29', 'prod-americano', 1, 12000, 0, '2026-04-02T13:20:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-29-3', 'seed-ticket-29', 'prod-mocha', 1, 16500, 0, '2026-04-02T13:20:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-29-4', 'seed-ticket-29', 'prod-latte', 1, 15000, 0, '2026-04-02T13:20:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-29', 'seed-ticket-29', 'cash', 58500, 'completed', '2026-04-02T13:20:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-29', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-29', '2026-04-02T13:20:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-30', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-02T10:06:32.000Z', '2026-04-02T10:06:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-30-1', 'seed-ticket-30', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T10:06:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-30', 'seed-ticket-30', 'cash', 14500, 'completed', '2026-04-02T10:06:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-30', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-30', '2026-04-02T10:06:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-31', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-02T09:12:39.000Z', '2026-04-02T09:12:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-31-1', 'seed-ticket-31', 'prod-americano', 1, 12000, 0, '2026-04-02T09:12:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-31', 'seed-ticket-31', 'cash', 12000, 'completed', '2026-04-02T09:12:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-31', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-31', '2026-04-02T09:12:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-32', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-04-02T11:30:45.000Z', '2026-04-02T11:30:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-32-1', 'seed-ticket-32', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T11:30:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-32-2', 'seed-ticket-32', 'prod-americano', 1, 12000, 0, '2026-04-02T11:30:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-32', 'seed-ticket-32', 'cash', 26500, 'completed', '2026-04-02T11:30:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-32', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-32', '2026-04-02T11:30:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-33', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-02T14:47:17.000Z', '2026-04-02T14:47:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-33-1', 'seed-ticket-33', 'prod-mocha', 1, 16500, 0, '2026-04-02T14:47:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-33-2', 'seed-ticket-33', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T14:47:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-33-3', 'seed-ticket-33', 'prod-americano', 1, 12000, 0, '2026-04-02T14:47:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-33', 'seed-ticket-33', 'cash', 43000, 'completed', '2026-04-02T14:47:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-33', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-33', '2026-04-02T14:47:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-34', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-02T11:41:05.000Z', '2026-04-02T11:41:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-34-1', 'seed-ticket-34', 'prod-americano', 1, 12000, 0, '2026-04-02T11:41:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-34-2', 'seed-ticket-34', 'prod-americano', 1, 12000, 0, '2026-04-02T11:41:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-34-3', 'seed-ticket-34', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T11:41:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-34', 'seed-ticket-34', 'cash', 38500, 'completed', '2026-04-02T11:41:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-34', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-34', '2026-04-02T11:41:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-35', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-02T09:01:03.000Z', '2026-04-02T09:01:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-35-1', 'seed-ticket-35', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T09:01:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-35-2', 'seed-ticket-35', 'prod-mocha', 1, 16500, 0, '2026-04-02T09:01:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-35-3', 'seed-ticket-35', 'prod-latte', 1, 15000, 0, '2026-04-02T09:01:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-35', 'seed-ticket-35', 'cash', 46000, 'completed', '2026-04-02T09:01:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-35', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-35', '2026-04-02T09:01:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-36', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-02T12:33:38.000Z', '2026-04-02T12:33:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-36-1', 'seed-ticket-36', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T12:33:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-36-2', 'seed-ticket-36', 'prod-latte', 1, 15000, 0, '2026-04-02T12:33:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-36', 'seed-ticket-36', 'cash', 29500, 'completed', '2026-04-02T12:33:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-36', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-36', '2026-04-02T12:33:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-37', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-02T15:04:53.000Z', '2026-04-02T15:04:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-37-1', 'seed-ticket-37', 'prod-americano', 1, 12000, 0, '2026-04-02T15:04:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-37-2', 'seed-ticket-37', 'prod-americano', 1, 12000, 0, '2026-04-02T15:04:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-37', 'seed-ticket-37', 'cash', 24000, 'completed', '2026-04-02T15:04:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-37', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-37', '2026-04-02T15:04:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-38', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-02T12:39:59.000Z', '2026-04-02T12:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-38-1', 'seed-ticket-38', 'prod-latte', 1, 15000, 0, '2026-04-02T12:39:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-38', 'seed-ticket-38', 'cash', 15000, 'completed', '2026-04-02T12:39:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-38', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-38', '2026-04-02T12:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-39', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-02T12:54:35.000Z', '2026-04-02T12:54:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-39-1', 'seed-ticket-39', 'prod-americano', 1, 12000, 0, '2026-04-02T12:54:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-39-2', 'seed-ticket-39', 'prod-latte', 1, 15000, 0, '2026-04-02T12:54:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-39-3', 'seed-ticket-39', 'prod-mocha', 1, 16500, 0, '2026-04-02T12:54:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-39', 'seed-ticket-39', 'cash', 43500, 'completed', '2026-04-02T12:54:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-39', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-39', '2026-04-02T12:54:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-40', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-02T16:15:25.000Z', '2026-04-02T16:15:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-40-1', 'seed-ticket-40', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:15:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-40', 'seed-ticket-40', 'cash', 14500, 'completed', '2026-04-02T16:15:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-40', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-40', '2026-04-02T16:15:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-41', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-03T13:11:59.000Z', '2026-04-03T13:11:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-41-1', 'seed-ticket-41', 'prod-latte', 1, 15000, 0, '2026-04-03T13:11:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-41', 'seed-ticket-41', 'cash', 15000, 'completed', '2026-04-03T13:11:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-41', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-41', '2026-04-03T13:11:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-42', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-03T11:03:40.000Z', '2026-04-03T11:03:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-42-1', 'seed-ticket-42', 'prod-americano', 1, 12000, 0, '2026-04-03T11:03:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-42-2', 'seed-ticket-42', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T11:03:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-42', 'seed-ticket-42', 'cash', 26500, 'completed', '2026-04-03T11:03:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-42', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-42', '2026-04-03T11:03:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-43', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-03T12:28:03.000Z', '2026-04-03T12:28:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-43-1', 'seed-ticket-43', 'prod-americano', 1, 12000, 0, '2026-04-03T12:28:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-43-2', 'seed-ticket-43', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T12:28:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-43-3', 'seed-ticket-43', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T12:28:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-43', 'seed-ticket-43', 'cash', 41000, 'completed', '2026-04-03T12:28:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-43', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-43', '2026-04-03T12:28:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-44', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-03T12:42:24.000Z', '2026-04-03T12:42:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-44-1', 'seed-ticket-44', 'prod-latte', 1, 15000, 0, '2026-04-03T12:42:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-44', 'seed-ticket-44', 'cash', 15000, 'completed', '2026-04-03T12:42:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-44', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-44', '2026-04-03T12:42:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-45', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-03T16:28:46.000Z', '2026-04-03T16:28:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-45-1', 'seed-ticket-45', 'prod-mocha', 1, 16500, 0, '2026-04-03T16:28:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-45-2', 'seed-ticket-45', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T16:28:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-45', 'seed-ticket-45', 'cash', 31000, 'completed', '2026-04-03T16:28:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-45', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-45', '2026-04-03T16:28:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-46', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-03T11:16:26.000Z', '2026-04-03T11:16:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-46-1', 'seed-ticket-46', 'prod-americano', 1, 12000, 0, '2026-04-03T11:16:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-46', 'seed-ticket-46', 'cash', 12000, 'completed', '2026-04-03T11:16:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-46', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-46', '2026-04-03T11:16:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-47', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-03T08:34:40.000Z', '2026-04-03T08:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-47-1', 'seed-ticket-47', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T08:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-47-2', 'seed-ticket-47', 'prod-mocha', 1, 16500, 0, '2026-04-03T08:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-47-3', 'seed-ticket-47', 'prod-americano', 1, 12000, 0, '2026-04-03T08:34:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-47', 'seed-ticket-47', 'cash', 43000, 'completed', '2026-04-03T08:34:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-47', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-47', '2026-04-03T08:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-48', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-03T18:04:55.000Z', '2026-04-03T18:04:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-48-1', 'seed-ticket-48', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:04:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-48-2', 'seed-ticket-48', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:04:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-48-3', 'seed-ticket-48', 'prod-latte', 1, 15000, 0, '2026-04-03T18:04:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-48', 'seed-ticket-48', 'cash', 44000, 'completed', '2026-04-03T18:04:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-48', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-48', '2026-04-03T18:04:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-49', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-03T08:32:17.000Z', '2026-04-03T08:32:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-49-1', 'seed-ticket-49', 'prod-americano', 1, 12000, 0, '2026-04-03T08:32:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-49', 'seed-ticket-49', 'cash', 12000, 'completed', '2026-04-03T08:32:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-49', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-49', '2026-04-03T08:32:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-50', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-03T12:21:05.000Z', '2026-04-03T12:21:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-50-1', 'seed-ticket-50', 'prod-americano', 1, 12000, 0, '2026-04-03T12:21:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-50-2', 'seed-ticket-50', 'prod-americano', 1, 12000, 0, '2026-04-03T12:21:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-50', 'seed-ticket-50', 'cash', 24000, 'completed', '2026-04-03T12:21:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-50', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-50', '2026-04-03T12:21:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-51', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-03T17:01:46.000Z', '2026-04-03T17:01:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-51-1', 'seed-ticket-51', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:01:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-51-2', 'seed-ticket-51', 'prod-latte', 1, 15000, 0, '2026-04-03T17:01:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-51', 'seed-ticket-51', 'cash', 31500, 'completed', '2026-04-03T17:01:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-51', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-51', '2026-04-03T17:01:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-52', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-03T18:08:42.000Z', '2026-04-03T18:08:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-52-1', 'seed-ticket-52', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:08:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-52-2', 'seed-ticket-52', 'prod-americano', 1, 12000, 0, '2026-04-03T18:08:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-52', 'seed-ticket-52', 'cash', 26500, 'completed', '2026-04-03T18:08:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-52', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-52', '2026-04-03T18:08:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-53', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-03T13:43:34.000Z', '2026-04-03T13:43:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-53-1', 'seed-ticket-53', 'prod-mocha', 1, 16500, 0, '2026-04-03T13:43:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-53', 'seed-ticket-53', 'cash', 16500, 'completed', '2026-04-03T13:43:34.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-53', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-53', '2026-04-03T13:43:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-54', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-03T10:54:36.000Z', '2026-04-03T10:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-54-1', 'seed-ticket-54', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T10:54:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-54-2', 'seed-ticket-54', 'prod-mocha', 1, 16500, 0, '2026-04-03T10:54:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-54', 'seed-ticket-54', 'cash', 31000, 'completed', '2026-04-03T10:54:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-54', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-54', '2026-04-03T10:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-55', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-03T10:37:48.000Z', '2026-04-03T10:37:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-55-1', 'seed-ticket-55', 'prod-americano', 1, 12000, 0, '2026-04-03T10:37:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-55-2', 'seed-ticket-55', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T10:37:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-55', 'seed-ticket-55', 'cash', 26500, 'completed', '2026-04-03T10:37:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-55', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-55', '2026-04-03T10:37:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-56', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-03T18:45:26.000Z', '2026-04-03T18:45:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-56-1', 'seed-ticket-56', 'prod-latte', 1, 15000, 0, '2026-04-03T18:45:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-56', 'seed-ticket-56', 'cash', 15000, 'completed', '2026-04-03T18:45:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-56', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-56', '2026-04-03T18:45:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-57', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-03T11:04:15.000Z', '2026-04-03T11:04:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-57-1', 'seed-ticket-57', 'prod-americano', 1, 12000, 0, '2026-04-03T11:04:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-57-2', 'seed-ticket-57', 'prod-americano', 1, 12000, 0, '2026-04-03T11:04:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-57', 'seed-ticket-57', 'cash', 24000, 'completed', '2026-04-03T11:04:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-57', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-57', '2026-04-03T11:04:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-58', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-03T18:07:54.000Z', '2026-04-03T18:07:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-58-1', 'seed-ticket-58', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:07:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-58', 'seed-ticket-58', 'cash', 14500, 'completed', '2026-04-03T18:07:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-58', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-58', '2026-04-03T18:07:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-59', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-03T08:36:17.000Z', '2026-04-03T08:36:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-59-1', 'seed-ticket-59', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T08:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-59-2', 'seed-ticket-59', 'prod-mocha', 1, 16500, 0, '2026-04-03T08:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-59-3', 'seed-ticket-59', 'prod-americano', 1, 12000, 0, '2026-04-03T08:36:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-59', 'seed-ticket-59', 'cash', 43000, 'completed', '2026-04-03T08:36:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-59', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-59', '2026-04-03T08:36:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-60', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-03T16:27:57.000Z', '2026-04-03T16:27:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-60-1', 'seed-ticket-60', 'prod-americano', 1, 12000, 0, '2026-04-03T16:27:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-60-2', 'seed-ticket-60', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T16:27:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-60', 'seed-ticket-60', 'cash', 26500, 'completed', '2026-04-03T16:27:57.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-60', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-60', '2026-04-03T16:27:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-61', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-03T18:55:42.000Z', '2026-04-03T18:55:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-61-1', 'seed-ticket-61', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:55:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-61-2', 'seed-ticket-61', 'prod-latte', 1, 15000, 0, '2026-04-03T18:55:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-61', 'seed-ticket-61', 'cash', 29500, 'completed', '2026-04-03T18:55:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-61', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-61', '2026-04-03T18:55:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-62', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-03T19:19:48.000Z', '2026-04-03T19:19:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-62-1', 'seed-ticket-62', 'prod-americano', 1, 12000, 0, '2026-04-03T19:19:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-62-2', 'seed-ticket-62', 'prod-americano', 1, 12000, 0, '2026-04-03T19:19:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-62', 'seed-ticket-62', 'cash', 24000, 'completed', '2026-04-03T19:19:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-62', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-62', '2026-04-03T19:19:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-63', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-04-03T14:06:49.000Z', '2026-04-03T14:06:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-63-1', 'seed-ticket-63', 'prod-americano', 1, 12000, 0, '2026-04-03T14:06:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-63-2', 'seed-ticket-63', 'prod-latte', 1, 15000, 0, '2026-04-03T14:06:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-63-3', 'seed-ticket-63', 'prod-latte', 1, 15000, 0, '2026-04-03T14:06:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-63', 'seed-ticket-63', 'cash', 42000, 'completed', '2026-04-03T14:06:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-63', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-63', '2026-04-03T14:06:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-64', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-03T15:55:22.000Z', '2026-04-03T15:55:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-64-1', 'seed-ticket-64', 'prod-americano', 1, 12000, 0, '2026-04-03T15:55:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-64-2', 'seed-ticket-64', 'prod-americano', 1, 12000, 0, '2026-04-03T15:55:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-64', 'seed-ticket-64', 'cash', 24000, 'completed', '2026-04-03T15:55:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-64', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-64', '2026-04-03T15:55:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-65', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-03T17:28:09.000Z', '2026-04-03T17:28:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-65-1', 'seed-ticket-65', 'prod-latte', 1, 15000, 0, '2026-04-03T17:28:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-65', 'seed-ticket-65', 'cash', 15000, 'completed', '2026-04-03T17:28:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-65', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-65', '2026-04-03T17:28:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-66', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-03T11:08:30.000Z', '2026-04-03T11:08:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-66-1', 'seed-ticket-66', 'prod-latte', 1, 15000, 0, '2026-04-03T11:08:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-66-2', 'seed-ticket-66', 'prod-mocha', 1, 16500, 0, '2026-04-03T11:08:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-66-3', 'seed-ticket-66', 'prod-latte', 1, 15000, 0, '2026-04-03T11:08:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-66', 'seed-ticket-66', 'cash', 46500, 'completed', '2026-04-03T11:08:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-66', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-66', '2026-04-03T11:08:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-67', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-04T12:36:15.000Z', '2026-04-04T12:36:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-67-1', 'seed-ticket-67', 'prod-mocha', 1, 16500, 0, '2026-04-04T12:36:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-67-2', 'seed-ticket-67', 'prod-mocha', 1, 16500, 0, '2026-04-04T12:36:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-67-3', 'seed-ticket-67', 'prod-americano', 1, 12000, 0, '2026-04-04T12:36:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-67', 'seed-ticket-67', 'cash', 45000, 'completed', '2026-04-04T12:36:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-67', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-67', '2026-04-04T12:36:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-68', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-04T11:43:53.000Z', '2026-04-04T11:43:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-68-1', 'seed-ticket-68', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T11:43:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-68', 'seed-ticket-68', 'cash', 14500, 'completed', '2026-04-04T11:43:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-68', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-68', '2026-04-04T11:43:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-69', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-04T14:45:41.000Z', '2026-04-04T14:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-69-1', 'seed-ticket-69', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T14:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-69-2', 'seed-ticket-69', 'prod-latte', 1, 15000, 0, '2026-04-04T14:45:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-69', 'seed-ticket-69', 'cash', 29500, 'completed', '2026-04-04T14:45:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-69', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-69', '2026-04-04T14:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-70', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-04T12:56:17.000Z', '2026-04-04T12:56:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-70-1', 'seed-ticket-70', 'prod-americano', 1, 12000, 0, '2026-04-04T12:56:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-70-2', 'seed-ticket-70', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T12:56:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-70-3', 'seed-ticket-70', 'prod-mocha', 1, 16500, 0, '2026-04-04T12:56:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-70', 'seed-ticket-70', 'cash', 43000, 'completed', '2026-04-04T12:56:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-70', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-70', '2026-04-04T12:56:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-71', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-04T08:37:01.000Z', '2026-04-04T08:37:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-71-1', 'seed-ticket-71', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T08:37:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-71-2', 'seed-ticket-71', 'prod-mocha', 1, 16500, 0, '2026-04-04T08:37:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-71-3', 'seed-ticket-71', 'prod-americano', 1, 12000, 0, '2026-04-04T08:37:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-71', 'seed-ticket-71', 'cash', 43000, 'completed', '2026-04-04T08:37:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-71', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-71', '2026-04-04T08:37:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-72', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-04T11:15:06.000Z', '2026-04-04T11:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-72-1', 'seed-ticket-72', 'prod-americano', 1, 12000, 0, '2026-04-04T11:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-72-2', 'seed-ticket-72', 'prod-americano', 1, 12000, 0, '2026-04-04T11:15:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-72', 'seed-ticket-72', 'cash', 24000, 'completed', '2026-04-04T11:15:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-72', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-72', '2026-04-04T11:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-73', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-04T08:45:28.000Z', '2026-04-04T08:45:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-73-1', 'seed-ticket-73', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T08:45:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-73-2', 'seed-ticket-73', 'prod-mocha', 1, 16500, 0, '2026-04-04T08:45:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-73-3', 'seed-ticket-73', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T08:45:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-73', 'seed-ticket-73', 'cash', 45500, 'completed', '2026-04-04T08:45:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-73', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-73', '2026-04-04T08:45:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-74', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-04T15:25:43.000Z', '2026-04-04T15:25:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-74-1', 'seed-ticket-74', 'prod-americano', 1, 12000, 0, '2026-04-04T15:25:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-74-2', 'seed-ticket-74', 'prod-americano', 1, 12000, 0, '2026-04-04T15:25:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-74-3', 'seed-ticket-74', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:25:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-74-4', 'seed-ticket-74', 'prod-mocha', 1, 16500, 0, '2026-04-04T15:25:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-74', 'seed-ticket-74', 'cash', 55000, 'completed', '2026-04-04T15:25:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-74', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-74', '2026-04-04T15:25:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-75', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-04T14:55:38.000Z', '2026-04-04T14:55:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-75-1', 'seed-ticket-75', 'prod-mocha', 1, 16500, 0, '2026-04-04T14:55:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-75', 'seed-ticket-75', 'cash', 16500, 'completed', '2026-04-04T14:55:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-75', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-75', '2026-04-04T14:55:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-76', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-04T10:10:31.000Z', '2026-04-04T10:10:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-76-1', 'seed-ticket-76', 'prod-americano', 1, 12000, 0, '2026-04-04T10:10:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-76', 'seed-ticket-76', 'cash', 12000, 'completed', '2026-04-04T10:10:31.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-76', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-76', '2026-04-04T10:10:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-77', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-04T12:02:03.000Z', '2026-04-04T12:02:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-77-1', 'seed-ticket-77', 'prod-latte', 1, 15000, 0, '2026-04-04T12:02:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-77-2', 'seed-ticket-77', 'prod-latte', 1, 15000, 0, '2026-04-04T12:02:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-77', 'seed-ticket-77', 'cash', 30000, 'completed', '2026-04-04T12:02:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-77', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-77', '2026-04-04T12:02:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-78', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-04T11:28:28.000Z', '2026-04-04T11:28:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-78-1', 'seed-ticket-78', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T11:28:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-78', 'seed-ticket-78', 'cash', 14500, 'completed', '2026-04-04T11:28:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-78', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-78', '2026-04-04T11:28:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-79', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-04T10:19:44.000Z', '2026-04-04T10:19:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-79-1', 'seed-ticket-79', 'prod-americano', 1, 12000, 0, '2026-04-04T10:19:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-79', 'seed-ticket-79', 'cash', 12000, 'completed', '2026-04-04T10:19:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-79', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-79', '2026-04-04T10:19:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-80', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-04T08:29:27.000Z', '2026-04-04T08:29:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-80-1', 'seed-ticket-80', 'prod-latte', 1, 15000, 0, '2026-04-04T08:29:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-80', 'seed-ticket-80', 'cash', 15000, 'completed', '2026-04-04T08:29:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-80', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-80', '2026-04-04T08:29:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-81', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-04T13:28:32.000Z', '2026-04-04T13:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-81-1', 'seed-ticket-81', 'prod-americano', 1, 12000, 0, '2026-04-04T13:28:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-81', 'seed-ticket-81', 'cash', 12000, 'completed', '2026-04-04T13:28:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-81', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-81', '2026-04-04T13:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-82', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-04T09:59:52.000Z', '2026-04-04T09:59:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-82-1', 'seed-ticket-82', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T09:59:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-82-2', 'seed-ticket-82', 'prod-americano', 1, 12000, 0, '2026-04-04T09:59:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-82-3', 'seed-ticket-82', 'prod-americano', 1, 12000, 0, '2026-04-04T09:59:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-82-4', 'seed-ticket-82', 'prod-mocha', 1, 16500, 0, '2026-04-04T09:59:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-82', 'seed-ticket-82', 'cash', 55000, 'completed', '2026-04-04T09:59:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-82', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-82', '2026-04-04T09:59:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-83', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-04T09:57:13.000Z', '2026-04-04T09:57:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-83-1', 'seed-ticket-83', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T09:57:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-83-2', 'seed-ticket-83', 'prod-americano', 1, 12000, 0, '2026-04-04T09:57:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-83-3', 'seed-ticket-83', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T09:57:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-83', 'seed-ticket-83', 'cash', 41000, 'completed', '2026-04-04T09:57:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-83', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-83', '2026-04-04T09:57:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-84', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-04-04T18:54:00.000Z', '2026-04-04T18:54:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-84-1', 'seed-ticket-84', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T18:54:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-84-2', 'seed-ticket-84', 'prod-mocha', 1, 16500, 0, '2026-04-04T18:54:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-84-3', 'seed-ticket-84', 'prod-mocha', 1, 16500, 0, '2026-04-04T18:54:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-84-4', 'seed-ticket-84', 'prod-latte', 1, 15000, 0, '2026-04-04T18:54:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-84', 'seed-ticket-84', 'cash', 62500, 'completed', '2026-04-04T18:54:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-84', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-84', '2026-04-04T18:54:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-85', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-04T17:44:03.000Z', '2026-04-04T17:44:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-85-1', 'seed-ticket-85', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T17:44:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-85', 'seed-ticket-85', 'cash', 14500, 'completed', '2026-04-04T17:44:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-85', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-85', '2026-04-04T17:44:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-86', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-04T13:55:19.000Z', '2026-04-04T13:55:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-86-1', 'seed-ticket-86', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T13:55:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-86', 'seed-ticket-86', 'cash', 14500, 'completed', '2026-04-04T13:55:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-86', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-86', '2026-04-04T13:55:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-87', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-04T15:41:29.000Z', '2026-04-04T15:41:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-87-1', 'seed-ticket-87', 'prod-mocha', 1, 16500, 0, '2026-04-04T15:41:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-87-2', 'seed-ticket-87', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:41:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-87-3', 'seed-ticket-87', 'prod-latte', 1, 15000, 0, '2026-04-04T15:41:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-87', 'seed-ticket-87', 'cash', 46000, 'completed', '2026-04-04T15:41:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-87', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-87', '2026-04-04T15:41:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-88', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-04T12:50:43.000Z', '2026-04-04T12:50:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-88-1', 'seed-ticket-88', 'prod-americano', 1, 12000, 0, '2026-04-04T12:50:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-88-2', 'seed-ticket-88', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T12:50:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-88-3', 'seed-ticket-88', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T12:50:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-88-4', 'seed-ticket-88', 'prod-mocha', 1, 16500, 0, '2026-04-04T12:50:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-88', 'seed-ticket-88', 'cash', 57500, 'completed', '2026-04-04T12:50:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-88', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-88', '2026-04-04T12:50:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-89', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-04T13:39:59.000Z', '2026-04-04T13:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-89-1', 'seed-ticket-89', 'prod-mocha', 1, 16500, 0, '2026-04-04T13:39:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-89', 'seed-ticket-89', 'cash', 16500, 'completed', '2026-04-04T13:39:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-89', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-89', '2026-04-04T13:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-90', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T17:08:52.000Z', '2026-04-05T17:08:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-90-1', 'seed-ticket-90', 'prod-americano', 1, 12000, 0, '2026-04-05T17:08:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-90-2', 'seed-ticket-90', 'prod-mocha', 1, 16500, 0, '2026-04-05T17:08:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-90', 'seed-ticket-90', 'cash', 28500, 'completed', '2026-04-05T17:08:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-90', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-90', '2026-04-05T17:08:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-91', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-05T09:57:28.000Z', '2026-04-05T09:57:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-91-1', 'seed-ticket-91', 'prod-latte', 1, 15000, 0, '2026-04-05T09:57:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-91-2', 'seed-ticket-91', 'prod-latte', 1, 15000, 0, '2026-04-05T09:57:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-91-3', 'seed-ticket-91', 'prod-latte', 1, 15000, 0, '2026-04-05T09:57:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-91', 'seed-ticket-91', 'cash', 45000, 'completed', '2026-04-05T09:57:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-91', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-91', '2026-04-05T09:57:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-92', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-05T15:20:17.000Z', '2026-04-05T15:20:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-92-1', 'seed-ticket-92', 'prod-mocha', 1, 16500, 0, '2026-04-05T15:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-92-2', 'seed-ticket-92', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T15:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-92-3', 'seed-ticket-92', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T15:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-92-4', 'seed-ticket-92', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T15:20:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-92', 'seed-ticket-92', 'cash', 60000, 'completed', '2026-04-05T15:20:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-92', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-92', '2026-04-05T15:20:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-93', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-05T08:48:51.000Z', '2026-04-05T08:48:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-93-1', 'seed-ticket-93', 'prod-latte', 1, 15000, 0, '2026-04-05T08:48:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-93-2', 'seed-ticket-93', 'prod-latte', 1, 15000, 0, '2026-04-05T08:48:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-93-3', 'seed-ticket-93', 'prod-mocha', 1, 16500, 0, '2026-04-05T08:48:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-93', 'seed-ticket-93', 'cash', 46500, 'completed', '2026-04-05T08:48:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-93', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-93', '2026-04-05T08:48:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-94', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-05T10:24:23.000Z', '2026-04-05T10:24:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-94-1', 'seed-ticket-94', 'prod-latte', 1, 15000, 0, '2026-04-05T10:24:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-94-2', 'seed-ticket-94', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T10:24:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-94', 'seed-ticket-94', 'cash', 29500, 'completed', '2026-04-05T10:24:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-94', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-94', '2026-04-05T10:24:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-95', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-05T10:22:19.000Z', '2026-04-05T10:22:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-95-1', 'seed-ticket-95', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-95-2', 'seed-ticket-95', 'prod-americano', 1, 12000, 0, '2026-04-05T10:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-95-3', 'seed-ticket-95', 'prod-mocha', 1, 16500, 0, '2026-04-05T10:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-95-4', 'seed-ticket-95', 'prod-americano', 1, 12000, 0, '2026-04-05T10:22:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-95', 'seed-ticket-95', 'cash', 57000, 'completed', '2026-04-05T10:22:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-95', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-95', '2026-04-05T10:22:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-96', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-04-05T11:10:33.000Z', '2026-04-05T11:10:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-96-1', 'seed-ticket-96', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T11:10:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-96-2', 'seed-ticket-96', 'prod-americano', 1, 12000, 0, '2026-04-05T11:10:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-96', 'seed-ticket-96', 'cash', 26500, 'completed', '2026-04-05T11:10:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-96', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-96', '2026-04-05T11:10:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-97', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-05T12:25:08.000Z', '2026-04-05T12:25:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-97-1', 'seed-ticket-97', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T12:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-97-2', 'seed-ticket-97', 'prod-mocha', 1, 16500, 0, '2026-04-05T12:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-97-3', 'seed-ticket-97', 'prod-latte', 1, 15000, 0, '2026-04-05T12:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-97-4', 'seed-ticket-97', 'prod-americano', 1, 12000, 0, '2026-04-05T12:25:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-97', 'seed-ticket-97', 'cash', 58000, 'completed', '2026-04-05T12:25:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-97', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-97', '2026-04-05T12:25:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-98', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-05T19:00:48.000Z', '2026-04-05T19:00:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-98-1', 'seed-ticket-98', 'prod-americano', 1, 12000, 0, '2026-04-05T19:00:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-98-2', 'seed-ticket-98', 'prod-americano', 1, 12000, 0, '2026-04-05T19:00:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-98', 'seed-ticket-98', 'cash', 24000, 'completed', '2026-04-05T19:00:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-98', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-98', '2026-04-05T19:00:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-99', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-05T17:45:00.000Z', '2026-04-05T17:45:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-99-1', 'seed-ticket-99', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T17:45:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-99-2', 'seed-ticket-99', 'prod-mocha', 1, 16500, 0, '2026-04-05T17:45:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-99-3', 'seed-ticket-99', 'prod-mocha', 1, 16500, 0, '2026-04-05T17:45:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-99-4', 'seed-ticket-99', 'prod-mocha', 1, 16500, 0, '2026-04-05T17:45:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-99', 'seed-ticket-99', 'cash', 64000, 'completed', '2026-04-05T17:45:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-99', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-99', '2026-04-05T17:45:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-100', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T10:14:39.000Z', '2026-04-05T10:14:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-100-1', 'seed-ticket-100', 'prod-americano', 1, 12000, 0, '2026-04-05T10:14:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-100-2', 'seed-ticket-100', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T10:14:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-100-3', 'seed-ticket-100', 'prod-americano', 1, 12000, 0, '2026-04-05T10:14:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-100', 'seed-ticket-100', 'cash', 38500, 'completed', '2026-04-05T10:14:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-100', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-100', '2026-04-05T10:14:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-101', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-05T18:53:10.000Z', '2026-04-05T18:53:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-101-1', 'seed-ticket-101', 'prod-americano', 1, 12000, 0, '2026-04-05T18:53:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-101-2', 'seed-ticket-101', 'prod-mocha', 1, 16500, 0, '2026-04-05T18:53:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-101', 'seed-ticket-101', 'cash', 28500, 'completed', '2026-04-05T18:53:10.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-101', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-101', '2026-04-05T18:53:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-102', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-05T17:58:33.000Z', '2026-04-05T17:58:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-102-1', 'seed-ticket-102', 'prod-americano', 1, 12000, 0, '2026-04-05T17:58:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-102', 'seed-ticket-102', 'cash', 12000, 'completed', '2026-04-05T17:58:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-102', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-102', '2026-04-05T17:58:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-103', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-05T19:47:36.000Z', '2026-04-05T19:47:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-103-1', 'seed-ticket-103', 'prod-americano', 1, 12000, 0, '2026-04-05T19:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-103-2', 'seed-ticket-103', 'prod-latte', 1, 15000, 0, '2026-04-05T19:47:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-103', 'seed-ticket-103', 'cash', 27000, 'completed', '2026-04-05T19:47:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-103', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-103', '2026-04-05T19:47:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-104', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-05T19:17:23.000Z', '2026-04-05T19:17:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-104-1', 'seed-ticket-104', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T19:17:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-104-2', 'seed-ticket-104', 'prod-americano', 1, 12000, 0, '2026-04-05T19:17:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-104', 'seed-ticket-104', 'cash', 26500, 'completed', '2026-04-05T19:17:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-104', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-104', '2026-04-05T19:17:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-105', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-05T10:54:36.000Z', '2026-04-05T10:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-105-1', 'seed-ticket-105', 'prod-latte', 1, 15000, 0, '2026-04-05T10:54:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-105-2', 'seed-ticket-105', 'prod-latte', 1, 15000, 0, '2026-04-05T10:54:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-105-3', 'seed-ticket-105', 'prod-latte', 1, 15000, 0, '2026-04-05T10:54:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-105-4', 'seed-ticket-105', 'prod-latte', 1, 15000, 0, '2026-04-05T10:54:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-105', 'seed-ticket-105', 'cash', 60000, 'completed', '2026-04-05T10:54:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-105', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-105', '2026-04-05T10:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-106', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-05T19:01:24.000Z', '2026-04-05T19:01:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-106-1', 'seed-ticket-106', 'prod-mocha', 1, 16500, 0, '2026-04-05T19:01:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-106-2', 'seed-ticket-106', 'prod-americano', 1, 12000, 0, '2026-04-05T19:01:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-106', 'seed-ticket-106', 'cash', 28500, 'completed', '2026-04-05T19:01:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-106', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-106', '2026-04-05T19:01:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-107', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-04-05T12:36:13.000Z', '2026-04-05T12:36:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-107-1', 'seed-ticket-107', 'prod-mocha', 1, 16500, 0, '2026-04-05T12:36:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-107-2', 'seed-ticket-107', 'prod-cappuccino', 1, 14500, 0, '2026-04-05T12:36:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-107-3', 'seed-ticket-107', 'prod-latte', 1, 15000, 0, '2026-04-05T12:36:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-107', 'seed-ticket-107', 'cash', 46000, 'completed', '2026-04-05T12:36:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-107', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-107', '2026-04-05T12:36:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-108', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-05T18:30:58.000Z', '2026-04-05T18:30:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-108-1', 'seed-ticket-108', 'prod-latte', 1, 15000, 0, '2026-04-05T18:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-108-2', 'seed-ticket-108', 'prod-americano', 1, 12000, 0, '2026-04-05T18:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-108-3', 'seed-ticket-108', 'prod-latte', 1, 15000, 0, '2026-04-05T18:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-108-4', 'seed-ticket-108', 'prod-latte', 1, 15000, 0, '2026-04-05T18:30:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-108', 'seed-ticket-108', 'cash', 57000, 'completed', '2026-04-05T18:30:58.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-108', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-108', '2026-04-05T18:30:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-109', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-06T19:26:32.000Z', '2026-04-06T19:26:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-109-1', 'seed-ticket-109', 'prod-americano', 1, 12000, 0, '2026-04-06T19:26:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-109-2', 'seed-ticket-109', 'prod-latte', 1, 15000, 0, '2026-04-06T19:26:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-109-3', 'seed-ticket-109', 'prod-latte', 1, 15000, 0, '2026-04-06T19:26:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-109', 'seed-ticket-109', 'cash', 42000, 'completed', '2026-04-06T19:26:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-109', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-109', '2026-04-06T19:26:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-110', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-06T09:28:32.000Z', '2026-04-06T09:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-110-1', 'seed-ticket-110', 'prod-americano', 1, 12000, 0, '2026-04-06T09:28:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-110-2', 'seed-ticket-110', 'prod-mocha', 1, 16500, 0, '2026-04-06T09:28:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-110-3', 'seed-ticket-110', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T09:28:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-110', 'seed-ticket-110', 'cash', 43000, 'completed', '2026-04-06T09:28:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-110', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-110', '2026-04-06T09:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-111', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-06T08:32:38.000Z', '2026-04-06T08:32:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-111-1', 'seed-ticket-111', 'prod-mocha', 1, 16500, 0, '2026-04-06T08:32:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-111-2', 'seed-ticket-111', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T08:32:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-111-3', 'seed-ticket-111', 'prod-americano', 1, 12000, 0, '2026-04-06T08:32:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-111', 'seed-ticket-111', 'cash', 43000, 'completed', '2026-04-06T08:32:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-111', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-111', '2026-04-06T08:32:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-112', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-06T09:51:57.000Z', '2026-04-06T09:51:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-112-1', 'seed-ticket-112', 'prod-mocha', 1, 16500, 0, '2026-04-06T09:51:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-112-2', 'seed-ticket-112', 'prod-americano', 1, 12000, 0, '2026-04-06T09:51:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-112', 'seed-ticket-112', 'cash', 28500, 'completed', '2026-04-06T09:51:57.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-112', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-112', '2026-04-06T09:51:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-113', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-06T18:25:46.000Z', '2026-04-06T18:25:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-113-1', 'seed-ticket-113', 'prod-latte', 1, 15000, 0, '2026-04-06T18:25:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-113-2', 'seed-ticket-113', 'prod-mocha', 1, 16500, 0, '2026-04-06T18:25:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-113-3', 'seed-ticket-113', 'prod-mocha', 1, 16500, 0, '2026-04-06T18:25:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-113-4', 'seed-ticket-113', 'prod-mocha', 1, 16500, 0, '2026-04-06T18:25:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-113', 'seed-ticket-113', 'cash', 64500, 'completed', '2026-04-06T18:25:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-113', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-113', '2026-04-06T18:25:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-114', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-06T09:06:17.000Z', '2026-04-06T09:06:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-114-1', 'seed-ticket-114', 'prod-mocha', 1, 16500, 0, '2026-04-06T09:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-114-2', 'seed-ticket-114', 'prod-mocha', 1, 16500, 0, '2026-04-06T09:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-114-3', 'seed-ticket-114', 'prod-latte', 1, 15000, 0, '2026-04-06T09:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-114-4', 'seed-ticket-114', 'prod-mocha', 1, 16500, 0, '2026-04-06T09:06:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-114', 'seed-ticket-114', 'cash', 64500, 'completed', '2026-04-06T09:06:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-114', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-114', '2026-04-06T09:06:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-115', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-06T14:56:28.000Z', '2026-04-06T14:56:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-115-1', 'seed-ticket-115', 'prod-americano', 1, 12000, 0, '2026-04-06T14:56:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-115', 'seed-ticket-115', 'cash', 12000, 'completed', '2026-04-06T14:56:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-115', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-115', '2026-04-06T14:56:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-116', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-06T17:04:22.000Z', '2026-04-06T17:04:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-116-1', 'seed-ticket-116', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T17:04:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-116-2', 'seed-ticket-116', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T17:04:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-116-3', 'seed-ticket-116', 'prod-latte', 1, 15000, 0, '2026-04-06T17:04:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-116-4', 'seed-ticket-116', 'prod-mocha', 1, 16500, 0, '2026-04-06T17:04:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-116', 'seed-ticket-116', 'cash', 60500, 'completed', '2026-04-06T17:04:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-116', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-116', '2026-04-06T17:04:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-117', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-06T12:35:43.000Z', '2026-04-06T12:35:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-117-1', 'seed-ticket-117', 'prod-americano', 1, 12000, 0, '2026-04-06T12:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-117-2', 'seed-ticket-117', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T12:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-117-3', 'seed-ticket-117', 'prod-mocha', 1, 16500, 0, '2026-04-06T12:35:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-117', 'seed-ticket-117', 'cash', 43000, 'completed', '2026-04-06T12:35:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-117', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-117', '2026-04-06T12:35:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-118', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-06T19:24:17.000Z', '2026-04-06T19:24:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-118-1', 'seed-ticket-118', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T19:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-118-2', 'seed-ticket-118', 'prod-americano', 1, 12000, 0, '2026-04-06T19:24:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-118', 'seed-ticket-118', 'cash', 26500, 'completed', '2026-04-06T19:24:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-118', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-118', '2026-04-06T19:24:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-119', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-06T08:25:03.000Z', '2026-04-06T08:25:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-119-1', 'seed-ticket-119', 'prod-latte', 1, 15000, 0, '2026-04-06T08:25:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-119', 'seed-ticket-119', 'cash', 15000, 'completed', '2026-04-06T08:25:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-119', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-119', '2026-04-06T08:25:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-120', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-06T18:22:04.000Z', '2026-04-06T18:22:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-120-1', 'seed-ticket-120', 'prod-americano', 1, 12000, 0, '2026-04-06T18:22:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-120', 'seed-ticket-120', 'cash', 12000, 'completed', '2026-04-06T18:22:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-120', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-120', '2026-04-06T18:22:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-121', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-06T14:39:12.000Z', '2026-04-06T14:39:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-121-1', 'seed-ticket-121', 'prod-latte', 1, 15000, 0, '2026-04-06T14:39:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-121-2', 'seed-ticket-121', 'prod-mocha', 1, 16500, 0, '2026-04-06T14:39:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-121-3', 'seed-ticket-121', 'prod-americano', 1, 12000, 0, '2026-04-06T14:39:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-121', 'seed-ticket-121', 'cash', 43500, 'completed', '2026-04-06T14:39:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-121', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-121', '2026-04-06T14:39:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-122', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-06T10:21:48.000Z', '2026-04-06T10:21:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-122-1', 'seed-ticket-122', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T10:21:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-122-2', 'seed-ticket-122', 'prod-latte', 1, 15000, 0, '2026-04-06T10:21:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-122', 'seed-ticket-122', 'cash', 29500, 'completed', '2026-04-06T10:21:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-122', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-122', '2026-04-06T10:21:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-123', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-06T16:18:23.000Z', '2026-04-06T16:18:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-123-1', 'seed-ticket-123', 'prod-mocha', 1, 16500, 0, '2026-04-06T16:18:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-123', 'seed-ticket-123', 'cash', 16500, 'completed', '2026-04-06T16:18:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-123', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-123', '2026-04-06T16:18:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-124', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-06T13:52:24.000Z', '2026-04-06T13:52:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-124-1', 'seed-ticket-124', 'prod-mocha', 1, 16500, 0, '2026-04-06T13:52:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-124-2', 'seed-ticket-124', 'prod-mocha', 1, 16500, 0, '2026-04-06T13:52:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-124-3', 'seed-ticket-124', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T13:52:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-124-4', 'seed-ticket-124', 'prod-latte', 1, 15000, 0, '2026-04-06T13:52:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-124', 'seed-ticket-124', 'cash', 62500, 'completed', '2026-04-06T13:52:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-124', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-124', '2026-04-06T13:52:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-125', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-06T17:12:12.000Z', '2026-04-06T17:12:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-125-1', 'seed-ticket-125', 'prod-latte', 1, 15000, 0, '2026-04-06T17:12:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-125-2', 'seed-ticket-125', 'prod-americano', 1, 12000, 0, '2026-04-06T17:12:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-125', 'seed-ticket-125', 'cash', 27000, 'completed', '2026-04-06T17:12:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-125', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-125', '2026-04-06T17:12:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-126', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-06T16:01:53.000Z', '2026-04-06T16:01:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-126-1', 'seed-ticket-126', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T16:01:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-126-2', 'seed-ticket-126', 'prod-cappuccino', 1, 14500, 0, '2026-04-06T16:01:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-126', 'seed-ticket-126', 'cash', 29000, 'completed', '2026-04-06T16:01:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-126', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-126', '2026-04-06T16:01:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-127', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-06T08:37:40.000Z', '2026-04-06T08:37:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-127-1', 'seed-ticket-127', 'prod-latte', 1, 15000, 0, '2026-04-06T08:37:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-127', 'seed-ticket-127', 'cash', 15000, 'completed', '2026-04-06T08:37:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-127', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-127', '2026-04-06T08:37:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-128', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-06T12:01:48.000Z', '2026-04-06T12:01:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-128-1', 'seed-ticket-128', 'prod-americano', 1, 12000, 0, '2026-04-06T12:01:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-128', 'seed-ticket-128', 'cash', 12000, 'completed', '2026-04-06T12:01:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-128', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-128', '2026-04-06T12:01:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-129', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-06T14:40:28.000Z', '2026-04-06T14:40:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-129-1', 'seed-ticket-129', 'prod-latte', 1, 15000, 0, '2026-04-06T14:40:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-129-2', 'seed-ticket-129', 'prod-americano', 1, 12000, 0, '2026-04-06T14:40:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-129-3', 'seed-ticket-129', 'prod-latte', 1, 15000, 0, '2026-04-06T14:40:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-129', 'seed-ticket-129', 'cash', 42000, 'completed', '2026-04-06T14:40:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-129', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-129', '2026-04-06T14:40:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-130', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-07T15:46:30.000Z', '2026-04-07T15:46:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-130-1', 'seed-ticket-130', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T15:46:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-130-2', 'seed-ticket-130', 'prod-americano', 1, 12000, 0, '2026-04-07T15:46:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-130', 'seed-ticket-130', 'cash', 26500, 'completed', '2026-04-07T15:46:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-130', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-130', '2026-04-07T15:46:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-131', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-07T10:27:07.000Z', '2026-04-07T10:27:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-131-1', 'seed-ticket-131', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T10:27:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-131', 'seed-ticket-131', 'cash', 14500, 'completed', '2026-04-07T10:27:07.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-131', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-131', '2026-04-07T10:27:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-132', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-07T08:17:27.000Z', '2026-04-07T08:17:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-132-1', 'seed-ticket-132', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T08:17:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-132', 'seed-ticket-132', 'cash', 14500, 'completed', '2026-04-07T08:17:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-132', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-132', '2026-04-07T08:17:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-133', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-07T16:31:43.000Z', '2026-04-07T16:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-133-1', 'seed-ticket-133', 'prod-latte', 1, 15000, 0, '2026-04-07T16:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-133-2', 'seed-ticket-133', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T16:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-133-3', 'seed-ticket-133', 'prod-americano', 1, 12000, 0, '2026-04-07T16:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-133-4', 'seed-ticket-133', 'prod-americano', 1, 12000, 0, '2026-04-07T16:31:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-133', 'seed-ticket-133', 'cash', 53500, 'completed', '2026-04-07T16:31:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-133', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-133', '2026-04-07T16:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-134', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-07T13:03:44.000Z', '2026-04-07T13:03:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-134-1', 'seed-ticket-134', 'prod-americano', 1, 12000, 0, '2026-04-07T13:03:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-134-2', 'seed-ticket-134', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T13:03:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-134-3', 'seed-ticket-134', 'prod-mocha', 1, 16500, 0, '2026-04-07T13:03:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-134-4', 'seed-ticket-134', 'prod-latte', 1, 15000, 0, '2026-04-07T13:03:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-134', 'seed-ticket-134', 'cash', 58000, 'completed', '2026-04-07T13:03:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-134', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-134', '2026-04-07T13:03:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-135', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-07T11:24:40.000Z', '2026-04-07T11:24:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-135-1', 'seed-ticket-135', 'prod-americano', 1, 12000, 0, '2026-04-07T11:24:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-135', 'seed-ticket-135', 'cash', 12000, 'completed', '2026-04-07T11:24:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-135', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-135', '2026-04-07T11:24:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-136', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-07T11:02:35.000Z', '2026-04-07T11:02:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-136-1', 'seed-ticket-136', 'prod-mocha', 1, 16500, 0, '2026-04-07T11:02:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-136-2', 'seed-ticket-136', 'prod-mocha', 1, 16500, 0, '2026-04-07T11:02:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-136-3', 'seed-ticket-136', 'prod-mocha', 1, 16500, 0, '2026-04-07T11:02:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-136-4', 'seed-ticket-136', 'prod-americano', 1, 12000, 0, '2026-04-07T11:02:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-136', 'seed-ticket-136', 'cash', 61500, 'completed', '2026-04-07T11:02:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-136', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-136', '2026-04-07T11:02:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-137', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-07T08:59:28.000Z', '2026-04-07T08:59:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-137-1', 'seed-ticket-137', 'prod-mocha', 1, 16500, 0, '2026-04-07T08:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-137-2', 'seed-ticket-137', 'prod-mocha', 1, 16500, 0, '2026-04-07T08:59:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-137', 'seed-ticket-137', 'cash', 33000, 'completed', '2026-04-07T08:59:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-137', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-137', '2026-04-07T08:59:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-138', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-07T08:38:42.000Z', '2026-04-07T08:38:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-138-1', 'seed-ticket-138', 'prod-americano', 1, 12000, 0, '2026-04-07T08:38:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-138', 'seed-ticket-138', 'cash', 12000, 'completed', '2026-04-07T08:38:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-138', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-138', '2026-04-07T08:38:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-139', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-07T08:52:17.000Z', '2026-04-07T08:52:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-139-1', 'seed-ticket-139', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T08:52:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-139-2', 'seed-ticket-139', 'prod-mocha', 1, 16500, 0, '2026-04-07T08:52:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-139-3', 'seed-ticket-139', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T08:52:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-139', 'seed-ticket-139', 'cash', 45500, 'completed', '2026-04-07T08:52:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-139', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-139', '2026-04-07T08:52:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-140', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-07T15:20:16.000Z', '2026-04-07T15:20:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-140-1', 'seed-ticket-140', 'prod-latte', 1, 15000, 0, '2026-04-07T15:20:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-140-2', 'seed-ticket-140', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T15:20:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-140', 'seed-ticket-140', 'cash', 29500, 'completed', '2026-04-07T15:20:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-140', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-140', '2026-04-07T15:20:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-141', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-07T18:49:42.000Z', '2026-04-07T18:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-141-1', 'seed-ticket-141', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-141-2', 'seed-ticket-141', 'prod-americano', 1, 12000, 0, '2026-04-07T18:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-141-3', 'seed-ticket-141', 'prod-americano', 1, 12000, 0, '2026-04-07T18:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-141-4', 'seed-ticket-141', 'prod-latte', 1, 15000, 0, '2026-04-07T18:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-141', 'seed-ticket-141', 'cash', 55500, 'completed', '2026-04-07T18:49:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-141', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-141', '2026-04-07T18:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-142', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-07T10:31:04.000Z', '2026-04-07T10:31:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-142-1', 'seed-ticket-142', 'prod-latte', 1, 15000, 0, '2026-04-07T10:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-142-2', 'seed-ticket-142', 'prod-americano', 1, 12000, 0, '2026-04-07T10:31:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-142', 'seed-ticket-142', 'cash', 27000, 'completed', '2026-04-07T10:31:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-142', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-142', '2026-04-07T10:31:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-143', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-07T17:19:18.000Z', '2026-04-07T17:19:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-143-1', 'seed-ticket-143', 'prod-americano', 1, 12000, 0, '2026-04-07T17:19:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-143', 'seed-ticket-143', 'cash', 12000, 'completed', '2026-04-07T17:19:18.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-143', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-143', '2026-04-07T17:19:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-144', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-07T18:42:55.000Z', '2026-04-07T18:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-144-1', 'seed-ticket-144', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-144-2', 'seed-ticket-144', 'prod-latte', 1, 15000, 0, '2026-04-07T18:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-144-3', 'seed-ticket-144', 'prod-mocha', 1, 16500, 0, '2026-04-07T18:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-144-4', 'seed-ticket-144', 'prod-americano', 1, 12000, 0, '2026-04-07T18:42:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-144', 'seed-ticket-144', 'cash', 60000, 'completed', '2026-04-07T18:42:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-144', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-144', '2026-04-07T18:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-145', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-07T11:02:40.000Z', '2026-04-07T11:02:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-145-1', 'seed-ticket-145', 'prod-latte', 1, 15000, 0, '2026-04-07T11:02:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-145', 'seed-ticket-145', 'cash', 15000, 'completed', '2026-04-07T11:02:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-145', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-145', '2026-04-07T11:02:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-146', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-07T19:18:08.000Z', '2026-04-07T19:18:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-146-1', 'seed-ticket-146', 'prod-latte', 1, 15000, 0, '2026-04-07T19:18:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-146-2', 'seed-ticket-146', 'prod-americano', 1, 12000, 0, '2026-04-07T19:18:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-146-3', 'seed-ticket-146', 'prod-latte', 1, 15000, 0, '2026-04-07T19:18:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-146-4', 'seed-ticket-146', 'prod-latte', 1, 15000, 0, '2026-04-07T19:18:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-146', 'seed-ticket-146', 'cash', 57000, 'completed', '2026-04-07T19:18:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-146', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-146', '2026-04-07T19:18:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-147', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-07T14:45:09.000Z', '2026-04-07T14:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-147-1', 'seed-ticket-147', 'prod-mocha', 1, 16500, 0, '2026-04-07T14:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-147-2', 'seed-ticket-147', 'prod-americano', 1, 12000, 0, '2026-04-07T14:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-147-3', 'seed-ticket-147', 'prod-americano', 1, 12000, 0, '2026-04-07T14:45:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-147', 'seed-ticket-147', 'cash', 40500, 'completed', '2026-04-07T14:45:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-147', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-147', '2026-04-07T14:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-148', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-07T15:27:40.000Z', '2026-04-07T15:27:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-148-1', 'seed-ticket-148', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T15:27:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-148', 'seed-ticket-148', 'cash', 14500, 'completed', '2026-04-07T15:27:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-148', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-148', '2026-04-07T15:27:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-149', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-07T13:23:03.000Z', '2026-04-07T13:23:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-149-1', 'seed-ticket-149', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T13:23:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-149-2', 'seed-ticket-149', 'prod-mocha', 1, 16500, 0, '2026-04-07T13:23:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-149', 'seed-ticket-149', 'cash', 31000, 'completed', '2026-04-07T13:23:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-149', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-149', '2026-04-07T13:23:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-150', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-04-07T09:58:02.000Z', '2026-04-07T09:58:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-150-1', 'seed-ticket-150', 'prod-cappuccino', 1, 14500, 0, '2026-04-07T09:58:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-150-2', 'seed-ticket-150', 'prod-americano', 1, 12000, 0, '2026-04-07T09:58:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-150', 'seed-ticket-150', 'cash', 26500, 'completed', '2026-04-07T09:58:02.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-150', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-150', '2026-04-07T09:58:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-151', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-07T12:26:51.000Z', '2026-04-07T12:26:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-151-1', 'seed-ticket-151', 'prod-latte', 1, 15000, 0, '2026-04-07T12:26:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-151-2', 'seed-ticket-151', 'prod-americano', 1, 12000, 0, '2026-04-07T12:26:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-151', 'seed-ticket-151', 'cash', 27000, 'completed', '2026-04-07T12:26:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-151', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-151', '2026-04-07T12:26:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-152', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-08T14:17:02.000Z', '2026-04-08T14:17:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-152-1', 'seed-ticket-152', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T14:17:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-152-2', 'seed-ticket-152', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T14:17:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-152', 'seed-ticket-152', 'cash', 29000, 'completed', '2026-04-08T14:17:02.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-152', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-152', '2026-04-08T14:17:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-153', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-04-08T15:58:00.000Z', '2026-04-08T15:58:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-153-1', 'seed-ticket-153', 'prod-americano', 1, 12000, 0, '2026-04-08T15:58:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-153-2', 'seed-ticket-153', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T15:58:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-153', 'seed-ticket-153', 'cash', 26500, 'completed', '2026-04-08T15:58:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-153', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-153', '2026-04-08T15:58:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-154', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-08T12:43:35.000Z', '2026-04-08T12:43:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-154-1', 'seed-ticket-154', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T12:43:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-154-2', 'seed-ticket-154', 'prod-latte', 1, 15000, 0, '2026-04-08T12:43:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-154-3', 'seed-ticket-154', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:43:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-154-4', 'seed-ticket-154', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T12:43:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-154', 'seed-ticket-154', 'cash', 60500, 'completed', '2026-04-08T12:43:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-154', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-154', '2026-04-08T12:43:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-155', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-08T08:31:33.000Z', '2026-04-08T08:31:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-155-1', 'seed-ticket-155', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-155-2', 'seed-ticket-155', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-155-3', 'seed-ticket-155', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:31:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-155', 'seed-ticket-155', 'cash', 49500, 'completed', '2026-04-08T08:31:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-155', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-155', '2026-04-08T08:31:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-156', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-08T17:29:51.000Z', '2026-04-08T17:29:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-156-1', 'seed-ticket-156', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T17:29:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-156-2', 'seed-ticket-156', 'prod-mocha', 1, 16500, 0, '2026-04-08T17:29:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-156-3', 'seed-ticket-156', 'prod-americano', 1, 12000, 0, '2026-04-08T17:29:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-156', 'seed-ticket-156', 'cash', 43000, 'completed', '2026-04-08T17:29:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-156', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-156', '2026-04-08T17:29:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-157', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-08T17:25:20.000Z', '2026-04-08T17:25:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-157-1', 'seed-ticket-157', 'prod-americano', 1, 12000, 0, '2026-04-08T17:25:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-157', 'seed-ticket-157', 'cash', 12000, 'completed', '2026-04-08T17:25:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-157', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-157', '2026-04-08T17:25:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-158', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-08T12:53:21.000Z', '2026-04-08T12:53:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-158-1', 'seed-ticket-158', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T12:53:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-158-2', 'seed-ticket-158', 'prod-americano', 1, 12000, 0, '2026-04-08T12:53:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-158-3', 'seed-ticket-158', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:53:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-158', 'seed-ticket-158', 'cash', 43000, 'completed', '2026-04-08T12:53:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-158', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-158', '2026-04-08T12:53:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-159', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-08T09:40:25.000Z', '2026-04-08T09:40:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-159-1', 'seed-ticket-159', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T09:40:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-159-2', 'seed-ticket-159', 'prod-americano', 1, 12000, 0, '2026-04-08T09:40:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-159', 'seed-ticket-159', 'cash', 26500, 'completed', '2026-04-08T09:40:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-159', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-159', '2026-04-08T09:40:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-160', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T10:19:33.000Z', '2026-04-08T10:19:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-160-1', 'seed-ticket-160', 'prod-mocha', 1, 16500, 0, '2026-04-08T10:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-160-2', 'seed-ticket-160', 'prod-mocha', 1, 16500, 0, '2026-04-08T10:19:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-160', 'seed-ticket-160', 'cash', 33000, 'completed', '2026-04-08T10:19:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-160', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-160', '2026-04-08T10:19:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-161', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T14:49:52.000Z', '2026-04-08T14:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-161-1', 'seed-ticket-161', 'prod-latte', 1, 15000, 0, '2026-04-08T14:49:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-161', 'seed-ticket-161', 'cash', 15000, 'completed', '2026-04-08T14:49:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-161', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-161', '2026-04-08T14:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-162', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-08T16:24:31.000Z', '2026-04-08T16:24:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-162-1', 'seed-ticket-162', 'prod-mocha', 1, 16500, 0, '2026-04-08T16:24:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-162-2', 'seed-ticket-162', 'prod-latte', 1, 15000, 0, '2026-04-08T16:24:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-162-3', 'seed-ticket-162', 'prod-latte', 1, 15000, 0, '2026-04-08T16:24:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-162-4', 'seed-ticket-162', 'prod-latte', 1, 15000, 0, '2026-04-08T16:24:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-162', 'seed-ticket-162', 'cash', 61500, 'completed', '2026-04-08T16:24:31.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-162', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-162', '2026-04-08T16:24:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-163', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-08T14:31:45.000Z', '2026-04-08T14:31:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-163-1', 'seed-ticket-163', 'prod-latte', 1, 15000, 0, '2026-04-08T14:31:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-163-2', 'seed-ticket-163', 'prod-americano', 1, 12000, 0, '2026-04-08T14:31:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-163-3', 'seed-ticket-163', 'prod-americano', 1, 12000, 0, '2026-04-08T14:31:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-163', 'seed-ticket-163', 'cash', 39000, 'completed', '2026-04-08T14:31:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-163', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-163', '2026-04-08T14:31:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-164', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T08:04:23.000Z', '2026-04-08T08:04:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-164-1', 'seed-ticket-164', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:04:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-164-2', 'seed-ticket-164', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:04:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-164-3', 'seed-ticket-164', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T08:04:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-164-4', 'seed-ticket-164', 'prod-latte', 1, 15000, 0, '2026-04-08T08:04:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-164', 'seed-ticket-164', 'cash', 62500, 'completed', '2026-04-08T08:04:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-164', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-164', '2026-04-08T08:04:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-165', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-08T12:44:17.000Z', '2026-04-08T12:44:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-165-1', 'seed-ticket-165', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T12:44:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-165', 'seed-ticket-165', 'cash', 14500, 'completed', '2026-04-08T12:44:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-165', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-165', '2026-04-08T12:44:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-166', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-08T17:35:01.000Z', '2026-04-08T17:35:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-166-1', 'seed-ticket-166', 'prod-latte', 1, 15000, 0, '2026-04-08T17:35:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-166-2', 'seed-ticket-166', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T17:35:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-166', 'seed-ticket-166', 'cash', 29500, 'completed', '2026-04-08T17:35:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-166', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-166', '2026-04-08T17:35:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-167', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-08T12:06:45.000Z', '2026-04-08T12:06:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-167-1', 'seed-ticket-167', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:06:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-167-2', 'seed-ticket-167', 'prod-latte', 1, 15000, 0, '2026-04-08T12:06:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-167-3', 'seed-ticket-167', 'prod-latte', 1, 15000, 0, '2026-04-08T12:06:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-167-4', 'seed-ticket-167', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:06:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-167', 'seed-ticket-167', 'cash', 63000, 'completed', '2026-04-08T12:06:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-167', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-167', '2026-04-08T12:06:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-168', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-08T10:52:54.000Z', '2026-04-08T10:52:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-168-1', 'seed-ticket-168', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T10:52:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-168-2', 'seed-ticket-168', 'prod-mocha', 1, 16500, 0, '2026-04-08T10:52:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-168-3', 'seed-ticket-168', 'prod-mocha', 1, 16500, 0, '2026-04-08T10:52:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-168', 'seed-ticket-168', 'cash', 47500, 'completed', '2026-04-08T10:52:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-168', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-168', '2026-04-08T10:52:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-169', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T12:16:42.000Z', '2026-04-08T12:16:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-169-1', 'seed-ticket-169', 'prod-americano', 1, 12000, 0, '2026-04-08T12:16:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-169-2', 'seed-ticket-169', 'prod-americano', 1, 12000, 0, '2026-04-08T12:16:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-169-3', 'seed-ticket-169', 'prod-latte', 1, 15000, 0, '2026-04-08T12:16:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-169', 'seed-ticket-169', 'cash', 39000, 'completed', '2026-04-08T12:16:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-169', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-169', '2026-04-08T12:16:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-170', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-08T12:41:15.000Z', '2026-04-08T12:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-170-1', 'seed-ticket-170', 'prod-americano', 1, 12000, 0, '2026-04-08T12:41:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-170-2', 'seed-ticket-170', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:41:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-170', 'seed-ticket-170', 'cash', 28500, 'completed', '2026-04-08T12:41:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-170', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-170', '2026-04-08T12:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-171', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-08T11:51:38.000Z', '2026-04-08T11:51:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-171-1', 'seed-ticket-171', 'prod-mocha', 1, 16500, 0, '2026-04-08T11:51:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-171-2', 'seed-ticket-171', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T11:51:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-171-3', 'seed-ticket-171', 'prod-mocha', 1, 16500, 0, '2026-04-08T11:51:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-171', 'seed-ticket-171', 'cash', 47500, 'completed', '2026-04-08T11:51:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-171', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-171', '2026-04-08T11:51:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-172', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-09T19:54:39.000Z', '2026-04-09T19:54:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-172-1', 'seed-ticket-172', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T19:54:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-172-2', 'seed-ticket-172', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T19:54:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-172-3', 'seed-ticket-172', 'prod-latte', 1, 15000, 0, '2026-04-09T19:54:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-172', 'seed-ticket-172', 'cash', 44000, 'completed', '2026-04-09T19:54:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-172', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-172', '2026-04-09T19:54:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-173', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-09T14:25:15.000Z', '2026-04-09T14:25:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-173-1', 'seed-ticket-173', 'prod-americano', 1, 12000, 0, '2026-04-09T14:25:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-173-2', 'seed-ticket-173', 'prod-latte', 1, 15000, 0, '2026-04-09T14:25:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-173', 'seed-ticket-173', 'cash', 27000, 'completed', '2026-04-09T14:25:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-173', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-173', '2026-04-09T14:25:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-174', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-09T12:33:26.000Z', '2026-04-09T12:33:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-174-1', 'seed-ticket-174', 'prod-latte', 1, 15000, 0, '2026-04-09T12:33:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-174-2', 'seed-ticket-174', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:33:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-174', 'seed-ticket-174', 'cash', 29500, 'completed', '2026-04-09T12:33:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-174', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-174', '2026-04-09T12:33:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-175', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-09T18:21:30.000Z', '2026-04-09T18:21:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-175-1', 'seed-ticket-175', 'prod-mocha', 1, 16500, 0, '2026-04-09T18:21:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-175', 'seed-ticket-175', 'cash', 16500, 'completed', '2026-04-09T18:21:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-175', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-175', '2026-04-09T18:21:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-176', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-09T17:11:14.000Z', '2026-04-09T17:11:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-176-1', 'seed-ticket-176', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:11:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-176-2', 'seed-ticket-176', 'prod-americano', 1, 12000, 0, '2026-04-09T17:11:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-176-3', 'seed-ticket-176', 'prod-latte', 1, 15000, 0, '2026-04-09T17:11:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-176', 'seed-ticket-176', 'cash', 41500, 'completed', '2026-04-09T17:11:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-176', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-176', '2026-04-09T17:11:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-177', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-09T18:34:23.000Z', '2026-04-09T18:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-177-1', 'seed-ticket-177', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T18:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-177-2', 'seed-ticket-177', 'prod-americano', 1, 12000, 0, '2026-04-09T18:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-177-3', 'seed-ticket-177', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T18:34:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-177', 'seed-ticket-177', 'cash', 41000, 'completed', '2026-04-09T18:34:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-177', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-177', '2026-04-09T18:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-178', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-09T14:06:55.000Z', '2026-04-09T14:06:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-178-1', 'seed-ticket-178', 'prod-mocha', 1, 16500, 0, '2026-04-09T14:06:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-178-2', 'seed-ticket-178', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T14:06:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-178-3', 'seed-ticket-178', 'prod-mocha', 1, 16500, 0, '2026-04-09T14:06:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-178', 'seed-ticket-178', 'cash', 47500, 'completed', '2026-04-09T14:06:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-178', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-178', '2026-04-09T14:06:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-179', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-09T17:30:43.000Z', '2026-04-09T17:30:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-179-1', 'seed-ticket-179', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:30:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-179', 'seed-ticket-179', 'cash', 14500, 'completed', '2026-04-09T17:30:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-179', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-179', '2026-04-09T17:30:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-180', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-09T09:33:20.000Z', '2026-04-09T09:33:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-180-1', 'seed-ticket-180', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T09:33:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-180-2', 'seed-ticket-180', 'prod-latte', 1, 15000, 0, '2026-04-09T09:33:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-180', 'seed-ticket-180', 'cash', 29500, 'completed', '2026-04-09T09:33:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-180', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-180', '2026-04-09T09:33:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-181', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-04-09T08:31:17.000Z', '2026-04-09T08:31:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-181-1', 'seed-ticket-181', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T08:31:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-181-2', 'seed-ticket-181', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T08:31:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-181-3', 'seed-ticket-181', 'prod-mocha', 1, 16500, 0, '2026-04-09T08:31:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-181-4', 'seed-ticket-181', 'prod-mocha', 1, 16500, 0, '2026-04-09T08:31:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-181', 'seed-ticket-181', 'cash', 62000, 'completed', '2026-04-09T08:31:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-181', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-181', '2026-04-09T08:31:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-182', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-09T08:55:00.000Z', '2026-04-09T08:55:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-182-1', 'seed-ticket-182', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T08:55:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-182', 'seed-ticket-182', 'cash', 14500, 'completed', '2026-04-09T08:55:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-182', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-182', '2026-04-09T08:55:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-183', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-09T09:16:37.000Z', '2026-04-09T09:16:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-183-1', 'seed-ticket-183', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T09:16:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-183-2', 'seed-ticket-183', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T09:16:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-183', 'seed-ticket-183', 'cash', 29000, 'completed', '2026-04-09T09:16:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-183', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-183', '2026-04-09T09:16:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-184', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-09T14:25:55.000Z', '2026-04-09T14:25:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-184-1', 'seed-ticket-184', 'prod-latte', 1, 15000, 0, '2026-04-09T14:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-184-2', 'seed-ticket-184', 'prod-mocha', 1, 16500, 0, '2026-04-09T14:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-184-3', 'seed-ticket-184', 'prod-latte', 1, 15000, 0, '2026-04-09T14:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-184-4', 'seed-ticket-184', 'prod-americano', 1, 12000, 0, '2026-04-09T14:25:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-184', 'seed-ticket-184', 'cash', 58500, 'completed', '2026-04-09T14:25:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-184', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-184', '2026-04-09T14:25:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-185', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-09T09:52:43.000Z', '2026-04-09T09:52:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-185-1', 'seed-ticket-185', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:52:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-185-2', 'seed-ticket-185', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:52:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-185', 'seed-ticket-185', 'cash', 33000, 'completed', '2026-04-09T09:52:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-185', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-185', '2026-04-09T09:52:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-186', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-09T13:00:33.000Z', '2026-04-09T13:00:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-186-1', 'seed-ticket-186', 'prod-mocha', 1, 16500, 0, '2026-04-09T13:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-186-2', 'seed-ticket-186', 'prod-americano', 1, 12000, 0, '2026-04-09T13:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-186-3', 'seed-ticket-186', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T13:00:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-186', 'seed-ticket-186', 'cash', 43000, 'completed', '2026-04-09T13:00:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-186', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-186', '2026-04-09T13:00:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-187', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-09T12:32:49.000Z', '2026-04-09T12:32:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-187-1', 'seed-ticket-187', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:32:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-187-2', 'seed-ticket-187', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:32:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-187-3', 'seed-ticket-187', 'prod-americano', 1, 12000, 0, '2026-04-09T12:32:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-187-4', 'seed-ticket-187', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:32:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-187', 'seed-ticket-187', 'cash', 57500, 'completed', '2026-04-09T12:32:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-187', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-187', '2026-04-09T12:32:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-188', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-09T09:47:41.000Z', '2026-04-09T09:47:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-188-1', 'seed-ticket-188', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:47:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-188-2', 'seed-ticket-188', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:47:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-188', 'seed-ticket-188', 'cash', 33000, 'completed', '2026-04-09T09:47:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-188', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-188', '2026-04-09T09:47:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-189', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-09T12:11:24.000Z', '2026-04-09T12:11:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-189-1', 'seed-ticket-189', 'prod-latte', 1, 15000, 0, '2026-04-09T12:11:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-189-2', 'seed-ticket-189', 'prod-americano', 1, 12000, 0, '2026-04-09T12:11:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-189-3', 'seed-ticket-189', 'prod-latte', 1, 15000, 0, '2026-04-09T12:11:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-189-4', 'seed-ticket-189', 'prod-latte', 1, 15000, 0, '2026-04-09T12:11:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-189', 'seed-ticket-189', 'cash', 57000, 'completed', '2026-04-09T12:11:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-189', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-189', '2026-04-09T12:11:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-190', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-09T17:11:35.000Z', '2026-04-09T17:11:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-190-1', 'seed-ticket-190', 'prod-mocha', 1, 16500, 0, '2026-04-09T17:11:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-190', 'seed-ticket-190', 'cash', 16500, 'completed', '2026-04-09T17:11:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-190', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-190', '2026-04-09T17:11:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-191', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-09T15:17:53.000Z', '2026-04-09T15:17:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-191-1', 'seed-ticket-191', 'prod-americano', 1, 12000, 0, '2026-04-09T15:17:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-191-2', 'seed-ticket-191', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:17:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-191', 'seed-ticket-191', 'cash', 28500, 'completed', '2026-04-09T15:17:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-191', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-191', '2026-04-09T15:17:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-192', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-09T15:24:59.000Z', '2026-04-09T15:24:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-192-1', 'seed-ticket-192', 'prod-latte', 1, 15000, 0, '2026-04-09T15:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-192-2', 'seed-ticket-192', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-192-3', 'seed-ticket-192', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:24:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-192', 'seed-ticket-192', 'cash', 48000, 'completed', '2026-04-09T15:24:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-192', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-192', '2026-04-09T15:24:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-193', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-10T11:44:39.000Z', '2026-04-10T11:44:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-193-1', 'seed-ticket-193', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T11:44:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-193-2', 'seed-ticket-193', 'prod-americano', 1, 12000, 0, '2026-04-10T11:44:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-193-3', 'seed-ticket-193', 'prod-mocha', 1, 16500, 0, '2026-04-10T11:44:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-193', 'seed-ticket-193', 'cash', 43000, 'completed', '2026-04-10T11:44:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-193', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-193', '2026-04-10T11:44:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-194', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-10T13:50:17.000Z', '2026-04-10T13:50:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-194-1', 'seed-ticket-194', 'prod-mocha', 1, 16500, 0, '2026-04-10T13:50:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-194', 'seed-ticket-194', 'cash', 16500, 'completed', '2026-04-10T13:50:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-194', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-194', '2026-04-10T13:50:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-195', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T12:07:44.000Z', '2026-04-10T12:07:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-195-1', 'seed-ticket-195', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T12:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-195-2', 'seed-ticket-195', 'prod-latte', 1, 15000, 0, '2026-04-10T12:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-195-3', 'seed-ticket-195', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T12:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-195-4', 'seed-ticket-195', 'prod-latte', 1, 15000, 0, '2026-04-10T12:07:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-195', 'seed-ticket-195', 'cash', 59000, 'completed', '2026-04-10T12:07:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-195', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-195', '2026-04-10T12:07:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-196', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T15:52:33.000Z', '2026-04-10T15:52:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-196-1', 'seed-ticket-196', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T15:52:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-196', 'seed-ticket-196', 'cash', 14500, 'completed', '2026-04-10T15:52:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-196', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-196', '2026-04-10T15:52:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-197', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-10T17:47:08.000Z', '2026-04-10T17:47:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-197-1', 'seed-ticket-197', 'prod-mocha', 1, 16500, 0, '2026-04-10T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-197-2', 'seed-ticket-197', 'prod-americano', 1, 12000, 0, '2026-04-10T17:47:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-197', 'seed-ticket-197', 'cash', 28500, 'completed', '2026-04-10T17:47:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-197', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-197', '2026-04-10T17:47:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-198', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-10T17:14:06.000Z', '2026-04-10T17:14:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-198-1', 'seed-ticket-198', 'prod-americano', 1, 12000, 0, '2026-04-10T17:14:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-198-2', 'seed-ticket-198', 'prod-latte', 1, 15000, 0, '2026-04-10T17:14:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-198-3', 'seed-ticket-198', 'prod-americano', 1, 12000, 0, '2026-04-10T17:14:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-198', 'seed-ticket-198', 'cash', 39000, 'completed', '2026-04-10T17:14:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-198', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-198', '2026-04-10T17:14:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-199', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-04-10T16:19:24.000Z', '2026-04-10T16:19:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-199-1', 'seed-ticket-199', 'prod-latte', 1, 15000, 0, '2026-04-10T16:19:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-199-2', 'seed-ticket-199', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T16:19:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-199-3', 'seed-ticket-199', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T16:19:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-199', 'seed-ticket-199', 'cash', 44000, 'completed', '2026-04-10T16:19:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-199', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-199', '2026-04-10T16:19:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-200', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-10T12:58:20.000Z', '2026-04-10T12:58:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-200-1', 'seed-ticket-200', 'prod-latte', 1, 15000, 0, '2026-04-10T12:58:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-200-2', 'seed-ticket-200', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T12:58:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-200-3', 'seed-ticket-200', 'prod-latte', 1, 15000, 0, '2026-04-10T12:58:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-200', 'seed-ticket-200', 'cash', 44500, 'completed', '2026-04-10T12:58:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-200', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-200', '2026-04-10T12:58:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-201', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T13:29:08.000Z', '2026-04-10T13:29:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-201-1', 'seed-ticket-201', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:29:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-201-2', 'seed-ticket-201', 'prod-americano', 1, 12000, 0, '2026-04-10T13:29:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-201', 'seed-ticket-201', 'cash', 26500, 'completed', '2026-04-10T13:29:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-201', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-201', '2026-04-10T13:29:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-202', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T10:08:04.000Z', '2026-04-10T10:08:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-202-1', 'seed-ticket-202', 'prod-americano', 1, 12000, 0, '2026-04-10T10:08:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-202', 'seed-ticket-202', 'cash', 12000, 'completed', '2026-04-10T10:08:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-202', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-202', '2026-04-10T10:08:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-203', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T13:28:06.000Z', '2026-04-10T13:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-203-1', 'seed-ticket-203', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-203-2', 'seed-ticket-203', 'prod-mocha', 1, 16500, 0, '2026-04-10T13:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-203-3', 'seed-ticket-203', 'prod-mocha', 1, 16500, 0, '2026-04-10T13:28:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-203', 'seed-ticket-203', 'cash', 47500, 'completed', '2026-04-10T13:28:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-203', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-203', '2026-04-10T13:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-204', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-10T08:41:14.000Z', '2026-04-10T08:41:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-204-1', 'seed-ticket-204', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T08:41:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-204-2', 'seed-ticket-204', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T08:41:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-204-3', 'seed-ticket-204', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T08:41:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-204-4', 'seed-ticket-204', 'prod-mocha', 1, 16500, 0, '2026-04-10T08:41:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-204', 'seed-ticket-204', 'cash', 60000, 'completed', '2026-04-10T08:41:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-204', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-204', '2026-04-10T08:41:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-205', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T16:45:05.000Z', '2026-04-10T16:45:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-205-1', 'seed-ticket-205', 'prod-latte', 1, 15000, 0, '2026-04-10T16:45:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-205-2', 'seed-ticket-205', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:45:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-205-3', 'seed-ticket-205', 'prod-americano', 1, 12000, 0, '2026-04-10T16:45:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-205', 'seed-ticket-205', 'cash', 43500, 'completed', '2026-04-10T16:45:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-205', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-205', '2026-04-10T16:45:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-206', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-10T19:35:51.000Z', '2026-04-10T19:35:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-206-1', 'seed-ticket-206', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T19:35:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-206-2', 'seed-ticket-206', 'prod-americano', 1, 12000, 0, '2026-04-10T19:35:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-206-3', 'seed-ticket-206', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T19:35:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-206', 'seed-ticket-206', 'cash', 41000, 'completed', '2026-04-10T19:35:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-206', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-206', '2026-04-10T19:35:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-207', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-10T09:00:32.000Z', '2026-04-10T09:00:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-207-1', 'seed-ticket-207', 'prod-americano', 1, 12000, 0, '2026-04-10T09:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-207-2', 'seed-ticket-207', 'prod-americano', 1, 12000, 0, '2026-04-10T09:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-207-3', 'seed-ticket-207', 'prod-mocha', 1, 16500, 0, '2026-04-10T09:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-207-4', 'seed-ticket-207', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T09:00:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-207', 'seed-ticket-207', 'cash', 55000, 'completed', '2026-04-10T09:00:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-207', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-207', '2026-04-10T09:00:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-208', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-10T10:37:37.000Z', '2026-04-10T10:37:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-208-1', 'seed-ticket-208', 'prod-mocha', 1, 16500, 0, '2026-04-10T10:37:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-208-2', 'seed-ticket-208', 'prod-americano', 1, 12000, 0, '2026-04-10T10:37:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-208-3', 'seed-ticket-208', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T10:37:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-208-4', 'seed-ticket-208', 'prod-mocha', 1, 16500, 0, '2026-04-10T10:37:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-208', 'seed-ticket-208', 'cash', 59500, 'completed', '2026-04-10T10:37:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-208', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-208', '2026-04-10T10:37:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-209', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-10T09:38:50.000Z', '2026-04-10T09:38:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-209-1', 'seed-ticket-209', 'prod-americano', 1, 12000, 0, '2026-04-10T09:38:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-209-2', 'seed-ticket-209', 'prod-latte', 1, 15000, 0, '2026-04-10T09:38:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-209', 'seed-ticket-209', 'cash', 27000, 'completed', '2026-04-10T09:38:50.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-209', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-209', '2026-04-10T09:38:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-210', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-10T14:20:15.000Z', '2026-04-10T14:20:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-210-1', 'seed-ticket-210', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T14:20:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-210-2', 'seed-ticket-210', 'prod-latte', 1, 15000, 0, '2026-04-10T14:20:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-210', 'seed-ticket-210', 'cash', 29500, 'completed', '2026-04-10T14:20:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-210', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-210', '2026-04-10T14:20:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-211', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-10T13:13:17.000Z', '2026-04-10T13:13:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-211-1', 'seed-ticket-211', 'prod-americano', 1, 12000, 0, '2026-04-10T13:13:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-211-2', 'seed-ticket-211', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:13:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-211', 'seed-ticket-211', 'cash', 26500, 'completed', '2026-04-10T13:13:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-211', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-211', '2026-04-10T13:13:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-212', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-11T19:44:22.000Z', '2026-04-11T19:44:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-212-1', 'seed-ticket-212', 'prod-latte', 1, 15000, 0, '2026-04-11T19:44:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-212', 'seed-ticket-212', 'cash', 15000, 'completed', '2026-04-11T19:44:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-212', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-212', '2026-04-11T19:44:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-213', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-11T10:41:27.000Z', '2026-04-11T10:41:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-213-1', 'seed-ticket-213', 'prod-mocha', 1, 16500, 0, '2026-04-11T10:41:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-213-2', 'seed-ticket-213', 'prod-latte', 1, 15000, 0, '2026-04-11T10:41:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-213-3', 'seed-ticket-213', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:41:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-213', 'seed-ticket-213', 'cash', 46000, 'completed', '2026-04-11T10:41:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-213', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-213', '2026-04-11T10:41:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-214', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-11T12:41:04.000Z', '2026-04-11T12:41:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-214-1', 'seed-ticket-214', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T12:41:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-214-2', 'seed-ticket-214', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:41:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-214-3', 'seed-ticket-214', 'prod-americano', 1, 12000, 0, '2026-04-11T12:41:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-214', 'seed-ticket-214', 'cash', 43000, 'completed', '2026-04-11T12:41:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-214', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-214', '2026-04-11T12:41:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-215', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-11T16:59:12.000Z', '2026-04-11T16:59:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-215-1', 'seed-ticket-215', 'prod-americano', 1, 12000, 0, '2026-04-11T16:59:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-215-2', 'seed-ticket-215', 'prod-latte', 1, 15000, 0, '2026-04-11T16:59:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-215-3', 'seed-ticket-215', 'prod-mocha', 1, 16500, 0, '2026-04-11T16:59:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-215', 'seed-ticket-215', 'cash', 43500, 'completed', '2026-04-11T16:59:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-215', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-215', '2026-04-11T16:59:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-216', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-11T18:26:15.000Z', '2026-04-11T18:26:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-216-1', 'seed-ticket-216', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:26:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-216-2', 'seed-ticket-216', 'prod-latte', 1, 15000, 0, '2026-04-11T18:26:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-216-3', 'seed-ticket-216', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:26:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-216', 'seed-ticket-216', 'cash', 48000, 'completed', '2026-04-11T18:26:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-216', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-216', '2026-04-11T18:26:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-217', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-11T15:59:51.000Z', '2026-04-11T15:59:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-217-1', 'seed-ticket-217', 'prod-latte', 1, 15000, 0, '2026-04-11T15:59:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-217-2', 'seed-ticket-217', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:59:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-217', 'seed-ticket-217', 'cash', 31500, 'completed', '2026-04-11T15:59:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-217', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-217', '2026-04-11T15:59:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-218', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-11T11:49:42.000Z', '2026-04-11T11:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-218-1', 'seed-ticket-218', 'prod-americano', 1, 12000, 0, '2026-04-11T11:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-218-2', 'seed-ticket-218', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T11:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-218', 'seed-ticket-218', 'cash', 26500, 'completed', '2026-04-11T11:49:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-218', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-218', '2026-04-11T11:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-219', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-11T11:10:49.000Z', '2026-04-11T11:10:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-219-1', 'seed-ticket-219', 'prod-latte', 1, 15000, 0, '2026-04-11T11:10:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-219-2', 'seed-ticket-219', 'prod-mocha', 1, 16500, 0, '2026-04-11T11:10:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-219', 'seed-ticket-219', 'cash', 31500, 'completed', '2026-04-11T11:10:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-219', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-219', '2026-04-11T11:10:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-220', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-11T09:19:21.000Z', '2026-04-11T09:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-220-1', 'seed-ticket-220', 'prod-latte', 1, 15000, 0, '2026-04-11T09:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-220-2', 'seed-ticket-220', 'prod-mocha', 1, 16500, 0, '2026-04-11T09:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-220-3', 'seed-ticket-220', 'prod-americano', 1, 12000, 0, '2026-04-11T09:19:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-220', 'seed-ticket-220', 'cash', 43500, 'completed', '2026-04-11T09:19:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-220', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-220', '2026-04-11T09:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-221', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-11T15:01:26.000Z', '2026-04-11T15:01:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-221-1', 'seed-ticket-221', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:01:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-221', 'seed-ticket-221', 'cash', 14500, 'completed', '2026-04-11T15:01:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-221', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-221', '2026-04-11T15:01:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-222', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-11T10:05:24.000Z', '2026-04-11T10:05:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-222-1', 'seed-ticket-222', 'prod-mocha', 1, 16500, 0, '2026-04-11T10:05:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-222', 'seed-ticket-222', 'cash', 16500, 'completed', '2026-04-11T10:05:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-222', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-222', '2026-04-11T10:05:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-223', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-11T15:48:10.000Z', '2026-04-11T15:48:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-223-1', 'seed-ticket-223', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:48:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-223-2', 'seed-ticket-223', 'prod-latte', 1, 15000, 0, '2026-04-11T15:48:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-223', 'seed-ticket-223', 'cash', 31500, 'completed', '2026-04-11T15:48:10.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-223', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-223', '2026-04-11T15:48:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-224', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-11T18:57:44.000Z', '2026-04-11T18:57:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-224-1', 'seed-ticket-224', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:57:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-224-2', 'seed-ticket-224', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:57:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-224', 'seed-ticket-224', 'cash', 33000, 'completed', '2026-04-11T18:57:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-224', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-224', '2026-04-11T18:57:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-225', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-11T09:27:35.000Z', '2026-04-11T09:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-225-1', 'seed-ticket-225', 'prod-mocha', 1, 16500, 0, '2026-04-11T09:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-225-2', 'seed-ticket-225', 'prod-mocha', 1, 16500, 0, '2026-04-11T09:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-225-3', 'seed-ticket-225', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T09:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-225-4', 'seed-ticket-225', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T09:27:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-225', 'seed-ticket-225', 'cash', 62000, 'completed', '2026-04-11T09:27:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-225', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-225', '2026-04-11T09:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-226', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-11T11:57:12.000Z', '2026-04-11T11:57:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-226-1', 'seed-ticket-226', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T11:57:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-226', 'seed-ticket-226', 'cash', 14500, 'completed', '2026-04-11T11:57:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-226', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-226', '2026-04-11T11:57:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-227', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-04-11T10:42:33.000Z', '2026-04-11T10:42:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-227-1', 'seed-ticket-227', 'prod-latte', 1, 15000, 0, '2026-04-11T10:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-227-2', 'seed-ticket-227', 'prod-latte', 1, 15000, 0, '2026-04-11T10:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-227-3', 'seed-ticket-227', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:42:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-227', 'seed-ticket-227', 'cash', 44500, 'completed', '2026-04-11T10:42:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-227', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-227', '2026-04-11T10:42:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-228', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-11T12:15:54.000Z', '2026-04-11T12:15:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-228-1', 'seed-ticket-228', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T12:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-228-2', 'seed-ticket-228', 'prod-latte', 1, 15000, 0, '2026-04-11T12:15:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-228', 'seed-ticket-228', 'cash', 29500, 'completed', '2026-04-11T12:15:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-228', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-228', '2026-04-11T12:15:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-229', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-11T14:42:38.000Z', '2026-04-11T14:42:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-229-1', 'seed-ticket-229', 'prod-latte', 1, 15000, 0, '2026-04-11T14:42:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-229-2', 'seed-ticket-229', 'prod-americano', 1, 12000, 0, '2026-04-11T14:42:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-229-3', 'seed-ticket-229', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T14:42:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-229-4', 'seed-ticket-229', 'prod-mocha', 1, 16500, 0, '2026-04-11T14:42:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-229', 'seed-ticket-229', 'cash', 58000, 'completed', '2026-04-11T14:42:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-229', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-229', '2026-04-11T14:42:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-230', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-11T18:21:48.000Z', '2026-04-11T18:21:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-230-1', 'seed-ticket-230', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:21:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-230-2', 'seed-ticket-230', 'prod-latte', 1, 15000, 0, '2026-04-11T18:21:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-230-3', 'seed-ticket-230', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:21:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-230-4', 'seed-ticket-230', 'prod-latte', 1, 15000, 0, '2026-04-11T18:21:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-230', 'seed-ticket-230', 'cash', 61000, 'completed', '2026-04-11T18:21:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-230', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-230', '2026-04-11T18:21:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-231', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-11T08:19:15.000Z', '2026-04-11T08:19:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-231-1', 'seed-ticket-231', 'prod-mocha', 1, 16500, 0, '2026-04-11T08:19:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-231-2', 'seed-ticket-231', 'prod-latte', 1, 15000, 0, '2026-04-11T08:19:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-231', 'seed-ticket-231', 'cash', 31500, 'completed', '2026-04-11T08:19:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-231', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-231', '2026-04-11T08:19:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-232', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-04-11T12:14:57.000Z', '2026-04-11T12:14:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-232-1', 'seed-ticket-232', 'prod-latte', 1, 15000, 0, '2026-04-11T12:14:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-232-2', 'seed-ticket-232', 'prod-americano', 1, 12000, 0, '2026-04-11T12:14:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-232', 'seed-ticket-232', 'cash', 27000, 'completed', '2026-04-11T12:14:57.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-232', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-232', '2026-04-11T12:14:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-233', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-12T17:17:14.000Z', '2026-04-12T17:17:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-233-1', 'seed-ticket-233', 'prod-mocha', 1, 16500, 0, '2026-04-12T17:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-233-2', 'seed-ticket-233', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T17:17:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-233', 'seed-ticket-233', 'cash', 31000, 'completed', '2026-04-12T17:17:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-233', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-233', '2026-04-12T17:17:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-234', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T13:28:16.000Z', '2026-04-12T13:28:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-234-1', 'seed-ticket-234', 'prod-mocha', 1, 16500, 0, '2026-04-12T13:28:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-234', 'seed-ticket-234', 'cash', 16500, 'completed', '2026-04-12T13:28:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-234', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-234', '2026-04-12T13:28:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-235', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-12T14:41:07.000Z', '2026-04-12T14:41:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-235-1', 'seed-ticket-235', 'prod-mocha', 1, 16500, 0, '2026-04-12T14:41:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-235-2', 'seed-ticket-235', 'prod-americano', 1, 12000, 0, '2026-04-12T14:41:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-235-3', 'seed-ticket-235', 'prod-americano', 1, 12000, 0, '2026-04-12T14:41:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-235', 'seed-ticket-235', 'cash', 40500, 'completed', '2026-04-12T14:41:07.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-235', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-235', '2026-04-12T14:41:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-236', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-12T16:50:37.000Z', '2026-04-12T16:50:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-236-1', 'seed-ticket-236', 'prod-latte', 1, 15000, 0, '2026-04-12T16:50:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-236', 'seed-ticket-236', 'cash', 15000, 'completed', '2026-04-12T16:50:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-236', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-236', '2026-04-12T16:50:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-237', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T16:34:35.000Z', '2026-04-12T16:34:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-237-1', 'seed-ticket-237', 'prod-mocha', 1, 16500, 0, '2026-04-12T16:34:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-237-2', 'seed-ticket-237', 'prod-latte', 1, 15000, 0, '2026-04-12T16:34:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-237-3', 'seed-ticket-237', 'prod-americano', 1, 12000, 0, '2026-04-12T16:34:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-237', 'seed-ticket-237', 'cash', 43500, 'completed', '2026-04-12T16:34:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-237', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-237', '2026-04-12T16:34:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-238', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-12T18:01:32.000Z', '2026-04-12T18:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-238-1', 'seed-ticket-238', 'prod-mocha', 1, 16500, 0, '2026-04-12T18:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-238-2', 'seed-ticket-238', 'prod-mocha', 1, 16500, 0, '2026-04-12T18:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-238-3', 'seed-ticket-238', 'prod-mocha', 1, 16500, 0, '2026-04-12T18:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-238-4', 'seed-ticket-238', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T18:01:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-238', 'seed-ticket-238', 'cash', 64000, 'completed', '2026-04-12T18:01:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-238', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-238', '2026-04-12T18:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-239', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-04-12T13:21:44.000Z', '2026-04-12T13:21:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-239-1', 'seed-ticket-239', 'prod-mocha', 1, 16500, 0, '2026-04-12T13:21:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-239-2', 'seed-ticket-239', 'prod-americano', 1, 12000, 0, '2026-04-12T13:21:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-239-3', 'seed-ticket-239', 'prod-latte', 1, 15000, 0, '2026-04-12T13:21:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-239', 'seed-ticket-239', 'cash', 43500, 'completed', '2026-04-12T13:21:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-239', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-239', '2026-04-12T13:21:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-240', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-04-12T13:49:59.000Z', '2026-04-12T13:49:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-240-1', 'seed-ticket-240', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T13:49:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-240-2', 'seed-ticket-240', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T13:49:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-240-3', 'seed-ticket-240', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T13:49:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-240-4', 'seed-ticket-240', 'prod-mocha', 1, 16500, 0, '2026-04-12T13:49:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-240', 'seed-ticket-240', 'cash', 60000, 'completed', '2026-04-12T13:49:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-240', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-240', '2026-04-12T13:49:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-241', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-12T08:49:17.000Z', '2026-04-12T08:49:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-241-1', 'seed-ticket-241', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T08:49:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-241-2', 'seed-ticket-241', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:49:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-241', 'seed-ticket-241', 'cash', 31000, 'completed', '2026-04-12T08:49:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-241', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-241', '2026-04-12T08:49:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-242', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T16:56:55.000Z', '2026-04-12T16:56:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-242-1', 'seed-ticket-242', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T16:56:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-242-2', 'seed-ticket-242', 'prod-mocha', 1, 16500, 0, '2026-04-12T16:56:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-242-3', 'seed-ticket-242', 'prod-mocha', 1, 16500, 0, '2026-04-12T16:56:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-242-4', 'seed-ticket-242', 'prod-latte', 1, 15000, 0, '2026-04-12T16:56:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-242', 'seed-ticket-242', 'cash', 62500, 'completed', '2026-04-12T16:56:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-242', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-242', '2026-04-12T16:56:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-243', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-12T12:18:58.000Z', '2026-04-12T12:18:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-243-1', 'seed-ticket-243', 'prod-americano', 1, 12000, 0, '2026-04-12T12:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-243-2', 'seed-ticket-243', 'prod-latte', 1, 15000, 0, '2026-04-12T12:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-243-3', 'seed-ticket-243', 'prod-americano', 1, 12000, 0, '2026-04-12T12:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-243-4', 'seed-ticket-243', 'prod-mocha', 1, 16500, 0, '2026-04-12T12:18:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-243', 'seed-ticket-243', 'cash', 55500, 'completed', '2026-04-12T12:18:58.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-243', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-243', '2026-04-12T12:18:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-244', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T12:55:03.000Z', '2026-04-12T12:55:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-244-1', 'seed-ticket-244', 'prod-americano', 1, 12000, 0, '2026-04-12T12:55:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-244-2', 'seed-ticket-244', 'prod-mocha', 1, 16500, 0, '2026-04-12T12:55:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-244-3', 'seed-ticket-244', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T12:55:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-244-4', 'seed-ticket-244', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T12:55:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-244', 'seed-ticket-244', 'cash', 57500, 'completed', '2026-04-12T12:55:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-244', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-244', '2026-04-12T12:55:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-245', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-12T09:02:33.000Z', '2026-04-12T09:02:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-245-1', 'seed-ticket-245', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-245-2', 'seed-ticket-245', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-245-3', 'seed-ticket-245', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-245-4', 'seed-ticket-245', 'prod-mocha', 1, 16500, 0, '2026-04-12T09:02:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-245', 'seed-ticket-245', 'cash', 60000, 'completed', '2026-04-12T09:02:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-245', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-245', '2026-04-12T09:02:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-246', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-04-12T15:48:12.000Z', '2026-04-12T15:48:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-246-1', 'seed-ticket-246', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-246-2', 'seed-ticket-246', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-246-3', 'seed-ticket-246', 'prod-latte', 1, 15000, 0, '2026-04-12T15:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-246-4', 'seed-ticket-246', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:48:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-246', 'seed-ticket-246', 'cash', 58500, 'completed', '2026-04-12T15:48:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-246', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-246', '2026-04-12T15:48:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-247', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T17:59:30.000Z', '2026-04-12T17:59:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-247-1', 'seed-ticket-247', 'prod-mocha', 1, 16500, 0, '2026-04-12T17:59:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-247', 'seed-ticket-247', 'cash', 16500, 'completed', '2026-04-12T17:59:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-247', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-247', '2026-04-12T17:59:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-248', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T19:52:24.000Z', '2026-04-12T19:52:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-248-1', 'seed-ticket-248', 'prod-latte', 1, 15000, 0, '2026-04-12T19:52:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-248-2', 'seed-ticket-248', 'prod-americano', 1, 12000, 0, '2026-04-12T19:52:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-248', 'seed-ticket-248', 'cash', 27000, 'completed', '2026-04-12T19:52:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-248', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-248', '2026-04-12T19:52:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-249', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T15:52:52.000Z', '2026-04-12T15:52:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-249-1', 'seed-ticket-249', 'prod-latte', 1, 15000, 0, '2026-04-12T15:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-249-2', 'seed-ticket-249', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-249-3', 'seed-ticket-249', 'prod-americano', 1, 12000, 0, '2026-04-12T15:52:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-249', 'seed-ticket-249', 'cash', 41500, 'completed', '2026-04-12T15:52:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-249', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-249', '2026-04-12T15:52:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-250', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T17:53:33.000Z', '2026-04-12T17:53:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-250-1', 'seed-ticket-250', 'prod-americano', 1, 12000, 0, '2026-04-12T17:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-250-2', 'seed-ticket-250', 'prod-latte', 1, 15000, 0, '2026-04-12T17:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-250-3', 'seed-ticket-250', 'prod-mocha', 1, 16500, 0, '2026-04-12T17:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-250-4', 'seed-ticket-250', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T17:53:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-250', 'seed-ticket-250', 'cash', 58000, 'completed', '2026-04-12T17:53:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-250', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-250', '2026-04-12T17:53:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-251', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-13T14:54:16.000Z', '2026-04-13T14:54:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-251-1', 'seed-ticket-251', 'prod-latte', 1, 15000, 0, '2026-04-13T14:54:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-251', 'seed-ticket-251', 'cash', 15000, 'completed', '2026-04-13T14:54:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-251', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-251', '2026-04-13T14:54:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-252', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-13T19:47:23.000Z', '2026-04-13T19:47:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-252-1', 'seed-ticket-252', 'prod-mocha', 1, 16500, 0, '2026-04-13T19:47:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-252', 'seed-ticket-252', 'cash', 16500, 'completed', '2026-04-13T19:47:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-252', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-252', '2026-04-13T19:47:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-253', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-13T11:22:19.000Z', '2026-04-13T11:22:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-253-1', 'seed-ticket-253', 'prod-latte', 1, 15000, 0, '2026-04-13T11:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-253-2', 'seed-ticket-253', 'prod-americano', 1, 12000, 0, '2026-04-13T11:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-253-3', 'seed-ticket-253', 'prod-latte', 1, 15000, 0, '2026-04-13T11:22:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-253-4', 'seed-ticket-253', 'prod-latte', 1, 15000, 0, '2026-04-13T11:22:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-253', 'seed-ticket-253', 'cash', 57000, 'completed', '2026-04-13T11:22:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-253', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-253', '2026-04-13T11:22:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-254', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-13T08:46:42.000Z', '2026-04-13T08:46:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-254-1', 'seed-ticket-254', 'prod-mocha', 1, 16500, 0, '2026-04-13T08:46:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-254-2', 'seed-ticket-254', 'prod-mocha', 1, 16500, 0, '2026-04-13T08:46:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-254-3', 'seed-ticket-254', 'prod-americano', 1, 12000, 0, '2026-04-13T08:46:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-254', 'seed-ticket-254', 'cash', 45000, 'completed', '2026-04-13T08:46:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-254', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-254', '2026-04-13T08:46:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-255', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-13T12:55:04.000Z', '2026-04-13T12:55:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-255-1', 'seed-ticket-255', 'prod-latte', 1, 15000, 0, '2026-04-13T12:55:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-255-2', 'seed-ticket-255', 'prod-americano', 1, 12000, 0, '2026-04-13T12:55:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-255-3', 'seed-ticket-255', 'prod-latte', 1, 15000, 0, '2026-04-13T12:55:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-255', 'seed-ticket-255', 'cash', 42000, 'completed', '2026-04-13T12:55:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-255', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-255', '2026-04-13T12:55:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-256', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-13T17:34:40.000Z', '2026-04-13T17:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-256-1', 'seed-ticket-256', 'prod-latte', 1, 15000, 0, '2026-04-13T17:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-256-2', 'seed-ticket-256', 'prod-americano', 1, 12000, 0, '2026-04-13T17:34:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-256', 'seed-ticket-256', 'cash', 27000, 'completed', '2026-04-13T17:34:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-256', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-256', '2026-04-13T17:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-257', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-13T10:57:49.000Z', '2026-04-13T10:57:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-257-1', 'seed-ticket-257', 'prod-mocha', 1, 16500, 0, '2026-04-13T10:57:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-257-2', 'seed-ticket-257', 'prod-latte', 1, 15000, 0, '2026-04-13T10:57:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-257', 'seed-ticket-257', 'cash', 31500, 'completed', '2026-04-13T10:57:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-257', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-257', '2026-04-13T10:57:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-258', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-13T08:42:37.000Z', '2026-04-13T08:42:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-258-1', 'seed-ticket-258', 'prod-americano', 1, 12000, 0, '2026-04-13T08:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-258-2', 'seed-ticket-258', 'prod-americano', 1, 12000, 0, '2026-04-13T08:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-258-3', 'seed-ticket-258', 'prod-americano', 1, 12000, 0, '2026-04-13T08:42:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-258', 'seed-ticket-258', 'cash', 36000, 'completed', '2026-04-13T08:42:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-258', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-258', '2026-04-13T08:42:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-259', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-13T15:28:49.000Z', '2026-04-13T15:28:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-259-1', 'seed-ticket-259', 'prod-americano', 1, 12000, 0, '2026-04-13T15:28:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-259-2', 'seed-ticket-259', 'prod-latte', 1, 15000, 0, '2026-04-13T15:28:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-259-3', 'seed-ticket-259', 'prod-americano', 1, 12000, 0, '2026-04-13T15:28:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-259', 'seed-ticket-259', 'cash', 39000, 'completed', '2026-04-13T15:28:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-259', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-259', '2026-04-13T15:28:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-260', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-13T18:50:55.000Z', '2026-04-13T18:50:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-260-1', 'seed-ticket-260', 'prod-latte', 1, 15000, 0, '2026-04-13T18:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-260-2', 'seed-ticket-260', 'prod-mocha', 1, 16500, 0, '2026-04-13T18:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-260-3', 'seed-ticket-260', 'prod-americano', 1, 12000, 0, '2026-04-13T18:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-260-4', 'seed-ticket-260', 'prod-mocha', 1, 16500, 0, '2026-04-13T18:50:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-260', 'seed-ticket-260', 'cash', 60000, 'completed', '2026-04-13T18:50:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-260', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-260', '2026-04-13T18:50:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-261', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-13T14:19:07.000Z', '2026-04-13T14:19:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-261-1', 'seed-ticket-261', 'prod-latte', 1, 15000, 0, '2026-04-13T14:19:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-261-2', 'seed-ticket-261', 'prod-latte', 1, 15000, 0, '2026-04-13T14:19:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-261-3', 'seed-ticket-261', 'prod-latte', 1, 15000, 0, '2026-04-13T14:19:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-261-4', 'seed-ticket-261', 'prod-mocha', 1, 16500, 0, '2026-04-13T14:19:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-261', 'seed-ticket-261', 'cash', 61500, 'completed', '2026-04-13T14:19:07.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-261', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-261', '2026-04-13T14:19:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-262', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-13T14:46:01.000Z', '2026-04-13T14:46:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-262-1', 'seed-ticket-262', 'prod-americano', 1, 12000, 0, '2026-04-13T14:46:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-262', 'seed-ticket-262', 'cash', 12000, 'completed', '2026-04-13T14:46:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-262', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-262', '2026-04-13T14:46:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-263', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-13T10:18:59.000Z', '2026-04-13T10:18:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-263-1', 'seed-ticket-263', 'prod-americano', 1, 12000, 0, '2026-04-13T10:18:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-263-2', 'seed-ticket-263', 'prod-americano', 1, 12000, 0, '2026-04-13T10:18:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-263-3', 'seed-ticket-263', 'prod-americano', 1, 12000, 0, '2026-04-13T10:18:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-263-4', 'seed-ticket-263', 'prod-latte', 1, 15000, 0, '2026-04-13T10:18:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-263', 'seed-ticket-263', 'cash', 51000, 'completed', '2026-04-13T10:18:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-263', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-263', '2026-04-13T10:18:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-264', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-13T08:42:06.000Z', '2026-04-13T08:42:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-264-1', 'seed-ticket-264', 'prod-latte', 1, 15000, 0, '2026-04-13T08:42:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-264-2', 'seed-ticket-264', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T08:42:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-264-3', 'seed-ticket-264', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T08:42:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-264-4', 'seed-ticket-264', 'prod-latte', 1, 15000, 0, '2026-04-13T08:42:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-264', 'seed-ticket-264', 'cash', 59000, 'completed', '2026-04-13T08:42:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-264', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-264', '2026-04-13T08:42:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-265', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-13T19:23:33.000Z', '2026-04-13T19:23:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-265-1', 'seed-ticket-265', 'prod-americano', 1, 12000, 0, '2026-04-13T19:23:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-265-2', 'seed-ticket-265', 'prod-latte', 1, 15000, 0, '2026-04-13T19:23:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-265-3', 'seed-ticket-265', 'prod-mocha', 1, 16500, 0, '2026-04-13T19:23:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-265-4', 'seed-ticket-265', 'prod-latte', 1, 15000, 0, '2026-04-13T19:23:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-265', 'seed-ticket-265', 'cash', 58500, 'completed', '2026-04-13T19:23:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-265', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-265', '2026-04-13T19:23:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-266', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-13T11:02:39.000Z', '2026-04-13T11:02:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-266-1', 'seed-ticket-266', 'prod-mocha', 1, 16500, 0, '2026-04-13T11:02:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-266', 'seed-ticket-266', 'cash', 16500, 'completed', '2026-04-13T11:02:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-266', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-266', '2026-04-13T11:02:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-267', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-13T17:02:19.000Z', '2026-04-13T17:02:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-267-1', 'seed-ticket-267', 'prod-latte', 1, 15000, 0, '2026-04-13T17:02:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-267-2', 'seed-ticket-267', 'prod-latte', 1, 15000, 0, '2026-04-13T17:02:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-267', 'seed-ticket-267', 'cash', 30000, 'completed', '2026-04-13T17:02:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-267', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-267', '2026-04-13T17:02:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-268', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-04-13T19:21:04.000Z', '2026-04-13T19:21:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-268-1', 'seed-ticket-268', 'prod-americano', 1, 12000, 0, '2026-04-13T19:21:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-268-2', 'seed-ticket-268', 'prod-latte', 1, 15000, 0, '2026-04-13T19:21:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-268', 'seed-ticket-268', 'cash', 27000, 'completed', '2026-04-13T19:21:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-268', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-268', '2026-04-13T19:21:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-269', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-13T09:07:51.000Z', '2026-04-13T09:07:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-269-1', 'seed-ticket-269', 'prod-mocha', 1, 16500, 0, '2026-04-13T09:07:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-269-2', 'seed-ticket-269', 'prod-mocha', 1, 16500, 0, '2026-04-13T09:07:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-269', 'seed-ticket-269', 'cash', 33000, 'completed', '2026-04-13T09:07:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-269', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-269', '2026-04-13T09:07:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-270', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-14T16:30:57.000Z', '2026-04-14T16:30:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-270-1', 'seed-ticket-270', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T16:30:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-270-2', 'seed-ticket-270', 'prod-latte', 1, 15000, 0, '2026-04-14T16:30:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-270-3', 'seed-ticket-270', 'prod-americano', 1, 12000, 0, '2026-04-14T16:30:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-270-4', 'seed-ticket-270', 'prod-latte', 1, 15000, 0, '2026-04-14T16:30:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-270', 'seed-ticket-270', 'cash', 56500, 'completed', '2026-04-14T16:30:57.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-270', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-270', '2026-04-14T16:30:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-271', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-14T08:37:14.000Z', '2026-04-14T08:37:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-271-1', 'seed-ticket-271', 'prod-americano', 1, 12000, 0, '2026-04-14T08:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-271-2', 'seed-ticket-271', 'prod-americano', 1, 12000, 0, '2026-04-14T08:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-271-3', 'seed-ticket-271', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-271-4', 'seed-ticket-271', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:37:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-271', 'seed-ticket-271', 'cash', 57000, 'completed', '2026-04-14T08:37:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-271', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-271', '2026-04-14T08:37:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-272', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-14T16:31:12.000Z', '2026-04-14T16:31:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-272-1', 'seed-ticket-272', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T16:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-272-2', 'seed-ticket-272', 'prod-latte', 1, 15000, 0, '2026-04-14T16:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-272-3', 'seed-ticket-272', 'prod-mocha', 1, 16500, 0, '2026-04-14T16:31:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-272', 'seed-ticket-272', 'cash', 46000, 'completed', '2026-04-14T16:31:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-272', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-272', '2026-04-14T16:31:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-273', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-14T08:25:26.000Z', '2026-04-14T08:25:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-273-1', 'seed-ticket-273', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:25:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-273-2', 'seed-ticket-273', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:25:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-273-3', 'seed-ticket-273', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T08:25:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-273-4', 'seed-ticket-273', 'prod-latte', 1, 15000, 0, '2026-04-14T08:25:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-273', 'seed-ticket-273', 'cash', 62500, 'completed', '2026-04-14T08:25:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-273', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-273', '2026-04-14T08:25:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-274', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-14T09:35:27.000Z', '2026-04-14T09:35:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-274-1', 'seed-ticket-274', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:35:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-274-2', 'seed-ticket-274', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:35:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-274-3', 'seed-ticket-274', 'prod-latte', 1, 15000, 0, '2026-04-14T09:35:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-274', 'seed-ticket-274', 'cash', 44000, 'completed', '2026-04-14T09:35:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-274', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-274', '2026-04-14T09:35:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-275', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-14T12:47:22.000Z', '2026-04-14T12:47:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-275-1', 'seed-ticket-275', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T12:47:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-275-2', 'seed-ticket-275', 'prod-latte', 1, 15000, 0, '2026-04-14T12:47:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-275-3', 'seed-ticket-275', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T12:47:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-275-4', 'seed-ticket-275', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T12:47:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-275', 'seed-ticket-275', 'cash', 58500, 'completed', '2026-04-14T12:47:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-275', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-275', '2026-04-14T12:47:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-276', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-14T10:28:22.000Z', '2026-04-14T10:28:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-276-1', 'seed-ticket-276', 'prod-americano', 1, 12000, 0, '2026-04-14T10:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-276-2', 'seed-ticket-276', 'prod-mocha', 1, 16500, 0, '2026-04-14T10:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-276-3', 'seed-ticket-276', 'prod-mocha', 1, 16500, 0, '2026-04-14T10:28:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-276', 'seed-ticket-276', 'cash', 45000, 'completed', '2026-04-14T10:28:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-276', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-276', '2026-04-14T10:28:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-277', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-04-14T19:49:24.000Z', '2026-04-14T19:49:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-277-1', 'seed-ticket-277', 'prod-latte', 1, 15000, 0, '2026-04-14T19:49:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-277', 'seed-ticket-277', 'cash', 15000, 'completed', '2026-04-14T19:49:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-277', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-277', '2026-04-14T19:49:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-278', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-14T15:27:14.000Z', '2026-04-14T15:27:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-278-1', 'seed-ticket-278', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T15:27:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-278-2', 'seed-ticket-278', 'prod-americano', 1, 12000, 0, '2026-04-14T15:27:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-278-3', 'seed-ticket-278', 'prod-americano', 1, 12000, 0, '2026-04-14T15:27:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-278-4', 'seed-ticket-278', 'prod-mocha', 1, 16500, 0, '2026-04-14T15:27:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-278', 'seed-ticket-278', 'cash', 55000, 'completed', '2026-04-14T15:27:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-278', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-278', '2026-04-14T15:27:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-279', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-14T09:31:51.000Z', '2026-04-14T09:31:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-279-1', 'seed-ticket-279', 'prod-latte', 1, 15000, 0, '2026-04-14T09:31:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-279-2', 'seed-ticket-279', 'prod-latte', 1, 15000, 0, '2026-04-14T09:31:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-279-3', 'seed-ticket-279', 'prod-americano', 1, 12000, 0, '2026-04-14T09:31:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-279', 'seed-ticket-279', 'cash', 42000, 'completed', '2026-04-14T09:31:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-279', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-279', '2026-04-14T09:31:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-280', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-14T17:40:10.000Z', '2026-04-14T17:40:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-280-1', 'seed-ticket-280', 'prod-mocha', 1, 16500, 0, '2026-04-14T17:40:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-280-2', 'seed-ticket-280', 'prod-latte', 1, 15000, 0, '2026-04-14T17:40:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-280', 'seed-ticket-280', 'cash', 31500, 'completed', '2026-04-14T17:40:10.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-280', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-280', '2026-04-14T17:40:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-281', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-14T12:07:29.000Z', '2026-04-14T12:07:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-281-1', 'seed-ticket-281', 'prod-americano', 1, 12000, 0, '2026-04-14T12:07:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-281-2', 'seed-ticket-281', 'prod-mocha', 1, 16500, 0, '2026-04-14T12:07:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-281-3', 'seed-ticket-281', 'prod-latte', 1, 15000, 0, '2026-04-14T12:07:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-281', 'seed-ticket-281', 'cash', 43500, 'completed', '2026-04-14T12:07:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-281', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-281', '2026-04-14T12:07:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-282', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-14T16:17:46.000Z', '2026-04-14T16:17:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-282-1', 'seed-ticket-282', 'prod-mocha', 1, 16500, 0, '2026-04-14T16:17:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-282-2', 'seed-ticket-282', 'prod-latte', 1, 15000, 0, '2026-04-14T16:17:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-282-3', 'seed-ticket-282', 'prod-americano', 1, 12000, 0, '2026-04-14T16:17:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-282', 'seed-ticket-282', 'cash', 43500, 'completed', '2026-04-14T16:17:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-282', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-282', '2026-04-14T16:17:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-283', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-14T11:06:51.000Z', '2026-04-14T11:06:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-283-1', 'seed-ticket-283', 'prod-americano', 1, 12000, 0, '2026-04-14T11:06:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-283', 'seed-ticket-283', 'cash', 12000, 'completed', '2026-04-14T11:06:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-283', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-283', '2026-04-14T11:06:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-284', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-14T13:39:59.000Z', '2026-04-14T13:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-284-1', 'seed-ticket-284', 'prod-latte', 1, 15000, 0, '2026-04-14T13:39:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-284', 'seed-ticket-284', 'cash', 15000, 'completed', '2026-04-14T13:39:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-284', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-284', '2026-04-14T13:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-285', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-14T19:11:38.000Z', '2026-04-14T19:11:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-285-1', 'seed-ticket-285', 'prod-latte', 1, 15000, 0, '2026-04-14T19:11:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-285-2', 'seed-ticket-285', 'prod-mocha', 1, 16500, 0, '2026-04-14T19:11:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-285', 'seed-ticket-285', 'cash', 31500, 'completed', '2026-04-14T19:11:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-285', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-285', '2026-04-14T19:11:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-286', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-14T10:07:25.000Z', '2026-04-14T10:07:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-286-1', 'seed-ticket-286', 'prod-americano', 1, 12000, 0, '2026-04-14T10:07:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-286-2', 'seed-ticket-286', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T10:07:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-286-3', 'seed-ticket-286', 'prod-americano', 1, 12000, 0, '2026-04-14T10:07:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-286-4', 'seed-ticket-286', 'prod-latte', 1, 15000, 0, '2026-04-14T10:07:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-286', 'seed-ticket-286', 'cash', 53500, 'completed', '2026-04-14T10:07:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-286', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-286', '2026-04-14T10:07:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-287', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-14T17:36:04.000Z', '2026-04-14T17:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-287-1', 'seed-ticket-287', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T17:36:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-287', 'seed-ticket-287', 'cash', 14500, 'completed', '2026-04-14T17:36:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-287', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-287', '2026-04-14T17:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-288', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-15T19:37:51.000Z', '2026-04-15T19:37:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-288-1', 'seed-ticket-288', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T19:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-288-2', 'seed-ticket-288', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T19:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-288-3', 'seed-ticket-288', 'prod-mocha', 1, 16500, 0, '2026-04-15T19:37:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-288', 'seed-ticket-288', 'cash', 45500, 'completed', '2026-04-15T19:37:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-288', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-288', '2026-04-15T19:37:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-289', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-15T08:02:59.000Z', '2026-04-15T08:02:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-289-1', 'seed-ticket-289', 'prod-latte', 1, 15000, 0, '2026-04-15T08:02:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-289-2', 'seed-ticket-289', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T08:02:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-289-3', 'seed-ticket-289', 'prod-latte', 1, 15000, 0, '2026-04-15T08:02:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-289', 'seed-ticket-289', 'cash', 44500, 'completed', '2026-04-15T08:02:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-289', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-289', '2026-04-15T08:02:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-290', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-15T14:19:29.000Z', '2026-04-15T14:19:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-290-1', 'seed-ticket-290', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T14:19:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-290-2', 'seed-ticket-290', 'prod-mocha', 1, 16500, 0, '2026-04-15T14:19:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-290', 'seed-ticket-290', 'cash', 31000, 'completed', '2026-04-15T14:19:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-290', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-290', '2026-04-15T14:19:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-291', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-15T17:24:36.000Z', '2026-04-15T17:24:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-291-1', 'seed-ticket-291', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T17:24:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-291-2', 'seed-ticket-291', 'prod-americano', 1, 12000, 0, '2026-04-15T17:24:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-291-3', 'seed-ticket-291', 'prod-mocha', 1, 16500, 0, '2026-04-15T17:24:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-291-4', 'seed-ticket-291', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T17:24:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-291', 'seed-ticket-291', 'cash', 57500, 'completed', '2026-04-15T17:24:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-291', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-291', '2026-04-15T17:24:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-292', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-15T18:41:15.000Z', '2026-04-15T18:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-292-1', 'seed-ticket-292', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:41:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-292-2', 'seed-ticket-292', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:41:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-292', 'seed-ticket-292', 'cash', 31000, 'completed', '2026-04-15T18:41:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-292', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-292', '2026-04-15T18:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-293', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-15T10:19:21.000Z', '2026-04-15T10:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-293-1', 'seed-ticket-293', 'prod-latte', 1, 15000, 0, '2026-04-15T10:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-293-2', 'seed-ticket-293', 'prod-latte', 1, 15000, 0, '2026-04-15T10:19:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-293', 'seed-ticket-293', 'cash', 30000, 'completed', '2026-04-15T10:19:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-293', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-293', '2026-04-15T10:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-294', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-15T19:40:56.000Z', '2026-04-15T19:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-294-1', 'seed-ticket-294', 'prod-latte', 1, 15000, 0, '2026-04-15T19:40:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-294-2', 'seed-ticket-294', 'prod-mocha', 1, 16500, 0, '2026-04-15T19:40:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-294-3', 'seed-ticket-294', 'prod-latte', 1, 15000, 0, '2026-04-15T19:40:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-294', 'seed-ticket-294', 'cash', 46500, 'completed', '2026-04-15T19:40:56.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-294', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-294', '2026-04-15T19:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-295', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-15T14:16:50.000Z', '2026-04-15T14:16:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-295-1', 'seed-ticket-295', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T14:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-295-2', 'seed-ticket-295', 'prod-mocha', 1, 16500, 0, '2026-04-15T14:16:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-295', 'seed-ticket-295', 'cash', 31000, 'completed', '2026-04-15T14:16:50.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-295', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-295', '2026-04-15T14:16:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-296', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-04-15T08:37:43.000Z', '2026-04-15T08:37:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-296-1', 'seed-ticket-296', 'prod-mocha', 1, 16500, 0, '2026-04-15T08:37:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-296-2', 'seed-ticket-296', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T08:37:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-296-3', 'seed-ticket-296', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T08:37:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-296', 'seed-ticket-296', 'cash', 45500, 'completed', '2026-04-15T08:37:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-296', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-296', '2026-04-15T08:37:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-297', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-15T18:16:08.000Z', '2026-04-15T18:16:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-297-1', 'seed-ticket-297', 'prod-americano', 1, 12000, 0, '2026-04-15T18:16:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-297-2', 'seed-ticket-297', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:16:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-297-3', 'seed-ticket-297', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:16:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-297-4', 'seed-ticket-297', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:16:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-297', 'seed-ticket-297', 'cash', 57500, 'completed', '2026-04-15T18:16:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-297', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-297', '2026-04-15T18:16:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-298', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-15T17:22:02.000Z', '2026-04-15T17:22:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-298-1', 'seed-ticket-298', 'prod-latte', 1, 15000, 0, '2026-04-15T17:22:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-298-2', 'seed-ticket-298', 'prod-latte', 1, 15000, 0, '2026-04-15T17:22:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-298-3', 'seed-ticket-298', 'prod-latte', 1, 15000, 0, '2026-04-15T17:22:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-298-4', 'seed-ticket-298', 'prod-latte', 1, 15000, 0, '2026-04-15T17:22:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-298', 'seed-ticket-298', 'cash', 60000, 'completed', '2026-04-15T17:22:02.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-298', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-298', '2026-04-15T17:22:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-299', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-15T18:09:19.000Z', '2026-04-15T18:09:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-299-1', 'seed-ticket-299', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:09:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-299-2', 'seed-ticket-299', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:09:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-299-3', 'seed-ticket-299', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:09:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-299-4', 'seed-ticket-299', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:09:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-299', 'seed-ticket-299', 'cash', 62000, 'completed', '2026-04-15T18:09:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-299', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-299', '2026-04-15T18:09:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-300', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-15T12:15:22.000Z', '2026-04-15T12:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-300-1', 'seed-ticket-300', 'prod-americano', 1, 12000, 0, '2026-04-15T12:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-300-2', 'seed-ticket-300', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T12:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-300-3', 'seed-ticket-300', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T12:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-300', 'seed-ticket-300', 'cash', 41000, 'completed', '2026-04-15T12:15:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-300', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-300', '2026-04-15T12:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-301', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-15T09:01:53.000Z', '2026-04-15T09:01:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-301-1', 'seed-ticket-301', 'prod-americano', 1, 12000, 0, '2026-04-15T09:01:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-301-2', 'seed-ticket-301', 'prod-mocha', 1, 16500, 0, '2026-04-15T09:01:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-301', 'seed-ticket-301', 'cash', 28500, 'completed', '2026-04-15T09:01:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-301', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-301', '2026-04-15T09:01:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-302', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-15T11:27:36.000Z', '2026-04-15T11:27:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-302-1', 'seed-ticket-302', 'prod-mocha', 1, 16500, 0, '2026-04-15T11:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-302-2', 'seed-ticket-302', 'prod-americano', 1, 12000, 0, '2026-04-15T11:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-302-3', 'seed-ticket-302', 'prod-americano', 1, 12000, 0, '2026-04-15T11:27:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-302-4', 'seed-ticket-302', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T11:27:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-302', 'seed-ticket-302', 'cash', 55000, 'completed', '2026-04-15T11:27:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-302', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-302', '2026-04-15T11:27:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-303', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-15T08:38:17.000Z', '2026-04-15T08:38:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-303-1', 'seed-ticket-303', 'prod-americano', 1, 12000, 0, '2026-04-15T08:38:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-303-2', 'seed-ticket-303', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T08:38:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-303-3', 'seed-ticket-303', 'prod-americano', 1, 12000, 0, '2026-04-15T08:38:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-303', 'seed-ticket-303', 'cash', 38500, 'completed', '2026-04-15T08:38:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-303', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-303', '2026-04-15T08:38:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-304', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-15T16:53:30.000Z', '2026-04-15T16:53:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-304-1', 'seed-ticket-304', 'prod-americano', 1, 12000, 0, '2026-04-15T16:53:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-304-2', 'seed-ticket-304', 'prod-latte', 1, 15000, 0, '2026-04-15T16:53:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-304-3', 'seed-ticket-304', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T16:53:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-304', 'seed-ticket-304', 'cash', 41500, 'completed', '2026-04-15T16:53:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-304', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-304', '2026-04-15T16:53:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-305', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-16T14:15:52.000Z', '2026-04-16T14:15:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-305-1', 'seed-ticket-305', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:15:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-305-2', 'seed-ticket-305', 'prod-mocha', 1, 16500, 0, '2026-04-16T14:15:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-305-3', 'seed-ticket-305', 'prod-latte', 1, 15000, 0, '2026-04-16T14:15:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-305-4', 'seed-ticket-305', 'prod-latte', 1, 15000, 0, '2026-04-16T14:15:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-305', 'seed-ticket-305', 'cash', 61000, 'completed', '2026-04-16T14:15:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-305', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-305', '2026-04-16T14:15:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-306', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-16T16:22:38.000Z', '2026-04-16T16:22:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-306-1', 'seed-ticket-306', 'prod-latte', 1, 15000, 0, '2026-04-16T16:22:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-306-2', 'seed-ticket-306', 'prod-latte', 1, 15000, 0, '2026-04-16T16:22:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-306-3', 'seed-ticket-306', 'prod-americano', 1, 12000, 0, '2026-04-16T16:22:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-306', 'seed-ticket-306', 'cash', 42000, 'completed', '2026-04-16T16:22:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-306', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-306', '2026-04-16T16:22:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-307', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-16T12:42:53.000Z', '2026-04-16T12:42:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-307-1', 'seed-ticket-307', 'prod-americano', 1, 12000, 0, '2026-04-16T12:42:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-307-2', 'seed-ticket-307', 'prod-latte', 1, 15000, 0, '2026-04-16T12:42:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-307', 'seed-ticket-307', 'cash', 27000, 'completed', '2026-04-16T12:42:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-307', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-307', '2026-04-16T12:42:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-308', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-16T18:26:04.000Z', '2026-04-16T18:26:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-308-1', 'seed-ticket-308', 'prod-americano', 1, 12000, 0, '2026-04-16T18:26:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-308-2', 'seed-ticket-308', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T18:26:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-308', 'seed-ticket-308', 'cash', 26500, 'completed', '2026-04-16T18:26:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-308', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-308', '2026-04-16T18:26:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-309', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-16T17:12:23.000Z', '2026-04-16T17:12:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-309-1', 'seed-ticket-309', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T17:12:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-309-2', 'seed-ticket-309', 'prod-latte', 1, 15000, 0, '2026-04-16T17:12:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-309', 'seed-ticket-309', 'cash', 29500, 'completed', '2026-04-16T17:12:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-309', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-309', '2026-04-16T17:12:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-310', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-16T16:07:55.000Z', '2026-04-16T16:07:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-310-1', 'seed-ticket-310', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T16:07:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-310-2', 'seed-ticket-310', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T16:07:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-310', 'seed-ticket-310', 'cash', 29000, 'completed', '2026-04-16T16:07:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-310', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-310', '2026-04-16T16:07:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-311', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-04-16T19:36:49.000Z', '2026-04-16T19:36:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-311-1', 'seed-ticket-311', 'prod-americano', 1, 12000, 0, '2026-04-16T19:36:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-311-2', 'seed-ticket-311', 'prod-americano', 1, 12000, 0, '2026-04-16T19:36:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-311-3', 'seed-ticket-311', 'prod-americano', 1, 12000, 0, '2026-04-16T19:36:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-311-4', 'seed-ticket-311', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T19:36:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-311', 'seed-ticket-311', 'cash', 50500, 'completed', '2026-04-16T19:36:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-311', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-311', '2026-04-16T19:36:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-312', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T13:09:16.000Z', '2026-04-16T13:09:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-312-1', 'seed-ticket-312', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T13:09:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-312-2', 'seed-ticket-312', 'prod-americano', 1, 12000, 0, '2026-04-16T13:09:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-312-3', 'seed-ticket-312', 'prod-latte', 1, 15000, 0, '2026-04-16T13:09:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-312', 'seed-ticket-312', 'cash', 41500, 'completed', '2026-04-16T13:09:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-312', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-312', '2026-04-16T13:09:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-313', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-16T08:48:34.000Z', '2026-04-16T08:48:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-313-1', 'seed-ticket-313', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T08:48:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-313-2', 'seed-ticket-313', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T08:48:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-313', 'seed-ticket-313', 'cash', 29000, 'completed', '2026-04-16T08:48:34.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-313', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-313', '2026-04-16T08:48:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-314', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-16T11:14:12.000Z', '2026-04-16T11:14:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-314-1', 'seed-ticket-314', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:14:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-314-2', 'seed-ticket-314', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:14:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-314-3', 'seed-ticket-314', 'prod-americano', 1, 12000, 0, '2026-04-16T11:14:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-314-4', 'seed-ticket-314', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:14:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-314', 'seed-ticket-314', 'cash', 55500, 'completed', '2026-04-16T11:14:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-314', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-314', '2026-04-16T11:14:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-315', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-16T12:35:21.000Z', '2026-04-16T12:35:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-315-1', 'seed-ticket-315', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T12:35:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-315-2', 'seed-ticket-315', 'prod-mocha', 1, 16500, 0, '2026-04-16T12:35:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-315-3', 'seed-ticket-315', 'prod-latte', 1, 15000, 0, '2026-04-16T12:35:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-315-4', 'seed-ticket-315', 'prod-latte', 1, 15000, 0, '2026-04-16T12:35:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-315', 'seed-ticket-315', 'cash', 61000, 'completed', '2026-04-16T12:35:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-315', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-315', '2026-04-16T12:35:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-316', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-16T13:12:14.000Z', '2026-04-16T13:12:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-316-1', 'seed-ticket-316', 'prod-americano', 1, 12000, 0, '2026-04-16T13:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-316-2', 'seed-ticket-316', 'prod-americano', 1, 12000, 0, '2026-04-16T13:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-316-3', 'seed-ticket-316', 'prod-mocha', 1, 16500, 0, '2026-04-16T13:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-316-4', 'seed-ticket-316', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T13:12:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-316', 'seed-ticket-316', 'cash', 55000, 'completed', '2026-04-16T13:12:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-316', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-316', '2026-04-16T13:12:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-317', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-16T16:40:54.000Z', '2026-04-16T16:40:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-317-1', 'seed-ticket-317', 'prod-americano', 1, 12000, 0, '2026-04-16T16:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-317-2', 'seed-ticket-317', 'prod-latte', 1, 15000, 0, '2026-04-16T16:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-317-3', 'seed-ticket-317', 'prod-americano', 1, 12000, 0, '2026-04-16T16:40:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-317', 'seed-ticket-317', 'cash', 39000, 'completed', '2026-04-16T16:40:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-317', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-317', '2026-04-16T16:40:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-318', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-16T19:59:18.000Z', '2026-04-16T19:59:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-318-1', 'seed-ticket-318', 'prod-americano', 1, 12000, 0, '2026-04-16T19:59:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-318-2', 'seed-ticket-318', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T19:59:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-318', 'seed-ticket-318', 'cash', 26500, 'completed', '2026-04-16T19:59:18.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-318', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-318', '2026-04-16T19:59:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-319', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-16T10:49:08.000Z', '2026-04-16T10:49:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-319-1', 'seed-ticket-319', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T10:49:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-319-2', 'seed-ticket-319', 'prod-mocha', 1, 16500, 0, '2026-04-16T10:49:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-319-3', 'seed-ticket-319', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T10:49:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-319', 'seed-ticket-319', 'cash', 45500, 'completed', '2026-04-16T10:49:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-319', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-319', '2026-04-16T10:49:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-320', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-16T11:49:24.000Z', '2026-04-16T11:49:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-320-1', 'seed-ticket-320', 'prod-americano', 1, 12000, 0, '2026-04-16T11:49:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-320-2', 'seed-ticket-320', 'prod-latte', 1, 15000, 0, '2026-04-16T11:49:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-320', 'seed-ticket-320', 'cash', 27000, 'completed', '2026-04-16T11:49:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-320', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-320', '2026-04-16T11:49:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-321', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-16T10:25:23.000Z', '2026-04-16T10:25:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-321-1', 'seed-ticket-321', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T10:25:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-321', 'seed-ticket-321', 'cash', 14500, 'completed', '2026-04-16T10:25:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-321', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-321', '2026-04-16T10:25:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-322', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-16T17:03:11.000Z', '2026-04-16T17:03:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-322-1', 'seed-ticket-322', 'prod-americano', 1, 12000, 0, '2026-04-16T17:03:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-322-2', 'seed-ticket-322', 'prod-mocha', 1, 16500, 0, '2026-04-16T17:03:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-322-3', 'seed-ticket-322', 'prod-mocha', 1, 16500, 0, '2026-04-16T17:03:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-322-4', 'seed-ticket-322', 'prod-latte', 1, 15000, 0, '2026-04-16T17:03:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-322', 'seed-ticket-322', 'cash', 60000, 'completed', '2026-04-16T17:03:11.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-322', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-322', '2026-04-16T17:03:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-323', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-17T14:37:09.000Z', '2026-04-17T14:37:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-323-1', 'seed-ticket-323', 'prod-latte', 1, 15000, 0, '2026-04-17T14:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-323-2', 'seed-ticket-323', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T14:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-323-3', 'seed-ticket-323', 'prod-americano', 1, 12000, 0, '2026-04-17T14:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-323-4', 'seed-ticket-323', 'prod-mocha', 1, 16500, 0, '2026-04-17T14:37:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-323', 'seed-ticket-323', 'cash', 58000, 'completed', '2026-04-17T14:37:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-323', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-323', '2026-04-17T14:37:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-324', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-17T10:35:30.000Z', '2026-04-17T10:35:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-324-1', 'seed-ticket-324', 'prod-latte', 1, 15000, 0, '2026-04-17T10:35:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-324-2', 'seed-ticket-324', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:35:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-324-3', 'seed-ticket-324', 'prod-mocha', 1, 16500, 0, '2026-04-17T10:35:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-324', 'seed-ticket-324', 'cash', 46000, 'completed', '2026-04-17T10:35:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-324', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-324', '2026-04-17T10:35:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-325', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-17T18:15:15.000Z', '2026-04-17T18:15:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-325-1', 'seed-ticket-325', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T18:15:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-325', 'seed-ticket-325', 'cash', 14500, 'completed', '2026-04-17T18:15:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-325', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-325', '2026-04-17T18:15:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-326', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-17T17:18:13.000Z', '2026-04-17T17:18:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-326-1', 'seed-ticket-326', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T17:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-326-2', 'seed-ticket-326', 'prod-americano', 1, 12000, 0, '2026-04-17T17:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-326-3', 'seed-ticket-326', 'prod-americano', 1, 12000, 0, '2026-04-17T17:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-326-4', 'seed-ticket-326', 'prod-mocha', 1, 16500, 0, '2026-04-17T17:18:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-326', 'seed-ticket-326', 'cash', 55000, 'completed', '2026-04-17T17:18:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-326', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-326', '2026-04-17T17:18:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-327', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-17T14:05:44.000Z', '2026-04-17T14:05:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-327-1', 'seed-ticket-327', 'prod-americano', 1, 12000, 0, '2026-04-17T14:05:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-327-2', 'seed-ticket-327', 'prod-americano', 1, 12000, 0, '2026-04-17T14:05:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-327', 'seed-ticket-327', 'cash', 24000, 'completed', '2026-04-17T14:05:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-327', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-327', '2026-04-17T14:05:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-328', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-17T18:51:53.000Z', '2026-04-17T18:51:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-328-1', 'seed-ticket-328', 'prod-mocha', 1, 16500, 0, '2026-04-17T18:51:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-328-2', 'seed-ticket-328', 'prod-latte', 1, 15000, 0, '2026-04-17T18:51:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-328-3', 'seed-ticket-328', 'prod-americano', 1, 12000, 0, '2026-04-17T18:51:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-328', 'seed-ticket-328', 'cash', 43500, 'completed', '2026-04-17T18:51:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-328', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-328', '2026-04-17T18:51:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-329', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-17T15:00:15.000Z', '2026-04-17T15:00:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-329-1', 'seed-ticket-329', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T15:00:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-329', 'seed-ticket-329', 'cash', 14500, 'completed', '2026-04-17T15:00:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-329', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-329', '2026-04-17T15:00:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-330', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-17T14:40:01.000Z', '2026-04-17T14:40:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-330-1', 'seed-ticket-330', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T14:40:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-330', 'seed-ticket-330', 'cash', 14500, 'completed', '2026-04-17T14:40:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-330', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-330', '2026-04-17T14:40:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-331', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-17T11:10:51.000Z', '2026-04-17T11:10:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-331-1', 'seed-ticket-331', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T11:10:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-331-2', 'seed-ticket-331', 'prod-mocha', 1, 16500, 0, '2026-04-17T11:10:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-331', 'seed-ticket-331', 'cash', 31000, 'completed', '2026-04-17T11:10:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-331', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-331', '2026-04-17T11:10:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-332', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-17T11:26:59.000Z', '2026-04-17T11:26:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-332-1', 'seed-ticket-332', 'prod-latte', 1, 15000, 0, '2026-04-17T11:26:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-332-2', 'seed-ticket-332', 'prod-americano', 1, 12000, 0, '2026-04-17T11:26:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-332', 'seed-ticket-332', 'cash', 27000, 'completed', '2026-04-17T11:26:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-332', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-332', '2026-04-17T11:26:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-333', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-17T12:02:46.000Z', '2026-04-17T12:02:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-333-1', 'seed-ticket-333', 'prod-americano', 1, 12000, 0, '2026-04-17T12:02:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-333-2', 'seed-ticket-333', 'prod-latte', 1, 15000, 0, '2026-04-17T12:02:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-333', 'seed-ticket-333', 'cash', 27000, 'completed', '2026-04-17T12:02:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-333', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-333', '2026-04-17T12:02:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-334', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-17T10:31:40.000Z', '2026-04-17T10:31:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-334-1', 'seed-ticket-334', 'prod-latte', 1, 15000, 0, '2026-04-17T10:31:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-334-2', 'seed-ticket-334', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:31:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-334-3', 'seed-ticket-334', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:31:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-334-4', 'seed-ticket-334', 'prod-mocha', 1, 16500, 0, '2026-04-17T10:31:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-334', 'seed-ticket-334', 'cash', 60500, 'completed', '2026-04-17T10:31:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-334', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-334', '2026-04-17T10:31:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-335', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-17T19:50:05.000Z', '2026-04-17T19:50:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-335-1', 'seed-ticket-335', 'prod-americano', 1, 12000, 0, '2026-04-17T19:50:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-335', 'seed-ticket-335', 'cash', 12000, 'completed', '2026-04-17T19:50:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-335', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-335', '2026-04-17T19:50:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-336', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-17T10:57:31.000Z', '2026-04-17T10:57:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-336-1', 'seed-ticket-336', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:57:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-336-2', 'seed-ticket-336', 'prod-mocha', 1, 16500, 0, '2026-04-17T10:57:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-336-3', 'seed-ticket-336', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:57:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-336', 'seed-ticket-336', 'cash', 45500, 'completed', '2026-04-17T10:57:31.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-336', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-336', '2026-04-17T10:57:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-337', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-17T09:34:43.000Z', '2026-04-17T09:34:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-337-1', 'seed-ticket-337', 'prod-americano', 1, 12000, 0, '2026-04-17T09:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-337-2', 'seed-ticket-337', 'prod-mocha', 1, 16500, 0, '2026-04-17T09:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-337-3', 'seed-ticket-337', 'prod-latte', 1, 15000, 0, '2026-04-17T09:34:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-337', 'seed-ticket-337', 'cash', 43500, 'completed', '2026-04-17T09:34:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-337', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-337', '2026-04-17T09:34:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-338', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-17T12:21:24.000Z', '2026-04-17T12:21:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-338-1', 'seed-ticket-338', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T12:21:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-338-2', 'seed-ticket-338', 'prod-mocha', 1, 16500, 0, '2026-04-17T12:21:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-338-3', 'seed-ticket-338', 'prod-mocha', 1, 16500, 0, '2026-04-17T12:21:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-338', 'seed-ticket-338', 'cash', 47500, 'completed', '2026-04-17T12:21:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-338', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-338', '2026-04-17T12:21:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-339', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-17T15:17:44.000Z', '2026-04-17T15:17:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-339-1', 'seed-ticket-339', 'prod-mocha', 1, 16500, 0, '2026-04-17T15:17:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-339-2', 'seed-ticket-339', 'prod-latte', 1, 15000, 0, '2026-04-17T15:17:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-339-3', 'seed-ticket-339', 'prod-mocha', 1, 16500, 0, '2026-04-17T15:17:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-339-4', 'seed-ticket-339', 'prod-latte', 1, 15000, 0, '2026-04-17T15:17:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-339', 'seed-ticket-339', 'cash', 63000, 'completed', '2026-04-17T15:17:44.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-339', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-339', '2026-04-17T15:17:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-340', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-17T15:16:59.000Z', '2026-04-17T15:16:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-340-1', 'seed-ticket-340', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T15:16:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-340-2', 'seed-ticket-340', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T15:16:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-340', 'seed-ticket-340', 'cash', 29000, 'completed', '2026-04-17T15:16:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-340', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-340', '2026-04-17T15:16:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-341', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-17T12:52:56.000Z', '2026-04-17T12:52:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-341-1', 'seed-ticket-341', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T12:52:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-341', 'seed-ticket-341', 'cash', 14500, 'completed', '2026-04-17T12:52:56.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-341', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-341', '2026-04-17T12:52:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-342', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-17T08:39:28.000Z', '2026-04-17T08:39:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-342-1', 'seed-ticket-342', 'prod-americano', 1, 12000, 0, '2026-04-17T08:39:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-342-2', 'seed-ticket-342', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T08:39:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-342-3', 'seed-ticket-342', 'prod-mocha', 1, 16500, 0, '2026-04-17T08:39:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-342-4', 'seed-ticket-342', 'prod-mocha', 1, 16500, 0, '2026-04-17T08:39:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-342', 'seed-ticket-342', 'cash', 59500, 'completed', '2026-04-17T08:39:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-342', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-342', '2026-04-17T08:39:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-343', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-18T10:33:14.000Z', '2026-04-18T10:33:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-343-1', 'seed-ticket-343', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:33:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-343-2', 'seed-ticket-343', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T10:33:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-343', 'seed-ticket-343', 'cash', 31000, 'completed', '2026-04-18T10:33:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-343', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-343', '2026-04-18T10:33:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-344', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-18T13:37:21.000Z', '2026-04-18T13:37:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-344-1', 'seed-ticket-344', 'prod-americano', 1, 12000, 0, '2026-04-18T13:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-344-2', 'seed-ticket-344', 'prod-americano', 1, 12000, 0, '2026-04-18T13:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-344-3', 'seed-ticket-344', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-344-4', 'seed-ticket-344', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:37:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-344', 'seed-ticket-344', 'cash', 53000, 'completed', '2026-04-18T13:37:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-344', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-344', '2026-04-18T13:37:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-345', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-18T19:27:27.000Z', '2026-04-18T19:27:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-345-1', 'seed-ticket-345', 'prod-americano', 1, 12000, 0, '2026-04-18T19:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-345-2', 'seed-ticket-345', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-345-3', 'seed-ticket-345', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:27:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-345-4', 'seed-ticket-345', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:27:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-345', 'seed-ticket-345', 'cash', 59500, 'completed', '2026-04-18T19:27:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-345', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-345', '2026-04-18T19:27:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-346', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-18T10:53:49.000Z', '2026-04-18T10:53:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-346-1', 'seed-ticket-346', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T10:53:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-346-2', 'seed-ticket-346', 'prod-latte', 1, 15000, 0, '2026-04-18T10:53:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-346-3', 'seed-ticket-346', 'prod-latte', 1, 15000, 0, '2026-04-18T10:53:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-346', 'seed-ticket-346', 'cash', 44500, 'completed', '2026-04-18T10:53:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-346', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-346', '2026-04-18T10:53:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-347', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-18T19:53:24.000Z', '2026-04-18T19:53:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-347-1', 'seed-ticket-347', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-347-2', 'seed-ticket-347', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-347-3', 'seed-ticket-347', 'prod-latte', 1, 15000, 0, '2026-04-18T19:53:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-347', 'seed-ticket-347', 'cash', 44000, 'completed', '2026-04-18T19:53:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-347', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-347', '2026-04-18T19:53:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-348', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T09:10:19.000Z', '2026-04-18T09:10:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-348-1', 'seed-ticket-348', 'prod-americano', 1, 12000, 0, '2026-04-18T09:10:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-348-2', 'seed-ticket-348', 'prod-latte', 1, 15000, 0, '2026-04-18T09:10:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-348-3', 'seed-ticket-348', 'prod-latte', 1, 15000, 0, '2026-04-18T09:10:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-348', 'seed-ticket-348', 'cash', 42000, 'completed', '2026-04-18T09:10:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-348', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-348', '2026-04-18T09:10:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-349', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-18T13:12:01.000Z', '2026-04-18T13:12:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-349-1', 'seed-ticket-349', 'prod-mocha', 1, 16500, 0, '2026-04-18T13:12:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-349-2', 'seed-ticket-349', 'prod-americano', 1, 12000, 0, '2026-04-18T13:12:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-349', 'seed-ticket-349', 'cash', 28500, 'completed', '2026-04-18T13:12:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-349', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-349', '2026-04-18T13:12:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-350', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T19:13:29.000Z', '2026-04-18T19:13:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-350-1', 'seed-ticket-350', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-350-2', 'seed-ticket-350', 'prod-americano', 1, 12000, 0, '2026-04-18T19:13:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-350', 'seed-ticket-350', 'cash', 26500, 'completed', '2026-04-18T19:13:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-350', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-350', '2026-04-18T19:13:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-351', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-18T10:31:38.000Z', '2026-04-18T10:31:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-351-1', 'seed-ticket-351', 'prod-americano', 1, 12000, 0, '2026-04-18T10:31:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-351-2', 'seed-ticket-351', 'prod-latte', 1, 15000, 0, '2026-04-18T10:31:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-351-3', 'seed-ticket-351', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:31:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-351', 'seed-ticket-351', 'cash', 43500, 'completed', '2026-04-18T10:31:38.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-351', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-351', '2026-04-18T10:31:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-352', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-18T19:19:29.000Z', '2026-04-18T19:19:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-352-1', 'seed-ticket-352', 'prod-latte', 1, 15000, 0, '2026-04-18T19:19:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-352-2', 'seed-ticket-352', 'prod-latte', 1, 15000, 0, '2026-04-18T19:19:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-352-3', 'seed-ticket-352', 'prod-americano', 1, 12000, 0, '2026-04-18T19:19:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-352', 'seed-ticket-352', 'cash', 42000, 'completed', '2026-04-18T19:19:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-352', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-352', '2026-04-18T19:19:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-353', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-18T08:35:48.000Z', '2026-04-18T08:35:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-353-1', 'seed-ticket-353', 'prod-americano', 1, 12000, 0, '2026-04-18T08:35:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-353', 'seed-ticket-353', 'cash', 12000, 'completed', '2026-04-18T08:35:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-353', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-353', '2026-04-18T08:35:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-354', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-18T10:20:06.000Z', '2026-04-18T10:20:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-354-1', 'seed-ticket-354', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:20:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-354-2', 'seed-ticket-354', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:20:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-354-3', 'seed-ticket-354', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T10:20:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-354-4', 'seed-ticket-354', 'prod-americano', 1, 12000, 0, '2026-04-18T10:20:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-354', 'seed-ticket-354', 'cash', 59500, 'completed', '2026-04-18T10:20:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-354', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-354', '2026-04-18T10:20:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-355', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-18T19:21:10.000Z', '2026-04-18T19:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-355-1', 'seed-ticket-355', 'prod-americano', 1, 12000, 0, '2026-04-18T19:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-355-2', 'seed-ticket-355', 'prod-latte', 1, 15000, 0, '2026-04-18T19:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-355-3', 'seed-ticket-355', 'prod-latte', 1, 15000, 0, '2026-04-18T19:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-355', 'seed-ticket-355', 'cash', 42000, 'completed', '2026-04-18T19:21:10.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-355', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-355', '2026-04-18T19:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-356', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-18T18:51:55.000Z', '2026-04-18T18:51:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-356-1', 'seed-ticket-356', 'prod-latte', 1, 15000, 0, '2026-04-18T18:51:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-356-2', 'seed-ticket-356', 'prod-mocha', 1, 16500, 0, '2026-04-18T18:51:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-356-3', 'seed-ticket-356', 'prod-latte', 1, 15000, 0, '2026-04-18T18:51:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-356-4', 'seed-ticket-356', 'prod-mocha', 1, 16500, 0, '2026-04-18T18:51:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-356', 'seed-ticket-356', 'cash', 63000, 'completed', '2026-04-18T18:51:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-356', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-356', '2026-04-18T18:51:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-357', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-18T14:40:51.000Z', '2026-04-18T14:40:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-357-1', 'seed-ticket-357', 'prod-americano', 1, 12000, 0, '2026-04-18T14:40:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-357', 'seed-ticket-357', 'cash', 12000, 'completed', '2026-04-18T14:40:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-357', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-357', '2026-04-18T14:40:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-358', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-18T15:45:09.000Z', '2026-04-18T15:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-358-1', 'seed-ticket-358', 'prod-latte', 1, 15000, 0, '2026-04-18T15:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-358-2', 'seed-ticket-358', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T15:45:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-358', 'seed-ticket-358', 'cash', 29500, 'completed', '2026-04-18T15:45:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-358', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-358', '2026-04-18T15:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-359', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-18T18:45:43.000Z', '2026-04-18T18:45:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-359-1', 'seed-ticket-359', 'prod-americano', 1, 12000, 0, '2026-04-18T18:45:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-359-2', 'seed-ticket-359', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T18:45:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-359-3', 'seed-ticket-359', 'prod-americano', 1, 12000, 0, '2026-04-18T18:45:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-359-4', 'seed-ticket-359', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T18:45:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-359', 'seed-ticket-359', 'cash', 53000, 'completed', '2026-04-18T18:45:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-359', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-359', '2026-04-18T18:45:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-360', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T10:56:26.000Z', '2026-04-18T10:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-360-1', 'seed-ticket-360', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:56:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-360', 'seed-ticket-360', 'cash', 16500, 'completed', '2026-04-18T10:56:26.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-360', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-360', '2026-04-18T10:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-361', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-18T19:08:57.000Z', '2026-04-18T19:08:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-361-1', 'seed-ticket-361', 'prod-americano', 1, 12000, 0, '2026-04-18T19:08:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-361-2', 'seed-ticket-361', 'prod-americano', 1, 12000, 0, '2026-04-18T19:08:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-361-3', 'seed-ticket-361', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:08:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-361', 'seed-ticket-361', 'cash', 38500, 'completed', '2026-04-18T19:08:57.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-361', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-361', '2026-04-18T19:08:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-362', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T08:04:40.000Z', '2026-04-19T08:04:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-362-1', 'seed-ticket-362', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:04:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-362-2', 'seed-ticket-362', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:04:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-362-3', 'seed-ticket-362', 'prod-mocha', 1, 16500, 0, '2026-04-19T08:04:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-362', 'seed-ticket-362', 'cash', 45500, 'completed', '2026-04-19T08:04:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-362', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-362', '2026-04-19T08:04:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-363', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-19T19:02:19.000Z', '2026-04-19T19:02:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-363-1', 'seed-ticket-363', 'prod-americano', 1, 12000, 0, '2026-04-19T19:02:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-363', 'seed-ticket-363', 'cash', 12000, 'completed', '2026-04-19T19:02:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-363', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-363', '2026-04-19T19:02:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-364', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-19T08:27:30.000Z', '2026-04-19T08:27:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-364-1', 'seed-ticket-364', 'prod-americano', 1, 12000, 0, '2026-04-19T08:27:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-364-2', 'seed-ticket-364', 'prod-latte', 1, 15000, 0, '2026-04-19T08:27:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-364-3', 'seed-ticket-364', 'prod-americano', 1, 12000, 0, '2026-04-19T08:27:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-364-4', 'seed-ticket-364', 'prod-latte', 1, 15000, 0, '2026-04-19T08:27:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-364', 'seed-ticket-364', 'cash', 54000, 'completed', '2026-04-19T08:27:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-364', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-364', '2026-04-19T08:27:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-365', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-19T17:04:21.000Z', '2026-04-19T17:04:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-365-1', 'seed-ticket-365', 'prod-mocha', 1, 16500, 0, '2026-04-19T17:04:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-365-2', 'seed-ticket-365', 'prod-mocha', 1, 16500, 0, '2026-04-19T17:04:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-365-3', 'seed-ticket-365', 'prod-americano', 1, 12000, 0, '2026-04-19T17:04:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-365-4', 'seed-ticket-365', 'prod-americano', 1, 12000, 0, '2026-04-19T17:04:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-365', 'seed-ticket-365', 'cash', 57000, 'completed', '2026-04-19T17:04:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-365', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-365', '2026-04-19T17:04:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-366', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-19T18:25:32.000Z', '2026-04-19T18:25:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-366-1', 'seed-ticket-366', 'prod-americano', 1, 12000, 0, '2026-04-19T18:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-366-2', 'seed-ticket-366', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T18:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-366-3', 'seed-ticket-366', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T18:25:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-366', 'seed-ticket-366', 'cash', 41000, 'completed', '2026-04-19T18:25:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-366', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-366', '2026-04-19T18:25:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-367', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-19T15:09:22.000Z', '2026-04-19T15:09:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-367-1', 'seed-ticket-367', 'prod-latte', 1, 15000, 0, '2026-04-19T15:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-367-2', 'seed-ticket-367', 'prod-latte', 1, 15000, 0, '2026-04-19T15:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-367-3', 'seed-ticket-367', 'prod-mocha', 1, 16500, 0, '2026-04-19T15:09:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-367-4', 'seed-ticket-367', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T15:09:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-367', 'seed-ticket-367', 'cash', 61000, 'completed', '2026-04-19T15:09:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-367', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-367', '2026-04-19T15:09:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-368', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-19T12:58:42.000Z', '2026-04-19T12:58:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-368-1', 'seed-ticket-368', 'prod-latte', 1, 15000, 0, '2026-04-19T12:58:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-368-2', 'seed-ticket-368', 'prod-mocha', 1, 16500, 0, '2026-04-19T12:58:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-368', 'seed-ticket-368', 'cash', 31500, 'completed', '2026-04-19T12:58:42.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-368', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-368', '2026-04-19T12:58:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-369', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-19T16:38:46.000Z', '2026-04-19T16:38:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-369-1', 'seed-ticket-369', 'prod-latte', 1, 15000, 0, '2026-04-19T16:38:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-369-2', 'seed-ticket-369', 'prod-latte', 1, 15000, 0, '2026-04-19T16:38:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-369-3', 'seed-ticket-369', 'prod-americano', 1, 12000, 0, '2026-04-19T16:38:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-369', 'seed-ticket-369', 'cash', 42000, 'completed', '2026-04-19T16:38:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-369', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-369', '2026-04-19T16:38:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-370', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-04-19T09:29:34.000Z', '2026-04-19T09:29:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-370-1', 'seed-ticket-370', 'prod-latte', 1, 15000, 0, '2026-04-19T09:29:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-370', 'seed-ticket-370', 'cash', 15000, 'completed', '2026-04-19T09:29:34.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-370', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-370', '2026-04-19T09:29:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-371', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T19:14:06.000Z', '2026-04-19T19:14:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-371-1', 'seed-ticket-371', 'prod-latte', 1, 15000, 0, '2026-04-19T19:14:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-371', 'seed-ticket-371', 'cash', 15000, 'completed', '2026-04-19T19:14:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-371', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-371', '2026-04-19T19:14:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-372', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-19T08:31:13.000Z', '2026-04-19T08:31:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-372-1', 'seed-ticket-372', 'prod-latte', 1, 15000, 0, '2026-04-19T08:31:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-372-2', 'seed-ticket-372', 'prod-americano', 1, 12000, 0, '2026-04-19T08:31:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-372', 'seed-ticket-372', 'cash', 27000, 'completed', '2026-04-19T08:31:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-372', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-372', '2026-04-19T08:31:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-373', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T11:26:24.000Z', '2026-04-19T11:26:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-373-1', 'seed-ticket-373', 'prod-americano', 1, 12000, 0, '2026-04-19T11:26:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-373-2', 'seed-ticket-373', 'prod-latte', 1, 15000, 0, '2026-04-19T11:26:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-373', 'seed-ticket-373', 'cash', 27000, 'completed', '2026-04-19T11:26:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-373', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-373', '2026-04-19T11:26:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-374', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T08:58:54.000Z', '2026-04-19T08:58:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-374-1', 'seed-ticket-374', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-374-2', 'seed-ticket-374', 'prod-mocha', 1, 16500, 0, '2026-04-19T08:58:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-374', 'seed-ticket-374', 'cash', 31000, 'completed', '2026-04-19T08:58:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-374', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-374', '2026-04-19T08:58:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-375', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-19T16:31:43.000Z', '2026-04-19T16:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-375-1', 'seed-ticket-375', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T16:31:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-375', 'seed-ticket-375', 'cash', 14500, 'completed', '2026-04-19T16:31:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-375', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-375', '2026-04-19T16:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-376', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-19T15:47:04.000Z', '2026-04-19T15:47:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-376-1', 'seed-ticket-376', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T15:47:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-376', 'seed-ticket-376', 'cash', 14500, 'completed', '2026-04-19T15:47:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-376', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-376', '2026-04-19T15:47:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-377', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-19T08:22:33.000Z', '2026-04-19T08:22:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-377-1', 'seed-ticket-377', 'prod-latte', 1, 15000, 0, '2026-04-19T08:22:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-377-2', 'seed-ticket-377', 'prod-americano', 1, 12000, 0, '2026-04-19T08:22:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-377-3', 'seed-ticket-377', 'prod-latte', 1, 15000, 0, '2026-04-19T08:22:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-377-4', 'seed-ticket-377', 'prod-mocha', 1, 16500, 0, '2026-04-19T08:22:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-377', 'seed-ticket-377', 'cash', 58500, 'completed', '2026-04-19T08:22:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-377', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-377', '2026-04-19T08:22:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-378', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T19:58:03.000Z', '2026-04-19T19:58:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-378-1', 'seed-ticket-378', 'prod-americano', 1, 12000, 0, '2026-04-19T19:58:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-378-2', 'seed-ticket-378', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T19:58:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-378-3', 'seed-ticket-378', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T19:58:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-378-4', 'seed-ticket-378', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T19:58:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-378', 'seed-ticket-378', 'cash', 55500, 'completed', '2026-04-19T19:58:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-378', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-378', '2026-04-19T19:58:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-379', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-19T13:14:03.000Z', '2026-04-19T13:14:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-379-1', 'seed-ticket-379', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T13:14:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-379-2', 'seed-ticket-379', 'prod-mocha', 1, 16500, 0, '2026-04-19T13:14:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-379', 'seed-ticket-379', 'cash', 31000, 'completed', '2026-04-19T13:14:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-379', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-379', '2026-04-19T13:14:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-380', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-19T11:13:30.000Z', '2026-04-19T11:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-380-1', 'seed-ticket-380', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-380-2', 'seed-ticket-380', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-380-3', 'seed-ticket-380', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-380-4', 'seed-ticket-380', 'prod-latte', 1, 15000, 0, '2026-04-19T11:13:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-380', 'seed-ticket-380', 'cash', 64500, 'completed', '2026-04-19T11:13:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-380', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-380', '2026-04-19T11:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-381', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T13:10:27.000Z', '2026-04-19T13:10:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-381-1', 'seed-ticket-381', 'prod-latte', 1, 15000, 0, '2026-04-19T13:10:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-381', 'seed-ticket-381', 'cash', 15000, 'completed', '2026-04-19T13:10:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-381', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-381', '2026-04-19T13:10:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-382', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T14:42:14.000Z', '2026-04-19T14:42:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-382-1', 'seed-ticket-382', 'prod-latte', 1, 15000, 0, '2026-04-19T14:42:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-382', 'seed-ticket-382', 'cash', 15000, 'completed', '2026-04-19T14:42:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-382', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-382', '2026-04-19T14:42:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-383', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-20T18:08:04.000Z', '2026-04-20T18:08:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-383-1', 'seed-ticket-383', 'prod-latte', 1, 15000, 0, '2026-04-20T18:08:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-383-2', 'seed-ticket-383', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:08:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-383-3', 'seed-ticket-383', 'prod-americano', 1, 12000, 0, '2026-04-20T18:08:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-383-4', 'seed-ticket-383', 'prod-mocha', 1, 16500, 0, '2026-04-20T18:08:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-383', 'seed-ticket-383', 'cash', 58000, 'completed', '2026-04-20T18:08:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-383', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-383', '2026-04-20T18:08:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-384', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-20T19:23:12.000Z', '2026-04-20T19:23:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-384-1', 'seed-ticket-384', 'prod-mocha', 1, 16500, 0, '2026-04-20T19:23:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-384-2', 'seed-ticket-384', 'prod-latte', 1, 15000, 0, '2026-04-20T19:23:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-384-3', 'seed-ticket-384', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T19:23:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-384-4', 'seed-ticket-384', 'prod-americano', 1, 12000, 0, '2026-04-20T19:23:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-384', 'seed-ticket-384', 'cash', 58000, 'completed', '2026-04-20T19:23:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-384', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-384', '2026-04-20T19:23:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-385', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-20T11:46:32.000Z', '2026-04-20T11:46:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-385-1', 'seed-ticket-385', 'prod-americano', 1, 12000, 0, '2026-04-20T11:46:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-385-2', 'seed-ticket-385', 'prod-mocha', 1, 16500, 0, '2026-04-20T11:46:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-385', 'seed-ticket-385', 'cash', 28500, 'completed', '2026-04-20T11:46:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-385', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-385', '2026-04-20T11:46:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-386', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-20T14:19:52.000Z', '2026-04-20T14:19:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-386-1', 'seed-ticket-386', 'prod-americano', 1, 12000, 0, '2026-04-20T14:19:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-386', 'seed-ticket-386', 'cash', 12000, 'completed', '2026-04-20T14:19:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-386', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-386', '2026-04-20T14:19:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-387', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-20T12:53:39.000Z', '2026-04-20T12:53:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-387-1', 'seed-ticket-387', 'prod-latte', 1, 15000, 0, '2026-04-20T12:53:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-387-2', 'seed-ticket-387', 'prod-mocha', 1, 16500, 0, '2026-04-20T12:53:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-387', 'seed-ticket-387', 'cash', 31500, 'completed', '2026-04-20T12:53:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-387', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-387', '2026-04-20T12:53:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-388', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-20T18:17:28.000Z', '2026-04-20T18:17:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-388-1', 'seed-ticket-388', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:17:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-388', 'seed-ticket-388', 'cash', 14500, 'completed', '2026-04-20T18:17:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-388', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-388', '2026-04-20T18:17:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-389', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-20T18:35:56.000Z', '2026-04-20T18:35:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-389-1', 'seed-ticket-389', 'prod-latte', 1, 15000, 0, '2026-04-20T18:35:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-389-2', 'seed-ticket-389', 'prod-latte', 1, 15000, 0, '2026-04-20T18:35:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-389', 'seed-ticket-389', 'cash', 30000, 'completed', '2026-04-20T18:35:56.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-389', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-389', '2026-04-20T18:35:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-390', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-20T08:39:30.000Z', '2026-04-20T08:39:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-390-1', 'seed-ticket-390', 'prod-latte', 1, 15000, 0, '2026-04-20T08:39:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-390', 'seed-ticket-390', 'cash', 15000, 'completed', '2026-04-20T08:39:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-390', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-390', '2026-04-20T08:39:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-391', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-04-20T19:35:21.000Z', '2026-04-20T19:35:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-391-1', 'seed-ticket-391', 'prod-mocha', 1, 16500, 0, '2026-04-20T19:35:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-391-2', 'seed-ticket-391', 'prod-latte', 1, 15000, 0, '2026-04-20T19:35:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-391-3', 'seed-ticket-391', 'prod-latte', 1, 15000, 0, '2026-04-20T19:35:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-391', 'seed-ticket-391', 'cash', 46500, 'completed', '2026-04-20T19:35:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-391', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-391', '2026-04-20T19:35:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-392', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-20T15:19:40.000Z', '2026-04-20T15:19:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-392-1', 'seed-ticket-392', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:19:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-392-2', 'seed-ticket-392', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:19:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-392-3', 'seed-ticket-392', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:19:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-392', 'seed-ticket-392', 'cash', 49500, 'completed', '2026-04-20T15:19:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-392', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-392', '2026-04-20T15:19:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-393', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-20T08:38:55.000Z', '2026-04-20T08:38:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-393-1', 'seed-ticket-393', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T08:38:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-393', 'seed-ticket-393', 'cash', 14500, 'completed', '2026-04-20T08:38:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-393', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-393', '2026-04-20T08:38:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-394', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-20T17:03:28.000Z', '2026-04-20T17:03:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-394-1', 'seed-ticket-394', 'prod-mocha', 1, 16500, 0, '2026-04-20T17:03:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-394-2', 'seed-ticket-394', 'prod-latte', 1, 15000, 0, '2026-04-20T17:03:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-394-3', 'seed-ticket-394', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T17:03:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-394-4', 'seed-ticket-394', 'prod-latte', 1, 15000, 0, '2026-04-20T17:03:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-394', 'seed-ticket-394', 'cash', 61000, 'completed', '2026-04-20T17:03:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-394', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-394', '2026-04-20T17:03:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-395', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-20T08:51:00.000Z', '2026-04-20T08:51:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-395-1', 'seed-ticket-395', 'prod-americano', 1, 12000, 0, '2026-04-20T08:51:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-395-2', 'seed-ticket-395', 'prod-mocha', 1, 16500, 0, '2026-04-20T08:51:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-395', 'seed-ticket-395', 'cash', 28500, 'completed', '2026-04-20T08:51:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-395', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-395', '2026-04-20T08:51:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-396', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-20T18:34:39.000Z', '2026-04-20T18:34:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-396-1', 'seed-ticket-396', 'prod-americano', 1, 12000, 0, '2026-04-20T18:34:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-396-2', 'seed-ticket-396', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:34:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-396-3', 'seed-ticket-396', 'prod-mocha', 1, 16500, 0, '2026-04-20T18:34:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-396', 'seed-ticket-396', 'cash', 43000, 'completed', '2026-04-20T18:34:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-396', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-396', '2026-04-20T18:34:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-397', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-20T14:41:35.000Z', '2026-04-20T14:41:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-397-1', 'seed-ticket-397', 'prod-americano', 1, 12000, 0, '2026-04-20T14:41:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-397-2', 'seed-ticket-397', 'prod-latte', 1, 15000, 0, '2026-04-20T14:41:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-397-3', 'seed-ticket-397', 'prod-latte', 1, 15000, 0, '2026-04-20T14:41:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-397', 'seed-ticket-397', 'cash', 42000, 'completed', '2026-04-20T14:41:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-397', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-397', '2026-04-20T14:41:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-398', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-20T18:42:03.000Z', '2026-04-20T18:42:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-398-1', 'seed-ticket-398', 'prod-latte', 1, 15000, 0, '2026-04-20T18:42:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-398-2', 'seed-ticket-398', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:42:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-398-3', 'seed-ticket-398', 'prod-americano', 1, 12000, 0, '2026-04-20T18:42:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-398', 'seed-ticket-398', 'cash', 41500, 'completed', '2026-04-20T18:42:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-398', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-398', '2026-04-20T18:42:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-399', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-20T08:17:22.000Z', '2026-04-20T08:17:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-399-1', 'seed-ticket-399', 'prod-americano', 1, 12000, 0, '2026-04-20T08:17:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-399-2', 'seed-ticket-399', 'prod-mocha', 1, 16500, 0, '2026-04-20T08:17:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-399-3', 'seed-ticket-399', 'prod-latte', 1, 15000, 0, '2026-04-20T08:17:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-399-4', 'seed-ticket-399', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T08:17:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-399', 'seed-ticket-399', 'cash', 58000, 'completed', '2026-04-20T08:17:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-399', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-399', '2026-04-20T08:17:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-400', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-20T15:40:02.000Z', '2026-04-20T15:40:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-400-1', 'seed-ticket-400', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:40:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-400-2', 'seed-ticket-400', 'prod-americano', 1, 12000, 0, '2026-04-20T15:40:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-400-3', 'seed-ticket-400', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:40:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-400-4', 'seed-ticket-400', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:40:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-400', 'seed-ticket-400', 'cash', 59500, 'completed', '2026-04-20T15:40:02.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-400', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-400', '2026-04-20T15:40:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-401', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-20T15:36:04.000Z', '2026-04-20T15:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-401-1', 'seed-ticket-401', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:36:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-401-2', 'seed-ticket-401', 'prod-americano', 1, 12000, 0, '2026-04-20T15:36:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-401-3', 'seed-ticket-401', 'prod-americano', 1, 12000, 0, '2026-04-20T15:36:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-401-4', 'seed-ticket-401', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:36:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-401', 'seed-ticket-401', 'cash', 53000, 'completed', '2026-04-20T15:36:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-401', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-401', '2026-04-20T15:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-402', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-21T17:02:09.000Z', '2026-04-21T17:02:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-402-1', 'seed-ticket-402', 'prod-mocha', 1, 16500, 0, '2026-04-21T17:02:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-402', 'seed-ticket-402', 'cash', 16500, 'completed', '2026-04-21T17:02:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-402', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-402', '2026-04-21T17:02:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-403', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T09:37:54.000Z', '2026-04-21T09:37:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-403-1', 'seed-ticket-403', 'prod-latte', 1, 15000, 0, '2026-04-21T09:37:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-403-2', 'seed-ticket-403', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T09:37:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-403', 'seed-ticket-403', 'cash', 29500, 'completed', '2026-04-21T09:37:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-403', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-403', '2026-04-21T09:37:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-404', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-21T08:52:25.000Z', '2026-04-21T08:52:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-404-1', 'seed-ticket-404', 'prod-americano', 1, 12000, 0, '2026-04-21T08:52:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-404', 'seed-ticket-404', 'cash', 12000, 'completed', '2026-04-21T08:52:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-404', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-404', '2026-04-21T08:52:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-405', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-21T15:48:16.000Z', '2026-04-21T15:48:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-405-1', 'seed-ticket-405', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T15:48:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-405-2', 'seed-ticket-405', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:48:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-405-3', 'seed-ticket-405', 'prod-americano', 1, 12000, 0, '2026-04-21T15:48:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-405-4', 'seed-ticket-405', 'prod-latte', 1, 15000, 0, '2026-04-21T15:48:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-405', 'seed-ticket-405', 'cash', 58000, 'completed', '2026-04-21T15:48:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-405', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-405', '2026-04-21T15:48:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-406', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T09:06:20.000Z', '2026-04-21T09:06:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-406-1', 'seed-ticket-406', 'prod-latte', 1, 15000, 0, '2026-04-21T09:06:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-406-2', 'seed-ticket-406', 'prod-mocha', 1, 16500, 0, '2026-04-21T09:06:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-406', 'seed-ticket-406', 'cash', 31500, 'completed', '2026-04-21T09:06:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-406', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-406', '2026-04-21T09:06:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-407', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-21T09:28:58.000Z', '2026-04-21T09:28:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-407-1', 'seed-ticket-407', 'prod-mocha', 1, 16500, 0, '2026-04-21T09:28:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-407', 'seed-ticket-407', 'cash', 16500, 'completed', '2026-04-21T09:28:58.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-407', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-407', '2026-04-21T09:28:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-408', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-21T16:44:24.000Z', '2026-04-21T16:44:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-408-1', 'seed-ticket-408', 'prod-latte', 1, 15000, 0, '2026-04-21T16:44:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-408-2', 'seed-ticket-408', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T16:44:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-408', 'seed-ticket-408', 'cash', 29500, 'completed', '2026-04-21T16:44:24.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-408', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-408', '2026-04-21T16:44:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-409', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-04-21T10:26:53.000Z', '2026-04-21T10:26:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-409-1', 'seed-ticket-409', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:26:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-409-2', 'seed-ticket-409', 'prod-americano', 1, 12000, 0, '2026-04-21T10:26:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-409', 'seed-ticket-409', 'cash', 26500, 'completed', '2026-04-21T10:26:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-409', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-409', '2026-04-21T10:26:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-410', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-21T19:40:52.000Z', '2026-04-21T19:40:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-410-1', 'seed-ticket-410', 'prod-latte', 1, 15000, 0, '2026-04-21T19:40:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-410-2', 'seed-ticket-410', 'prod-mocha', 1, 16500, 0, '2026-04-21T19:40:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-410-3', 'seed-ticket-410', 'prod-americano', 1, 12000, 0, '2026-04-21T19:40:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-410', 'seed-ticket-410', 'cash', 43500, 'completed', '2026-04-21T19:40:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-410', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-410', '2026-04-21T19:40:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-411', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-21T11:07:53.000Z', '2026-04-21T11:07:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-411-1', 'seed-ticket-411', 'prod-americano', 1, 12000, 0, '2026-04-21T11:07:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-411', 'seed-ticket-411', 'cash', 12000, 'completed', '2026-04-21T11:07:53.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-411', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-411', '2026-04-21T11:07:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-412', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-21T17:01:41.000Z', '2026-04-21T17:01:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-412-1', 'seed-ticket-412', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T17:01:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-412', 'seed-ticket-412', 'cash', 14500, 'completed', '2026-04-21T17:01:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-412', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-412', '2026-04-21T17:01:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-413', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-21T16:33:12.000Z', '2026-04-21T16:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-413-1', 'seed-ticket-413', 'prod-mocha', 1, 16500, 0, '2026-04-21T16:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-413-2', 'seed-ticket-413', 'prod-mocha', 1, 16500, 0, '2026-04-21T16:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-413', 'seed-ticket-413', 'cash', 33000, 'completed', '2026-04-21T16:33:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-413', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-413', '2026-04-21T16:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-414', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-21T17:19:45.000Z', '2026-04-21T17:19:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-414-1', 'seed-ticket-414', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T17:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-414-2', 'seed-ticket-414', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T17:19:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-414', 'seed-ticket-414', 'cash', 29000, 'completed', '2026-04-21T17:19:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-414', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-414', '2026-04-21T17:19:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-415', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-21T19:01:05.000Z', '2026-04-21T19:01:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-415-1', 'seed-ticket-415', 'prod-latte', 1, 15000, 0, '2026-04-21T19:01:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-415', 'seed-ticket-415', 'cash', 15000, 'completed', '2026-04-21T19:01:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-415', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-415', '2026-04-21T19:01:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-416', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-21T13:38:35.000Z', '2026-04-21T13:38:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-416-1', 'seed-ticket-416', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T13:38:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-416-2', 'seed-ticket-416', 'prod-americano', 1, 12000, 0, '2026-04-21T13:38:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-416', 'seed-ticket-416', 'cash', 26500, 'completed', '2026-04-21T13:38:35.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-416', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-416', '2026-04-21T13:38:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-417', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-21T15:01:29.000Z', '2026-04-21T15:01:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-417-1', 'seed-ticket-417', 'prod-americano', 1, 12000, 0, '2026-04-21T15:01:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-417-2', 'seed-ticket-417', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:01:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-417-3', 'seed-ticket-417', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:01:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-417-4', 'seed-ticket-417', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T15:01:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-417', 'seed-ticket-417', 'cash', 59500, 'completed', '2026-04-21T15:01:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-417', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-417', '2026-04-21T15:01:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-418', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-21T15:20:15.000Z', '2026-04-21T15:20:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-418-1', 'seed-ticket-418', 'prod-latte', 1, 15000, 0, '2026-04-21T15:20:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-418-2', 'seed-ticket-418', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T15:20:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-418', 'seed-ticket-418', 'cash', 29500, 'completed', '2026-04-21T15:20:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-418', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-418', '2026-04-21T15:20:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-419', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-21T18:02:03.000Z', '2026-04-21T18:02:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-419-1', 'seed-ticket-419', 'prod-americano', 1, 12000, 0, '2026-04-21T18:02:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-419-2', 'seed-ticket-419', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T18:02:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-419-3', 'seed-ticket-419', 'prod-americano', 1, 12000, 0, '2026-04-21T18:02:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-419', 'seed-ticket-419', 'cash', 38500, 'completed', '2026-04-21T18:02:03.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-419', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-419', '2026-04-21T18:02:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-420', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-21T14:07:31.000Z', '2026-04-21T14:07:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-420-1', 'seed-ticket-420', 'prod-mocha', 1, 16500, 0, '2026-04-21T14:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-420-2', 'seed-ticket-420', 'prod-latte', 1, 15000, 0, '2026-04-21T14:07:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-420', 'seed-ticket-420', 'cash', 31500, 'completed', '2026-04-21T14:07:31.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-420', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-420', '2026-04-21T14:07:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-421', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-21T18:29:50.000Z', '2026-04-21T18:29:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-421-1', 'seed-ticket-421', 'prod-latte', 1, 15000, 0, '2026-04-21T18:29:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-421-2', 'seed-ticket-421', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T18:29:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-421-3', 'seed-ticket-421', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T18:29:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-421-4', 'seed-ticket-421', 'prod-latte', 1, 15000, 0, '2026-04-21T18:29:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-421', 'seed-ticket-421', 'cash', 59000, 'completed', '2026-04-21T18:29:50.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-421', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-421', '2026-04-21T18:29:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-422', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-21T10:06:22.000Z', '2026-04-21T10:06:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-422-1', 'seed-ticket-422', 'prod-americano', 1, 12000, 0, '2026-04-21T10:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-422-2', 'seed-ticket-422', 'prod-americano', 1, 12000, 0, '2026-04-21T10:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-422-3', 'seed-ticket-422', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:06:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-422', 'seed-ticket-422', 'cash', 38500, 'completed', '2026-04-21T10:06:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-422', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-422', '2026-04-21T10:06:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-423', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T10:07:30.000Z', '2026-04-21T10:07:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-423-1', 'seed-ticket-423', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-423-2', 'seed-ticket-423', 'prod-latte', 1, 15000, 0, '2026-04-21T10:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-423-3', 'seed-ticket-423', 'prod-americano', 1, 12000, 0, '2026-04-21T10:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-423-4', 'seed-ticket-423', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:07:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-423', 'seed-ticket-423', 'cash', 56000, 'completed', '2026-04-21T10:07:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-423', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-423', '2026-04-21T10:07:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-424', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-21T12:18:11.000Z', '2026-04-21T12:18:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-424-1', 'seed-ticket-424', 'prod-mocha', 1, 16500, 0, '2026-04-21T12:18:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-424', 'seed-ticket-424', 'cash', 16500, 'completed', '2026-04-21T12:18:11.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-424', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-424', '2026-04-21T12:18:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-425', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-22T12:17:55.000Z', '2026-04-22T12:17:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-425-1', 'seed-ticket-425', 'prod-latte', 1, 15000, 0, '2026-04-22T12:17:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-425-2', 'seed-ticket-425', 'prod-americano', 1, 12000, 0, '2026-04-22T12:17:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-425-3', 'seed-ticket-425', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T12:17:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-425', 'seed-ticket-425', 'cash', 41500, 'completed', '2026-04-22T12:17:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-425', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-425', '2026-04-22T12:17:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-426', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-22T13:49:15.000Z', '2026-04-22T13:49:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-426-1', 'seed-ticket-426', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T13:49:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-426', 'seed-ticket-426', 'cash', 14500, 'completed', '2026-04-22T13:49:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-426', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-426', '2026-04-22T13:49:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-427', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-22T10:32:20.000Z', '2026-04-22T10:32:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-427-1', 'seed-ticket-427', 'prod-latte', 1, 15000, 0, '2026-04-22T10:32:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-427-2', 'seed-ticket-427', 'prod-mocha', 1, 16500, 0, '2026-04-22T10:32:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-427', 'seed-ticket-427', 'cash', 31500, 'completed', '2026-04-22T10:32:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-427', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-427', '2026-04-22T10:32:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-428', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-22T16:57:12.000Z', '2026-04-22T16:57:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-428-1', 'seed-ticket-428', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T16:57:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-428', 'seed-ticket-428', 'cash', 14500, 'completed', '2026-04-22T16:57:12.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-428', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-428', '2026-04-22T16:57:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-429', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-22T18:32:13.000Z', '2026-04-22T18:32:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-429-1', 'seed-ticket-429', 'prod-latte', 1, 15000, 0, '2026-04-22T18:32:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-429-2', 'seed-ticket-429', 'prod-americano', 1, 12000, 0, '2026-04-22T18:32:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-429', 'seed-ticket-429', 'cash', 27000, 'completed', '2026-04-22T18:32:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-429', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-429', '2026-04-22T18:32:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-430', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-22T09:28:20.000Z', '2026-04-22T09:28:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-430-1', 'seed-ticket-430', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:28:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-430', 'seed-ticket-430', 'cash', 14500, 'completed', '2026-04-22T09:28:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-430', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-430', '2026-04-22T09:28:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-431', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-22T17:05:28.000Z', '2026-04-22T17:05:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-431-1', 'seed-ticket-431', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T17:05:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-431-2', 'seed-ticket-431', 'prod-americano', 1, 12000, 0, '2026-04-22T17:05:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-431-3', 'seed-ticket-431', 'prod-americano', 1, 12000, 0, '2026-04-22T17:05:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-431-4', 'seed-ticket-431', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T17:05:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-431', 'seed-ticket-431', 'cash', 53000, 'completed', '2026-04-22T17:05:28.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-431', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-431', '2026-04-22T17:05:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-432', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-22T18:02:11.000Z', '2026-04-22T18:02:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-432-1', 'seed-ticket-432', 'prod-mocha', 1, 16500, 0, '2026-04-22T18:02:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-432', 'seed-ticket-432', 'cash', 16500, 'completed', '2026-04-22T18:02:11.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-432', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-432', '2026-04-22T18:02:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-433', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T17:00:55.000Z', '2026-04-22T17:00:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-433-1', 'seed-ticket-433', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T17:00:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-433', 'seed-ticket-433', 'cash', 14500, 'completed', '2026-04-22T17:00:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-433', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-433', '2026-04-22T17:00:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-434', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-22T15:58:55.000Z', '2026-04-22T15:58:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-434-1', 'seed-ticket-434', 'prod-mocha', 1, 16500, 0, '2026-04-22T15:58:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-434-2', 'seed-ticket-434', 'prod-americano', 1, 12000, 0, '2026-04-22T15:58:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-434-3', 'seed-ticket-434', 'prod-latte', 1, 15000, 0, '2026-04-22T15:58:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-434-4', 'seed-ticket-434', 'prod-latte', 1, 15000, 0, '2026-04-22T15:58:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-434', 'seed-ticket-434', 'cash', 58500, 'completed', '2026-04-22T15:58:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-434', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-434', '2026-04-22T15:58:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-435', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-22T09:24:06.000Z', '2026-04-22T09:24:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-435-1', 'seed-ticket-435', 'prod-latte', 1, 15000, 0, '2026-04-22T09:24:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-435-2', 'seed-ticket-435', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:24:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-435', 'seed-ticket-435', 'cash', 29500, 'completed', '2026-04-22T09:24:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-435', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-435', '2026-04-22T09:24:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-436', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-22T09:49:17.000Z', '2026-04-22T09:49:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-436-1', 'seed-ticket-436', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:49:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-436-2', 'seed-ticket-436', 'prod-americano', 1, 12000, 0, '2026-04-22T09:49:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-436-3', 'seed-ticket-436', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:49:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-436-4', 'seed-ticket-436', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:49:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-436', 'seed-ticket-436', 'cash', 57500, 'completed', '2026-04-22T09:49:17.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-436', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-436', '2026-04-22T09:49:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-437', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-22T11:25:00.000Z', '2026-04-22T11:25:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-437-1', 'seed-ticket-437', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:25:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-437-2', 'seed-ticket-437', 'prod-mocha', 1, 16500, 0, '2026-04-22T11:25:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-437-3', 'seed-ticket-437', 'prod-americano', 1, 12000, 0, '2026-04-22T11:25:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-437', 'seed-ticket-437', 'cash', 43000, 'completed', '2026-04-22T11:25:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-437', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-437', '2026-04-22T11:25:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-438', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-22T12:52:48.000Z', '2026-04-22T12:52:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-438-1', 'seed-ticket-438', 'prod-mocha', 1, 16500, 0, '2026-04-22T12:52:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-438', 'seed-ticket-438', 'cash', 16500, 'completed', '2026-04-22T12:52:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-438', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-438', '2026-04-22T12:52:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-439', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-22T14:52:04.000Z', '2026-04-22T14:52:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-439-1', 'seed-ticket-439', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T14:52:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-439', 'seed-ticket-439', 'cash', 14500, 'completed', '2026-04-22T14:52:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-439', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-439', '2026-04-22T14:52:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-440', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-22T14:43:49.000Z', '2026-04-22T14:43:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-440-1', 'seed-ticket-440', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T14:43:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-440-2', 'seed-ticket-440', 'prod-mocha', 1, 16500, 0, '2026-04-22T14:43:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-440-3', 'seed-ticket-440', 'prod-latte', 1, 15000, 0, '2026-04-22T14:43:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-440', 'seed-ticket-440', 'cash', 46000, 'completed', '2026-04-22T14:43:49.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-440', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-440', '2026-04-22T14:43:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-441', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-22T09:55:05.000Z', '2026-04-22T09:55:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-441-1', 'seed-ticket-441', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:55:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-441-2', 'seed-ticket-441', 'prod-americano', 1, 12000, 0, '2026-04-22T09:55:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-441', 'seed-ticket-441', 'cash', 28500, 'completed', '2026-04-22T09:55:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-441', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-441', '2026-04-22T09:55:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-442', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-22T11:48:05.000Z', '2026-04-22T11:48:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-442-1', 'seed-ticket-442', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:48:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-442', 'seed-ticket-442', 'cash', 14500, 'completed', '2026-04-22T11:48:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-442', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-442', '2026-04-22T11:48:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-443', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-22T18:06:18.000Z', '2026-04-22T18:06:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-443-1', 'seed-ticket-443', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T18:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-443-2', 'seed-ticket-443', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T18:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-443-3', 'seed-ticket-443', 'prod-americano', 1, 12000, 0, '2026-04-22T18:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-443-4', 'seed-ticket-443', 'prod-mocha', 1, 16500, 0, '2026-04-22T18:06:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-443', 'seed-ticket-443', 'cash', 57500, 'completed', '2026-04-22T18:06:18.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-443', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-443', '2026-04-22T18:06:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-444', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-22T12:30:13.000Z', '2026-04-22T12:30:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-444-1', 'seed-ticket-444', 'prod-americano', 1, 12000, 0, '2026-04-22T12:30:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-444', 'seed-ticket-444', 'cash', 12000, 'completed', '2026-04-22T12:30:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-444', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-444', '2026-04-22T12:30:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-445', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-22T17:08:20.000Z', '2026-04-22T17:08:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-445-1', 'seed-ticket-445', 'prod-mocha', 1, 16500, 0, '2026-04-22T17:08:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-445-2', 'seed-ticket-445', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T17:08:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-445', 'seed-ticket-445', 'cash', 31000, 'completed', '2026-04-22T17:08:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-445', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-445', '2026-04-22T17:08:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-446', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-22T09:16:07.000Z', '2026-04-22T09:16:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-446-1', 'seed-ticket-446', 'prod-americano', 1, 12000, 0, '2026-04-22T09:16:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-446', 'seed-ticket-446', 'cash', 12000, 'completed', '2026-04-22T09:16:07.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-446', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-446', '2026-04-22T09:16:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-447', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-22T11:51:13.000Z', '2026-04-22T11:51:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-447-1', 'seed-ticket-447', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-447-2', 'seed-ticket-447', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-447-3', 'seed-ticket-447', 'prod-mocha', 1, 16500, 0, '2026-04-22T11:51:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-447', 'seed-ticket-447', 'cash', 45500, 'completed', '2026-04-22T11:51:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-447', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-447', '2026-04-22T11:51:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-448', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-22T10:42:33.000Z', '2026-04-22T10:42:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-448-1', 'seed-ticket-448', 'prod-americano', 1, 12000, 0, '2026-04-22T10:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-448-2', 'seed-ticket-448', 'prod-latte', 1, 15000, 0, '2026-04-22T10:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-448-3', 'seed-ticket-448', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T10:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-448-4', 'seed-ticket-448', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T10:42:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-448', 'seed-ticket-448', 'cash', 56000, 'completed', '2026-04-22T10:42:33.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-448', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-448', '2026-04-22T10:42:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-449', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-23T10:59:52.000Z', '2026-04-23T10:59:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-449-1', 'seed-ticket-449', 'prod-mocha', 1, 16500, 0, '2026-04-23T10:59:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-449-2', 'seed-ticket-449', 'prod-latte', 1, 15000, 0, '2026-04-23T10:59:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-449', 'seed-ticket-449', 'cash', 31500, 'completed', '2026-04-23T10:59:52.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-449', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-449', '2026-04-23T10:59:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-450', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-23T19:32:29.000Z', '2026-04-23T19:32:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-450-1', 'seed-ticket-450', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T19:32:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-450-2', 'seed-ticket-450', 'prod-americano', 1, 12000, 0, '2026-04-23T19:32:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-450-3', 'seed-ticket-450', 'prod-americano', 1, 12000, 0, '2026-04-23T19:32:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-450', 'seed-ticket-450', 'cash', 38500, 'completed', '2026-04-23T19:32:29.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-450', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-450', '2026-04-23T19:32:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-451', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-23T13:42:19.000Z', '2026-04-23T13:42:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-451-1', 'seed-ticket-451', 'prod-latte', 1, 15000, 0, '2026-04-23T13:42:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-451-2', 'seed-ticket-451', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:42:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-451', 'seed-ticket-451', 'cash', 29500, 'completed', '2026-04-23T13:42:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-451', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-451', '2026-04-23T13:42:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-452', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-23T19:40:48.000Z', '2026-04-23T19:40:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-452-1', 'seed-ticket-452', 'prod-latte', 1, 15000, 0, '2026-04-23T19:40:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-452-2', 'seed-ticket-452', 'prod-latte', 1, 15000, 0, '2026-04-23T19:40:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-452', 'seed-ticket-452', 'cash', 30000, 'completed', '2026-04-23T19:40:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-452', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-452', '2026-04-23T19:40:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-453', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-23T16:52:23.000Z', '2026-04-23T16:52:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-453-1', 'seed-ticket-453', 'prod-latte', 1, 15000, 0, '2026-04-23T16:52:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-453-2', 'seed-ticket-453', 'prod-latte', 1, 15000, 0, '2026-04-23T16:52:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-453-3', 'seed-ticket-453', 'prod-mocha', 1, 16500, 0, '2026-04-23T16:52:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-453-4', 'seed-ticket-453', 'prod-latte', 1, 15000, 0, '2026-04-23T16:52:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-453', 'seed-ticket-453', 'cash', 61500, 'completed', '2026-04-23T16:52:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-453', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-453', '2026-04-23T16:52:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-454', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-23T19:09:09.000Z', '2026-04-23T19:09:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-454-1', 'seed-ticket-454', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T19:09:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-454-2', 'seed-ticket-454', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T19:09:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-454', 'seed-ticket-454', 'cash', 29000, 'completed', '2026-04-23T19:09:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-454', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-454', '2026-04-23T19:09:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-455', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-23T17:03:27.000Z', '2026-04-23T17:03:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-455-1', 'seed-ticket-455', 'prod-americano', 1, 12000, 0, '2026-04-23T17:03:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-455-2', 'seed-ticket-455', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:03:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-455', 'seed-ticket-455', 'cash', 26500, 'completed', '2026-04-23T17:03:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-455', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-455', '2026-04-23T17:03:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-456', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-23T13:02:50.000Z', '2026-04-23T13:02:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-456-1', 'seed-ticket-456', 'prod-americano', 1, 12000, 0, '2026-04-23T13:02:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-456-2', 'seed-ticket-456', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:02:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-456-3', 'seed-ticket-456', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:02:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-456', 'seed-ticket-456', 'cash', 45000, 'completed', '2026-04-23T13:02:50.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-456', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-456', '2026-04-23T13:02:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-457', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-23T11:12:20.000Z', '2026-04-23T11:12:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-457-1', 'seed-ticket-457', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T11:12:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-457-2', 'seed-ticket-457', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:12:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-457-3', 'seed-ticket-457', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:12:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-457-4', 'seed-ticket-457', 'prod-latte', 1, 15000, 0, '2026-04-23T11:12:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-457', 'seed-ticket-457', 'cash', 62500, 'completed', '2026-04-23T11:12:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-457', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-457', '2026-04-23T11:12:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-458', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-23T14:23:45.000Z', '2026-04-23T14:23:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-458-1', 'seed-ticket-458', 'prod-americano', 1, 12000, 0, '2026-04-23T14:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-458-2', 'seed-ticket-458', 'prod-mocha', 1, 16500, 0, '2026-04-23T14:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-458-3', 'seed-ticket-458', 'prod-mocha', 1, 16500, 0, '2026-04-23T14:23:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-458', 'seed-ticket-458', 'cash', 45000, 'completed', '2026-04-23T14:23:45.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-458', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-458', '2026-04-23T14:23:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-459', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-23T15:53:04.000Z', '2026-04-23T15:53:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-459-1', 'seed-ticket-459', 'prod-mocha', 1, 16500, 0, '2026-04-23T15:53:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-459-2', 'seed-ticket-459', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T15:53:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-459-3', 'seed-ticket-459', 'prod-americano', 1, 12000, 0, '2026-04-23T15:53:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-459-4', 'seed-ticket-459', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T15:53:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-459', 'seed-ticket-459', 'cash', 57500, 'completed', '2026-04-23T15:53:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-459', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-459', '2026-04-23T15:53:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-460', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-23T13:46:00.000Z', '2026-04-23T13:46:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-460-1', 'seed-ticket-460', 'prod-latte', 1, 15000, 0, '2026-04-23T13:46:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-460', 'seed-ticket-460', 'cash', 15000, 'completed', '2026-04-23T13:46:00.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-460', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-460', '2026-04-23T13:46:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-461', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-23T11:21:46.000Z', '2026-04-23T11:21:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-461-1', 'seed-ticket-461', 'prod-americano', 1, 12000, 0, '2026-04-23T11:21:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-461-2', 'seed-ticket-461', 'prod-americano', 1, 12000, 0, '2026-04-23T11:21:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-461-3', 'seed-ticket-461', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:21:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-461', 'seed-ticket-461', 'cash', 40500, 'completed', '2026-04-23T11:21:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-461', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-461', '2026-04-23T11:21:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-462', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-23T09:19:48.000Z', '2026-04-23T09:19:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-462-1', 'seed-ticket-462', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T09:19:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-462', 'seed-ticket-462', 'cash', 14500, 'completed', '2026-04-23T09:19:48.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-462', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-462', '2026-04-23T09:19:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-463', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-23T11:27:08.000Z', '2026-04-23T11:27:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-463-1', 'seed-ticket-463', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:27:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-463-2', 'seed-ticket-463', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:27:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-463-3', 'seed-ticket-463', 'prod-latte', 1, 15000, 0, '2026-04-23T11:27:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-463-4', 'seed-ticket-463', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T11:27:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-463', 'seed-ticket-463', 'cash', 62500, 'completed', '2026-04-23T11:27:08.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-463', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-463', '2026-04-23T11:27:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-464', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-04-23T13:34:46.000Z', '2026-04-23T13:34:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-464-1', 'seed-ticket-464', 'prod-latte', 1, 15000, 0, '2026-04-23T13:34:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-464-2', 'seed-ticket-464', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:34:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-464', 'seed-ticket-464', 'cash', 31500, 'completed', '2026-04-23T13:34:46.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-464', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-464', '2026-04-23T13:34:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-465', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-23T10:53:09.000Z', '2026-04-23T10:53:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-465-1', 'seed-ticket-465', 'prod-latte', 1, 15000, 0, '2026-04-23T10:53:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-465', 'seed-ticket-465', 'cash', 15000, 'completed', '2026-04-23T10:53:09.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-465', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-465', '2026-04-23T10:53:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-466', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-23T18:26:40.000Z', '2026-04-23T18:26:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-466-1', 'seed-ticket-466', 'prod-latte', 1, 15000, 0, '2026-04-23T18:26:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-466-2', 'seed-ticket-466', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T18:26:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-466', 'seed-ticket-466', 'cash', 29500, 'completed', '2026-04-23T18:26:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-466', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-466', '2026-04-23T18:26:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-467', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-23T18:27:19.000Z', '2026-04-23T18:27:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-467-1', 'seed-ticket-467', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T18:27:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-467-2', 'seed-ticket-467', 'prod-latte', 1, 15000, 0, '2026-04-23T18:27:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-467-3', 'seed-ticket-467', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T18:27:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-467-4', 'seed-ticket-467', 'prod-mocha', 1, 16500, 0, '2026-04-23T18:27:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-467', 'seed-ticket-467', 'cash', 60500, 'completed', '2026-04-23T18:27:19.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-467', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-467', '2026-04-23T18:27:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-468', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-23T11:32:30.000Z', '2026-04-23T11:32:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-468-1', 'seed-ticket-468', 'prod-americano', 1, 12000, 0, '2026-04-23T11:32:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-468-2', 'seed-ticket-468', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:32:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-468', 'seed-ticket-468', 'cash', 28500, 'completed', '2026-04-23T11:32:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-468', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-468', '2026-04-23T11:32:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-469', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-24T15:33:23.000Z', '2026-04-24T15:33:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-469-1', 'seed-ticket-469', 'prod-americano', 1, 12000, 0, '2026-04-24T15:33:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-469-2', 'seed-ticket-469', 'prod-mocha', 1, 16500, 0, '2026-04-24T15:33:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-469', 'seed-ticket-469', 'cash', 28500, 'completed', '2026-04-24T15:33:23.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-469', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-469', '2026-04-24T15:33:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-470', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-24T13:15:22.000Z', '2026-04-24T13:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-470-1', 'seed-ticket-470', 'prod-latte', 1, 15000, 0, '2026-04-24T13:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-470', 'seed-ticket-470', 'cash', 15000, 'completed', '2026-04-24T13:15:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-470', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-470', '2026-04-24T13:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-471', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-24T12:44:13.000Z', '2026-04-24T12:44:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-471-1', 'seed-ticket-471', 'prod-mocha', 1, 16500, 0, '2026-04-24T12:44:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-471-2', 'seed-ticket-471', 'prod-americano', 1, 12000, 0, '2026-04-24T12:44:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-471', 'seed-ticket-471', 'cash', 28500, 'completed', '2026-04-24T12:44:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-471', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-471', '2026-04-24T12:44:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-472', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-24T17:15:30.000Z', '2026-04-24T17:15:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-472-1', 'seed-ticket-472', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T17:15:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-472', 'seed-ticket-472', 'cash', 14500, 'completed', '2026-04-24T17:15:30.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-472', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-472', '2026-04-24T17:15:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-473', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-24T19:53:22.000Z', '2026-04-24T19:53:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-473-1', 'seed-ticket-473', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T19:53:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-473', 'seed-ticket-473', 'cash', 14500, 'completed', '2026-04-24T19:53:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-473', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-473', '2026-04-24T19:53:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-474', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T08:16:47.000Z', '2026-04-24T08:16:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-474-1', 'seed-ticket-474', 'prod-americano', 1, 12000, 0, '2026-04-24T08:16:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-474', 'seed-ticket-474', 'cash', 12000, 'completed', '2026-04-24T08:16:47.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-474', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-474', '2026-04-24T08:16:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-475', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-24T17:35:32.000Z', '2026-04-24T17:35:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-475-1', 'seed-ticket-475', 'prod-latte', 1, 15000, 0, '2026-04-24T17:35:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-475-2', 'seed-ticket-475', 'prod-americano', 1, 12000, 0, '2026-04-24T17:35:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-475-3', 'seed-ticket-475', 'prod-americano', 1, 12000, 0, '2026-04-24T17:35:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-475-4', 'seed-ticket-475', 'prod-mocha', 1, 16500, 0, '2026-04-24T17:35:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-475', 'seed-ticket-475', 'cash', 55500, 'completed', '2026-04-24T17:35:32.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-475', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-475', '2026-04-24T17:35:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-476', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-24T18:11:20.000Z', '2026-04-24T18:11:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-476-1', 'seed-ticket-476', 'prod-latte', 1, 15000, 0, '2026-04-24T18:11:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-476', 'seed-ticket-476', 'cash', 15000, 'completed', '2026-04-24T18:11:20.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-476', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-476', '2026-04-24T18:11:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-477', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-24T17:15:16.000Z', '2026-04-24T17:15:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-477-1', 'seed-ticket-477', 'prod-latte', 1, 15000, 0, '2026-04-24T17:15:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-477-2', 'seed-ticket-477', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T17:15:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-477-3', 'seed-ticket-477', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T17:15:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-477-4', 'seed-ticket-477', 'prod-mocha', 1, 16500, 0, '2026-04-24T17:15:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-477', 'seed-ticket-477', 'cash', 60500, 'completed', '2026-04-24T17:15:16.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-477', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-477', '2026-04-24T17:15:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-478', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-24T11:15:06.000Z', '2026-04-24T11:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-478-1', 'seed-ticket-478', 'prod-mocha', 1, 16500, 0, '2026-04-24T11:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-478-2', 'seed-ticket-478', 'prod-americano', 1, 12000, 0, '2026-04-24T11:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-478-3', 'seed-ticket-478', 'prod-americano', 1, 12000, 0, '2026-04-24T11:15:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-478-4', 'seed-ticket-478', 'prod-mocha', 1, 16500, 0, '2026-04-24T11:15:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-478', 'seed-ticket-478', 'cash', 57000, 'completed', '2026-04-24T11:15:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-478', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-478', '2026-04-24T11:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-479', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T18:42:36.000Z', '2026-04-24T18:42:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-479-1', 'seed-ticket-479', 'prod-latte', 1, 15000, 0, '2026-04-24T18:42:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-479-2', 'seed-ticket-479', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:42:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-479-3', 'seed-ticket-479', 'prod-americano', 1, 12000, 0, '2026-04-24T18:42:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-479', 'seed-ticket-479', 'cash', 41500, 'completed', '2026-04-24T18:42:36.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-479', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-479', '2026-04-24T18:42:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-480', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-24T08:14:59.000Z', '2026-04-24T08:14:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-480-1', 'seed-ticket-480', 'prod-latte', 1, 15000, 0, '2026-04-24T08:14:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-480-2', 'seed-ticket-480', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T08:14:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-480-3', 'seed-ticket-480', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T08:14:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-480-4', 'seed-ticket-480', 'prod-latte', 1, 15000, 0, '2026-04-24T08:14:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-480', 'seed-ticket-480', 'cash', 59000, 'completed', '2026-04-24T08:14:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-480', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-480', '2026-04-24T08:14:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-481', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Excellent Mt Apo coffee!', u.id, '2026-04-24T15:12:10.000Z', '2026-04-24T15:12:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-481-1', 'seed-ticket-481', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T15:12:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-481-2', 'seed-ticket-481', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T15:12:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-481-3', 'seed-ticket-481', 'prod-americano', 1, 12000, 0, '2026-04-24T15:12:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-481-4', 'seed-ticket-481', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T15:12:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-481', 'seed-ticket-481', 'cash', 55500, 'completed', '2026-04-24T15:12:10.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-481', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-481', '2026-04-24T15:12:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-482', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-24T10:35:54.000Z', '2026-04-24T10:35:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-482-1', 'seed-ticket-482', 'prod-mocha', 1, 16500, 0, '2026-04-24T10:35:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-482', 'seed-ticket-482', 'cash', 16500, 'completed', '2026-04-24T10:35:54.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-482', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-482', '2026-04-24T10:35:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-483', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-24T16:38:06.000Z', '2026-04-24T16:38:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-483-1', 'seed-ticket-483', 'prod-americano', 1, 12000, 0, '2026-04-24T16:38:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-483', 'seed-ticket-483', 'cash', 12000, 'completed', '2026-04-24T16:38:06.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-483', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-483', '2026-04-24T16:38:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-484', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T18:25:27.000Z', '2026-04-24T18:25:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-484-1', 'seed-ticket-484', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:25:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-484', 'seed-ticket-484', 'cash', 14500, 'completed', '2026-04-24T18:25:27.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-484', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-484', '2026-04-24T18:25:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-485', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-24T18:18:39.000Z', '2026-04-24T18:18:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-485-1', 'seed-ticket-485', 'prod-latte', 1, 15000, 0, '2026-04-24T18:18:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-485-2', 'seed-ticket-485', 'prod-americano', 1, 12000, 0, '2026-04-24T18:18:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-485', 'seed-ticket-485', 'cash', 27000, 'completed', '2026-04-24T18:18:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-485', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-485', '2026-04-24T18:18:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-486', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-24T11:54:25.000Z', '2026-04-24T11:54:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-486-1', 'seed-ticket-486', 'prod-latte', 1, 15000, 0, '2026-04-24T11:54:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-486-2', 'seed-ticket-486', 'prod-latte', 1, 15000, 0, '2026-04-24T11:54:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-486', 'seed-ticket-486', 'cash', 30000, 'completed', '2026-04-24T11:54:25.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-486', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-486', '2026-04-24T11:54:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-487', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-24T14:22:51.000Z', '2026-04-24T14:22:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-487-1', 'seed-ticket-487', 'prod-mocha', 1, 16500, 0, '2026-04-24T14:22:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-487-2', 'seed-ticket-487', 'prod-latte', 1, 15000, 0, '2026-04-24T14:22:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-487-3', 'seed-ticket-487', 'prod-latte', 1, 15000, 0, '2026-04-24T14:22:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-487', 'seed-ticket-487', 'cash', 46500, 'completed', '2026-04-24T14:22:51.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-487', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-487', '2026-04-24T14:22:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-488', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-24T11:09:56.000Z', '2026-04-24T11:09:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-488-1', 'seed-ticket-488', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T11:09:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-488-2', 'seed-ticket-488', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T11:09:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-488', 'seed-ticket-488', 'cash', 29000, 'completed', '2026-04-24T11:09:56.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-488', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-488', '2026-04-24T11:09:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-489', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T16:24:55.000Z', '2026-04-24T16:24:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-489-1', 'seed-ticket-489', 'prod-americano', 1, 12000, 0, '2026-04-24T16:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-489-2', 'seed-ticket-489', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-489-3', 'seed-ticket-489', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:24:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-489', 'seed-ticket-489', 'cash', 41000, 'completed', '2026-04-24T16:24:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-489', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-489', '2026-04-24T16:24:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-490', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-24T18:08:41.000Z', '2026-04-24T18:08:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-490-1', 'seed-ticket-490', 'prod-americano', 1, 12000, 0, '2026-04-24T18:08:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-490-2', 'seed-ticket-490', 'prod-americano', 1, 12000, 0, '2026-04-24T18:08:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-490-3', 'seed-ticket-490', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:08:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-490-4', 'seed-ticket-490', 'prod-mocha', 1, 16500, 0, '2026-04-24T18:08:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-490', 'seed-ticket-490', 'cash', 55000, 'completed', '2026-04-24T18:08:41.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-490', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-490', '2026-04-24T18:08:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-491', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-25T11:53:13.000Z', '2026-04-25T11:53:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-491-1', 'seed-ticket-491', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-491-2', 'seed-ticket-491', 'prod-latte', 1, 15000, 0, '2026-04-25T11:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-491-3', 'seed-ticket-491', 'prod-americano', 1, 12000, 0, '2026-04-25T11:53:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-491', 'seed-ticket-491', 'cash', 41500, 'completed', '2026-04-25T11:53:13.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-491', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-491', '2026-04-25T11:53:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-492', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-25T08:21:43.000Z', '2026-04-25T08:21:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-492-1', 'seed-ticket-492', 'prod-latte', 1, 15000, 0, '2026-04-25T08:21:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-492', 'seed-ticket-492', 'cash', 15000, 'completed', '2026-04-25T08:21:43.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-492', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-492', '2026-04-25T08:21:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-493', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-25T08:34:01.000Z', '2026-04-25T08:34:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-493-1', 'seed-ticket-493', 'prod-latte', 1, 15000, 0, '2026-04-25T08:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-493-2', 'seed-ticket-493', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-493-3', 'seed-ticket-493', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-493-4', 'seed-ticket-493', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:34:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-493', 'seed-ticket-493', 'cash', 60500, 'completed', '2026-04-25T08:34:01.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-493', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-493', '2026-04-25T08:34:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-494', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-25T11:32:39.000Z', '2026-04-25T11:32:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-494-1', 'seed-ticket-494', 'prod-latte', 1, 15000, 0, '2026-04-25T11:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-494-2', 'seed-ticket-494', 'prod-mocha', 1, 16500, 0, '2026-04-25T11:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-494-3', 'seed-ticket-494', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-494-4', 'seed-ticket-494', 'prod-latte', 1, 15000, 0, '2026-04-25T11:32:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-494', 'seed-ticket-494', 'cash', 61000, 'completed', '2026-04-25T11:32:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-494', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-494', '2026-04-25T11:32:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-495', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-04-25T08:48:18.000Z', '2026-04-25T08:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-495-1', 'seed-ticket-495', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-495-2', 'seed-ticket-495', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-495-3', 'seed-ticket-495', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-495-4', 'seed-ticket-495', 'prod-americano', 1, 12000, 0, '2026-04-25T08:48:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-495', 'seed-ticket-495', 'cash', 55500, 'completed', '2026-04-25T08:48:18.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-495', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-495', '2026-04-25T08:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-496', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-25T08:16:21.000Z', '2026-04-25T08:16:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-496-1', 'seed-ticket-496', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:16:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-496-2', 'seed-ticket-496', 'prod-latte', 1, 15000, 0, '2026-04-25T08:16:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-496', 'seed-ticket-496', 'cash', 31500, 'completed', '2026-04-25T08:16:21.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-496', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-496', '2026-04-25T08:16:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-497', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-25T11:23:40.000Z', '2026-04-25T11:23:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-497-1', 'seed-ticket-497', 'prod-latte', 1, 15000, 0, '2026-04-25T11:23:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-497-2', 'seed-ticket-497', 'prod-americano', 1, 12000, 0, '2026-04-25T11:23:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-497-3', 'seed-ticket-497', 'prod-americano', 1, 12000, 0, '2026-04-25T11:23:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-497-4', 'seed-ticket-497', 'prod-americano', 1, 12000, 0, '2026-04-25T11:23:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-497', 'seed-ticket-497', 'cash', 51000, 'completed', '2026-04-25T11:23:40.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-497', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-497', '2026-04-25T11:23:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-498', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-25T08:25:05.000Z', '2026-04-25T08:25:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-498-1', 'seed-ticket-498', 'prod-latte', 1, 15000, 0, '2026-04-25T08:25:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-498', 'seed-ticket-498', 'cash', 15000, 'completed', '2026-04-25T08:25:05.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-498', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-498', '2026-04-25T08:25:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-499', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-25T17:36:04.000Z', '2026-04-25T17:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-499-1', 'seed-ticket-499', 'prod-mocha', 1, 16500, 0, '2026-04-25T17:36:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-499-2', 'seed-ticket-499', 'prod-americano', 1, 12000, 0, '2026-04-25T17:36:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-499-3', 'seed-ticket-499', 'prod-mocha', 1, 16500, 0, '2026-04-25T17:36:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-499', 'seed-ticket-499', 'cash', 45000, 'completed', '2026-04-25T17:36:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-499', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-499', '2026-04-25T17:36:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-500', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-25T11:24:37.000Z', '2026-04-25T11:24:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-500-1', 'seed-ticket-500', 'prod-americano', 1, 12000, 0, '2026-04-25T11:24:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-500', 'seed-ticket-500', 'cash', 12000, 'completed', '2026-04-25T11:24:37.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-500', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-500', '2026-04-25T11:24:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-501', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-25T11:12:15.000Z', '2026-04-25T11:12:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-501-1', 'seed-ticket-501', 'prod-mocha', 1, 16500, 0, '2026-04-25T11:12:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-501-2', 'seed-ticket-501', 'prod-latte', 1, 15000, 0, '2026-04-25T11:12:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-501-3', 'seed-ticket-501', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:12:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-501-4', 'seed-ticket-501', 'prod-latte', 1, 15000, 0, '2026-04-25T11:12:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-501', 'seed-ticket-501', 'cash', 61000, 'completed', '2026-04-25T11:12:15.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-501', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-501', '2026-04-25T11:12:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-502', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-25T16:00:55.000Z', '2026-04-25T16:00:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-502-1', 'seed-ticket-502', 'prod-americano', 1, 12000, 0, '2026-04-25T16:00:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-502-2', 'seed-ticket-502', 'prod-mocha', 1, 16500, 0, '2026-04-25T16:00:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-502-3', 'seed-ticket-502', 'prod-americano', 1, 12000, 0, '2026-04-25T16:00:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-502-4', 'seed-ticket-502', 'prod-mocha', 1, 16500, 0, '2026-04-25T16:00:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-502', 'seed-ticket-502', 'cash', 57000, 'completed', '2026-04-25T16:00:55.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-502', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-502', '2026-04-25T16:00:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-503', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T08:22:39.000Z', '2026-04-25T08:22:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-503-1', 'seed-ticket-503', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:22:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-503-2', 'seed-ticket-503', 'prod-americano', 1, 12000, 0, '2026-04-25T08:22:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-503', 'seed-ticket-503', 'cash', 28500, 'completed', '2026-04-25T08:22:39.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-503', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-503', '2026-04-25T08:22:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-504', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-25T08:01:04.000Z', '2026-04-25T08:01:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-504-1', 'seed-ticket-504', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:01:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-504-2', 'seed-ticket-504', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:01:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-504-3', 'seed-ticket-504', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:01:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-504', 'seed-ticket-504', 'cash', 47500, 'completed', '2026-04-25T08:01:04.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-504', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-504', '2026-04-25T08:01:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-505', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-25T12:56:14.000Z', '2026-04-25T12:56:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-505-1', 'seed-ticket-505', 'prod-americano', 1, 12000, 0, '2026-04-25T12:56:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-505-2', 'seed-ticket-505', 'prod-latte', 1, 15000, 0, '2026-04-25T12:56:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-505-3', 'seed-ticket-505', 'prod-latte', 1, 15000, 0, '2026-04-25T12:56:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-505', 'seed-ticket-505', 'cash', 42000, 'completed', '2026-04-25T12:56:14.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-505', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-505', '2026-04-25T12:56:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-506', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-25T16:46:22.000Z', '2026-04-25T16:46:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-506-1', 'seed-ticket-506', 'prod-americano', 1, 12000, 0, '2026-04-25T16:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-506-2', 'seed-ticket-506', 'prod-americano', 1, 12000, 0, '2026-04-25T16:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-506-3', 'seed-ticket-506', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T16:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-506-4', 'seed-ticket-506', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T16:46:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-506', 'seed-ticket-506', 'cash', 53000, 'completed', '2026-04-25T16:46:22.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-506', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-506', '2026-04-25T16:46:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'seed-ticket-507', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-25T15:44:59.000Z', '2026-04-25T15:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-507-1', 'seed-ticket-507', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T15:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-507-2', 'seed-ticket-507', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T15:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('seed-line-507-3', 'seed-ticket-507', 'prod-latte', 1, 15000, 0, '2026-04-25T15:44:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('seed-payment-507', 'seed-ticket-507', 'cash', 44000, 'completed', '2026-04-25T15:44:59.000Z');

INSERT INTO audit_events (id, org_id, user_id, register_id, action, entity_type, entity_id, created_at)
SELECT 'seed-audit-507', o.id, u.id, r.id, 'ticket.create', 'ticket', 'seed-ticket-507', '2026-04-25T15:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

