INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-550', 'hist-ticket-23-550', 'cash', 15000, 'completed', '2025-11-22T18:17:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-551', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-22T09:27:34.000Z', '2025-11-22T09:27:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-551-1', 'hist-ticket-23-551', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T09:27:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-551-2', 'hist-ticket-23-551', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T09:27:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-551', 'hist-ticket-23-551', 'cash', 29000, 'completed', '2025-11-22T09:27:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-552', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-22T09:14:23.000Z', '2025-11-22T09:14:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-552-1', 'hist-ticket-23-552', 'prod-mocha', 1, 16500, 0, '2025-11-22T09:14:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-552-2', 'hist-ticket-23-552', 'prod-mocha', 1, 16500, 0, '2025-11-22T09:14:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-552-3', 'hist-ticket-23-552', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T09:14:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-552-4', 'hist-ticket-23-552', 'prod-americano', 1, 12000, 0, '2025-11-22T09:14:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-552', 'hist-ticket-23-552', 'cash', 59500, 'completed', '2025-11-22T09:14:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-553', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-22T11:49:34.000Z', '2025-11-22T11:49:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-553-1', 'hist-ticket-23-553', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T11:49:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-553-2', 'hist-ticket-23-553', 'prod-mocha', 1, 16500, 0, '2025-11-22T11:49:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-553-3', 'hist-ticket-23-553', 'prod-americano', 1, 12000, 0, '2025-11-22T11:49:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-553', 'hist-ticket-23-553', 'cash', 43000, 'completed', '2025-11-22T11:49:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-554', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-11-22T10:54:55.000Z', '2025-11-22T10:54:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-554-1', 'hist-ticket-23-554', 'prod-latte', 1, 15000, 0, '2025-11-22T10:54:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-554-2', 'hist-ticket-23-554', 'prod-americano', 1, 12000, 0, '2025-11-22T10:54:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-554', 'hist-ticket-23-554', 'cash', 27000, 'completed', '2025-11-22T10:54:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-555', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-22T16:06:56.000Z', '2025-11-22T16:06:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-555-1', 'hist-ticket-23-555', 'prod-latte', 1, 15000, 0, '2025-11-22T16:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-555-2', 'hist-ticket-23-555', 'prod-americano', 1, 12000, 0, '2025-11-22T16:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-555-3', 'hist-ticket-23-555', 'prod-americano', 1, 12000, 0, '2025-11-22T16:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-555-4', 'hist-ticket-23-555', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T16:06:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-555', 'hist-ticket-23-555', 'cash', 53500, 'completed', '2025-11-22T16:06:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-556', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-22T15:38:33.000Z', '2025-11-22T15:38:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-556-1', 'hist-ticket-23-556', 'prod-americano', 1, 12000, 0, '2025-11-22T15:38:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-556', 'hist-ticket-23-556', 'cash', 12000, 'completed', '2025-11-22T15:38:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-557', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-22T15:11:38.000Z', '2025-11-22T15:11:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-557-1', 'hist-ticket-23-557', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T15:11:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-557-2', 'hist-ticket-23-557', 'prod-mocha', 1, 16500, 0, '2025-11-22T15:11:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-557-3', 'hist-ticket-23-557', 'prod-latte', 1, 15000, 0, '2025-11-22T15:11:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-557-4', 'hist-ticket-23-557', 'prod-mocha', 1, 16500, 0, '2025-11-22T15:11:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-557', 'hist-ticket-23-557', 'cash', 62500, 'completed', '2025-11-22T15:11:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-558', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-22T11:50:48.000Z', '2025-11-22T11:50:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-558-1', 'hist-ticket-23-558', 'prod-mocha', 1, 16500, 0, '2025-11-22T11:50:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-558', 'hist-ticket-23-558', 'cash', 16500, 'completed', '2025-11-22T11:50:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-559', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-11-22T15:09:44.000Z', '2025-11-22T15:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-559-1', 'hist-ticket-23-559', 'prod-mocha', 1, 16500, 0, '2025-11-22T15:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-559-2', 'hist-ticket-23-559', 'prod-americano', 1, 12000, 0, '2025-11-22T15:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-559', 'hist-ticket-23-559', 'cash', 28500, 'completed', '2025-11-22T15:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-560', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-11-22T17:35:37.000Z', '2025-11-22T17:35:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-560-1', 'hist-ticket-23-560', 'prod-americano', 1, 12000, 0, '2025-11-22T17:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-560-2', 'hist-ticket-23-560', 'prod-mocha', 1, 16500, 0, '2025-11-22T17:35:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-560', 'hist-ticket-23-560', 'cash', 28500, 'completed', '2025-11-22T17:35:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-561', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-23T15:16:55.000Z', '2025-11-23T15:16:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-561-1', 'hist-ticket-24-561', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T15:16:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-561', 'hist-ticket-24-561', 'cash', 14500, 'completed', '2025-11-23T15:16:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-562', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-23T13:35:17.000Z', '2025-11-23T13:35:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-562-1', 'hist-ticket-24-562', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T13:35:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-562-2', 'hist-ticket-24-562', 'prod-latte', 1, 15000, 0, '2025-11-23T13:35:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-562', 'hist-ticket-24-562', 'cash', 29500, 'completed', '2025-11-23T13:35:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-563', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-23T18:12:39.000Z', '2025-11-23T18:12:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-563-1', 'hist-ticket-24-563', 'prod-americano', 1, 12000, 0, '2025-11-23T18:12:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-563-2', 'hist-ticket-24-563', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T18:12:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-563', 'hist-ticket-24-563', 'cash', 26500, 'completed', '2025-11-23T18:12:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-564', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-23T13:54:28.000Z', '2025-11-23T13:54:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-564-1', 'hist-ticket-24-564', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T13:54:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-564', 'hist-ticket-24-564', 'cash', 14500, 'completed', '2025-11-23T13:54:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-565', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-11-23T10:38:22.000Z', '2025-11-23T10:38:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-565-1', 'hist-ticket-24-565', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T10:38:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-565-2', 'hist-ticket-24-565', 'prod-americano', 1, 12000, 0, '2025-11-23T10:38:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-565-3', 'hist-ticket-24-565', 'prod-latte', 1, 15000, 0, '2025-11-23T10:38:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-565', 'hist-ticket-24-565', 'cash', 41500, 'completed', '2025-11-23T10:38:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-566', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-11-23T08:14:09.000Z', '2025-11-23T08:14:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-566-1', 'hist-ticket-24-566', 'prod-mocha', 1, 16500, 0, '2025-11-23T08:14:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-566-2', 'hist-ticket-24-566', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T08:14:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-566-3', 'hist-ticket-24-566', 'prod-mocha', 1, 16500, 0, '2025-11-23T08:14:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-566-4', 'hist-ticket-24-566', 'prod-americano', 1, 12000, 0, '2025-11-23T08:14:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-566', 'hist-ticket-24-566', 'cash', 59500, 'completed', '2025-11-23T08:14:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-567', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-11-23T11:25:27.000Z', '2025-11-23T11:25:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-567-1', 'hist-ticket-24-567', 'prod-mocha', 1, 16500, 0, '2025-11-23T11:25:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-567-2', 'hist-ticket-24-567', 'prod-americano', 1, 12000, 0, '2025-11-23T11:25:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-567', 'hist-ticket-24-567', 'cash', 28500, 'completed', '2025-11-23T11:25:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-568', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-23T11:53:15.000Z', '2025-11-23T11:53:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-568-1', 'hist-ticket-24-568', 'prod-latte', 1, 15000, 0, '2025-11-23T11:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-568-2', 'hist-ticket-24-568', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T11:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-568-3', 'hist-ticket-24-568', 'prod-americano', 1, 12000, 0, '2025-11-23T11:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-568-4', 'hist-ticket-24-568', 'prod-mocha', 1, 16500, 0, '2025-11-23T11:53:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-568', 'hist-ticket-24-568', 'cash', 58000, 'completed', '2025-11-23T11:53:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-569', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-23T09:13:58.000Z', '2025-11-23T09:13:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-569-1', 'hist-ticket-24-569', 'prod-latte', 1, 15000, 0, '2025-11-23T09:13:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-569', 'hist-ticket-24-569', 'cash', 15000, 'completed', '2025-11-23T09:13:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-570', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-23T09:32:48.000Z', '2025-11-23T09:32:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-570-1', 'hist-ticket-24-570', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T09:32:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-570-2', 'hist-ticket-24-570', 'prod-americano', 1, 12000, 0, '2025-11-23T09:32:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-570-3', 'hist-ticket-24-570', 'prod-americano', 1, 12000, 0, '2025-11-23T09:32:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-570', 'hist-ticket-24-570', 'cash', 38500, 'completed', '2025-11-23T09:32:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-571', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-23T09:21:31.000Z', '2025-11-23T09:21:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-571-1', 'hist-ticket-24-571', 'prod-americano', 1, 12000, 0, '2025-11-23T09:21:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-571-2', 'hist-ticket-24-571', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T09:21:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-571-3', 'hist-ticket-24-571', 'prod-latte', 1, 15000, 0, '2025-11-23T09:21:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-571-4', 'hist-ticket-24-571', 'prod-americano', 1, 12000, 0, '2025-11-23T09:21:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-571', 'hist-ticket-24-571', 'cash', 53500, 'completed', '2025-11-23T09:21:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-572', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-11-23T10:28:21.000Z', '2025-11-23T10:28:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-572-1', 'hist-ticket-24-572', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T10:28:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-572', 'hist-ticket-24-572', 'cash', 14500, 'completed', '2025-11-23T10:28:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-573', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-23T17:58:21.000Z', '2025-11-23T17:58:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-573-1', 'hist-ticket-24-573', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T17:58:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-573-2', 'hist-ticket-24-573', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T17:58:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-573-3', 'hist-ticket-24-573', 'prod-mocha', 1, 16500, 0, '2025-11-23T17:58:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-573', 'hist-ticket-24-573', 'cash', 45500, 'completed', '2025-11-23T17:58:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-574', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-23T13:09:08.000Z', '2025-11-23T13:09:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-574-1', 'hist-ticket-24-574', 'prod-latte', 1, 15000, 0, '2025-11-23T13:09:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-574-2', 'hist-ticket-24-574', 'prod-mocha', 1, 16500, 0, '2025-11-23T13:09:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-574-3', 'hist-ticket-24-574', 'prod-mocha', 1, 16500, 0, '2025-11-23T13:09:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-574', 'hist-ticket-24-574', 'cash', 48000, 'completed', '2025-11-23T13:09:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-575', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-23T11:44:08.000Z', '2025-11-23T11:44:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-575-1', 'hist-ticket-24-575', 'prod-mocha', 1, 16500, 0, '2025-11-23T11:44:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-575-2', 'hist-ticket-24-575', 'prod-mocha', 1, 16500, 0, '2025-11-23T11:44:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-575', 'hist-ticket-24-575', 'cash', 33000, 'completed', '2025-11-23T11:44:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-576', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-23T18:12:32.000Z', '2025-11-23T18:12:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-576-1', 'hist-ticket-24-576', 'prod-mocha', 1, 16500, 0, '2025-11-23T18:12:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-576-2', 'hist-ticket-24-576', 'prod-americano', 1, 12000, 0, '2025-11-23T18:12:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-576', 'hist-ticket-24-576', 'cash', 28500, 'completed', '2025-11-23T18:12:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-577', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-11-23T18:01:11.000Z', '2025-11-23T18:01:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-577-1', 'hist-ticket-24-577', 'prod-mocha', 1, 16500, 0, '2025-11-23T18:01:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-577', 'hist-ticket-24-577', 'cash', 16500, 'completed', '2025-11-23T18:01:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-578', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-23T15:22:07.000Z', '2025-11-23T15:22:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-578-1', 'hist-ticket-24-578', 'prod-mocha', 1, 16500, 0, '2025-11-23T15:22:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-578-2', 'hist-ticket-24-578', 'prod-latte', 1, 15000, 0, '2025-11-23T15:22:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-578-3', 'hist-ticket-24-578', 'prod-latte', 1, 15000, 0, '2025-11-23T15:22:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-578', 'hist-ticket-24-578', 'cash', 46500, 'completed', '2025-11-23T15:22:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-579', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-23T08:19:17.000Z', '2025-11-23T08:19:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-579-1', 'hist-ticket-24-579', 'prod-americano', 1, 12000, 0, '2025-11-23T08:19:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-579-2', 'hist-ticket-24-579', 'prod-americano', 1, 12000, 0, '2025-11-23T08:19:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-579-3', 'hist-ticket-24-579', 'prod-latte', 1, 15000, 0, '2025-11-23T08:19:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-579', 'hist-ticket-24-579', 'cash', 39000, 'completed', '2025-11-23T08:19:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-580', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-23T18:52:17.000Z', '2025-11-23T18:52:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-580-1', 'hist-ticket-24-580', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T18:52:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-580-2', 'hist-ticket-24-580', 'prod-mocha', 1, 16500, 0, '2025-11-23T18:52:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-580', 'hist-ticket-24-580', 'cash', 31000, 'completed', '2025-11-23T18:52:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-581', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-23T13:18:25.000Z', '2025-11-23T13:18:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-581-1', 'hist-ticket-24-581', 'prod-americano', 1, 12000, 0, '2025-11-23T13:18:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-581-2', 'hist-ticket-24-581', 'prod-mocha', 1, 16500, 0, '2025-11-23T13:18:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-581', 'hist-ticket-24-581', 'cash', 28500, 'completed', '2025-11-23T13:18:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-582', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-23T09:14:27.000Z', '2025-11-23T09:14:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-582-1', 'hist-ticket-24-582', 'prod-latte', 1, 15000, 0, '2025-11-23T09:14:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-582-2', 'hist-ticket-24-582', 'prod-americano', 1, 12000, 0, '2025-11-23T09:14:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-582-3', 'hist-ticket-24-582', 'prod-mocha', 1, 16500, 0, '2025-11-23T09:14:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-582', 'hist-ticket-24-582', 'cash', 43500, 'completed', '2025-11-23T09:14:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-583', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-11-23T10:30:50.000Z', '2025-11-23T10:30:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-583-1', 'hist-ticket-24-583', 'prod-latte', 1, 15000, 0, '2025-11-23T10:30:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-583', 'hist-ticket-24-583', 'cash', 15000, 'completed', '2025-11-23T10:30:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-584', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-11-23T12:50:40.000Z', '2025-11-23T12:50:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-584-1', 'hist-ticket-24-584', 'prod-mocha', 1, 16500, 0, '2025-11-23T12:50:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-584-2', 'hist-ticket-24-584', 'prod-latte', 1, 15000, 0, '2025-11-23T12:50:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-584', 'hist-ticket-24-584', 'cash', 31500, 'completed', '2025-11-23T12:50:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-585', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-23T09:30:00.000Z', '2025-11-23T09:30:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-585-1', 'hist-ticket-24-585', 'prod-latte', 1, 15000, 0, '2025-11-23T09:30:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-585-2', 'hist-ticket-24-585', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T09:30:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-585', 'hist-ticket-24-585', 'cash', 29500, 'completed', '2025-11-23T09:30:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-586', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-11-23T19:57:48.000Z', '2025-11-23T19:57:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-586-1', 'hist-ticket-24-586', 'prod-latte', 1, 15000, 0, '2025-11-23T19:57:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-586-2', 'hist-ticket-24-586', 'prod-mocha', 1, 16500, 0, '2025-11-23T19:57:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-586', 'hist-ticket-24-586', 'cash', 31500, 'completed', '2025-11-23T19:57:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-587', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-23T10:58:06.000Z', '2025-11-23T10:58:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-587-1', 'hist-ticket-24-587', 'prod-latte', 1, 15000, 0, '2025-11-23T10:58:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-587-2', 'hist-ticket-24-587', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T10:58:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-587-3', 'hist-ticket-24-587', 'prod-mocha', 1, 16500, 0, '2025-11-23T10:58:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-587', 'hist-ticket-24-587', 'cash', 46000, 'completed', '2025-11-23T10:58:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-588', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-23T18:15:00.000Z', '2025-11-23T18:15:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-588-1', 'hist-ticket-24-588', 'prod-latte', 1, 15000, 0, '2025-11-23T18:15:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-588-2', 'hist-ticket-24-588', 'prod-mocha', 1, 16500, 0, '2025-11-23T18:15:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-588-3', 'hist-ticket-24-588', 'prod-americano', 1, 12000, 0, '2025-11-23T18:15:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-588', 'hist-ticket-24-588', 'cash', 43500, 'completed', '2025-11-23T18:15:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-589', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-23T16:10:48.000Z', '2025-11-23T16:10:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-589-1', 'hist-ticket-24-589', 'prod-mocha', 1, 16500, 0, '2025-11-23T16:10:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-589-2', 'hist-ticket-24-589', 'prod-latte', 1, 15000, 0, '2025-11-23T16:10:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-589-3', 'hist-ticket-24-589', 'prod-americano', 1, 12000, 0, '2025-11-23T16:10:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-589', 'hist-ticket-24-589', 'cash', 43500, 'completed', '2025-11-23T16:10:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-590', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-23T11:33:08.000Z', '2025-11-23T11:33:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-590-1', 'hist-ticket-24-590', 'prod-latte', 1, 15000, 0, '2025-11-23T11:33:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-590', 'hist-ticket-24-590', 'cash', 15000, 'completed', '2025-11-23T11:33:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-591', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-23T12:30:28.000Z', '2025-11-23T12:30:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-591-1', 'hist-ticket-24-591', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T12:30:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-591', 'hist-ticket-24-591', 'cash', 14500, 'completed', '2025-11-23T12:30:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-592', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-23T15:31:43.000Z', '2025-11-23T15:31:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-592-1', 'hist-ticket-24-592', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T15:31:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-592-2', 'hist-ticket-24-592', 'prod-latte', 1, 15000, 0, '2025-11-23T15:31:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-592', 'hist-ticket-24-592', 'cash', 29500, 'completed', '2025-11-23T15:31:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-593', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-23T13:19:33.000Z', '2025-11-23T13:19:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-593-1', 'hist-ticket-24-593', 'prod-americano', 1, 12000, 0, '2025-11-23T13:19:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-593', 'hist-ticket-24-593', 'cash', 12000, 'completed', '2025-11-23T13:19:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-594', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-11-23T17:52:02.000Z', '2025-11-23T17:52:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-594-1', 'hist-ticket-24-594', 'prod-mocha', 1, 16500, 0, '2025-11-23T17:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-594-2', 'hist-ticket-24-594', 'prod-mocha', 1, 16500, 0, '2025-11-23T17:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-594-3', 'hist-ticket-24-594', 'prod-latte', 1, 15000, 0, '2025-11-23T17:52:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-594', 'hist-ticket-24-594', 'cash', 48000, 'completed', '2025-11-23T17:52:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-595', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-23T09:52:25.000Z', '2025-11-23T09:52:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-595-1', 'hist-ticket-24-595', 'prod-americano', 1, 12000, 0, '2025-11-23T09:52:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-595', 'hist-ticket-24-595', 'cash', 12000, 'completed', '2025-11-23T09:52:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-596', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-23T14:05:29.000Z', '2025-11-23T14:05:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-596-1', 'hist-ticket-24-596', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T14:05:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-596-2', 'hist-ticket-24-596', 'prod-americano', 1, 12000, 0, '2025-11-23T14:05:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-596-3', 'hist-ticket-24-596', 'prod-americano', 1, 12000, 0, '2025-11-23T14:05:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-596-4', 'hist-ticket-24-596', 'prod-latte', 1, 15000, 0, '2025-11-23T14:05:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-596', 'hist-ticket-24-596', 'cash', 53500, 'completed', '2025-11-23T14:05:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-597', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-23T18:56:08.000Z', '2025-11-23T18:56:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-597-1', 'hist-ticket-24-597', 'prod-americano', 1, 12000, 0, '2025-11-23T18:56:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-597-2', 'hist-ticket-24-597', 'prod-americano', 1, 12000, 0, '2025-11-23T18:56:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-597-3', 'hist-ticket-24-597', 'prod-latte', 1, 15000, 0, '2025-11-23T18:56:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-597-4', 'hist-ticket-24-597', 'prod-americano', 1, 12000, 0, '2025-11-23T18:56:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-597', 'hist-ticket-24-597', 'cash', 51000, 'completed', '2025-11-23T18:56:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-598', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-23T14:56:46.000Z', '2025-11-23T14:56:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-598-1', 'hist-ticket-24-598', 'prod-latte', 1, 15000, 0, '2025-11-23T14:56:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-598-2', 'hist-ticket-24-598', 'prod-americano', 1, 12000, 0, '2025-11-23T14:56:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-598-3', 'hist-ticket-24-598', 'prod-latte', 1, 15000, 0, '2025-11-23T14:56:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-598', 'hist-ticket-24-598', 'cash', 42000, 'completed', '2025-11-23T14:56:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-599', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-23T15:58:32.000Z', '2025-11-23T15:58:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-599-1', 'hist-ticket-24-599', 'prod-mocha', 1, 16500, 0, '2025-11-23T15:58:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-599-2', 'hist-ticket-24-599', 'prod-latte', 1, 15000, 0, '2025-11-23T15:58:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-599', 'hist-ticket-24-599', 'cash', 31500, 'completed', '2025-11-23T15:58:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-600', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-23T16:19:54.000Z', '2025-11-23T16:19:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-600-1', 'hist-ticket-24-600', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T16:19:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-600-2', 'hist-ticket-24-600', 'prod-latte', 1, 15000, 0, '2025-11-23T16:19:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-600', 'hist-ticket-24-600', 'cash', 29500, 'completed', '2025-11-23T16:19:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-24-601', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-23T08:38:21.000Z', '2025-11-23T08:38:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-24-601-1', 'hist-ticket-24-601', 'prod-cappuccino', 1, 14500, 0, '2025-11-23T08:38:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-24-601', 'hist-ticket-24-601', 'cash', 14500, 'completed', '2025-11-23T08:38:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-602', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-24T11:41:55.000Z', '2025-11-24T11:41:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-602-1', 'hist-ticket-25-602', 'prod-mocha', 1, 16500, 0, '2025-11-24T11:41:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-602-2', 'hist-ticket-25-602', 'prod-latte', 1, 15000, 0, '2025-11-24T11:41:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-602-3', 'hist-ticket-25-602', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T11:41:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-602-4', 'hist-ticket-25-602', 'prod-americano', 1, 12000, 0, '2025-11-24T11:41:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-602', 'hist-ticket-25-602', 'cash', 58000, 'completed', '2025-11-24T11:41:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-603', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-24T11:34:47.000Z', '2025-11-24T11:34:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-603-1', 'hist-ticket-25-603', 'prod-americano', 1, 12000, 0, '2025-11-24T11:34:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-603', 'hist-ticket-25-603', 'cash', 12000, 'completed', '2025-11-24T11:34:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-604', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-24T16:07:00.000Z', '2025-11-24T16:07:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-604-1', 'hist-ticket-25-604', 'prod-americano', 1, 12000, 0, '2025-11-24T16:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-604-2', 'hist-ticket-25-604', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T16:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-604-3', 'hist-ticket-25-604', 'prod-latte', 1, 15000, 0, '2025-11-24T16:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-604-4', 'hist-ticket-25-604', 'prod-latte', 1, 15000, 0, '2025-11-24T16:07:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-604', 'hist-ticket-25-604', 'cash', 56500, 'completed', '2025-11-24T16:07:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-605', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-24T11:07:35.000Z', '2025-11-24T11:07:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-605-1', 'hist-ticket-25-605', 'prod-americano', 1, 12000, 0, '2025-11-24T11:07:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-605-2', 'hist-ticket-25-605', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T11:07:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-605', 'hist-ticket-25-605', 'cash', 26500, 'completed', '2025-11-24T11:07:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-606', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-24T17:50:47.000Z', '2025-11-24T17:50:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-606-1', 'hist-ticket-25-606', 'prod-mocha', 1, 16500, 0, '2025-11-24T17:50:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-606-2', 'hist-ticket-25-606', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T17:50:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-606-3', 'hist-ticket-25-606', 'prod-americano', 1, 12000, 0, '2025-11-24T17:50:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-606', 'hist-ticket-25-606', 'cash', 43000, 'completed', '2025-11-24T17:50:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-607', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-24T16:17:16.000Z', '2025-11-24T16:17:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-607-1', 'hist-ticket-25-607', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T16:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-607-2', 'hist-ticket-25-607', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T16:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-607-3', 'hist-ticket-25-607', 'prod-americano', 1, 12000, 0, '2025-11-24T16:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-607-4', 'hist-ticket-25-607', 'prod-americano', 1, 12000, 0, '2025-11-24T16:17:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-607', 'hist-ticket-25-607', 'cash', 53000, 'completed', '2025-11-24T16:17:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-608', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-24T12:25:24.000Z', '2025-11-24T12:25:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-608-1', 'hist-ticket-25-608', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T12:25:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-608-2', 'hist-ticket-25-608', 'prod-mocha', 1, 16500, 0, '2025-11-24T12:25:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-608-3', 'hist-ticket-25-608', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T12:25:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-608', 'hist-ticket-25-608', 'cash', 45500, 'completed', '2025-11-24T12:25:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-609', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-24T18:53:31.000Z', '2025-11-24T18:53:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-609-1', 'hist-ticket-25-609', 'prod-latte', 1, 15000, 0, '2025-11-24T18:53:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-609-2', 'hist-ticket-25-609', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T18:53:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-609', 'hist-ticket-25-609', 'cash', 29500, 'completed', '2025-11-24T18:53:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-610', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-11-24T10:18:20.000Z', '2025-11-24T10:18:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-610-1', 'hist-ticket-25-610', 'prod-latte', 1, 15000, 0, '2025-11-24T10:18:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-610-2', 'hist-ticket-25-610', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T10:18:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-610', 'hist-ticket-25-610', 'cash', 29500, 'completed', '2025-11-24T10:18:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-611', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-24T08:31:10.000Z', '2025-11-24T08:31:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-611-1', 'hist-ticket-25-611', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T08:31:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-611', 'hist-ticket-25-611', 'cash', 14500, 'completed', '2025-11-24T08:31:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-612', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-24T19:15:00.000Z', '2025-11-24T19:15:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-612-1', 'hist-ticket-25-612', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T19:15:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-612-2', 'hist-ticket-25-612', 'prod-americano', 1, 12000, 0, '2025-11-24T19:15:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-612-3', 'hist-ticket-25-612', 'prod-mocha', 1, 16500, 0, '2025-11-24T19:15:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-612', 'hist-ticket-25-612', 'cash', 43000, 'completed', '2025-11-24T19:15:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-613', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-24T09:46:37.000Z', '2025-11-24T09:46:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-613-1', 'hist-ticket-25-613', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T09:46:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-613', 'hist-ticket-25-613', 'cash', 14500, 'completed', '2025-11-24T09:46:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-614', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-11-24T19:15:53.000Z', '2025-11-24T19:15:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-614-1', 'hist-ticket-25-614', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T19:15:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-614-2', 'hist-ticket-25-614', 'prod-latte', 1, 15000, 0, '2025-11-24T19:15:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-614-3', 'hist-ticket-25-614', 'prod-latte', 1, 15000, 0, '2025-11-24T19:15:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-614', 'hist-ticket-25-614', 'cash', 44500, 'completed', '2025-11-24T19:15:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-615', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-24T08:51:19.000Z', '2025-11-24T08:51:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-615-1', 'hist-ticket-25-615', 'prod-mocha', 1, 16500, 0, '2025-11-24T08:51:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-615', 'hist-ticket-25-615', 'cash', 16500, 'completed', '2025-11-24T08:51:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-616', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-24T19:18:24.000Z', '2025-11-24T19:18:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-616-1', 'hist-ticket-25-616', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T19:18:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-616-2', 'hist-ticket-25-616', 'prod-americano', 1, 12000, 0, '2025-11-24T19:18:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-616', 'hist-ticket-25-616', 'cash', 26500, 'completed', '2025-11-24T19:18:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-617', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-24T08:49:58.000Z', '2025-11-24T08:49:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-617-1', 'hist-ticket-25-617', 'prod-americano', 1, 12000, 0, '2025-11-24T08:49:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-617-2', 'hist-ticket-25-617', 'prod-mocha', 1, 16500, 0, '2025-11-24T08:49:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-617-3', 'hist-ticket-25-617', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T08:49:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-617', 'hist-ticket-25-617', 'cash', 43000, 'completed', '2025-11-24T08:49:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-618', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-24T19:25:36.000Z', '2025-11-24T19:25:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-618-1', 'hist-ticket-25-618', 'prod-latte', 1, 15000, 0, '2025-11-24T19:25:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-618', 'hist-ticket-25-618', 'cash', 15000, 'completed', '2025-11-24T19:25:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-619', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-24T15:07:49.000Z', '2025-11-24T15:07:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-619-1', 'hist-ticket-25-619', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T15:07:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-619-2', 'hist-ticket-25-619', 'prod-americano', 1, 12000, 0, '2025-11-24T15:07:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-619', 'hist-ticket-25-619', 'cash', 26500, 'completed', '2025-11-24T15:07:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-620', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-24T12:12:12.000Z', '2025-11-24T12:12:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-620-1', 'hist-ticket-25-620', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T12:12:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-620-2', 'hist-ticket-25-620', 'prod-mocha', 1, 16500, 0, '2025-11-24T12:12:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-620-3', 'hist-ticket-25-620', 'prod-cappuccino', 1, 14500, 0, '2025-11-24T12:12:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-620', 'hist-ticket-25-620', 'cash', 45500, 'completed', '2025-11-24T12:12:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-25-621', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-24T11:21:06.000Z', '2025-11-24T11:21:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-621-1', 'hist-ticket-25-621', 'prod-mocha', 1, 16500, 0, '2025-11-24T11:21:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-25-621-2', 'hist-ticket-25-621', 'prod-americano', 1, 12000, 0, '2025-11-24T11:21:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-25-621', 'hist-ticket-25-621', 'cash', 28500, 'completed', '2025-11-24T11:21:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-622', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-11-25T18:00:52.000Z', '2025-11-25T18:00:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-622-1', 'hist-ticket-26-622', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T18:00:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-622-2', 'hist-ticket-26-622', 'prod-mocha', 1, 16500, 0, '2025-11-25T18:00:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-622', 'hist-ticket-26-622', 'cash', 31000, 'completed', '2025-11-25T18:00:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-623', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-25T09:13:35.000Z', '2025-11-25T09:13:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-623-1', 'hist-ticket-26-623', 'prod-americano', 1, 12000, 0, '2025-11-25T09:13:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-623', 'hist-ticket-26-623', 'cash', 12000, 'completed', '2025-11-25T09:13:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-624', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-25T13:30:05.000Z', '2025-11-25T13:30:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-624-1', 'hist-ticket-26-624', 'prod-americano', 1, 12000, 0, '2025-11-25T13:30:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-624', 'hist-ticket-26-624', 'cash', 12000, 'completed', '2025-11-25T13:30:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-625', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-25T12:52:31.000Z', '2025-11-25T12:52:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-625-1', 'hist-ticket-26-625', 'prod-latte', 1, 15000, 0, '2025-11-25T12:52:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-625', 'hist-ticket-26-625', 'cash', 15000, 'completed', '2025-11-25T12:52:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-626', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-25T13:38:06.000Z', '2025-11-25T13:38:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-626-1', 'hist-ticket-26-626', 'prod-latte', 1, 15000, 0, '2025-11-25T13:38:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-626', 'hist-ticket-26-626', 'cash', 15000, 'completed', '2025-11-25T13:38:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-627', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-25T14:59:39.000Z', '2025-11-25T14:59:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-627-1', 'hist-ticket-26-627', 'prod-americano', 1, 12000, 0, '2025-11-25T14:59:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-627-2', 'hist-ticket-26-627', 'prod-americano', 1, 12000, 0, '2025-11-25T14:59:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-627', 'hist-ticket-26-627', 'cash', 24000, 'completed', '2025-11-25T14:59:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-628', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-25T10:50:34.000Z', '2025-11-25T10:50:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-628-1', 'hist-ticket-26-628', 'prod-mocha', 1, 16500, 0, '2025-11-25T10:50:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-628-2', 'hist-ticket-26-628', 'prod-mocha', 1, 16500, 0, '2025-11-25T10:50:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-628-3', 'hist-ticket-26-628', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T10:50:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-628-4', 'hist-ticket-26-628', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T10:50:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-628', 'hist-ticket-26-628', 'cash', 62000, 'completed', '2025-11-25T10:50:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-629', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-25T08:45:05.000Z', '2025-11-25T08:45:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-629-1', 'hist-ticket-26-629', 'prod-mocha', 1, 16500, 0, '2025-11-25T08:45:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-629', 'hist-ticket-26-629', 'cash', 16500, 'completed', '2025-11-25T08:45:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-630', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-25T15:38:30.000Z', '2025-11-25T15:38:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-630-1', 'hist-ticket-26-630', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T15:38:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-630', 'hist-ticket-26-630', 'cash', 14500, 'completed', '2025-11-25T15:38:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-631', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-25T15:44:00.000Z', '2025-11-25T15:44:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-631-1', 'hist-ticket-26-631', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T15:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-631-2', 'hist-ticket-26-631', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T15:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-631-3', 'hist-ticket-26-631', 'prod-americano', 1, 12000, 0, '2025-11-25T15:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-631-4', 'hist-ticket-26-631', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T15:44:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-631', 'hist-ticket-26-631', 'cash', 55500, 'completed', '2025-11-25T15:44:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-632', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-25T10:53:42.000Z', '2025-11-25T10:53:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-632-1', 'hist-ticket-26-632', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T10:53:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-632-2', 'hist-ticket-26-632', 'prod-americano', 1, 12000, 0, '2025-11-25T10:53:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-632', 'hist-ticket-26-632', 'cash', 26500, 'completed', '2025-11-25T10:53:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-633', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-25T14:08:20.000Z', '2025-11-25T14:08:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-633-1', 'hist-ticket-26-633', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T14:08:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-633-2', 'hist-ticket-26-633', 'prod-latte', 1, 15000, 0, '2025-11-25T14:08:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-633-3', 'hist-ticket-26-633', 'prod-americano', 1, 12000, 0, '2025-11-25T14:08:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-633', 'hist-ticket-26-633', 'cash', 41500, 'completed', '2025-11-25T14:08:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-634', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-25T18:35:53.000Z', '2025-11-25T18:35:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-634-1', 'hist-ticket-26-634', 'prod-americano', 1, 12000, 0, '2025-11-25T18:35:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-634-2', 'hist-ticket-26-634', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T18:35:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-634-3', 'hist-ticket-26-634', 'prod-mocha', 1, 16500, 0, '2025-11-25T18:35:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-634-4', 'hist-ticket-26-634', 'prod-americano', 1, 12000, 0, '2025-11-25T18:35:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-634', 'hist-ticket-26-634', 'cash', 55000, 'completed', '2025-11-25T18:35:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-635', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-25T09:29:49.000Z', '2025-11-25T09:29:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-635-1', 'hist-ticket-26-635', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T09:29:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-635-2', 'hist-ticket-26-635', 'prod-americano', 1, 12000, 0, '2025-11-25T09:29:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-635-3', 'hist-ticket-26-635', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T09:29:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-635', 'hist-ticket-26-635', 'cash', 41000, 'completed', '2025-11-25T09:29:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-636', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-11-25T15:59:06.000Z', '2025-11-25T15:59:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-636-1', 'hist-ticket-26-636', 'prod-mocha', 1, 16500, 0, '2025-11-25T15:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-636-2', 'hist-ticket-26-636', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T15:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-636-3', 'hist-ticket-26-636', 'prod-mocha', 1, 16500, 0, '2025-11-25T15:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-636-4', 'hist-ticket-26-636', 'prod-americano', 1, 12000, 0, '2025-11-25T15:59:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-636', 'hist-ticket-26-636', 'cash', 59500, 'completed', '2025-11-25T15:59:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-637', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-25T08:24:55.000Z', '2025-11-25T08:24:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-637-1', 'hist-ticket-26-637', 'prod-americano', 1, 12000, 0, '2025-11-25T08:24:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-637', 'hist-ticket-26-637', 'cash', 12000, 'completed', '2025-11-25T08:24:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-638', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-25T17:14:04.000Z', '2025-11-25T17:14:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-638-1', 'hist-ticket-26-638', 'prod-mocha', 1, 16500, 0, '2025-11-25T17:14:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-638-2', 'hist-ticket-26-638', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T17:14:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-638-3', 'hist-ticket-26-638', 'prod-cappuccino', 1, 14500, 0, '2025-11-25T17:14:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-638', 'hist-ticket-26-638', 'cash', 45500, 'completed', '2025-11-25T17:14:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-639', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-25T13:58:31.000Z', '2025-11-25T13:58:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-639-1', 'hist-ticket-26-639', 'prod-americano', 1, 12000, 0, '2025-11-25T13:58:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-639-2', 'hist-ticket-26-639', 'prod-americano', 1, 12000, 0, '2025-11-25T13:58:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-639-3', 'hist-ticket-26-639', 'prod-mocha', 1, 16500, 0, '2025-11-25T13:58:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-639', 'hist-ticket-26-639', 'cash', 40500, 'completed', '2025-11-25T13:58:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-640', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-25T08:56:09.000Z', '2025-11-25T08:56:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-640-1', 'hist-ticket-26-640', 'prod-americano', 1, 12000, 0, '2025-11-25T08:56:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-640-2', 'hist-ticket-26-640', 'prod-latte', 1, 15000, 0, '2025-11-25T08:56:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-640-3', 'hist-ticket-26-640', 'prod-mocha', 1, 16500, 0, '2025-11-25T08:56:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-640', 'hist-ticket-26-640', 'cash', 43500, 'completed', '2025-11-25T08:56:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-641', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-25T18:35:04.000Z', '2025-11-25T18:35:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-641-1', 'hist-ticket-26-641', 'prod-latte', 1, 15000, 0, '2025-11-25T18:35:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-641', 'hist-ticket-26-641', 'cash', 15000, 'completed', '2025-11-25T18:35:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-642', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-25T18:19:12.000Z', '2025-11-25T18:19:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-642-1', 'hist-ticket-26-642', 'prod-mocha', 1, 16500, 0, '2025-11-25T18:19:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-642-2', 'hist-ticket-26-642', 'prod-americano', 1, 12000, 0, '2025-11-25T18:19:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-642-3', 'hist-ticket-26-642', 'prod-latte', 1, 15000, 0, '2025-11-25T18:19:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-642-4', 'hist-ticket-26-642', 'prod-americano', 1, 12000, 0, '2025-11-25T18:19:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-642', 'hist-ticket-26-642', 'cash', 55500, 'completed', '2025-11-25T18:19:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-643', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-25T11:39:50.000Z', '2025-11-25T11:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-643-1', 'hist-ticket-26-643', 'prod-mocha', 1, 16500, 0, '2025-11-25T11:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-643', 'hist-ticket-26-643', 'cash', 16500, 'completed', '2025-11-25T11:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-26-644', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-11-25T16:07:19.000Z', '2025-11-25T16:07:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-26-644-1', 'hist-ticket-26-644', 'prod-americano', 1, 12000, 0, '2025-11-25T16:07:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-26-644', 'hist-ticket-26-644', 'cash', 12000, 'completed', '2025-11-25T16:07:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-645', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-26T12:40:26.000Z', '2025-11-26T12:40:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-645-1', 'hist-ticket-27-645', 'prod-mocha', 1, 16500, 0, '2025-11-26T12:40:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-645-2', 'hist-ticket-27-645', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T12:40:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-645', 'hist-ticket-27-645', 'cash', 31000, 'completed', '2025-11-26T12:40:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-646', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-26T11:57:53.000Z', '2025-11-26T11:57:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-646-1', 'hist-ticket-27-646', 'prod-latte', 1, 15000, 0, '2025-11-26T11:57:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-646-2', 'hist-ticket-27-646', 'prod-americano', 1, 12000, 0, '2025-11-26T11:57:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-646', 'hist-ticket-27-646', 'cash', 27000, 'completed', '2025-11-26T11:57:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-647', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-26T12:53:23.000Z', '2025-11-26T12:53:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-647-1', 'hist-ticket-27-647', 'prod-latte', 1, 15000, 0, '2025-11-26T12:53:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-647-2', 'hist-ticket-27-647', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T12:53:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-647-3', 'hist-ticket-27-647', 'prod-mocha', 1, 16500, 0, '2025-11-26T12:53:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-647-4', 'hist-ticket-27-647', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T12:53:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-647', 'hist-ticket-27-647', 'cash', 60500, 'completed', '2025-11-26T12:53:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-648', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-26T09:31:21.000Z', '2025-11-26T09:31:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-648-1', 'hist-ticket-27-648', 'prod-latte', 1, 15000, 0, '2025-11-26T09:31:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-648-2', 'hist-ticket-27-648', 'prod-mocha', 1, 16500, 0, '2025-11-26T09:31:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-648-3', 'hist-ticket-27-648', 'prod-latte', 1, 15000, 0, '2025-11-26T09:31:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-648-4', 'hist-ticket-27-648', 'prod-mocha', 1, 16500, 0, '2025-11-26T09:31:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-648', 'hist-ticket-27-648', 'cash', 63000, 'completed', '2025-11-26T09:31:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-649', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-26T16:25:42.000Z', '2025-11-26T16:25:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-649-1', 'hist-ticket-27-649', 'prod-latte', 1, 15000, 0, '2025-11-26T16:25:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-649-2', 'hist-ticket-27-649', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T16:25:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-649-3', 'hist-ticket-27-649', 'prod-latte', 1, 15000, 0, '2025-11-26T16:25:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-649-4', 'hist-ticket-27-649', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T16:25:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-649', 'hist-ticket-27-649', 'cash', 59000, 'completed', '2025-11-26T16:25:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-650', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-26T18:56:57.000Z', '2025-11-26T18:56:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-650-1', 'hist-ticket-27-650', 'prod-mocha', 1, 16500, 0, '2025-11-26T18:56:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-650-2', 'hist-ticket-27-650', 'prod-mocha', 1, 16500, 0, '2025-11-26T18:56:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-650', 'hist-ticket-27-650', 'cash', 33000, 'completed', '2025-11-26T18:56:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-651', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-26T17:06:40.000Z', '2025-11-26T17:06:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-651-1', 'hist-ticket-27-651', 'prod-mocha', 1, 16500, 0, '2025-11-26T17:06:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-651-2', 'hist-ticket-27-651', 'prod-latte', 1, 15000, 0, '2025-11-26T17:06:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-651-3', 'hist-ticket-27-651', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T17:06:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-651', 'hist-ticket-27-651', 'cash', 46000, 'completed', '2025-11-26T17:06:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-652', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-26T19:41:08.000Z', '2025-11-26T19:41:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-652-1', 'hist-ticket-27-652', 'prod-americano', 1, 12000, 0, '2025-11-26T19:41:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-652-2', 'hist-ticket-27-652', 'prod-mocha', 1, 16500, 0, '2025-11-26T19:41:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-652', 'hist-ticket-27-652', 'cash', 28500, 'completed', '2025-11-26T19:41:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-653', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-26T18:55:07.000Z', '2025-11-26T18:55:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-653-1', 'hist-ticket-27-653', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T18:55:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-653-2', 'hist-ticket-27-653', 'prod-latte', 1, 15000, 0, '2025-11-26T18:55:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-653-3', 'hist-ticket-27-653', 'prod-americano', 1, 12000, 0, '2025-11-26T18:55:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-653', 'hist-ticket-27-653', 'cash', 41500, 'completed', '2025-11-26T18:55:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-654', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-26T18:17:39.000Z', '2025-11-26T18:17:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-654-1', 'hist-ticket-27-654', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T18:17:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-654-2', 'hist-ticket-27-654', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T18:17:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-654', 'hist-ticket-27-654', 'cash', 29000, 'completed', '2025-11-26T18:17:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-655', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-26T19:55:00.000Z', '2025-11-26T19:55:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-655-1', 'hist-ticket-27-655', 'prod-americano', 1, 12000, 0, '2025-11-26T19:55:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-655-2', 'hist-ticket-27-655', 'prod-mocha', 1, 16500, 0, '2025-11-26T19:55:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-655', 'hist-ticket-27-655', 'cash', 28500, 'completed', '2025-11-26T19:55:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-656', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-11-26T17:56:18.000Z', '2025-11-26T17:56:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-656-1', 'hist-ticket-27-656', 'prod-mocha', 1, 16500, 0, '2025-11-26T17:56:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-656-2', 'hist-ticket-27-656', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T17:56:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-656', 'hist-ticket-27-656', 'cash', 31000, 'completed', '2025-11-26T17:56:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-657', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-26T12:43:51.000Z', '2025-11-26T12:43:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-657-1', 'hist-ticket-27-657', 'prod-latte', 1, 15000, 0, '2025-11-26T12:43:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-657-2', 'hist-ticket-27-657', 'prod-latte', 1, 15000, 0, '2025-11-26T12:43:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-657-3', 'hist-ticket-27-657', 'prod-mocha', 1, 16500, 0, '2025-11-26T12:43:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-657', 'hist-ticket-27-657', 'cash', 46500, 'completed', '2025-11-26T12:43:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-658', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-26T17:11:09.000Z', '2025-11-26T17:11:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-658-1', 'hist-ticket-27-658', 'prod-mocha', 1, 16500, 0, '2025-11-26T17:11:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-658-2', 'hist-ticket-27-658', 'prod-latte', 1, 15000, 0, '2025-11-26T17:11:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-658', 'hist-ticket-27-658', 'cash', 31500, 'completed', '2025-11-26T17:11:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-659', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-26T08:19:59.000Z', '2025-11-26T08:19:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-659-1', 'hist-ticket-27-659', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T08:19:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-659-2', 'hist-ticket-27-659', 'prod-americano', 1, 12000, 0, '2025-11-26T08:19:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-659-3', 'hist-ticket-27-659', 'prod-latte', 1, 15000, 0, '2025-11-26T08:19:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-659-4', 'hist-ticket-27-659', 'prod-mocha', 1, 16500, 0, '2025-11-26T08:19:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-659', 'hist-ticket-27-659', 'cash', 58000, 'completed', '2025-11-26T08:19:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-27-660', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-26T09:28:46.000Z', '2025-11-26T09:28:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-660-1', 'hist-ticket-27-660', 'prod-latte', 1, 15000, 0, '2025-11-26T09:28:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-27-660-2', 'hist-ticket-27-660', 'prod-cappuccino', 1, 14500, 0, '2025-11-26T09:28:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-27-660', 'hist-ticket-27-660', 'cash', 29500, 'completed', '2025-11-26T09:28:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-661', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-27T17:48:17.000Z', '2025-11-27T17:48:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-661-1', 'hist-ticket-28-661', 'prod-americano', 1, 12000, 0, '2025-11-27T17:48:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-661', 'hist-ticket-28-661', 'cash', 12000, 'completed', '2025-11-27T17:48:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-662', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-27T11:25:33.000Z', '2025-11-27T11:25:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-662-1', 'hist-ticket-28-662', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T11:25:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-662', 'hist-ticket-28-662', 'cash', 14500, 'completed', '2025-11-27T11:25:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-663', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-11-27T17:57:49.000Z', '2025-11-27T17:57:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-663-1', 'hist-ticket-28-663', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T17:57:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-663', 'hist-ticket-28-663', 'cash', 14500, 'completed', '2025-11-27T17:57:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-664', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-11-27T19:26:57.000Z', '2025-11-27T19:26:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-664-1', 'hist-ticket-28-664', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T19:26:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-664-2', 'hist-ticket-28-664', 'prod-mocha', 1, 16500, 0, '2025-11-27T19:26:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-664-3', 'hist-ticket-28-664', 'prod-latte', 1, 15000, 0, '2025-11-27T19:26:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-664-4', 'hist-ticket-28-664', 'prod-mocha', 1, 16500, 0, '2025-11-27T19:26:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-28-664', 'hist-ticket-28-664', 'cash', 62500, 'completed', '2025-11-27T19:26:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-28-665', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-27T17:44:45.000Z', '2025-11-27T17:44:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-665-1', 'hist-ticket-28-665', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T17:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-665-2', 'hist-ticket-28-665', 'prod-americano', 1, 12000, 0, '2025-11-27T17:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-665-3', 'hist-ticket-28-665', 'prod-americano', 1, 12000, 0, '2025-11-27T17:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-28-665-4', 'hist-ticket-28-665', 'prod-cappuccino', 1, 14500, 0, '2025-11-27T17:44:45.000Z');