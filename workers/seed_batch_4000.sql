INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-890-1', 'hist-ticket-38-890', 'prod-americano', 1, 12000, 0, '2025-12-07T10:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-890-2', 'hist-ticket-38-890', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-890-3', 'hist-ticket-38-890', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:07:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-890', 'hist-ticket-38-890', 'cash', 41000, 'completed', '2025-12-07T10:07:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-891', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-07T08:00:00.000Z', '2025-12-07T08:00:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-891-1', 'hist-ticket-38-891', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T08:00:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-891-2', 'hist-ticket-38-891', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T08:00:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-891', 'hist-ticket-38-891', 'cash', 29000, 'completed', '2025-12-07T08:00:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-892', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-07T10:49:17.000Z', '2025-12-07T10:49:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-892-1', 'hist-ticket-38-892', 'prod-latte', 1, 15000, 0, '2025-12-07T10:49:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-892-2', 'hist-ticket-38-892', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:49:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-892', 'hist-ticket-38-892', 'cash', 29500, 'completed', '2025-12-07T10:49:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-893', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-07T09:17:57.000Z', '2025-12-07T09:17:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-893-1', 'hist-ticket-38-893', 'prod-latte', 1, 15000, 0, '2025-12-07T09:17:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-893', 'hist-ticket-38-893', 'cash', 15000, 'completed', '2025-12-07T09:17:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-894', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-07T13:05:32.000Z', '2025-12-07T13:05:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-894-1', 'hist-ticket-38-894', 'prod-mocha', 1, 16500, 0, '2025-12-07T13:05:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-894-2', 'hist-ticket-38-894', 'prod-latte', 1, 15000, 0, '2025-12-07T13:05:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-894-3', 'hist-ticket-38-894', 'prod-latte', 1, 15000, 0, '2025-12-07T13:05:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-894-4', 'hist-ticket-38-894', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T13:05:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-894', 'hist-ticket-38-894', 'cash', 61000, 'completed', '2025-12-07T13:05:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-895', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-07T15:08:12.000Z', '2025-12-07T15:08:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-895-1', 'hist-ticket-38-895', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T15:08:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-895-2', 'hist-ticket-38-895', 'prod-mocha', 1, 16500, 0, '2025-12-07T15:08:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-895-3', 'hist-ticket-38-895', 'prod-americano', 1, 12000, 0, '2025-12-07T15:08:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-895-4', 'hist-ticket-38-895', 'prod-americano', 1, 12000, 0, '2025-12-07T15:08:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-895', 'hist-ticket-38-895', 'cash', 55000, 'completed', '2025-12-07T15:08:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-896', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-07T15:56:27.000Z', '2025-12-07T15:56:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-896-1', 'hist-ticket-38-896', 'prod-americano', 1, 12000, 0, '2025-12-07T15:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-896-2', 'hist-ticket-38-896', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T15:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-896-3', 'hist-ticket-38-896', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T15:56:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-896', 'hist-ticket-38-896', 'cash', 41000, 'completed', '2025-12-07T15:56:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-897', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-07T11:44:40.000Z', '2025-12-07T11:44:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-897-1', 'hist-ticket-38-897', 'prod-mocha', 1, 16500, 0, '2025-12-07T11:44:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-897-2', 'hist-ticket-38-897', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T11:44:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-897-3', 'hist-ticket-38-897', 'prod-americano', 1, 12000, 0, '2025-12-07T11:44:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-897', 'hist-ticket-38-897', 'cash', 43000, 'completed', '2025-12-07T11:44:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-898', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-07T12:02:10.000Z', '2025-12-07T12:02:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-898-1', 'hist-ticket-38-898', 'prod-americano', 1, 12000, 0, '2025-12-07T12:02:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-898-2', 'hist-ticket-38-898', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T12:02:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-898', 'hist-ticket-38-898', 'cash', 26500, 'completed', '2025-12-07T12:02:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-899', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-07T10:03:22.000Z', '2025-12-07T10:03:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-899-1', 'hist-ticket-38-899', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-899-2', 'hist-ticket-38-899', 'prod-americano', 1, 12000, 0, '2025-12-07T10:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-899-3', 'hist-ticket-38-899', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:03:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-899', 'hist-ticket-38-899', 'cash', 41000, 'completed', '2025-12-07T10:03:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-900', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-07T08:27:07.000Z', '2025-12-07T08:27:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-900-1', 'hist-ticket-38-900', 'prod-americano', 1, 12000, 0, '2025-12-07T08:27:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-900-2', 'hist-ticket-38-900', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T08:27:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-900-3', 'hist-ticket-38-900', 'prod-americano', 1, 12000, 0, '2025-12-07T08:27:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-900-4', 'hist-ticket-38-900', 'prod-mocha', 1, 16500, 0, '2025-12-07T08:27:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-900', 'hist-ticket-38-900', 'cash', 55000, 'completed', '2025-12-07T08:27:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-901', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-07T14:29:23.000Z', '2025-12-07T14:29:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-901-1', 'hist-ticket-38-901', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T14:29:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-901', 'hist-ticket-38-901', 'cash', 14500, 'completed', '2025-12-07T14:29:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-902', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-07T08:32:22.000Z', '2025-12-07T08:32:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-902-1', 'hist-ticket-38-902', 'prod-mocha', 1, 16500, 0, '2025-12-07T08:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-902-2', 'hist-ticket-38-902', 'prod-mocha', 1, 16500, 0, '2025-12-07T08:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-902-3', 'hist-ticket-38-902', 'prod-americano', 1, 12000, 0, '2025-12-07T08:32:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-902', 'hist-ticket-38-902', 'cash', 45000, 'completed', '2025-12-07T08:32:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-903', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-07T09:39:00.000Z', '2025-12-07T09:39:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-903-1', 'hist-ticket-38-903', 'prod-mocha', 1, 16500, 0, '2025-12-07T09:39:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-903-2', 'hist-ticket-38-903', 'prod-americano', 1, 12000, 0, '2025-12-07T09:39:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-903', 'hist-ticket-38-903', 'cash', 28500, 'completed', '2025-12-07T09:39:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-904', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-12-07T14:01:16.000Z', '2025-12-07T14:01:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-904-1', 'hist-ticket-38-904', 'prod-mocha', 1, 16500, 0, '2025-12-07T14:01:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-904-2', 'hist-ticket-38-904', 'prod-mocha', 1, 16500, 0, '2025-12-07T14:01:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-904', 'hist-ticket-38-904', 'cash', 33000, 'completed', '2025-12-07T14:01:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-905', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-07T14:39:28.000Z', '2025-12-07T14:39:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-905-1', 'hist-ticket-38-905', 'prod-mocha', 1, 16500, 0, '2025-12-07T14:39:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-905-2', 'hist-ticket-38-905', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T14:39:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-905', 'hist-ticket-38-905', 'cash', 31000, 'completed', '2025-12-07T14:39:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-906', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-12-07T09:49:57.000Z', '2025-12-07T09:49:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-906-1', 'hist-ticket-38-906', 'prod-latte', 1, 15000, 0, '2025-12-07T09:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-906-2', 'hist-ticket-38-906', 'prod-mocha', 1, 16500, 0, '2025-12-07T09:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-906-3', 'hist-ticket-38-906', 'prod-mocha', 1, 16500, 0, '2025-12-07T09:49:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-906', 'hist-ticket-38-906', 'cash', 48000, 'completed', '2025-12-07T09:49:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-907', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-07T10:55:34.000Z', '2025-12-07T10:55:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-907-1', 'hist-ticket-38-907', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-907-2', 'hist-ticket-38-907', 'prod-mocha', 1, 16500, 0, '2025-12-07T10:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-907-3', 'hist-ticket-38-907', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T10:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-907-4', 'hist-ticket-38-907', 'prod-mocha', 1, 16500, 0, '2025-12-07T10:55:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-907', 'hist-ticket-38-907', 'cash', 62000, 'completed', '2025-12-07T10:55:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-908', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-07T14:17:59.000Z', '2025-12-07T14:17:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-908-1', 'hist-ticket-38-908', 'prod-americano', 1, 12000, 0, '2025-12-07T14:17:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-908', 'hist-ticket-38-908', 'cash', 12000, 'completed', '2025-12-07T14:17:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-909', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-07T17:24:34.000Z', '2025-12-07T17:24:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-909-1', 'hist-ticket-38-909', 'prod-americano', 1, 12000, 0, '2025-12-07T17:24:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-909', 'hist-ticket-38-909', 'cash', 12000, 'completed', '2025-12-07T17:24:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-910', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-07T19:09:44.000Z', '2025-12-07T19:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-910-1', 'hist-ticket-38-910', 'prod-americano', 1, 12000, 0, '2025-12-07T19:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-910-2', 'hist-ticket-38-910', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T19:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-910-3', 'hist-ticket-38-910', 'prod-mocha', 1, 16500, 0, '2025-12-07T19:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-910-4', 'hist-ticket-38-910', 'prod-latte', 1, 15000, 0, '2025-12-07T19:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-910', 'hist-ticket-38-910', 'cash', 58000, 'completed', '2025-12-07T19:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-911', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-07T08:55:47.000Z', '2025-12-07T08:55:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-911-1', 'hist-ticket-38-911', 'prod-latte', 1, 15000, 0, '2025-12-07T08:55:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-911-2', 'hist-ticket-38-911', 'prod-latte', 1, 15000, 0, '2025-12-07T08:55:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-911-3', 'hist-ticket-38-911', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T08:55:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-911', 'hist-ticket-38-911', 'cash', 44500, 'completed', '2025-12-07T08:55:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-912', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-07T09:45:30.000Z', '2025-12-07T09:45:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-912-1', 'hist-ticket-38-912', 'prod-latte', 1, 15000, 0, '2025-12-07T09:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-912-2', 'hist-ticket-38-912', 'prod-latte', 1, 15000, 0, '2025-12-07T09:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-912-3', 'hist-ticket-38-912', 'prod-latte', 1, 15000, 0, '2025-12-07T09:45:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-912', 'hist-ticket-38-912', 'cash', 45000, 'completed', '2025-12-07T09:45:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-913', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-07T13:29:11.000Z', '2025-12-07T13:29:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-913-1', 'hist-ticket-38-913', 'prod-americano', 1, 12000, 0, '2025-12-07T13:29:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-913-2', 'hist-ticket-38-913', 'prod-latte', 1, 15000, 0, '2025-12-07T13:29:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-913', 'hist-ticket-38-913', 'cash', 27000, 'completed', '2025-12-07T13:29:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-914', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-07T15:21:17.000Z', '2025-12-07T15:21:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-914-1', 'hist-ticket-38-914', 'prod-americano', 1, 12000, 0, '2025-12-07T15:21:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-914-2', 'hist-ticket-38-914', 'prod-americano', 1, 12000, 0, '2025-12-07T15:21:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-914', 'hist-ticket-38-914', 'cash', 24000, 'completed', '2025-12-07T15:21:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-915', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-07T09:05:04.000Z', '2025-12-07T09:05:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-915-1', 'hist-ticket-38-915', 'prod-mocha', 1, 16500, 0, '2025-12-07T09:05:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-915-2', 'hist-ticket-38-915', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T09:05:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-915-3', 'hist-ticket-38-915', 'prod-latte', 1, 15000, 0, '2025-12-07T09:05:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-915', 'hist-ticket-38-915', 'cash', 46000, 'completed', '2025-12-07T09:05:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-916', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-07T13:12:07.000Z', '2025-12-07T13:12:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-916-1', 'hist-ticket-38-916', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T13:12:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-916-2', 'hist-ticket-38-916', 'prod-mocha', 1, 16500, 0, '2025-12-07T13:12:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-916', 'hist-ticket-38-916', 'cash', 31000, 'completed', '2025-12-07T13:12:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-917', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-07T09:47:32.000Z', '2025-12-07T09:47:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-917-1', 'hist-ticket-38-917', 'prod-americano', 1, 12000, 0, '2025-12-07T09:47:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-917', 'hist-ticket-38-917', 'cash', 12000, 'completed', '2025-12-07T09:47:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-918', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-07T15:43:02.000Z', '2025-12-07T15:43:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-918-1', 'hist-ticket-38-918', 'prod-latte', 1, 15000, 0, '2025-12-07T15:43:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-918-2', 'hist-ticket-38-918', 'prod-americano', 1, 12000, 0, '2025-12-07T15:43:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-918-3', 'hist-ticket-38-918', 'prod-americano', 1, 12000, 0, '2025-12-07T15:43:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-918-4', 'hist-ticket-38-918', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T15:43:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-918', 'hist-ticket-38-918', 'cash', 53500, 'completed', '2025-12-07T15:43:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-919', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-07T09:39:33.000Z', '2025-12-07T09:39:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-919-1', 'hist-ticket-38-919', 'prod-latte', 1, 15000, 0, '2025-12-07T09:39:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-919-2', 'hist-ticket-38-919', 'prod-latte', 1, 15000, 0, '2025-12-07T09:39:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-919-3', 'hist-ticket-38-919', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T09:39:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-919', 'hist-ticket-38-919', 'cash', 44500, 'completed', '2025-12-07T09:39:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-920', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-07T19:03:38.000Z', '2025-12-07T19:03:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-920-1', 'hist-ticket-38-920', 'prod-americano', 1, 12000, 0, '2025-12-07T19:03:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-920-2', 'hist-ticket-38-920', 'prod-americano', 1, 12000, 0, '2025-12-07T19:03:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-920-3', 'hist-ticket-38-920', 'prod-latte', 1, 15000, 0, '2025-12-07T19:03:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-920-4', 'hist-ticket-38-920', 'prod-mocha', 1, 16500, 0, '2025-12-07T19:03:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-920', 'hist-ticket-38-920', 'cash', 55500, 'completed', '2025-12-07T19:03:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-921', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-08T08:27:45.000Z', '2025-12-08T08:27:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-921-1', 'hist-ticket-39-921', 'prod-latte', 1, 15000, 0, '2025-12-08T08:27:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-921-2', 'hist-ticket-39-921', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T08:27:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-921', 'hist-ticket-39-921', 'cash', 29500, 'completed', '2025-12-08T08:27:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-922', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-08T17:05:19.000Z', '2025-12-08T17:05:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-922-1', 'hist-ticket-39-922', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T17:05:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-922-2', 'hist-ticket-39-922', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T17:05:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-922', 'hist-ticket-39-922', 'cash', 29000, 'completed', '2025-12-08T17:05:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-923', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-08T16:14:39.000Z', '2025-12-08T16:14:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-923-1', 'hist-ticket-39-923', 'prod-latte', 1, 15000, 0, '2025-12-08T16:14:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-923', 'hist-ticket-39-923', 'cash', 15000, 'completed', '2025-12-08T16:14:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-924', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-08T13:29:18.000Z', '2025-12-08T13:29:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-924-1', 'hist-ticket-39-924', 'prod-latte', 1, 15000, 0, '2025-12-08T13:29:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-924-2', 'hist-ticket-39-924', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T13:29:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-924', 'hist-ticket-39-924', 'cash', 29500, 'completed', '2025-12-08T13:29:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-925', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-08T17:06:59.000Z', '2025-12-08T17:06:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-925-1', 'hist-ticket-39-925', 'prod-americano', 1, 12000, 0, '2025-12-08T17:06:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-925-2', 'hist-ticket-39-925', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T17:06:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-925', 'hist-ticket-39-925', 'cash', 26500, 'completed', '2025-12-08T17:06:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-926', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-08T11:30:48.000Z', '2025-12-08T11:30:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-926-1', 'hist-ticket-39-926', 'prod-latte', 1, 15000, 0, '2025-12-08T11:30:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-926-2', 'hist-ticket-39-926', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T11:30:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-926-3', 'hist-ticket-39-926', 'prod-americano', 1, 12000, 0, '2025-12-08T11:30:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-926', 'hist-ticket-39-926', 'cash', 41500, 'completed', '2025-12-08T11:30:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-927', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2025-12-08T09:25:19.000Z', '2025-12-08T09:25:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-927-1', 'hist-ticket-39-927', 'prod-americano', 1, 12000, 0, '2025-12-08T09:25:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-927-2', 'hist-ticket-39-927', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T09:25:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-927', 'hist-ticket-39-927', 'cash', 26500, 'completed', '2025-12-08T09:25:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-928', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-12-08T17:35:20.000Z', '2025-12-08T17:35:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-928-1', 'hist-ticket-39-928', 'prod-latte', 1, 15000, 0, '2025-12-08T17:35:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-928', 'hist-ticket-39-928', 'cash', 15000, 'completed', '2025-12-08T17:35:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-929', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-08T15:18:08.000Z', '2025-12-08T15:18:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-929-1', 'hist-ticket-39-929', 'prod-mocha', 1, 16500, 0, '2025-12-08T15:18:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-929', 'hist-ticket-39-929', 'cash', 16500, 'completed', '2025-12-08T15:18:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-930', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-08T10:52:13.000Z', '2025-12-08T10:52:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-930-1', 'hist-ticket-39-930', 'prod-americano', 1, 12000, 0, '2025-12-08T10:52:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-930', 'hist-ticket-39-930', 'cash', 12000, 'completed', '2025-12-08T10:52:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-931', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-08T09:24:20.000Z', '2025-12-08T09:24:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-931-1', 'hist-ticket-39-931', 'prod-latte', 1, 15000, 0, '2025-12-08T09:24:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-931-2', 'hist-ticket-39-931', 'prod-americano', 1, 12000, 0, '2025-12-08T09:24:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-931-3', 'hist-ticket-39-931', 'prod-latte', 1, 15000, 0, '2025-12-08T09:24:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-931', 'hist-ticket-39-931', 'cash', 42000, 'completed', '2025-12-08T09:24:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-932', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-08T10:47:10.000Z', '2025-12-08T10:47:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-932-1', 'hist-ticket-39-932', 'prod-americano', 1, 12000, 0, '2025-12-08T10:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-932-2', 'hist-ticket-39-932', 'prod-mocha', 1, 16500, 0, '2025-12-08T10:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-932-3', 'hist-ticket-39-932', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T10:47:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-932', 'hist-ticket-39-932', 'cash', 43000, 'completed', '2025-12-08T10:47:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-933', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-12-08T08:16:51.000Z', '2025-12-08T08:16:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-933-1', 'hist-ticket-39-933', 'prod-latte', 1, 15000, 0, '2025-12-08T08:16:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-933-2', 'hist-ticket-39-933', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T08:16:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-933-3', 'hist-ticket-39-933', 'prod-latte', 1, 15000, 0, '2025-12-08T08:16:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-933-4', 'hist-ticket-39-933', 'prod-mocha', 1, 16500, 0, '2025-12-08T08:16:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-933', 'hist-ticket-39-933', 'cash', 61000, 'completed', '2025-12-08T08:16:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-934', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-08T11:50:30.000Z', '2025-12-08T11:50:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-934-1', 'hist-ticket-39-934', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T11:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-934-2', 'hist-ticket-39-934', 'prod-americano', 1, 12000, 0, '2025-12-08T11:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-934-3', 'hist-ticket-39-934', 'prod-latte', 1, 15000, 0, '2025-12-08T11:50:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-934', 'hist-ticket-39-934', 'cash', 41500, 'completed', '2025-12-08T11:50:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-935', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-08T08:39:51.000Z', '2025-12-08T08:39:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-935-1', 'hist-ticket-39-935', 'prod-americano', 1, 12000, 0, '2025-12-08T08:39:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-935', 'hist-ticket-39-935', 'cash', 12000, 'completed', '2025-12-08T08:39:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-936', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-08T12:42:26.000Z', '2025-12-08T12:42:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-936-1', 'hist-ticket-39-936', 'prod-americano', 1, 12000, 0, '2025-12-08T12:42:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-936-2', 'hist-ticket-39-936', 'prod-mocha', 1, 16500, 0, '2025-12-08T12:42:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-936-3', 'hist-ticket-39-936', 'prod-latte', 1, 15000, 0, '2025-12-08T12:42:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-936', 'hist-ticket-39-936', 'cash', 43500, 'completed', '2025-12-08T12:42:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-937', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-08T13:28:43.000Z', '2025-12-08T13:28:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-937-1', 'hist-ticket-39-937', 'prod-latte', 1, 15000, 0, '2025-12-08T13:28:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-937', 'hist-ticket-39-937', 'cash', 15000, 'completed', '2025-12-08T13:28:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-938', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-08T17:38:39.000Z', '2025-12-08T17:38:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-938-1', 'hist-ticket-39-938', 'prod-americano', 1, 12000, 0, '2025-12-08T17:38:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-938', 'hist-ticket-39-938', 'cash', 12000, 'completed', '2025-12-08T17:38:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-939', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-12-08T12:56:05.000Z', '2025-12-08T12:56:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-939-1', 'hist-ticket-39-939', 'prod-latte', 1, 15000, 0, '2025-12-08T12:56:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-939-2', 'hist-ticket-39-939', 'prod-mocha', 1, 16500, 0, '2025-12-08T12:56:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-939', 'hist-ticket-39-939', 'cash', 31500, 'completed', '2025-12-08T12:56:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-940', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-08T19:05:00.000Z', '2025-12-08T19:05:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-940-1', 'hist-ticket-39-940', 'prod-mocha', 1, 16500, 0, '2025-12-08T19:05:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-940', 'hist-ticket-39-940', 'cash', 16500, 'completed', '2025-12-08T19:05:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-941', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-08T11:07:24.000Z', '2025-12-08T11:07:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-941-1', 'hist-ticket-39-941', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T11:07:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-941', 'hist-ticket-39-941', 'cash', 14500, 'completed', '2025-12-08T11:07:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-942', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-08T18:45:48.000Z', '2025-12-08T18:45:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-942-1', 'hist-ticket-39-942', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T18:45:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-942', 'hist-ticket-39-942', 'cash', 14500, 'completed', '2025-12-08T18:45:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-943', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-08T16:38:29.000Z', '2025-12-08T16:38:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-943-1', 'hist-ticket-39-943', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T16:38:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-943', 'hist-ticket-39-943', 'cash', 14500, 'completed', '2025-12-08T16:38:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-944', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-08T18:53:24.000Z', '2025-12-08T18:53:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-944-1', 'hist-ticket-39-944', 'prod-latte', 1, 15000, 0, '2025-12-08T18:53:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-944', 'hist-ticket-39-944', 'cash', 15000, 'completed', '2025-12-08T18:53:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-945', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-08T10:44:34.000Z', '2025-12-08T10:44:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-945-1', 'hist-ticket-39-945', 'prod-americano', 1, 12000, 0, '2025-12-08T10:44:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-945-2', 'hist-ticket-39-945', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T10:44:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-945-3', 'hist-ticket-39-945', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T10:44:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-945-4', 'hist-ticket-39-945', 'prod-latte', 1, 15000, 0, '2025-12-08T10:44:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-945', 'hist-ticket-39-945', 'cash', 56000, 'completed', '2025-12-08T10:44:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-946', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-08T12:59:10.000Z', '2025-12-08T12:59:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-946-1', 'hist-ticket-39-946', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T12:59:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-946', 'hist-ticket-39-946', 'cash', 14500, 'completed', '2025-12-08T12:59:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-947', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-08T16:12:41.000Z', '2025-12-08T16:12:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-947-1', 'hist-ticket-39-947', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T16:12:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-947', 'hist-ticket-39-947', 'cash', 14500, 'completed', '2025-12-08T16:12:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-948', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-08T10:10:01.000Z', '2025-12-08T10:10:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-948-1', 'hist-ticket-39-948', 'prod-mocha', 1, 16500, 0, '2025-12-08T10:10:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-948-2', 'hist-ticket-39-948', 'prod-mocha', 1, 16500, 0, '2025-12-08T10:10:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-948-3', 'hist-ticket-39-948', 'prod-mocha', 1, 16500, 0, '2025-12-08T10:10:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-948-4', 'hist-ticket-39-948', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T10:10:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-948', 'hist-ticket-39-948', 'cash', 64000, 'completed', '2025-12-08T10:10:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-949', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-08T19:17:39.000Z', '2025-12-08T19:17:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-949-1', 'hist-ticket-39-949', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T19:17:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-949-2', 'hist-ticket-39-949', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T19:17:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-949-3', 'hist-ticket-39-949', 'prod-americano', 1, 12000, 0, '2025-12-08T19:17:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-949', 'hist-ticket-39-949', 'cash', 41000, 'completed', '2025-12-08T19:17:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-950', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-08T16:27:28.000Z', '2025-12-08T16:27:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-950-1', 'hist-ticket-39-950', 'prod-mocha', 1, 16500, 0, '2025-12-08T16:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-950-2', 'hist-ticket-39-950', 'prod-americano', 1, 12000, 0, '2025-12-08T16:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-950-3', 'hist-ticket-39-950', 'prod-americano', 1, 12000, 0, '2025-12-08T16:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-950-4', 'hist-ticket-39-950', 'prod-americano', 1, 12000, 0, '2025-12-08T16:27:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-950', 'hist-ticket-39-950', 'cash', 52500, 'completed', '2025-12-08T16:27:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-39-951', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-08T14:01:42.000Z', '2025-12-08T14:01:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-951-1', 'hist-ticket-39-951', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T14:01:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-39-951-2', 'hist-ticket-39-951', 'prod-cappuccino', 1, 14500, 0, '2025-12-08T14:01:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-39-951', 'hist-ticket-39-951', 'cash', 29000, 'completed', '2025-12-08T14:01:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-952', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-09T08:00:33.000Z', '2025-12-09T08:00:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-952-1', 'hist-ticket-40-952', 'prod-americano', 1, 12000, 0, '2025-12-09T08:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-952-2', 'hist-ticket-40-952', 'prod-mocha', 1, 16500, 0, '2025-12-09T08:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-952-3', 'hist-ticket-40-952', 'prod-americano', 1, 12000, 0, '2025-12-09T08:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-952-4', 'hist-ticket-40-952', 'prod-americano', 1, 12000, 0, '2025-12-09T08:00:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-952', 'hist-ticket-40-952', 'cash', 52500, 'completed', '2025-12-09T08:00:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-953', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-09T19:08:13.000Z', '2025-12-09T19:08:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-953-1', 'hist-ticket-40-953', 'prod-mocha', 1, 16500, 0, '2025-12-09T19:08:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-953', 'hist-ticket-40-953', 'cash', 16500, 'completed', '2025-12-09T19:08:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-954', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-09T13:28:22.000Z', '2025-12-09T13:28:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-954-1', 'hist-ticket-40-954', 'prod-latte', 1, 15000, 0, '2025-12-09T13:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-954-2', 'hist-ticket-40-954', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T13:28:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-954', 'hist-ticket-40-954', 'cash', 29500, 'completed', '2025-12-09T13:28:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-955', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-09T19:52:34.000Z', '2025-12-09T19:52:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-955-1', 'hist-ticket-40-955', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T19:52:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-955-2', 'hist-ticket-40-955', 'prod-latte', 1, 15000, 0, '2025-12-09T19:52:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-955-3', 'hist-ticket-40-955', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T19:52:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-955-4', 'hist-ticket-40-955', 'prod-latte', 1, 15000, 0, '2025-12-09T19:52:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-955', 'hist-ticket-40-955', 'cash', 59000, 'completed', '2025-12-09T19:52:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-956', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-09T19:14:02.000Z', '2025-12-09T19:14:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-956-1', 'hist-ticket-40-956', 'prod-americano', 1, 12000, 0, '2025-12-09T19:14:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-956', 'hist-ticket-40-956', 'cash', 12000, 'completed', '2025-12-09T19:14:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-957', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-09T09:42:40.000Z', '2025-12-09T09:42:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-957-1', 'hist-ticket-40-957', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T09:42:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-957-2', 'hist-ticket-40-957', 'prod-latte', 1, 15000, 0, '2025-12-09T09:42:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-957', 'hist-ticket-40-957', 'cash', 29500, 'completed', '2025-12-09T09:42:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-958', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-09T17:44:00.000Z', '2025-12-09T17:44:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-958-1', 'hist-ticket-40-958', 'prod-americano', 1, 12000, 0, '2025-12-09T17:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-958-2', 'hist-ticket-40-958', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T17:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-958-3', 'hist-ticket-40-958', 'prod-americano', 1, 12000, 0, '2025-12-09T17:44:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-958', 'hist-ticket-40-958', 'cash', 38500, 'completed', '2025-12-09T17:44:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-959', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-09T13:40:08.000Z', '2025-12-09T13:40:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-959-1', 'hist-ticket-40-959', 'prod-mocha', 1, 16500, 0, '2025-12-09T13:40:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-959-2', 'hist-ticket-40-959', 'prod-latte', 1, 15000, 0, '2025-12-09T13:40:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-959-3', 'hist-ticket-40-959', 'prod-latte', 1, 15000, 0, '2025-12-09T13:40:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-959', 'hist-ticket-40-959', 'cash', 46500, 'completed', '2025-12-09T13:40:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-960', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-09T12:05:12.000Z', '2025-12-09T12:05:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-960-1', 'hist-ticket-40-960', 'prod-americano', 1, 12000, 0, '2025-12-09T12:05:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-960', 'hist-ticket-40-960', 'cash', 12000, 'completed', '2025-12-09T12:05:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-961', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-12-09T11:14:26.000Z', '2025-12-09T11:14:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-961-1', 'hist-ticket-40-961', 'prod-mocha', 1, 16500, 0, '2025-12-09T11:14:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-961', 'hist-ticket-40-961', 'cash', 16500, 'completed', '2025-12-09T11:14:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-962', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-09T16:11:32.000Z', '2025-12-09T16:11:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-962-1', 'hist-ticket-40-962', 'prod-latte', 1, 15000, 0, '2025-12-09T16:11:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-962-2', 'hist-ticket-40-962', 'prod-mocha', 1, 16500, 0, '2025-12-09T16:11:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-962', 'hist-ticket-40-962', 'cash', 31500, 'completed', '2025-12-09T16:11:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-963', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-12-09T19:15:44.000Z', '2025-12-09T19:15:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-963-1', 'hist-ticket-40-963', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T19:15:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-963', 'hist-ticket-40-963', 'cash', 14500, 'completed', '2025-12-09T19:15:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-964', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-09T13:32:31.000Z', '2025-12-09T13:32:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-964-1', 'hist-ticket-40-964', 'prod-mocha', 1, 16500, 0, '2025-12-09T13:32:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-964-2', 'hist-ticket-40-964', 'prod-latte', 1, 15000, 0, '2025-12-09T13:32:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-964', 'hist-ticket-40-964', 'cash', 31500, 'completed', '2025-12-09T13:32:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-965', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-09T09:39:08.000Z', '2025-12-09T09:39:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-965-1', 'hist-ticket-40-965', 'prod-latte', 1, 15000, 0, '2025-12-09T09:39:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-965-2', 'hist-ticket-40-965', 'prod-americano', 1, 12000, 0, '2025-12-09T09:39:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-965-3', 'hist-ticket-40-965', 'prod-americano', 1, 12000, 0, '2025-12-09T09:39:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-965-4', 'hist-ticket-40-965', 'prod-latte', 1, 15000, 0, '2025-12-09T09:39:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-965', 'hist-ticket-40-965', 'cash', 54000, 'completed', '2025-12-09T09:39:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-966', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-09T16:38:37.000Z', '2025-12-09T16:38:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-966-1', 'hist-ticket-40-966', 'prod-latte', 1, 15000, 0, '2025-12-09T16:38:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-966-2', 'hist-ticket-40-966', 'prod-mocha', 1, 16500, 0, '2025-12-09T16:38:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-966-3', 'hist-ticket-40-966', 'prod-americano', 1, 12000, 0, '2025-12-09T16:38:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-966', 'hist-ticket-40-966', 'cash', 43500, 'completed', '2025-12-09T16:38:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-967', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-09T14:35:30.000Z', '2025-12-09T14:35:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-967-1', 'hist-ticket-40-967', 'prod-mocha', 1, 16500, 0, '2025-12-09T14:35:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-967-2', 'hist-ticket-40-967', 'prod-americano', 1, 12000, 0, '2025-12-09T14:35:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-967', 'hist-ticket-40-967', 'cash', 28500, 'completed', '2025-12-09T14:35:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-968', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-09T18:38:11.000Z', '2025-12-09T18:38:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-968-1', 'hist-ticket-40-968', 'prod-americano', 1, 12000, 0, '2025-12-09T18:38:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-968-2', 'hist-ticket-40-968', 'prod-mocha', 1, 16500, 0, '2025-12-09T18:38:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-968-3', 'hist-ticket-40-968', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T18:38:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-968', 'hist-ticket-40-968', 'cash', 43000, 'completed', '2025-12-09T18:38:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-969', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-09T10:31:32.000Z', '2025-12-09T10:31:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-969-1', 'hist-ticket-40-969', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T10:31:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-969', 'hist-ticket-40-969', 'cash', 14500, 'completed', '2025-12-09T10:31:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-970', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-09T11:32:38.000Z', '2025-12-09T11:32:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-970-1', 'hist-ticket-40-970', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T11:32:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-970-2', 'hist-ticket-40-970', 'prod-latte', 1, 15000, 0, '2025-12-09T11:32:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-970-3', 'hist-ticket-40-970', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T11:32:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-970', 'hist-ticket-40-970', 'cash', 44000, 'completed', '2025-12-09T11:32:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-971', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-09T17:00:47.000Z', '2025-12-09T17:00:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-971-1', 'hist-ticket-40-971', 'prod-cappuccino', 1, 14500, 0, '2025-12-09T17:00:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-971', 'hist-ticket-40-971', 'cash', 14500, 'completed', '2025-12-09T17:00:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-40-972', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-09T12:57:41.000Z', '2025-12-09T12:57:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-972-1', 'hist-ticket-40-972', 'prod-latte', 1, 15000, 0, '2025-12-09T12:57:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-40-972-2', 'hist-ticket-40-972', 'prod-latte', 1, 15000, 0, '2025-12-09T12:57:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-40-972', 'hist-ticket-40-972', 'cash', 30000, 'completed', '2025-12-09T12:57:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-973', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-10T12:36:19.000Z', '2025-12-10T12:36:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-973-1', 'hist-ticket-41-973', 'prod-americano', 1, 12000, 0, '2025-12-10T12:36:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-973-2', 'hist-ticket-41-973', 'prod-latte', 1, 15000, 0, '2025-12-10T12:36:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-973-3', 'hist-ticket-41-973', 'prod-latte', 1, 15000, 0, '2025-12-10T12:36:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-973', 'hist-ticket-41-973', 'cash', 42000, 'completed', '2025-12-10T12:36:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-974', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-10T17:19:47.000Z', '2025-12-10T17:19:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-974-1', 'hist-ticket-41-974', 'prod-mocha', 1, 16500, 0, '2025-12-10T17:19:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-974-2', 'hist-ticket-41-974', 'prod-latte', 1, 15000, 0, '2025-12-10T17:19:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-974-3', 'hist-ticket-41-974', 'prod-latte', 1, 15000, 0, '2025-12-10T17:19:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-974', 'hist-ticket-41-974', 'cash', 46500, 'completed', '2025-12-10T17:19:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-975', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-10T08:57:50.000Z', '2025-12-10T08:57:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-975-1', 'hist-ticket-41-975', 'prod-latte', 1, 15000, 0, '2025-12-10T08:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-975-2', 'hist-ticket-41-975', 'prod-mocha', 1, 16500, 0, '2025-12-10T08:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-975-3', 'hist-ticket-41-975', 'prod-mocha', 1, 16500, 0, '2025-12-10T08:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-975-4', 'hist-ticket-41-975', 'prod-americano', 1, 12000, 0, '2025-12-10T08:57:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-975', 'hist-ticket-41-975', 'cash', 60000, 'completed', '2025-12-10T08:57:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-976', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-10T18:11:26.000Z', '2025-12-10T18:11:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-976-1', 'hist-ticket-41-976', 'prod-americano', 1, 12000, 0, '2025-12-10T18:11:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-976', 'hist-ticket-41-976', 'cash', 12000, 'completed', '2025-12-10T18:11:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-977', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-12-10T11:03:41.000Z', '2025-12-10T11:03:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-977-1', 'hist-ticket-41-977', 'prod-americano', 1, 12000, 0, '2025-12-10T11:03:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-977', 'hist-ticket-41-977', 'cash', 12000, 'completed', '2025-12-10T11:03:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-978', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-12-10T12:59:56.000Z', '2025-12-10T12:59:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-978-1', 'hist-ticket-41-978', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T12:59:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-978-2', 'hist-ticket-41-978', 'prod-latte', 1, 15000, 0, '2025-12-10T12:59:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-978', 'hist-ticket-41-978', 'cash', 29500, 'completed', '2025-12-10T12:59:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-979', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2025-12-10T08:09:59.000Z', '2025-12-10T08:09:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-979-1', 'hist-ticket-41-979', 'prod-americano', 1, 12000, 0, '2025-12-10T08:09:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-979-2', 'hist-ticket-41-979', 'prod-americano', 1, 12000, 0, '2025-12-10T08:09:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-979', 'hist-ticket-41-979', 'cash', 24000, 'completed', '2025-12-10T08:09:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-980', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-10T09:57:59.000Z', '2025-12-10T09:57:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-980-1', 'hist-ticket-41-980', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T09:57:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-980-2', 'hist-ticket-41-980', 'prod-americano', 1, 12000, 0, '2025-12-10T09:57:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-980', 'hist-ticket-41-980', 'cash', 26500, 'completed', '2025-12-10T09:57:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-981', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-12-10T12:53:30.000Z', '2025-12-10T12:53:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-981-1', 'hist-ticket-41-981', 'prod-latte', 1, 15000, 0, '2025-12-10T12:53:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-981-2', 'hist-ticket-41-981', 'prod-latte', 1, 15000, 0, '2025-12-10T12:53:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-981', 'hist-ticket-41-981', 'cash', 30000, 'completed', '2025-12-10T12:53:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-982', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-12-10T17:44:15.000Z', '2025-12-10T17:44:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-982-1', 'hist-ticket-41-982', 'prod-latte', 1, 15000, 0, '2025-12-10T17:44:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-982', 'hist-ticket-41-982', 'cash', 15000, 'completed', '2025-12-10T17:44:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-983', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-10T10:11:08.000Z', '2025-12-10T10:11:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-983-1', 'hist-ticket-41-983', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T10:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-983-2', 'hist-ticket-41-983', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T10:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-983-3', 'hist-ticket-41-983', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T10:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-983-4', 'hist-ticket-41-983', 'prod-latte', 1, 15000, 0, '2025-12-10T10:11:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-983', 'hist-ticket-41-983', 'cash', 58500, 'completed', '2025-12-10T10:11:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-984', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-10T18:01:12.000Z', '2025-12-10T18:01:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-984-1', 'hist-ticket-41-984', 'prod-mocha', 1, 16500, 0, '2025-12-10T18:01:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-984', 'hist-ticket-41-984', 'cash', 16500, 'completed', '2025-12-10T18:01:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-985', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-10T09:26:09.000Z', '2025-12-10T09:26:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-985-1', 'hist-ticket-41-985', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T09:26:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-985-2', 'hist-ticket-41-985', 'prod-mocha', 1, 16500, 0, '2025-12-10T09:26:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-985-3', 'hist-ticket-41-985', 'prod-latte', 1, 15000, 0, '2025-12-10T09:26:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-985', 'hist-ticket-41-985', 'cash', 46000, 'completed', '2025-12-10T09:26:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-986', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-10T09:07:55.000Z', '2025-12-10T09:07:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-986-1', 'hist-ticket-41-986', 'prod-americano', 1, 12000, 0, '2025-12-10T09:07:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-986', 'hist-ticket-41-986', 'cash', 12000, 'completed', '2025-12-10T09:07:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-987', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-10T13:20:54.000Z', '2025-12-10T13:20:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-987-1', 'hist-ticket-41-987', 'prod-mocha', 1, 16500, 0, '2025-12-10T13:20:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-987-2', 'hist-ticket-41-987', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T13:20:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-987-3', 'hist-ticket-41-987', 'prod-latte', 1, 15000, 0, '2025-12-10T13:20:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-987', 'hist-ticket-41-987', 'cash', 46000, 'completed', '2025-12-10T13:20:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-988', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-10T17:32:26.000Z', '2025-12-10T17:32:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-988-1', 'hist-ticket-41-988', 'prod-mocha', 1, 16500, 0, '2025-12-10T17:32:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-988-2', 'hist-ticket-41-988', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T17:32:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-988-3', 'hist-ticket-41-988', 'prod-americano', 1, 12000, 0, '2025-12-10T17:32:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-988-4', 'hist-ticket-41-988', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T17:32:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-988', 'hist-ticket-41-988', 'cash', 57500, 'completed', '2025-12-10T17:32:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-989', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-10T16:03:20.000Z', '2025-12-10T16:03:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-989-1', 'hist-ticket-41-989', 'prod-mocha', 1, 16500, 0, '2025-12-10T16:03:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-989-2', 'hist-ticket-41-989', 'prod-mocha', 1, 16500, 0, '2025-12-10T16:03:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-989-3', 'hist-ticket-41-989', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T16:03:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-989-4', 'hist-ticket-41-989', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T16:03:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-989', 'hist-ticket-41-989', 'cash', 62000, 'completed', '2025-12-10T16:03:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-990', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-10T19:44:11.000Z', '2025-12-10T19:44:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-990-1', 'hist-ticket-41-990', 'prod-mocha', 1, 16500, 0, '2025-12-10T19:44:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-990-2', 'hist-ticket-41-990', 'prod-americano', 1, 12000, 0, '2025-12-10T19:44:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-990-3', 'hist-ticket-41-990', 'prod-mocha', 1, 16500, 0, '2025-12-10T19:44:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-990', 'hist-ticket-41-990', 'cash', 45000, 'completed', '2025-12-10T19:44:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-991', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-10T12:16:11.000Z', '2025-12-10T12:16:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-991-1', 'hist-ticket-41-991', 'prod-mocha', 1, 16500, 0, '2025-12-10T12:16:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-991-2', 'hist-ticket-41-991', 'prod-mocha', 1, 16500, 0, '2025-12-10T12:16:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-991-3', 'hist-ticket-41-991', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T12:16:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-991', 'hist-ticket-41-991', 'cash', 47500, 'completed', '2025-12-10T12:16:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-992', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-10T09:02:58.000Z', '2025-12-10T09:02:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-992-1', 'hist-ticket-41-992', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T09:02:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-992-2', 'hist-ticket-41-992', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T09:02:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-992-3', 'hist-ticket-41-992', 'prod-americano', 1, 12000, 0, '2025-12-10T09:02:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-992', 'hist-ticket-41-992', 'cash', 41000, 'completed', '2025-12-10T09:02:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-41-993', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-10T18:42:21.000Z', '2025-12-10T18:42:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-993-1', 'hist-ticket-41-993', 'prod-cappuccino', 1, 14500, 0, '2025-12-10T18:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-41-993-2', 'hist-ticket-41-993', 'prod-mocha', 1, 16500, 0, '2025-12-10T18:42:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-41-993', 'hist-ticket-41-993', 'cash', 31000, 'completed', '2025-12-10T18:42:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-994', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-11T18:49:13.000Z', '2025-12-11T18:49:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-994-1', 'hist-ticket-42-994', 'prod-latte', 1, 15000, 0, '2025-12-11T18:49:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-994-2', 'hist-ticket-42-994', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T18:49:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-994', 'hist-ticket-42-994', 'cash', 29500, 'completed', '2025-12-11T18:49:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-995', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-11T14:26:07.000Z', '2025-12-11T14:26:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-995-1', 'hist-ticket-42-995', 'prod-americano', 1, 12000, 0, '2025-12-11T14:26:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-995', 'hist-ticket-42-995', 'cash', 12000, 'completed', '2025-12-11T14:26:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-996', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-12-11T17:23:06.000Z', '2025-12-11T17:23:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-996-1', 'hist-ticket-42-996', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:23:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-996-2', 'hist-ticket-42-996', 'prod-latte', 1, 15000, 0, '2025-12-11T17:23:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-996-3', 'hist-ticket-42-996', 'prod-mocha', 1, 16500, 0, '2025-12-11T17:23:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-996-4', 'hist-ticket-42-996', 'prod-mocha', 1, 16500, 0, '2025-12-11T17:23:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-996', 'hist-ticket-42-996', 'cash', 62500, 'completed', '2025-12-11T17:23:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-997', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-11T18:04:20.000Z', '2025-12-11T18:04:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-997-1', 'hist-ticket-42-997', 'prod-latte', 1, 15000, 0, '2025-12-11T18:04:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-997-2', 'hist-ticket-42-997', 'prod-mocha', 1, 16500, 0, '2025-12-11T18:04:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-997', 'hist-ticket-42-997', 'cash', 31500, 'completed', '2025-12-11T18:04:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-998', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-11T14:43:43.000Z', '2025-12-11T14:43:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-998-1', 'hist-ticket-42-998', 'prod-americano', 1, 12000, 0, '2025-12-11T14:43:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-998-2', 'hist-ticket-42-998', 'prod-mocha', 1, 16500, 0, '2025-12-11T14:43:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-998', 'hist-ticket-42-998', 'cash', 28500, 'completed', '2025-12-11T14:43:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-999', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-11T11:41:18.000Z', '2025-12-11T11:41:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-999-1', 'hist-ticket-42-999', 'prod-latte', 1, 15000, 0, '2025-12-11T11:41:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-999-2', 'hist-ticket-42-999', 'prod-mocha', 1, 16500, 0, '2025-12-11T11:41:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-999-3', 'hist-ticket-42-999', 'prod-mocha', 1, 16500, 0, '2025-12-11T11:41:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-999-4', 'hist-ticket-42-999', 'prod-americano', 1, 12000, 0, '2025-12-11T11:41:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-999', 'hist-ticket-42-999', 'cash', 60000, 'completed', '2025-12-11T11:41:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1000', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-11T12:18:33.000Z', '2025-12-11T12:18:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1000-1', 'hist-ticket-42-1000', 'prod-americano', 1, 12000, 0, '2025-12-11T12:18:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1000-2', 'hist-ticket-42-1000', 'prod-latte', 1, 15000, 0, '2025-12-11T12:18:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1000-3', 'hist-ticket-42-1000', 'prod-latte', 1, 15000, 0, '2025-12-11T12:18:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1000-4', 'hist-ticket-42-1000', 'prod-latte', 1, 15000, 0, '2025-12-11T12:18:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1000', 'hist-ticket-42-1000', 'cash', 57000, 'completed', '2025-12-11T12:18:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1001', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-11T16:38:19.000Z', '2025-12-11T16:38:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1001-1', 'hist-ticket-42-1001', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T16:38:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1001-2', 'hist-ticket-42-1001', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T16:38:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1001-3', 'hist-ticket-42-1001', 'prod-americano', 1, 12000, 0, '2025-12-11T16:38:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1001', 'hist-ticket-42-1001', 'cash', 41000, 'completed', '2025-12-11T16:38:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1002', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-11T18:43:03.000Z', '2025-12-11T18:43:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1002-1', 'hist-ticket-42-1002', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T18:43:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1002-2', 'hist-ticket-42-1002', 'prod-americano', 1, 12000, 0, '2025-12-11T18:43:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1002', 'hist-ticket-42-1002', 'cash', 26500, 'completed', '2025-12-11T18:43:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1003', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-11T15:31:32.000Z', '2025-12-11T15:31:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1003-1', 'hist-ticket-42-1003', 'prod-latte', 1, 15000, 0, '2025-12-11T15:31:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1003-2', 'hist-ticket-42-1003', 'prod-latte', 1, 15000, 0, '2025-12-11T15:31:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1003-3', 'hist-ticket-42-1003', 'prod-mocha', 1, 16500, 0, '2025-12-11T15:31:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1003', 'hist-ticket-42-1003', 'cash', 46500, 'completed', '2025-12-11T15:31:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1004', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-11T12:27:00.000Z', '2025-12-11T12:27:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1004-1', 'hist-ticket-42-1004', 'prod-americano', 1, 12000, 0, '2025-12-11T12:27:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1004-2', 'hist-ticket-42-1004', 'prod-americano', 1, 12000, 0, '2025-12-11T12:27:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1004', 'hist-ticket-42-1004', 'cash', 24000, 'completed', '2025-12-11T12:27:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1005', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-11T16:59:23.000Z', '2025-12-11T16:59:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;