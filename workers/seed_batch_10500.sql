INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2324-3', 'hist-ticket-95-2324', 'prod-mocha', 1, 16500, 0, '2026-02-02T19:15:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2324', 'hist-ticket-95-2324', 'cash', 43000, 'completed', '2026-02-02T19:15:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2325', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-02-02T10:28:21.000Z', '2026-02-02T10:28:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2325-1', 'hist-ticket-95-2325', 'prod-americano', 1, 12000, 0, '2026-02-02T10:28:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2325-2', 'hist-ticket-95-2325', 'prod-latte', 1, 15000, 0, '2026-02-02T10:28:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2325', 'hist-ticket-95-2325', 'cash', 27000, 'completed', '2026-02-02T10:28:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2326', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-02-02T18:16:57.000Z', '2026-02-02T18:16:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2326-1', 'hist-ticket-95-2326', 'prod-mocha', 1, 16500, 0, '2026-02-02T18:16:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2326-2', 'hist-ticket-95-2326', 'prod-latte', 1, 15000, 0, '2026-02-02T18:16:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2326-3', 'hist-ticket-95-2326', 'prod-americano', 1, 12000, 0, '2026-02-02T18:16:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2326', 'hist-ticket-95-2326', 'cash', 43500, 'completed', '2026-02-02T18:16:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2327', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-02T17:31:03.000Z', '2026-02-02T17:31:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2327-1', 'hist-ticket-95-2327', 'prod-mocha', 1, 16500, 0, '2026-02-02T17:31:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2327', 'hist-ticket-95-2327', 'cash', 16500, 'completed', '2026-02-02T17:31:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2328', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-02-02T14:44:27.000Z', '2026-02-02T14:44:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2328-1', 'hist-ticket-95-2328', 'prod-latte', 1, 15000, 0, '2026-02-02T14:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2328-2', 'hist-ticket-95-2328', 'prod-americano', 1, 12000, 0, '2026-02-02T14:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2328-3', 'hist-ticket-95-2328', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T14:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2328-4', 'hist-ticket-95-2328', 'prod-americano', 1, 12000, 0, '2026-02-02T14:44:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2328', 'hist-ticket-95-2328', 'cash', 53500, 'completed', '2026-02-02T14:44:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2329', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-02T16:43:32.000Z', '2026-02-02T16:43:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2329-1', 'hist-ticket-95-2329', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T16:43:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2329-2', 'hist-ticket-95-2329', 'prod-mocha', 1, 16500, 0, '2026-02-02T16:43:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2329-3', 'hist-ticket-95-2329', 'prod-americano', 1, 12000, 0, '2026-02-02T16:43:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2329', 'hist-ticket-95-2329', 'cash', 43000, 'completed', '2026-02-02T16:43:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2330', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-02T18:00:34.000Z', '2026-02-02T18:00:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2330-1', 'hist-ticket-95-2330', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T18:00:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2330-2', 'hist-ticket-95-2330', 'prod-latte', 1, 15000, 0, '2026-02-02T18:00:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2330-3', 'hist-ticket-95-2330', 'prod-americano', 1, 12000, 0, '2026-02-02T18:00:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2330', 'hist-ticket-95-2330', 'cash', 41500, 'completed', '2026-02-02T18:00:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2331', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-02T11:59:16.000Z', '2026-02-02T11:59:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2331-1', 'hist-ticket-95-2331', 'prod-americano', 1, 12000, 0, '2026-02-02T11:59:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2331-2', 'hist-ticket-95-2331', 'prod-americano', 1, 12000, 0, '2026-02-02T11:59:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2331', 'hist-ticket-95-2331', 'cash', 24000, 'completed', '2026-02-02T11:59:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2332', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-02T11:46:21.000Z', '2026-02-02T11:46:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2332-1', 'hist-ticket-95-2332', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T11:46:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2332-2', 'hist-ticket-95-2332', 'prod-americano', 1, 12000, 0, '2026-02-02T11:46:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2332', 'hist-ticket-95-2332', 'cash', 26500, 'completed', '2026-02-02T11:46:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2333', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-02T19:43:56.000Z', '2026-02-02T19:43:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2333-1', 'hist-ticket-95-2333', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T19:43:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2333-2', 'hist-ticket-95-2333', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T19:43:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2333', 'hist-ticket-95-2333', 'cash', 29000, 'completed', '2026-02-02T19:43:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2334', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-02T17:03:30.000Z', '2026-02-02T17:03:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2334-1', 'hist-ticket-95-2334', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T17:03:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2334-2', 'hist-ticket-95-2334', 'prod-mocha', 1, 16500, 0, '2026-02-02T17:03:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2334', 'hist-ticket-95-2334', 'cash', 31000, 'completed', '2026-02-02T17:03:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2335', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-02-02T17:38:20.000Z', '2026-02-02T17:38:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2335-1', 'hist-ticket-95-2335', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T17:38:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2335-2', 'hist-ticket-95-2335', 'prod-latte', 1, 15000, 0, '2026-02-02T17:38:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2335', 'hist-ticket-95-2335', 'cash', 29500, 'completed', '2026-02-02T17:38:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2336', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-02T11:46:53.000Z', '2026-02-02T11:46:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2336-1', 'hist-ticket-95-2336', 'prod-americano', 1, 12000, 0, '2026-02-02T11:46:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2336-2', 'hist-ticket-95-2336', 'prod-latte', 1, 15000, 0, '2026-02-02T11:46:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2336-3', 'hist-ticket-95-2336', 'prod-latte', 1, 15000, 0, '2026-02-02T11:46:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2336', 'hist-ticket-95-2336', 'cash', 42000, 'completed', '2026-02-02T11:46:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2337', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-03T14:25:47.000Z', '2026-02-03T14:25:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2337-1', 'hist-ticket-96-2337', 'prod-latte', 1, 15000, 0, '2026-02-03T14:25:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2337-2', 'hist-ticket-96-2337', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T14:25:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2337', 'hist-ticket-96-2337', 'cash', 29500, 'completed', '2026-02-03T14:25:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2338', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-03T19:56:06.000Z', '2026-02-03T19:56:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2338-1', 'hist-ticket-96-2338', 'prod-latte', 1, 15000, 0, '2026-02-03T19:56:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2338', 'hist-ticket-96-2338', 'cash', 15000, 'completed', '2026-02-03T19:56:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2339', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-03T11:35:29.000Z', '2026-02-03T11:35:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2339-1', 'hist-ticket-96-2339', 'prod-latte', 1, 15000, 0, '2026-02-03T11:35:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2339', 'hist-ticket-96-2339', 'cash', 15000, 'completed', '2026-02-03T11:35:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2340', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-03T13:59:50.000Z', '2026-02-03T13:59:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2340-1', 'hist-ticket-96-2340', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T13:59:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2340-2', 'hist-ticket-96-2340', 'prod-latte', 1, 15000, 0, '2026-02-03T13:59:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2340-3', 'hist-ticket-96-2340', 'prod-americano', 1, 12000, 0, '2026-02-03T13:59:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2340', 'hist-ticket-96-2340', 'cash', 41500, 'completed', '2026-02-03T13:59:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2341', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-02-03T14:03:59.000Z', '2026-02-03T14:03:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2341-1', 'hist-ticket-96-2341', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T14:03:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2341-2', 'hist-ticket-96-2341', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T14:03:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2341-3', 'hist-ticket-96-2341', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T14:03:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2341', 'hist-ticket-96-2341', 'cash', 43500, 'completed', '2026-02-03T14:03:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2342', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-03T12:29:31.000Z', '2026-02-03T12:29:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2342-1', 'hist-ticket-96-2342', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T12:29:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2342-2', 'hist-ticket-96-2342', 'prod-mocha', 1, 16500, 0, '2026-02-03T12:29:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2342-3', 'hist-ticket-96-2342', 'prod-americano', 1, 12000, 0, '2026-02-03T12:29:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2342-4', 'hist-ticket-96-2342', 'prod-latte', 1, 15000, 0, '2026-02-03T12:29:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2342', 'hist-ticket-96-2342', 'cash', 58000, 'completed', '2026-02-03T12:29:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2343', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-03T16:29:32.000Z', '2026-02-03T16:29:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2343-1', 'hist-ticket-96-2343', 'prod-mocha', 1, 16500, 0, '2026-02-03T16:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2343-2', 'hist-ticket-96-2343', 'prod-mocha', 1, 16500, 0, '2026-02-03T16:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2343-3', 'hist-ticket-96-2343', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T16:29:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2343', 'hist-ticket-96-2343', 'cash', 47500, 'completed', '2026-02-03T16:29:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2344', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-03T16:59:27.000Z', '2026-02-03T16:59:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2344-1', 'hist-ticket-96-2344', 'prod-mocha', 1, 16500, 0, '2026-02-03T16:59:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2344', 'hist-ticket-96-2344', 'cash', 16500, 'completed', '2026-02-03T16:59:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2345', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-03T09:21:55.000Z', '2026-02-03T09:21:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2345-1', 'hist-ticket-96-2345', 'prod-mocha', 1, 16500, 0, '2026-02-03T09:21:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2345-2', 'hist-ticket-96-2345', 'prod-americano', 1, 12000, 0, '2026-02-03T09:21:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2345-3', 'hist-ticket-96-2345', 'prod-latte', 1, 15000, 0, '2026-02-03T09:21:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2345-4', 'hist-ticket-96-2345', 'prod-americano', 1, 12000, 0, '2026-02-03T09:21:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2345', 'hist-ticket-96-2345', 'cash', 55500, 'completed', '2026-02-03T09:21:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2346', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-03T14:00:35.000Z', '2026-02-03T14:00:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2346-1', 'hist-ticket-96-2346', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T14:00:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2346-2', 'hist-ticket-96-2346', 'prod-latte', 1, 15000, 0, '2026-02-03T14:00:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2346-3', 'hist-ticket-96-2346', 'prod-americano', 1, 12000, 0, '2026-02-03T14:00:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2346-4', 'hist-ticket-96-2346', 'prod-americano', 1, 12000, 0, '2026-02-03T14:00:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2346', 'hist-ticket-96-2346', 'cash', 53500, 'completed', '2026-02-03T14:00:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2347', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-03T11:27:54.000Z', '2026-02-03T11:27:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2347-1', 'hist-ticket-96-2347', 'prod-latte', 1, 15000, 0, '2026-02-03T11:27:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2347-2', 'hist-ticket-96-2347', 'prod-latte', 1, 15000, 0, '2026-02-03T11:27:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2347-3', 'hist-ticket-96-2347', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T11:27:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2347-4', 'hist-ticket-96-2347', 'prod-latte', 1, 15000, 0, '2026-02-03T11:27:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2347', 'hist-ticket-96-2347', 'cash', 59500, 'completed', '2026-02-03T11:27:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2348', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-03T15:00:20.000Z', '2026-02-03T15:00:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2348-1', 'hist-ticket-96-2348', 'prod-latte', 1, 15000, 0, '2026-02-03T15:00:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2348', 'hist-ticket-96-2348', 'cash', 15000, 'completed', '2026-02-03T15:00:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2349', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-03T18:52:11.000Z', '2026-02-03T18:52:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2349-1', 'hist-ticket-96-2349', 'prod-mocha', 1, 16500, 0, '2026-02-03T18:52:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2349-2', 'hist-ticket-96-2349', 'prod-americano', 1, 12000, 0, '2026-02-03T18:52:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2349-3', 'hist-ticket-96-2349', 'prod-mocha', 1, 16500, 0, '2026-02-03T18:52:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2349-4', 'hist-ticket-96-2349', 'prod-latte', 1, 15000, 0, '2026-02-03T18:52:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2349', 'hist-ticket-96-2349', 'cash', 60000, 'completed', '2026-02-03T18:52:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2350', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-03T08:16:41.000Z', '2026-02-03T08:16:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2350-1', 'hist-ticket-96-2350', 'prod-mocha', 1, 16500, 0, '2026-02-03T08:16:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2350-2', 'hist-ticket-96-2350', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T08:16:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2350-3', 'hist-ticket-96-2350', 'prod-americano', 1, 12000, 0, '2026-02-03T08:16:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2350', 'hist-ticket-96-2350', 'cash', 43000, 'completed', '2026-02-03T08:16:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2351', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-03T19:23:00.000Z', '2026-02-03T19:23:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2351-1', 'hist-ticket-96-2351', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T19:23:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2351', 'hist-ticket-96-2351', 'cash', 14500, 'completed', '2026-02-03T19:23:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2352', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-02-03T08:33:38.000Z', '2026-02-03T08:33:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2352-1', 'hist-ticket-96-2352', 'prod-latte', 1, 15000, 0, '2026-02-03T08:33:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2352-2', 'hist-ticket-96-2352', 'prod-latte', 1, 15000, 0, '2026-02-03T08:33:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2352-3', 'hist-ticket-96-2352', 'prod-americano', 1, 12000, 0, '2026-02-03T08:33:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2352', 'hist-ticket-96-2352', 'cash', 42000, 'completed', '2026-02-03T08:33:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2353', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-03T09:40:40.000Z', '2026-02-03T09:40:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2353-1', 'hist-ticket-96-2353', 'prod-americano', 1, 12000, 0, '2026-02-03T09:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2353-2', 'hist-ticket-96-2353', 'prod-americano', 1, 12000, 0, '2026-02-03T09:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2353-3', 'hist-ticket-96-2353', 'prod-mocha', 1, 16500, 0, '2026-02-03T09:40:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2353', 'hist-ticket-96-2353', 'cash', 40500, 'completed', '2026-02-03T09:40:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2354', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-03T13:38:51.000Z', '2026-02-03T13:38:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2354-1', 'hist-ticket-96-2354', 'prod-latte', 1, 15000, 0, '2026-02-03T13:38:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2354', 'hist-ticket-96-2354', 'cash', 15000, 'completed', '2026-02-03T13:38:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2355', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-03T19:45:42.000Z', '2026-02-03T19:45:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2355-1', 'hist-ticket-96-2355', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T19:45:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2355-2', 'hist-ticket-96-2355', 'prod-mocha', 1, 16500, 0, '2026-02-03T19:45:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2355-3', 'hist-ticket-96-2355', 'prod-mocha', 1, 16500, 0, '2026-02-03T19:45:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2355-4', 'hist-ticket-96-2355', 'prod-americano', 1, 12000, 0, '2026-02-03T19:45:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2355', 'hist-ticket-96-2355', 'cash', 59500, 'completed', '2026-02-03T19:45:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2356', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-03T18:20:29.000Z', '2026-02-03T18:20:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2356-1', 'hist-ticket-96-2356', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T18:20:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2356', 'hist-ticket-96-2356', 'cash', 14500, 'completed', '2026-02-03T18:20:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2357', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-03T12:58:37.000Z', '2026-02-03T12:58:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2357-1', 'hist-ticket-96-2357', 'prod-mocha', 1, 16500, 0, '2026-02-03T12:58:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2357-2', 'hist-ticket-96-2357', 'prod-americano', 1, 12000, 0, '2026-02-03T12:58:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2357', 'hist-ticket-96-2357', 'cash', 28500, 'completed', '2026-02-03T12:58:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2358', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-03T10:39:33.000Z', '2026-02-03T10:39:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2358-1', 'hist-ticket-96-2358', 'prod-mocha', 1, 16500, 0, '2026-02-03T10:39:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2358', 'hist-ticket-96-2358', 'cash', 16500, 'completed', '2026-02-03T10:39:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2359', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-03T18:27:13.000Z', '2026-02-03T18:27:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2359-1', 'hist-ticket-96-2359', 'prod-americano', 1, 12000, 0, '2026-02-03T18:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2359-2', 'hist-ticket-96-2359', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T18:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2359-3', 'hist-ticket-96-2359', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T18:27:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2359', 'hist-ticket-96-2359', 'cash', 41000, 'completed', '2026-02-03T18:27:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2360', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-03T08:59:33.000Z', '2026-02-03T08:59:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2360-1', 'hist-ticket-96-2360', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T08:59:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2360-2', 'hist-ticket-96-2360', 'prod-latte', 1, 15000, 0, '2026-02-03T08:59:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2360-3', 'hist-ticket-96-2360', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T08:59:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2360-4', 'hist-ticket-96-2360', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T08:59:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2360', 'hist-ticket-96-2360', 'cash', 58500, 'completed', '2026-02-03T08:59:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-96-2361', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-03T10:44:08.000Z', '2026-02-03T10:44:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2361-1', 'hist-ticket-96-2361', 'prod-mocha', 1, 16500, 0, '2026-02-03T10:44:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2361-2', 'hist-ticket-96-2361', 'prod-mocha', 1, 16500, 0, '2026-02-03T10:44:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-96-2361-3', 'hist-ticket-96-2361', 'prod-cappuccino', 1, 14500, 0, '2026-02-03T10:44:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-96-2361', 'hist-ticket-96-2361', 'cash', 47500, 'completed', '2026-02-03T10:44:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2362', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-04T10:47:42.000Z', '2026-02-04T10:47:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2362-1', 'hist-ticket-97-2362', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T10:47:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2362', 'hist-ticket-97-2362', 'cash', 14500, 'completed', '2026-02-04T10:47:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2363', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-04T08:54:18.000Z', '2026-02-04T08:54:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2363-1', 'hist-ticket-97-2363', 'prod-mocha', 1, 16500, 0, '2026-02-04T08:54:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2363-2', 'hist-ticket-97-2363', 'prod-mocha', 1, 16500, 0, '2026-02-04T08:54:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2363', 'hist-ticket-97-2363', 'cash', 33000, 'completed', '2026-02-04T08:54:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2364', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-04T18:26:47.000Z', '2026-02-04T18:26:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2364-1', 'hist-ticket-97-2364', 'prod-mocha', 1, 16500, 0, '2026-02-04T18:26:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2364-2', 'hist-ticket-97-2364', 'prod-americano', 1, 12000, 0, '2026-02-04T18:26:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2364-3', 'hist-ticket-97-2364', 'prod-americano', 1, 12000, 0, '2026-02-04T18:26:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2364-4', 'hist-ticket-97-2364', 'prod-mocha', 1, 16500, 0, '2026-02-04T18:26:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2364', 'hist-ticket-97-2364', 'cash', 57000, 'completed', '2026-02-04T18:26:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2365', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-04T19:31:12.000Z', '2026-02-04T19:31:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2365-1', 'hist-ticket-97-2365', 'prod-mocha', 1, 16500, 0, '2026-02-04T19:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2365-2', 'hist-ticket-97-2365', 'prod-americano', 1, 12000, 0, '2026-02-04T19:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2365-3', 'hist-ticket-97-2365', 'prod-americano', 1, 12000, 0, '2026-02-04T19:31:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2365', 'hist-ticket-97-2365', 'cash', 40500, 'completed', '2026-02-04T19:31:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2366', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-04T14:14:19.000Z', '2026-02-04T14:14:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2366-1', 'hist-ticket-97-2366', 'prod-latte', 1, 15000, 0, '2026-02-04T14:14:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2366-2', 'hist-ticket-97-2366', 'prod-latte', 1, 15000, 0, '2026-02-04T14:14:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2366-3', 'hist-ticket-97-2366', 'prod-americano', 1, 12000, 0, '2026-02-04T14:14:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2366-4', 'hist-ticket-97-2366', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T14:14:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2366', 'hist-ticket-97-2366', 'cash', 56500, 'completed', '2026-02-04T14:14:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2367', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-04T10:54:37.000Z', '2026-02-04T10:54:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2367-1', 'hist-ticket-97-2367', 'prod-latte', 1, 15000, 0, '2026-02-04T10:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2367-2', 'hist-ticket-97-2367', 'prod-latte', 1, 15000, 0, '2026-02-04T10:54:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2367', 'hist-ticket-97-2367', 'cash', 30000, 'completed', '2026-02-04T10:54:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2368', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-04T14:17:09.000Z', '2026-02-04T14:17:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2368-1', 'hist-ticket-97-2368', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T14:17:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2368-2', 'hist-ticket-97-2368', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T14:17:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2368', 'hist-ticket-97-2368', 'cash', 29000, 'completed', '2026-02-04T14:17:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2369', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-02-04T12:40:57.000Z', '2026-02-04T12:40:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2369-1', 'hist-ticket-97-2369', 'prod-americano', 1, 12000, 0, '2026-02-04T12:40:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2369', 'hist-ticket-97-2369', 'cash', 12000, 'completed', '2026-02-04T12:40:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2370', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-04T09:59:08.000Z', '2026-02-04T09:59:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2370-1', 'hist-ticket-97-2370', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T09:59:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2370', 'hist-ticket-97-2370', 'cash', 14500, 'completed', '2026-02-04T09:59:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2371', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-04T11:56:45.000Z', '2026-02-04T11:56:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2371-1', 'hist-ticket-97-2371', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T11:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2371-2', 'hist-ticket-97-2371', 'prod-latte', 1, 15000, 0, '2026-02-04T11:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2371-3', 'hist-ticket-97-2371', 'prod-americano', 1, 12000, 0, '2026-02-04T11:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2371-4', 'hist-ticket-97-2371', 'prod-latte', 1, 15000, 0, '2026-02-04T11:56:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2371', 'hist-ticket-97-2371', 'cash', 56500, 'completed', '2026-02-04T11:56:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2372', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-04T09:05:48.000Z', '2026-02-04T09:05:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2372-1', 'hist-ticket-97-2372', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T09:05:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2372-2', 'hist-ticket-97-2372', 'prod-latte', 1, 15000, 0, '2026-02-04T09:05:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2372-3', 'hist-ticket-97-2372', 'prod-americano', 1, 12000, 0, '2026-02-04T09:05:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2372', 'hist-ticket-97-2372', 'cash', 41500, 'completed', '2026-02-04T09:05:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2373', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-04T12:43:48.000Z', '2026-02-04T12:43:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2373-1', 'hist-ticket-97-2373', 'prod-latte', 1, 15000, 0, '2026-02-04T12:43:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2373-2', 'hist-ticket-97-2373', 'prod-americano', 1, 12000, 0, '2026-02-04T12:43:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2373-3', 'hist-ticket-97-2373', 'prod-latte', 1, 15000, 0, '2026-02-04T12:43:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2373', 'hist-ticket-97-2373', 'cash', 42000, 'completed', '2026-02-04T12:43:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2374', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-04T08:20:41.000Z', '2026-02-04T08:20:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2374-1', 'hist-ticket-97-2374', 'prod-americano', 1, 12000, 0, '2026-02-04T08:20:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2374-2', 'hist-ticket-97-2374', 'prod-americano', 1, 12000, 0, '2026-02-04T08:20:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2374-3', 'hist-ticket-97-2374', 'prod-americano', 1, 12000, 0, '2026-02-04T08:20:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2374', 'hist-ticket-97-2374', 'cash', 36000, 'completed', '2026-02-04T08:20:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2375', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-04T08:45:13.000Z', '2026-02-04T08:45:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2375-1', 'hist-ticket-97-2375', 'prod-latte', 1, 15000, 0, '2026-02-04T08:45:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2375-2', 'hist-ticket-97-2375', 'prod-mocha', 1, 16500, 0, '2026-02-04T08:45:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2375-3', 'hist-ticket-97-2375', 'prod-americano', 1, 12000, 0, '2026-02-04T08:45:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2375-4', 'hist-ticket-97-2375', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T08:45:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2375', 'hist-ticket-97-2375', 'cash', 58000, 'completed', '2026-02-04T08:45:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2376', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-04T09:44:25.000Z', '2026-02-04T09:44:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2376-1', 'hist-ticket-97-2376', 'prod-latte', 1, 15000, 0, '2026-02-04T09:44:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2376-2', 'hist-ticket-97-2376', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T09:44:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2376-3', 'hist-ticket-97-2376', 'prod-americano', 1, 12000, 0, '2026-02-04T09:44:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2376', 'hist-ticket-97-2376', 'cash', 41500, 'completed', '2026-02-04T09:44:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2377', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-04T17:51:32.000Z', '2026-02-04T17:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2377-1', 'hist-ticket-97-2377', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T17:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2377', 'hist-ticket-97-2377', 'cash', 14500, 'completed', '2026-02-04T17:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2378', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-04T08:25:00.000Z', '2026-02-04T08:25:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2378-1', 'hist-ticket-97-2378', 'prod-americano', 1, 12000, 0, '2026-02-04T08:25:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2378-2', 'hist-ticket-97-2378', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T08:25:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2378', 'hist-ticket-97-2378', 'cash', 26500, 'completed', '2026-02-04T08:25:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2379', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-04T10:20:59.000Z', '2026-02-04T10:20:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2379-1', 'hist-ticket-97-2379', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T10:20:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2379-2', 'hist-ticket-97-2379', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T10:20:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2379', 'hist-ticket-97-2379', 'cash', 29000, 'completed', '2026-02-04T10:20:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2380', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-04T13:08:37.000Z', '2026-02-04T13:08:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2380-1', 'hist-ticket-97-2380', 'prod-americano', 1, 12000, 0, '2026-02-04T13:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2380-2', 'hist-ticket-97-2380', 'prod-latte', 1, 15000, 0, '2026-02-04T13:08:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2380-3', 'hist-ticket-97-2380', 'prod-mocha', 1, 16500, 0, '2026-02-04T13:08:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2380', 'hist-ticket-97-2380', 'cash', 43500, 'completed', '2026-02-04T13:08:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2381', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-02-04T18:11:57.000Z', '2026-02-04T18:11:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2381-1', 'hist-ticket-97-2381', 'prod-americano', 1, 12000, 0, '2026-02-04T18:11:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2381-2', 'hist-ticket-97-2381', 'prod-mocha', 1, 16500, 0, '2026-02-04T18:11:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2381', 'hist-ticket-97-2381', 'cash', 28500, 'completed', '2026-02-04T18:11:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-97-2382', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-04T09:08:21.000Z', '2026-02-04T09:08:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2382-1', 'hist-ticket-97-2382', 'prod-americano', 1, 12000, 0, '2026-02-04T09:08:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-97-2382-2', 'hist-ticket-97-2382', 'prod-cappuccino', 1, 14500, 0, '2026-02-04T09:08:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-97-2382', 'hist-ticket-97-2382', 'cash', 26500, 'completed', '2026-02-04T09:08:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2383', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-05T19:47:40.000Z', '2026-02-05T19:47:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2383-1', 'hist-ticket-98-2383', 'prod-mocha', 1, 16500, 0, '2026-02-05T19:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2383-2', 'hist-ticket-98-2383', 'prod-mocha', 1, 16500, 0, '2026-02-05T19:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2383-3', 'hist-ticket-98-2383', 'prod-americano', 1, 12000, 0, '2026-02-05T19:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2383-4', 'hist-ticket-98-2383', 'prod-mocha', 1, 16500, 0, '2026-02-05T19:47:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2383', 'hist-ticket-98-2383', 'cash', 61500, 'completed', '2026-02-05T19:47:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2384', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-05T11:05:08.000Z', '2026-02-05T11:05:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2384-1', 'hist-ticket-98-2384', 'prod-americano', 1, 12000, 0, '2026-02-05T11:05:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2384-2', 'hist-ticket-98-2384', 'prod-latte', 1, 15000, 0, '2026-02-05T11:05:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2384-3', 'hist-ticket-98-2384', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T11:05:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2384', 'hist-ticket-98-2384', 'cash', 41500, 'completed', '2026-02-05T11:05:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2385', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-05T08:22:12.000Z', '2026-02-05T08:22:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2385-1', 'hist-ticket-98-2385', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T08:22:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2385-2', 'hist-ticket-98-2385', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T08:22:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2385', 'hist-ticket-98-2385', 'cash', 29000, 'completed', '2026-02-05T08:22:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2386', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-05T13:47:10.000Z', '2026-02-05T13:47:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2386-1', 'hist-ticket-98-2386', 'prod-americano', 1, 12000, 0, '2026-02-05T13:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2386-2', 'hist-ticket-98-2386', 'prod-mocha', 1, 16500, 0, '2026-02-05T13:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2386-3', 'hist-ticket-98-2386', 'prod-mocha', 1, 16500, 0, '2026-02-05T13:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2386-4', 'hist-ticket-98-2386', 'prod-latte', 1, 15000, 0, '2026-02-05T13:47:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2386', 'hist-ticket-98-2386', 'cash', 60000, 'completed', '2026-02-05T13:47:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2387', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-05T11:56:20.000Z', '2026-02-05T11:56:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2387-1', 'hist-ticket-98-2387', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T11:56:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2387-2', 'hist-ticket-98-2387', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T11:56:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2387-3', 'hist-ticket-98-2387', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T11:56:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2387', 'hist-ticket-98-2387', 'cash', 43500, 'completed', '2026-02-05T11:56:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2388', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-05T12:39:12.000Z', '2026-02-05T12:39:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2388-1', 'hist-ticket-98-2388', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T12:39:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2388-2', 'hist-ticket-98-2388', 'prod-americano', 1, 12000, 0, '2026-02-05T12:39:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2388', 'hist-ticket-98-2388', 'cash', 26500, 'completed', '2026-02-05T12:39:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2389', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-05T09:56:39.000Z', '2026-02-05T09:56:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2389-1', 'hist-ticket-98-2389', 'prod-americano', 1, 12000, 0, '2026-02-05T09:56:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2389-2', 'hist-ticket-98-2389', 'prod-mocha', 1, 16500, 0, '2026-02-05T09:56:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2389-3', 'hist-ticket-98-2389', 'prod-americano', 1, 12000, 0, '2026-02-05T09:56:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2389-4', 'hist-ticket-98-2389', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T09:56:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2389', 'hist-ticket-98-2389', 'cash', 55000, 'completed', '2026-02-05T09:56:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2390', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-02-05T08:23:17.000Z', '2026-02-05T08:23:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2390-1', 'hist-ticket-98-2390', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T08:23:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2390', 'hist-ticket-98-2390', 'cash', 14500, 'completed', '2026-02-05T08:23:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2391', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-05T19:07:17.000Z', '2026-02-05T19:07:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2391-1', 'hist-ticket-98-2391', 'prod-latte', 1, 15000, 0, '2026-02-05T19:07:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2391-2', 'hist-ticket-98-2391', 'prod-latte', 1, 15000, 0, '2026-02-05T19:07:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2391-3', 'hist-ticket-98-2391', 'prod-latte', 1, 15000, 0, '2026-02-05T19:07:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2391', 'hist-ticket-98-2391', 'cash', 45000, 'completed', '2026-02-05T19:07:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2392', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-05T18:41:01.000Z', '2026-02-05T18:41:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2392-1', 'hist-ticket-98-2392', 'prod-mocha', 1, 16500, 0, '2026-02-05T18:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2392-2', 'hist-ticket-98-2392', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T18:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2392-3', 'hist-ticket-98-2392', 'prod-mocha', 1, 16500, 0, '2026-02-05T18:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2392-4', 'hist-ticket-98-2392', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T18:41:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2392', 'hist-ticket-98-2392', 'cash', 62000, 'completed', '2026-02-05T18:41:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2393', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-05T19:00:30.000Z', '2026-02-05T19:00:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2393-1', 'hist-ticket-98-2393', 'prod-latte', 1, 15000, 0, '2026-02-05T19:00:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2393-2', 'hist-ticket-98-2393', 'prod-americano', 1, 12000, 0, '2026-02-05T19:00:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2393-3', 'hist-ticket-98-2393', 'prod-mocha', 1, 16500, 0, '2026-02-05T19:00:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2393-4', 'hist-ticket-98-2393', 'prod-latte', 1, 15000, 0, '2026-02-05T19:00:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2393', 'hist-ticket-98-2393', 'cash', 58500, 'completed', '2026-02-05T19:00:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2394', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-05T16:52:46.000Z', '2026-02-05T16:52:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2394-1', 'hist-ticket-98-2394', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T16:52:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2394-2', 'hist-ticket-98-2394', 'prod-mocha', 1, 16500, 0, '2026-02-05T16:52:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2394-3', 'hist-ticket-98-2394', 'prod-mocha', 1, 16500, 0, '2026-02-05T16:52:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2394', 'hist-ticket-98-2394', 'cash', 47500, 'completed', '2026-02-05T16:52:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2395', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-05T10:36:59.000Z', '2026-02-05T10:36:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2395-1', 'hist-ticket-98-2395', 'prod-americano', 1, 12000, 0, '2026-02-05T10:36:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2395', 'hist-ticket-98-2395', 'cash', 12000, 'completed', '2026-02-05T10:36:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2396', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-05T10:22:45.000Z', '2026-02-05T10:22:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2396-1', 'hist-ticket-98-2396', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T10:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2396-2', 'hist-ticket-98-2396', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T10:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2396-3', 'hist-ticket-98-2396', 'prod-americano', 1, 12000, 0, '2026-02-05T10:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2396-4', 'hist-ticket-98-2396', 'prod-americano', 1, 12000, 0, '2026-02-05T10:22:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2396', 'hist-ticket-98-2396', 'cash', 53000, 'completed', '2026-02-05T10:22:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2397', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-02-05T18:46:35.000Z', '2026-02-05T18:46:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2397-1', 'hist-ticket-98-2397', 'prod-latte', 1, 15000, 0, '2026-02-05T18:46:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2397-2', 'hist-ticket-98-2397', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T18:46:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2397-3', 'hist-ticket-98-2397', 'prod-cappuccino', 1, 14500, 0, '2026-02-05T18:46:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2397', 'hist-ticket-98-2397', 'cash', 44000, 'completed', '2026-02-05T18:46:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2398', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-05T14:08:26.000Z', '2026-02-05T14:08:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2398-1', 'hist-ticket-98-2398', 'prod-mocha', 1, 16500, 0, '2026-02-05T14:08:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2398-2', 'hist-ticket-98-2398', 'prod-americano', 1, 12000, 0, '2026-02-05T14:08:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2398-3', 'hist-ticket-98-2398', 'prod-americano', 1, 12000, 0, '2026-02-05T14:08:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2398-4', 'hist-ticket-98-2398', 'prod-americano', 1, 12000, 0, '2026-02-05T14:08:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2398', 'hist-ticket-98-2398', 'cash', 52500, 'completed', '2026-02-05T14:08:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-98-2399', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-05T17:52:52.000Z', '2026-02-05T17:52:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2399-1', 'hist-ticket-98-2399', 'prod-americano', 1, 12000, 0, '2026-02-05T17:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2399-2', 'hist-ticket-98-2399', 'prod-mocha', 1, 16500, 0, '2026-02-05T17:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2399-3', 'hist-ticket-98-2399', 'prod-mocha', 1, 16500, 0, '2026-02-05T17:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-98-2399-4', 'hist-ticket-98-2399', 'prod-latte', 1, 15000, 0, '2026-02-05T17:52:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-98-2399', 'hist-ticket-98-2399', 'cash', 60000, 'completed', '2026-02-05T17:52:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2400', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-06T18:41:00.000Z', '2026-02-06T18:41:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2400-1', 'hist-ticket-99-2400', 'prod-americano', 1, 12000, 0, '2026-02-06T18:41:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2400-2', 'hist-ticket-99-2400', 'prod-mocha', 1, 16500, 0, '2026-02-06T18:41:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2400', 'hist-ticket-99-2400', 'cash', 28500, 'completed', '2026-02-06T18:41:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2401', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-06T14:46:03.000Z', '2026-02-06T14:46:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2401-1', 'hist-ticket-99-2401', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2401-2', 'hist-ticket-99-2401', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2401-3', 'hist-ticket-99-2401', 'prod-latte', 1, 15000, 0, '2026-02-06T14:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2401-4', 'hist-ticket-99-2401', 'prod-mocha', 1, 16500, 0, '2026-02-06T14:46:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2401', 'hist-ticket-99-2401', 'cash', 60500, 'completed', '2026-02-06T14:46:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2402', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-06T13:48:03.000Z', '2026-02-06T13:48:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2402-1', 'hist-ticket-99-2402', 'prod-latte', 1, 15000, 0, '2026-02-06T13:48:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2402', 'hist-ticket-99-2402', 'cash', 15000, 'completed', '2026-02-06T13:48:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2403', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-02-06T11:18:57.000Z', '2026-02-06T11:18:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2403-1', 'hist-ticket-99-2403', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T11:18:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2403', 'hist-ticket-99-2403', 'cash', 14500, 'completed', '2026-02-06T11:18:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2404', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-06T17:51:59.000Z', '2026-02-06T17:51:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2404-1', 'hist-ticket-99-2404', 'prod-mocha', 1, 16500, 0, '2026-02-06T17:51:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2404-2', 'hist-ticket-99-2404', 'prod-mocha', 1, 16500, 0, '2026-02-06T17:51:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2404-3', 'hist-ticket-99-2404', 'prod-americano', 1, 12000, 0, '2026-02-06T17:51:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2404', 'hist-ticket-99-2404', 'cash', 45000, 'completed', '2026-02-06T17:51:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2405', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-06T13:03:49.000Z', '2026-02-06T13:03:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2405-1', 'hist-ticket-99-2405', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T13:03:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2405-2', 'hist-ticket-99-2405', 'prod-americano', 1, 12000, 0, '2026-02-06T13:03:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2405', 'hist-ticket-99-2405', 'cash', 26500, 'completed', '2026-02-06T13:03:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2406', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-06T09:08:14.000Z', '2026-02-06T09:08:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2406-1', 'hist-ticket-99-2406', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T09:08:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2406-2', 'hist-ticket-99-2406', 'prod-americano', 1, 12000, 0, '2026-02-06T09:08:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2406', 'hist-ticket-99-2406', 'cash', 26500, 'completed', '2026-02-06T09:08:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2407', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-06T15:08:13.000Z', '2026-02-06T15:08:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2407-1', 'hist-ticket-99-2407', 'prod-mocha', 1, 16500, 0, '2026-02-06T15:08:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2407-2', 'hist-ticket-99-2407', 'prod-americano', 1, 12000, 0, '2026-02-06T15:08:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2407', 'hist-ticket-99-2407', 'cash', 28500, 'completed', '2026-02-06T15:08:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2408', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-06T10:41:58.000Z', '2026-02-06T10:41:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2408-1', 'hist-ticket-99-2408', 'prod-latte', 1, 15000, 0, '2026-02-06T10:41:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2408-2', 'hist-ticket-99-2408', 'prod-mocha', 1, 16500, 0, '2026-02-06T10:41:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2408-3', 'hist-ticket-99-2408', 'prod-latte', 1, 15000, 0, '2026-02-06T10:41:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2408', 'hist-ticket-99-2408', 'cash', 46500, 'completed', '2026-02-06T10:41:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2409', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-06T11:08:17.000Z', '2026-02-06T11:08:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2409-1', 'hist-ticket-99-2409', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2409-2', 'hist-ticket-99-2409', 'prod-mocha', 1, 16500, 0, '2026-02-06T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2409-3', 'hist-ticket-99-2409', 'prod-latte', 1, 15000, 0, '2026-02-06T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2409-4', 'hist-ticket-99-2409', 'prod-americano', 1, 12000, 0, '2026-02-06T11:08:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2409', 'hist-ticket-99-2409', 'cash', 58000, 'completed', '2026-02-06T11:08:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2410', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-06T16:09:05.000Z', '2026-02-06T16:09:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2410-1', 'hist-ticket-99-2410', 'prod-americano', 1, 12000, 0, '2026-02-06T16:09:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2410', 'hist-ticket-99-2410', 'cash', 12000, 'completed', '2026-02-06T16:09:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2411', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-06T16:34:43.000Z', '2026-02-06T16:34:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2411-1', 'hist-ticket-99-2411', 'prod-americano', 1, 12000, 0, '2026-02-06T16:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2411-2', 'hist-ticket-99-2411', 'prod-americano', 1, 12000, 0, '2026-02-06T16:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2411-3', 'hist-ticket-99-2411', 'prod-latte', 1, 15000, 0, '2026-02-06T16:34:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2411', 'hist-ticket-99-2411', 'cash', 39000, 'completed', '2026-02-06T16:34:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2412', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-06T18:55:13.000Z', '2026-02-06T18:55:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2412-1', 'hist-ticket-99-2412', 'prod-americano', 1, 12000, 0, '2026-02-06T18:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2412-2', 'hist-ticket-99-2412', 'prod-americano', 1, 12000, 0, '2026-02-06T18:55:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2412', 'hist-ticket-99-2412', 'cash', 24000, 'completed', '2026-02-06T18:55:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2413', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-06T11:24:16.000Z', '2026-02-06T11:24:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2413-1', 'hist-ticket-99-2413', 'prod-americano', 1, 12000, 0, '2026-02-06T11:24:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2413-2', 'hist-ticket-99-2413', 'prod-americano', 1, 12000, 0, '2026-02-06T11:24:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2413-3', 'hist-ticket-99-2413', 'prod-americano', 1, 12000, 0, '2026-02-06T11:24:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2413', 'hist-ticket-99-2413', 'cash', 36000, 'completed', '2026-02-06T11:24:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2414', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-06T13:33:52.000Z', '2026-02-06T13:33:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2414-1', 'hist-ticket-99-2414', 'prod-mocha', 1, 16500, 0, '2026-02-06T13:33:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2414', 'hist-ticket-99-2414', 'cash', 16500, 'completed', '2026-02-06T13:33:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2415', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-06T08:01:45.000Z', '2026-02-06T08:01:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2415-1', 'hist-ticket-99-2415', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T08:01:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2415-2', 'hist-ticket-99-2415', 'prod-americano', 1, 12000, 0, '2026-02-06T08:01:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2415', 'hist-ticket-99-2415', 'cash', 26500, 'completed', '2026-02-06T08:01:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2416', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-06T15:53:24.000Z', '2026-02-06T15:53:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2416-1', 'hist-ticket-99-2416', 'prod-americano', 1, 12000, 0, '2026-02-06T15:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2416-2', 'hist-ticket-99-2416', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T15:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2416-3', 'hist-ticket-99-2416', 'prod-americano', 1, 12000, 0, '2026-02-06T15:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2416-4', 'hist-ticket-99-2416', 'prod-mocha', 1, 16500, 0, '2026-02-06T15:53:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2416', 'hist-ticket-99-2416', 'cash', 55000, 'completed', '2026-02-06T15:53:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2417', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-06T13:06:48.000Z', '2026-02-06T13:06:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2417-1', 'hist-ticket-99-2417', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T13:06:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2417-2', 'hist-ticket-99-2417', 'prod-latte', 1, 15000, 0, '2026-02-06T13:06:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2417-3', 'hist-ticket-99-2417', 'prod-americano', 1, 12000, 0, '2026-02-06T13:06:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2417', 'hist-ticket-99-2417', 'cash', 41500, 'completed', '2026-02-06T13:06:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2418', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-06T12:03:25.000Z', '2026-02-06T12:03:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2418-1', 'hist-ticket-99-2418', 'prod-latte', 1, 15000, 0, '2026-02-06T12:03:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2418-2', 'hist-ticket-99-2418', 'prod-mocha', 1, 16500, 0, '2026-02-06T12:03:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2418', 'hist-ticket-99-2418', 'cash', 31500, 'completed', '2026-02-06T12:03:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2419', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-06T18:02:14.000Z', '2026-02-06T18:02:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2419-1', 'hist-ticket-99-2419', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T18:02:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2419-2', 'hist-ticket-99-2419', 'prod-americano', 1, 12000, 0, '2026-02-06T18:02:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2419-3', 'hist-ticket-99-2419', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T18:02:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2419', 'hist-ticket-99-2419', 'cash', 41000, 'completed', '2026-02-06T18:02:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2420', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-06T14:18:12.000Z', '2026-02-06T14:18:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2420-1', 'hist-ticket-99-2420', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:18:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2420', 'hist-ticket-99-2420', 'cash', 14500, 'completed', '2026-02-06T14:18:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2421', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-06T10:05:35.000Z', '2026-02-06T10:05:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2421-1', 'hist-ticket-99-2421', 'prod-americano', 1, 12000, 0, '2026-02-06T10:05:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2421', 'hist-ticket-99-2421', 'cash', 12000, 'completed', '2026-02-06T10:05:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2422', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-06T18:30:53.000Z', '2026-02-06T18:30:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2422-1', 'hist-ticket-99-2422', 'prod-mocha', 1, 16500, 0, '2026-02-06T18:30:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2422-2', 'hist-ticket-99-2422', 'prod-latte', 1, 15000, 0, '2026-02-06T18:30:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2422', 'hist-ticket-99-2422', 'cash', 31500, 'completed', '2026-02-06T18:30:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2423', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-06T15:01:04.000Z', '2026-02-06T15:01:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2423-1', 'hist-ticket-99-2423', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T15:01:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2423', 'hist-ticket-99-2423', 'cash', 14500, 'completed', '2026-02-06T15:01:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2424', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-06T12:36:17.000Z', '2026-02-06T12:36:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2424-1', 'hist-ticket-99-2424', 'prod-americano', 1, 12000, 0, '2026-02-06T12:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2424-2', 'hist-ticket-99-2424', 'prod-latte', 1, 15000, 0, '2026-02-06T12:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2424-3', 'hist-ticket-99-2424', 'prod-mocha', 1, 16500, 0, '2026-02-06T12:36:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2424', 'hist-ticket-99-2424', 'cash', 43500, 'completed', '2026-02-06T12:36:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2425', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-06T09:41:07.000Z', '2026-02-06T09:41:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2425-1', 'hist-ticket-99-2425', 'prod-americano', 1, 12000, 0, '2026-02-06T09:41:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2425-2', 'hist-ticket-99-2425', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T09:41:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2425-3', 'hist-ticket-99-2425', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T09:41:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2425', 'hist-ticket-99-2425', 'cash', 41000, 'completed', '2026-02-06T09:41:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2426', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-06T14:15:57.000Z', '2026-02-06T14:15:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2426-1', 'hist-ticket-99-2426', 'prod-mocha', 1, 16500, 0, '2026-02-06T14:15:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2426-2', 'hist-ticket-99-2426', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:15:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2426', 'hist-ticket-99-2426', 'cash', 31000, 'completed', '2026-02-06T14:15:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2427', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-06T08:09:59.000Z', '2026-02-06T08:09:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2427-1', 'hist-ticket-99-2427', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T08:09:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2427-2', 'hist-ticket-99-2427', 'prod-latte', 1, 15000, 0, '2026-02-06T08:09:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2427-3', 'hist-ticket-99-2427', 'prod-latte', 1, 15000, 0, '2026-02-06T08:09:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2427-4', 'hist-ticket-99-2427', 'prod-mocha', 1, 16500, 0, '2026-02-06T08:09:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2427', 'hist-ticket-99-2427', 'cash', 61000, 'completed', '2026-02-06T08:09:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2428', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-06T09:31:33.000Z', '2026-02-06T09:31:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2428-1', 'hist-ticket-99-2428', 'prod-mocha', 1, 16500, 0, '2026-02-06T09:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2428-2', 'hist-ticket-99-2428', 'prod-mocha', 1, 16500, 0, '2026-02-06T09:31:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2428', 'hist-ticket-99-2428', 'cash', 33000, 'completed', '2026-02-06T09:31:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-99-2429', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-02-06T14:37:44.000Z', '2026-02-06T14:37:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2429-1', 'hist-ticket-99-2429', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:37:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2429-2', 'hist-ticket-99-2429', 'prod-latte', 1, 15000, 0, '2026-02-06T14:37:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-99-2429-3', 'hist-ticket-99-2429', 'prod-cappuccino', 1, 14500, 0, '2026-02-06T14:37:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-99-2429', 'hist-ticket-99-2429', 'cash', 44000, 'completed', '2026-02-06T14:37:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2430', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-07T10:58:48.000Z', '2026-02-07T10:58:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2430-1', 'hist-ticket-100-2430', 'prod-latte', 1, 15000, 0, '2026-02-07T10:58:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2430', 'hist-ticket-100-2430', 'cash', 15000, 'completed', '2026-02-07T10:58:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2431', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-07T18:22:34.000Z', '2026-02-07T18:22:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2431-1', 'hist-ticket-100-2431', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T18:22:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2431-2', 'hist-ticket-100-2431', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T18:22:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2431-3', 'hist-ticket-100-2431', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T18:22:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2431', 'hist-ticket-100-2431', 'cash', 43500, 'completed', '2026-02-07T18:22:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2432', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-07T11:08:17.000Z', '2026-02-07T11:08:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2432-1', 'hist-ticket-100-2432', 'prod-americano', 1, 12000, 0, '2026-02-07T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2432-2', 'hist-ticket-100-2432', 'prod-latte', 1, 15000, 0, '2026-02-07T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2432-3', 'hist-ticket-100-2432', 'prod-americano', 1, 12000, 0, '2026-02-07T11:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2432-4', 'hist-ticket-100-2432', 'prod-americano', 1, 12000, 0, '2026-02-07T11:08:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2432', 'hist-ticket-100-2432', 'cash', 51000, 'completed', '2026-02-07T11:08:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2433', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-07T12:22:49.000Z', '2026-02-07T12:22:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2433-1', 'hist-ticket-100-2433', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T12:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2433-2', 'hist-ticket-100-2433', 'prod-latte', 1, 15000, 0, '2026-02-07T12:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2433-3', 'hist-ticket-100-2433', 'prod-americano', 1, 12000, 0, '2026-02-07T12:22:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2433', 'hist-ticket-100-2433', 'cash', 41500, 'completed', '2026-02-07T12:22:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2434', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-07T09:35:57.000Z', '2026-02-07T09:35:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;