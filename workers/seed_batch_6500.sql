INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1450', 'hist-ticket-59-1450', 'cash', 30000, 'completed', '2025-12-28T16:53:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1451', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-28T18:47:54.000Z', '2025-12-28T18:47:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1451-1', 'hist-ticket-59-1451', 'prod-mocha', 1, 16500, 0, '2025-12-28T18:47:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1451-2', 'hist-ticket-59-1451', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T18:47:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1451-3', 'hist-ticket-59-1451', 'prod-americano', 1, 12000, 0, '2025-12-28T18:47:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1451', 'hist-ticket-59-1451', 'cash', 43000, 'completed', '2025-12-28T18:47:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1452', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-12-28T11:33:27.000Z', '2025-12-28T11:33:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1452-1', 'hist-ticket-59-1452', 'prod-mocha', 1, 16500, 0, '2025-12-28T11:33:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1452', 'hist-ticket-59-1452', 'cash', 16500, 'completed', '2025-12-28T11:33:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1453', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-28T10:16:49.000Z', '2025-12-28T10:16:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1453-1', 'hist-ticket-59-1453', 'prod-latte', 1, 15000, 0, '2025-12-28T10:16:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1453-2', 'hist-ticket-59-1453', 'prod-latte', 1, 15000, 0, '2025-12-28T10:16:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1453-3', 'hist-ticket-59-1453', 'prod-latte', 1, 15000, 0, '2025-12-28T10:16:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1453', 'hist-ticket-59-1453', 'cash', 45000, 'completed', '2025-12-28T10:16:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1454', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-28T16:47:52.000Z', '2025-12-28T16:47:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1454-1', 'hist-ticket-59-1454', 'prod-americano', 1, 12000, 0, '2025-12-28T16:47:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1454', 'hist-ticket-59-1454', 'cash', 12000, 'completed', '2025-12-28T16:47:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1455', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-28T15:00:08.000Z', '2025-12-28T15:00:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1455-1', 'hist-ticket-59-1455', 'prod-mocha', 1, 16500, 0, '2025-12-28T15:00:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1455', 'hist-ticket-59-1455', 'cash', 16500, 'completed', '2025-12-28T15:00:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1456', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-12-28T10:27:11.000Z', '2025-12-28T10:27:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1456-1', 'hist-ticket-59-1456', 'prod-latte', 1, 15000, 0, '2025-12-28T10:27:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1456', 'hist-ticket-59-1456', 'cash', 15000, 'completed', '2025-12-28T10:27:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1457', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-28T13:47:56.000Z', '2025-12-28T13:47:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1457-1', 'hist-ticket-59-1457', 'prod-latte', 1, 15000, 0, '2025-12-28T13:47:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1457-2', 'hist-ticket-59-1457', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T13:47:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1457-3', 'hist-ticket-59-1457', 'prod-mocha', 1, 16500, 0, '2025-12-28T13:47:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1457', 'hist-ticket-59-1457', 'cash', 46000, 'completed', '2025-12-28T13:47:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1458', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-28T10:00:13.000Z', '2025-12-28T10:00:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1458-1', 'hist-ticket-59-1458', 'prod-mocha', 1, 16500, 0, '2025-12-28T10:00:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1458-2', 'hist-ticket-59-1458', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T10:00:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1458', 'hist-ticket-59-1458', 'cash', 31000, 'completed', '2025-12-28T10:00:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1459', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-12-28T13:25:37.000Z', '2025-12-28T13:25:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1459-1', 'hist-ticket-59-1459', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T13:25:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1459', 'hist-ticket-59-1459', 'cash', 14500, 'completed', '2025-12-28T13:25:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1460', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-28T10:24:23.000Z', '2025-12-28T10:24:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1460-1', 'hist-ticket-59-1460', 'prod-americano', 1, 12000, 0, '2025-12-28T10:24:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1460-2', 'hist-ticket-59-1460', 'prod-americano', 1, 12000, 0, '2025-12-28T10:24:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1460-3', 'hist-ticket-59-1460', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T10:24:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1460-4', 'hist-ticket-59-1460', 'prod-americano', 1, 12000, 0, '2025-12-28T10:24:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1460', 'hist-ticket-59-1460', 'cash', 50500, 'completed', '2025-12-28T10:24:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1461', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-28T14:32:07.000Z', '2025-12-28T14:32:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1461-1', 'hist-ticket-59-1461', 'prod-latte', 1, 15000, 0, '2025-12-28T14:32:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1461-2', 'hist-ticket-59-1461', 'prod-americano', 1, 12000, 0, '2025-12-28T14:32:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1461', 'hist-ticket-59-1461', 'cash', 27000, 'completed', '2025-12-28T14:32:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1462', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-29T14:14:47.000Z', '2025-12-29T14:14:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1462-1', 'hist-ticket-60-1462', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T14:14:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1462', 'hist-ticket-60-1462', 'cash', 14500, 'completed', '2025-12-29T14:14:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1463', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-29T14:45:09.000Z', '2025-12-29T14:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1463-1', 'hist-ticket-60-1463', 'prod-americano', 1, 12000, 0, '2025-12-29T14:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1463-2', 'hist-ticket-60-1463', 'prod-mocha', 1, 16500, 0, '2025-12-29T14:45:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1463', 'hist-ticket-60-1463', 'cash', 28500, 'completed', '2025-12-29T14:45:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1464', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2025-12-29T11:43:29.000Z', '2025-12-29T11:43:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1464-1', 'hist-ticket-60-1464', 'prod-americano', 1, 12000, 0, '2025-12-29T11:43:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1464-2', 'hist-ticket-60-1464', 'prod-latte', 1, 15000, 0, '2025-12-29T11:43:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1464-3', 'hist-ticket-60-1464', 'prod-latte', 1, 15000, 0, '2025-12-29T11:43:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1464-4', 'hist-ticket-60-1464', 'prod-mocha', 1, 16500, 0, '2025-12-29T11:43:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1464', 'hist-ticket-60-1464', 'cash', 58500, 'completed', '2025-12-29T11:43:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1465', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-29T11:53:08.000Z', '2025-12-29T11:53:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1465-1', 'hist-ticket-60-1465', 'prod-mocha', 1, 16500, 0, '2025-12-29T11:53:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1465', 'hist-ticket-60-1465', 'cash', 16500, 'completed', '2025-12-29T11:53:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1466', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-29T08:40:25.000Z', '2025-12-29T08:40:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1466-1', 'hist-ticket-60-1466', 'prod-mocha', 1, 16500, 0, '2025-12-29T08:40:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1466', 'hist-ticket-60-1466', 'cash', 16500, 'completed', '2025-12-29T08:40:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1467', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-29T16:35:57.000Z', '2025-12-29T16:35:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1467-1', 'hist-ticket-60-1467', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T16:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1467-2', 'hist-ticket-60-1467', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T16:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1467-3', 'hist-ticket-60-1467', 'prod-latte', 1, 15000, 0, '2025-12-29T16:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1467-4', 'hist-ticket-60-1467', 'prod-latte', 1, 15000, 0, '2025-12-29T16:35:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1467', 'hist-ticket-60-1467', 'cash', 59000, 'completed', '2025-12-29T16:35:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1468', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-29T10:41:54.000Z', '2025-12-29T10:41:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1468-1', 'hist-ticket-60-1468', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T10:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1468-2', 'hist-ticket-60-1468', 'prod-latte', 1, 15000, 0, '2025-12-29T10:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1468-3', 'hist-ticket-60-1468', 'prod-latte', 1, 15000, 0, '2025-12-29T10:41:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1468-4', 'hist-ticket-60-1468', 'prod-latte', 1, 15000, 0, '2025-12-29T10:41:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1468', 'hist-ticket-60-1468', 'cash', 59500, 'completed', '2025-12-29T10:41:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1469', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-29T12:54:49.000Z', '2025-12-29T12:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1469-1', 'hist-ticket-60-1469', 'prod-mocha', 1, 16500, 0, '2025-12-29T12:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1469-2', 'hist-ticket-60-1469', 'prod-americano', 1, 12000, 0, '2025-12-29T12:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1469', 'hist-ticket-60-1469', 'cash', 28500, 'completed', '2025-12-29T12:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1470', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-29T16:53:43.000Z', '2025-12-29T16:53:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1470-1', 'hist-ticket-60-1470', 'prod-latte', 1, 15000, 0, '2025-12-29T16:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1470-2', 'hist-ticket-60-1470', 'prod-latte', 1, 15000, 0, '2025-12-29T16:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1470-3', 'hist-ticket-60-1470', 'prod-mocha', 1, 16500, 0, '2025-12-29T16:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1470-4', 'hist-ticket-60-1470', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T16:53:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1470', 'hist-ticket-60-1470', 'cash', 61000, 'completed', '2025-12-29T16:53:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1471', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-29T10:54:34.000Z', '2025-12-29T10:54:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1471-1', 'hist-ticket-60-1471', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T10:54:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1471-2', 'hist-ticket-60-1471', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T10:54:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1471-3', 'hist-ticket-60-1471', 'prod-americano', 1, 12000, 0, '2025-12-29T10:54:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1471', 'hist-ticket-60-1471', 'cash', 41000, 'completed', '2025-12-29T10:54:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1472', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-29T12:22:45.000Z', '2025-12-29T12:22:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1472-1', 'hist-ticket-60-1472', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T12:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1472-2', 'hist-ticket-60-1472', 'prod-mocha', 1, 16500, 0, '2025-12-29T12:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1472-3', 'hist-ticket-60-1472', 'prod-americano', 1, 12000, 0, '2025-12-29T12:22:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1472', 'hist-ticket-60-1472', 'cash', 43000, 'completed', '2025-12-29T12:22:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1473', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-29T18:10:34.000Z', '2025-12-29T18:10:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1473-1', 'hist-ticket-60-1473', 'prod-latte', 1, 15000, 0, '2025-12-29T18:10:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1473-2', 'hist-ticket-60-1473', 'prod-latte', 1, 15000, 0, '2025-12-29T18:10:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1473', 'hist-ticket-60-1473', 'cash', 30000, 'completed', '2025-12-29T18:10:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1474', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-29T18:25:49.000Z', '2025-12-29T18:25:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1474-1', 'hist-ticket-60-1474', 'prod-mocha', 1, 16500, 0, '2025-12-29T18:25:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1474', 'hist-ticket-60-1474', 'cash', 16500, 'completed', '2025-12-29T18:25:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1475', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-12-29T13:49:42.000Z', '2025-12-29T13:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1475-1', 'hist-ticket-60-1475', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T13:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1475-2', 'hist-ticket-60-1475', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T13:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1475-3', 'hist-ticket-60-1475', 'prod-americano', 1, 12000, 0, '2025-12-29T13:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1475-4', 'hist-ticket-60-1475', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T13:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1475', 'hist-ticket-60-1475', 'cash', 55500, 'completed', '2025-12-29T13:49:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1476', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-29T17:49:06.000Z', '2025-12-29T17:49:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1476-1', 'hist-ticket-60-1476', 'prod-americano', 1, 12000, 0, '2025-12-29T17:49:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1476-2', 'hist-ticket-60-1476', 'prod-latte', 1, 15000, 0, '2025-12-29T17:49:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1476-3', 'hist-ticket-60-1476', 'prod-mocha', 1, 16500, 0, '2025-12-29T17:49:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1476-4', 'hist-ticket-60-1476', 'prod-latte', 1, 15000, 0, '2025-12-29T17:49:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1476', 'hist-ticket-60-1476', 'cash', 58500, 'completed', '2025-12-29T17:49:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1477', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-29T19:31:51.000Z', '2025-12-29T19:31:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1477-1', 'hist-ticket-60-1477', 'prod-mocha', 1, 16500, 0, '2025-12-29T19:31:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1477', 'hist-ticket-60-1477', 'cash', 16500, 'completed', '2025-12-29T19:31:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-60-1478', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-29T11:48:30.000Z', '2025-12-29T11:48:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1478-1', 'hist-ticket-60-1478', 'prod-cappuccino', 1, 14500, 0, '2025-12-29T11:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1478-2', 'hist-ticket-60-1478', 'prod-mocha', 1, 16500, 0, '2025-12-29T11:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1478-3', 'hist-ticket-60-1478', 'prod-americano', 1, 12000, 0, '2025-12-29T11:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-60-1478-4', 'hist-ticket-60-1478', 'prod-mocha', 1, 16500, 0, '2025-12-29T11:48:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-60-1478', 'hist-ticket-60-1478', 'cash', 59500, 'completed', '2025-12-29T11:48:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1479', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-30T14:27:50.000Z', '2025-12-30T14:27:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1479-1', 'hist-ticket-61-1479', 'prod-mocha', 1, 16500, 0, '2025-12-30T14:27:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1479', 'hist-ticket-61-1479', 'cash', 16500, 'completed', '2025-12-30T14:27:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1480', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-30T13:27:03.000Z', '2025-12-30T13:27:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1480-1', 'hist-ticket-61-1480', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T13:27:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1480-2', 'hist-ticket-61-1480', 'prod-latte', 1, 15000, 0, '2025-12-30T13:27:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1480-3', 'hist-ticket-61-1480', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T13:27:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1480', 'hist-ticket-61-1480', 'cash', 44000, 'completed', '2025-12-30T13:27:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1481', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-30T09:30:01.000Z', '2025-12-30T09:30:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1481-1', 'hist-ticket-61-1481', 'prod-latte', 1, 15000, 0, '2025-12-30T09:30:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1481-2', 'hist-ticket-61-1481', 'prod-mocha', 1, 16500, 0, '2025-12-30T09:30:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1481', 'hist-ticket-61-1481', 'cash', 31500, 'completed', '2025-12-30T09:30:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1482', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-30T12:06:34.000Z', '2025-12-30T12:06:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1482-1', 'hist-ticket-61-1482', 'prod-latte', 1, 15000, 0, '2025-12-30T12:06:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1482-2', 'hist-ticket-61-1482', 'prod-latte', 1, 15000, 0, '2025-12-30T12:06:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1482-3', 'hist-ticket-61-1482', 'prod-americano', 1, 12000, 0, '2025-12-30T12:06:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1482-4', 'hist-ticket-61-1482', 'prod-mocha', 1, 16500, 0, '2025-12-30T12:06:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1482', 'hist-ticket-61-1482', 'cash', 58500, 'completed', '2025-12-30T12:06:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1483', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-30T08:27:44.000Z', '2025-12-30T08:27:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1483-1', 'hist-ticket-61-1483', 'prod-mocha', 1, 16500, 0, '2025-12-30T08:27:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1483-2', 'hist-ticket-61-1483', 'prod-mocha', 1, 16500, 0, '2025-12-30T08:27:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1483-3', 'hist-ticket-61-1483', 'prod-mocha', 1, 16500, 0, '2025-12-30T08:27:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1483-4', 'hist-ticket-61-1483', 'prod-mocha', 1, 16500, 0, '2025-12-30T08:27:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1483', 'hist-ticket-61-1483', 'cash', 66000, 'completed', '2025-12-30T08:27:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1484', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-30T16:00:32.000Z', '2025-12-30T16:00:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1484-1', 'hist-ticket-61-1484', 'prod-latte', 1, 15000, 0, '2025-12-30T16:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1484-2', 'hist-ticket-61-1484', 'prod-latte', 1, 15000, 0, '2025-12-30T16:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1484-3', 'hist-ticket-61-1484', 'prod-mocha', 1, 16500, 0, '2025-12-30T16:00:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1484-4', 'hist-ticket-61-1484', 'prod-americano', 1, 12000, 0, '2025-12-30T16:00:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1484', 'hist-ticket-61-1484', 'cash', 58500, 'completed', '2025-12-30T16:00:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1485', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-12-30T12:16:02.000Z', '2025-12-30T12:16:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1485-1', 'hist-ticket-61-1485', 'prod-mocha', 1, 16500, 0, '2025-12-30T12:16:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1485-2', 'hist-ticket-61-1485', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T12:16:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1485', 'hist-ticket-61-1485', 'cash', 31000, 'completed', '2025-12-30T12:16:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1486', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-30T14:22:46.000Z', '2025-12-30T14:22:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1486-1', 'hist-ticket-61-1486', 'prod-mocha', 1, 16500, 0, '2025-12-30T14:22:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1486-2', 'hist-ticket-61-1486', 'prod-mocha', 1, 16500, 0, '2025-12-30T14:22:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1486-3', 'hist-ticket-61-1486', 'prod-latte', 1, 15000, 0, '2025-12-30T14:22:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1486', 'hist-ticket-61-1486', 'cash', 48000, 'completed', '2025-12-30T14:22:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1487', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-12-30T09:56:27.000Z', '2025-12-30T09:56:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1487-1', 'hist-ticket-61-1487', 'prod-latte', 1, 15000, 0, '2025-12-30T09:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1487-2', 'hist-ticket-61-1487', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T09:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1487-3', 'hist-ticket-61-1487', 'prod-mocha', 1, 16500, 0, '2025-12-30T09:56:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1487-4', 'hist-ticket-61-1487', 'prod-mocha', 1, 16500, 0, '2025-12-30T09:56:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1487', 'hist-ticket-61-1487', 'cash', 62500, 'completed', '2025-12-30T09:56:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1488', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-12-30T12:21:06.000Z', '2025-12-30T12:21:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1488-1', 'hist-ticket-61-1488', 'prod-mocha', 1, 16500, 0, '2025-12-30T12:21:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1488-2', 'hist-ticket-61-1488', 'prod-latte', 1, 15000, 0, '2025-12-30T12:21:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1488', 'hist-ticket-61-1488', 'cash', 31500, 'completed', '2025-12-30T12:21:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1489', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-30T17:39:40.000Z', '2025-12-30T17:39:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1489-1', 'hist-ticket-61-1489', 'prod-americano', 1, 12000, 0, '2025-12-30T17:39:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1489', 'hist-ticket-61-1489', 'cash', 12000, 'completed', '2025-12-30T17:39:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1490', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-30T18:39:10.000Z', '2025-12-30T18:39:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1490-1', 'hist-ticket-61-1490', 'prod-americano', 1, 12000, 0, '2025-12-30T18:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1490-2', 'hist-ticket-61-1490', 'prod-americano', 1, 12000, 0, '2025-12-30T18:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1490-3', 'hist-ticket-61-1490', 'prod-mocha', 1, 16500, 0, '2025-12-30T18:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1490-4', 'hist-ticket-61-1490', 'prod-latte', 1, 15000, 0, '2025-12-30T18:39:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1490', 'hist-ticket-61-1490', 'cash', 55500, 'completed', '2025-12-30T18:39:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1491', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-30T16:46:12.000Z', '2025-12-30T16:46:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1491-1', 'hist-ticket-61-1491', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T16:46:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1491-2', 'hist-ticket-61-1491', 'prod-mocha', 1, 16500, 0, '2025-12-30T16:46:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1491', 'hist-ticket-61-1491', 'cash', 31000, 'completed', '2025-12-30T16:46:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1492', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-12-30T11:15:54.000Z', '2025-12-30T11:15:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1492-1', 'hist-ticket-61-1492', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T11:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1492-2', 'hist-ticket-61-1492', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T11:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1492-3', 'hist-ticket-61-1492', 'prod-mocha', 1, 16500, 0, '2025-12-30T11:15:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1492-4', 'hist-ticket-61-1492', 'prod-mocha', 1, 16500, 0, '2025-12-30T11:15:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1492', 'hist-ticket-61-1492', 'cash', 62000, 'completed', '2025-12-30T11:15:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1493', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-30T16:24:16.000Z', '2025-12-30T16:24:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1493-1', 'hist-ticket-61-1493', 'prod-cappuccino', 1, 14500, 0, '2025-12-30T16:24:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1493', 'hist-ticket-61-1493', 'cash', 14500, 'completed', '2025-12-30T16:24:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1494', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-30T11:51:13.000Z', '2025-12-30T11:51:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1494-1', 'hist-ticket-61-1494', 'prod-latte', 1, 15000, 0, '2025-12-30T11:51:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1494', 'hist-ticket-61-1494', 'cash', 15000, 'completed', '2025-12-30T11:51:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-61-1495', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-12-30T15:14:58.000Z', '2025-12-30T15:14:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1495-1', 'hist-ticket-61-1495', 'prod-americano', 1, 12000, 0, '2025-12-30T15:14:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1495-2', 'hist-ticket-61-1495', 'prod-latte', 1, 15000, 0, '2025-12-30T15:14:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-61-1495-3', 'hist-ticket-61-1495', 'prod-latte', 1, 15000, 0, '2025-12-30T15:14:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-61-1495', 'hist-ticket-61-1495', 'cash', 42000, 'completed', '2025-12-30T15:14:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1496', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-31T15:47:29.000Z', '2025-12-31T15:47:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1496-1', 'hist-ticket-62-1496', 'prod-latte', 1, 15000, 0, '2025-12-31T15:47:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1496-2', 'hist-ticket-62-1496', 'prod-americano', 1, 12000, 0, '2025-12-31T15:47:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1496-3', 'hist-ticket-62-1496', 'prod-americano', 1, 12000, 0, '2025-12-31T15:47:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1496', 'hist-ticket-62-1496', 'cash', 39000, 'completed', '2025-12-31T15:47:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1497', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-31T14:59:26.000Z', '2025-12-31T14:59:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1497-1', 'hist-ticket-62-1497', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T14:59:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1497', 'hist-ticket-62-1497', 'cash', 14500, 'completed', '2025-12-31T14:59:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1498', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-31T10:09:03.000Z', '2025-12-31T10:09:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1498-1', 'hist-ticket-62-1498', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T10:09:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1498-2', 'hist-ticket-62-1498', 'prod-americano', 1, 12000, 0, '2025-12-31T10:09:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1498-3', 'hist-ticket-62-1498', 'prod-latte', 1, 15000, 0, '2025-12-31T10:09:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1498', 'hist-ticket-62-1498', 'cash', 41500, 'completed', '2025-12-31T10:09:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1499', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-31T09:46:41.000Z', '2025-12-31T09:46:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1499-1', 'hist-ticket-62-1499', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T09:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1499-2', 'hist-ticket-62-1499', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T09:46:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1499', 'hist-ticket-62-1499', 'cash', 29000, 'completed', '2025-12-31T09:46:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1500', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-31T08:13:12.000Z', '2025-12-31T08:13:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1500-1', 'hist-ticket-62-1500', 'prod-latte', 1, 15000, 0, '2025-12-31T08:13:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1500', 'hist-ticket-62-1500', 'cash', 15000, 'completed', '2025-12-31T08:13:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1501', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-12-31T13:50:03.000Z', '2025-12-31T13:50:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1501-1', 'hist-ticket-62-1501', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T13:50:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1501-2', 'hist-ticket-62-1501', 'prod-latte', 1, 15000, 0, '2025-12-31T13:50:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1501', 'hist-ticket-62-1501', 'cash', 29500, 'completed', '2025-12-31T13:50:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1502', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-31T15:05:39.000Z', '2025-12-31T15:05:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1502-1', 'hist-ticket-62-1502', 'prod-mocha', 1, 16500, 0, '2025-12-31T15:05:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1502-2', 'hist-ticket-62-1502', 'prod-mocha', 1, 16500, 0, '2025-12-31T15:05:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1502-3', 'hist-ticket-62-1502', 'prod-mocha', 1, 16500, 0, '2025-12-31T15:05:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1502', 'hist-ticket-62-1502', 'cash', 49500, 'completed', '2025-12-31T15:05:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1503', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-31T18:14:57.000Z', '2025-12-31T18:14:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1503-1', 'hist-ticket-62-1503', 'prod-latte', 1, 15000, 0, '2025-12-31T18:14:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1503', 'hist-ticket-62-1503', 'cash', 15000, 'completed', '2025-12-31T18:14:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1504', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-31T11:11:00.000Z', '2025-12-31T11:11:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1504-1', 'hist-ticket-62-1504', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T11:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1504-2', 'hist-ticket-62-1504', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T11:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1504-3', 'hist-ticket-62-1504', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T11:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1504-4', 'hist-ticket-62-1504', 'prod-mocha', 1, 16500, 0, '2025-12-31T11:11:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1504', 'hist-ticket-62-1504', 'cash', 60000, 'completed', '2025-12-31T11:11:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1505', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-12-31T18:58:39.000Z', '2025-12-31T18:58:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1505-1', 'hist-ticket-62-1505', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T18:58:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1505', 'hist-ticket-62-1505', 'cash', 14500, 'completed', '2025-12-31T18:58:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1506', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-31T18:34:04.000Z', '2025-12-31T18:34:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1506-1', 'hist-ticket-62-1506', 'prod-latte', 1, 15000, 0, '2025-12-31T18:34:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1506-2', 'hist-ticket-62-1506', 'prod-mocha', 1, 16500, 0, '2025-12-31T18:34:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1506', 'hist-ticket-62-1506', 'cash', 31500, 'completed', '2025-12-31T18:34:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1507', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-12-31T13:38:02.000Z', '2025-12-31T13:38:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1507-1', 'hist-ticket-62-1507', 'prod-latte', 1, 15000, 0, '2025-12-31T13:38:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1507-2', 'hist-ticket-62-1507', 'prod-americano', 1, 12000, 0, '2025-12-31T13:38:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1507-3', 'hist-ticket-62-1507', 'prod-mocha', 1, 16500, 0, '2025-12-31T13:38:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1507', 'hist-ticket-62-1507', 'cash', 43500, 'completed', '2025-12-31T13:38:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1508', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-31T13:21:09.000Z', '2025-12-31T13:21:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1508-1', 'hist-ticket-62-1508', 'prod-mocha', 1, 16500, 0, '2025-12-31T13:21:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1508-2', 'hist-ticket-62-1508', 'prod-americano', 1, 12000, 0, '2025-12-31T13:21:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1508-3', 'hist-ticket-62-1508', 'prod-mocha', 1, 16500, 0, '2025-12-31T13:21:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1508-4', 'hist-ticket-62-1508', 'prod-latte', 1, 15000, 0, '2025-12-31T13:21:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1508', 'hist-ticket-62-1508', 'cash', 60000, 'completed', '2025-12-31T13:21:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1509', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-31T12:01:04.000Z', '2025-12-31T12:01:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1509-1', 'hist-ticket-62-1509', 'prod-mocha', 1, 16500, 0, '2025-12-31T12:01:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1509-2', 'hist-ticket-62-1509', 'prod-americano', 1, 12000, 0, '2025-12-31T12:01:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1509-3', 'hist-ticket-62-1509', 'prod-latte', 1, 15000, 0, '2025-12-31T12:01:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1509-4', 'hist-ticket-62-1509', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T12:01:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1509', 'hist-ticket-62-1509', 'cash', 58000, 'completed', '2025-12-31T12:01:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1510', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-12-31T18:32:28.000Z', '2025-12-31T18:32:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1510-1', 'hist-ticket-62-1510', 'prod-americano', 1, 12000, 0, '2025-12-31T18:32:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1510', 'hist-ticket-62-1510', 'cash', 12000, 'completed', '2025-12-31T18:32:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1511', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2025-12-31T13:03:32.000Z', '2025-12-31T13:03:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1511-1', 'hist-ticket-62-1511', 'prod-americano', 1, 12000, 0, '2025-12-31T13:03:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1511-2', 'hist-ticket-62-1511', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T13:03:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1511-3', 'hist-ticket-62-1511', 'prod-latte', 1, 15000, 0, '2025-12-31T13:03:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1511', 'hist-ticket-62-1511', 'cash', 41500, 'completed', '2025-12-31T13:03:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1512', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-31T16:19:02.000Z', '2025-12-31T16:19:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1512-1', 'hist-ticket-62-1512', 'prod-mocha', 1, 16500, 0, '2025-12-31T16:19:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1512-2', 'hist-ticket-62-1512', 'prod-latte', 1, 15000, 0, '2025-12-31T16:19:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1512-3', 'hist-ticket-62-1512', 'prod-latte', 1, 15000, 0, '2025-12-31T16:19:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1512', 'hist-ticket-62-1512', 'cash', 46500, 'completed', '2025-12-31T16:19:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1513', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-31T19:36:52.000Z', '2025-12-31T19:36:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1513-1', 'hist-ticket-62-1513', 'prod-latte', 1, 15000, 0, '2025-12-31T19:36:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1513-2', 'hist-ticket-62-1513', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T19:36:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1513', 'hist-ticket-62-1513', 'cash', 29500, 'completed', '2025-12-31T19:36:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1514', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-31T15:15:39.000Z', '2025-12-31T15:15:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1514-1', 'hist-ticket-62-1514', 'prod-americano', 1, 12000, 0, '2025-12-31T15:15:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1514', 'hist-ticket-62-1514', 'cash', 12000, 'completed', '2025-12-31T15:15:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1515', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-31T17:28:26.000Z', '2025-12-31T17:28:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1515-1', 'hist-ticket-62-1515', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T17:28:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1515-2', 'hist-ticket-62-1515', 'prod-mocha', 1, 16500, 0, '2025-12-31T17:28:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1515-3', 'hist-ticket-62-1515', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T17:28:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1515', 'hist-ticket-62-1515', 'cash', 45500, 'completed', '2025-12-31T17:28:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1516', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-31T08:45:50.000Z', '2025-12-31T08:45:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1516-1', 'hist-ticket-62-1516', 'prod-americano', 1, 12000, 0, '2025-12-31T08:45:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1516', 'hist-ticket-62-1516', 'cash', 12000, 'completed', '2025-12-31T08:45:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1517', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-31T13:55:45.000Z', '2025-12-31T13:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1517-1', 'hist-ticket-62-1517', 'prod-mocha', 1, 16500, 0, '2025-12-31T13:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1517-2', 'hist-ticket-62-1517', 'prod-americano', 1, 12000, 0, '2025-12-31T13:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1517-3', 'hist-ticket-62-1517', 'prod-americano', 1, 12000, 0, '2025-12-31T13:55:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1517', 'hist-ticket-62-1517', 'cash', 40500, 'completed', '2025-12-31T13:55:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1518', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-31T19:05:29.000Z', '2025-12-31T19:05:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1518-1', 'hist-ticket-62-1518', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T19:05:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1518', 'hist-ticket-62-1518', 'cash', 14500, 'completed', '2025-12-31T19:05:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1519', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-31T09:16:55.000Z', '2025-12-31T09:16:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1519-1', 'hist-ticket-62-1519', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T09:16:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1519-2', 'hist-ticket-62-1519', 'prod-mocha', 1, 16500, 0, '2025-12-31T09:16:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1519', 'hist-ticket-62-1519', 'cash', 31000, 'completed', '2025-12-31T09:16:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1520', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-12-31T14:22:28.000Z', '2025-12-31T14:22:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1520-1', 'hist-ticket-62-1520', 'prod-americano', 1, 12000, 0, '2025-12-31T14:22:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1520-2', 'hist-ticket-62-1520', 'prod-mocha', 1, 16500, 0, '2025-12-31T14:22:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1520-3', 'hist-ticket-62-1520', 'prod-mocha', 1, 16500, 0, '2025-12-31T14:22:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1520', 'hist-ticket-62-1520', 'cash', 45000, 'completed', '2025-12-31T14:22:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1521', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-12-31T11:39:59.000Z', '2025-12-31T11:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1521-1', 'hist-ticket-62-1521', 'prod-latte', 1, 15000, 0, '2025-12-31T11:39:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1521', 'hist-ticket-62-1521', 'cash', 15000, 'completed', '2025-12-31T11:39:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-62-1522', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2025-12-31T17:47:33.000Z', '2025-12-31T17:47:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1522-1', 'hist-ticket-62-1522', 'prod-mocha', 1, 16500, 0, '2025-12-31T17:47:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1522-2', 'hist-ticket-62-1522', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T17:47:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1522-3', 'hist-ticket-62-1522', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T17:47:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-62-1522-4', 'hist-ticket-62-1522', 'prod-cappuccino', 1, 14500, 0, '2025-12-31T17:47:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-62-1522', 'hist-ticket-62-1522', 'cash', 60000, 'completed', '2025-12-31T17:47:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1523', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-01-01T08:45:24.000Z', '2026-01-01T08:45:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1523-1', 'hist-ticket-63-1523', 'prod-americano', 1, 12000, 0, '2026-01-01T08:45:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1523-2', 'hist-ticket-63-1523', 'prod-americano', 1, 12000, 0, '2026-01-01T08:45:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1523-3', 'hist-ticket-63-1523', 'prod-latte', 1, 15000, 0, '2026-01-01T08:45:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1523', 'hist-ticket-63-1523', 'cash', 39000, 'completed', '2026-01-01T08:45:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1524', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-01T16:26:08.000Z', '2026-01-01T16:26:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1524-1', 'hist-ticket-63-1524', 'prod-mocha', 1, 16500, 0, '2026-01-01T16:26:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1524-2', 'hist-ticket-63-1524', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T16:26:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1524-3', 'hist-ticket-63-1524', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T16:26:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1524-4', 'hist-ticket-63-1524', 'prod-americano', 1, 12000, 0, '2026-01-01T16:26:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1524', 'hist-ticket-63-1524', 'cash', 57500, 'completed', '2026-01-01T16:26:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1525', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-01T08:17:38.000Z', '2026-01-01T08:17:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1525-1', 'hist-ticket-63-1525', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T08:17:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1525-2', 'hist-ticket-63-1525', 'prod-latte', 1, 15000, 0, '2026-01-01T08:17:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1525-3', 'hist-ticket-63-1525', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T08:17:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1525', 'hist-ticket-63-1525', 'cash', 44000, 'completed', '2026-01-01T08:17:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1526', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-01-01T11:31:54.000Z', '2026-01-01T11:31:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1526-1', 'hist-ticket-63-1526', 'prod-americano', 1, 12000, 0, '2026-01-01T11:31:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1526-2', 'hist-ticket-63-1526', 'prod-americano', 1, 12000, 0, '2026-01-01T11:31:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1526-3', 'hist-ticket-63-1526', 'prod-latte', 1, 15000, 0, '2026-01-01T11:31:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1526', 'hist-ticket-63-1526', 'cash', 39000, 'completed', '2026-01-01T11:31:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1527', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-01-01T10:38:42.000Z', '2026-01-01T10:38:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1527-1', 'hist-ticket-63-1527', 'prod-latte', 1, 15000, 0, '2026-01-01T10:38:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1527-2', 'hist-ticket-63-1527', 'prod-mocha', 1, 16500, 0, '2026-01-01T10:38:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1527-3', 'hist-ticket-63-1527', 'prod-latte', 1, 15000, 0, '2026-01-01T10:38:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1527', 'hist-ticket-63-1527', 'cash', 46500, 'completed', '2026-01-01T10:38:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1528', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-01T14:27:13.000Z', '2026-01-01T14:27:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1528-1', 'hist-ticket-63-1528', 'prod-latte', 1, 15000, 0, '2026-01-01T14:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1528-2', 'hist-ticket-63-1528', 'prod-latte', 1, 15000, 0, '2026-01-01T14:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1528-3', 'hist-ticket-63-1528', 'prod-mocha', 1, 16500, 0, '2026-01-01T14:27:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1528', 'hist-ticket-63-1528', 'cash', 46500, 'completed', '2026-01-01T14:27:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1529', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-01T15:49:14.000Z', '2026-01-01T15:49:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1529-1', 'hist-ticket-63-1529', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T15:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1529-2', 'hist-ticket-63-1529', 'prod-americano', 1, 12000, 0, '2026-01-01T15:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1529-3', 'hist-ticket-63-1529', 'prod-latte', 1, 15000, 0, '2026-01-01T15:49:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1529', 'hist-ticket-63-1529', 'cash', 41500, 'completed', '2026-01-01T15:49:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1530', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-01T17:40:56.000Z', '2026-01-01T17:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1530-1', 'hist-ticket-63-1530', 'prod-americano', 1, 12000, 0, '2026-01-01T17:40:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1530', 'hist-ticket-63-1530', 'cash', 12000, 'completed', '2026-01-01T17:40:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1531', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-01T14:39:34.000Z', '2026-01-01T14:39:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1531-1', 'hist-ticket-63-1531', 'prod-mocha', 1, 16500, 0, '2026-01-01T14:39:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1531-2', 'hist-ticket-63-1531', 'prod-latte', 1, 15000, 0, '2026-01-01T14:39:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1531-3', 'hist-ticket-63-1531', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T14:39:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1531', 'hist-ticket-63-1531', 'cash', 46000, 'completed', '2026-01-01T14:39:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1532', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-01T11:38:14.000Z', '2026-01-01T11:38:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1532-1', 'hist-ticket-63-1532', 'prod-mocha', 1, 16500, 0, '2026-01-01T11:38:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1532-2', 'hist-ticket-63-1532', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T11:38:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1532-3', 'hist-ticket-63-1532', 'prod-mocha', 1, 16500, 0, '2026-01-01T11:38:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1532', 'hist-ticket-63-1532', 'cash', 47500, 'completed', '2026-01-01T11:38:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1533', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-01T15:45:41.000Z', '2026-01-01T15:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1533-1', 'hist-ticket-63-1533', 'prod-mocha', 1, 16500, 0, '2026-01-01T15:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1533-2', 'hist-ticket-63-1533', 'prod-mocha', 1, 16500, 0, '2026-01-01T15:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1533-3', 'hist-ticket-63-1533', 'prod-mocha', 1, 16500, 0, '2026-01-01T15:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1533-4', 'hist-ticket-63-1533', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T15:45:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1533', 'hist-ticket-63-1533', 'cash', 64000, 'completed', '2026-01-01T15:45:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1534', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-01T16:25:15.000Z', '2026-01-01T16:25:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1534-1', 'hist-ticket-63-1534', 'prod-latte', 1, 15000, 0, '2026-01-01T16:25:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1534', 'hist-ticket-63-1534', 'cash', 15000, 'completed', '2026-01-01T16:25:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1535', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-01T08:24:47.000Z', '2026-01-01T08:24:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1535-1', 'hist-ticket-63-1535', 'prod-latte', 1, 15000, 0, '2026-01-01T08:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1535-2', 'hist-ticket-63-1535', 'prod-americano', 1, 12000, 0, '2026-01-01T08:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1535-3', 'hist-ticket-63-1535', 'prod-americano', 1, 12000, 0, '2026-01-01T08:24:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1535-4', 'hist-ticket-63-1535', 'prod-mocha', 1, 16500, 0, '2026-01-01T08:24:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1535', 'hist-ticket-63-1535', 'cash', 55500, 'completed', '2026-01-01T08:24:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1536', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-01T13:24:33.000Z', '2026-01-01T13:24:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1536-1', 'hist-ticket-63-1536', 'prod-mocha', 1, 16500, 0, '2026-01-01T13:24:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1536', 'hist-ticket-63-1536', 'cash', 16500, 'completed', '2026-01-01T13:24:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1537', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-01T10:43:47.000Z', '2026-01-01T10:43:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1537-1', 'hist-ticket-63-1537', 'prod-latte', 1, 15000, 0, '2026-01-01T10:43:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1537-2', 'hist-ticket-63-1537', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T10:43:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1537-3', 'hist-ticket-63-1537', 'prod-mocha', 1, 16500, 0, '2026-01-01T10:43:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1537-4', 'hist-ticket-63-1537', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T10:43:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1537', 'hist-ticket-63-1537', 'cash', 60500, 'completed', '2026-01-01T10:43:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1538', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-01-01T13:02:06.000Z', '2026-01-01T13:02:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1538-1', 'hist-ticket-63-1538', 'prod-mocha', 1, 16500, 0, '2026-01-01T13:02:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1538-2', 'hist-ticket-63-1538', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T13:02:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1538', 'hist-ticket-63-1538', 'cash', 31000, 'completed', '2026-01-01T13:02:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1539', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-01T10:16:31.000Z', '2026-01-01T10:16:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1539-1', 'hist-ticket-63-1539', 'prod-americano', 1, 12000, 0, '2026-01-01T10:16:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1539-2', 'hist-ticket-63-1539', 'prod-latte', 1, 15000, 0, '2026-01-01T10:16:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1539-3', 'hist-ticket-63-1539', 'prod-latte', 1, 15000, 0, '2026-01-01T10:16:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1539', 'hist-ticket-63-1539', 'cash', 42000, 'completed', '2026-01-01T10:16:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1540', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-01T18:31:24.000Z', '2026-01-01T18:31:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1540-1', 'hist-ticket-63-1540', 'prod-cappuccino', 1, 14500, 0, '2026-01-01T18:31:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1540', 'hist-ticket-63-1540', 'cash', 14500, 'completed', '2026-01-01T18:31:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-63-1541', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-01T17:27:23.000Z', '2026-01-01T17:27:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1541-1', 'hist-ticket-63-1541', 'prod-americano', 1, 12000, 0, '2026-01-01T17:27:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1541-2', 'hist-ticket-63-1541', 'prod-americano', 1, 12000, 0, '2026-01-01T17:27:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1541-3', 'hist-ticket-63-1541', 'prod-americano', 1, 12000, 0, '2026-01-01T17:27:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-63-1541-4', 'hist-ticket-63-1541', 'prod-americano', 1, 12000, 0, '2026-01-01T17:27:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-63-1541', 'hist-ticket-63-1541', 'cash', 48000, 'completed', '2026-01-01T17:27:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1542', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-02T16:59:43.000Z', '2026-01-02T16:59:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1542-1', 'hist-ticket-64-1542', 'prod-latte', 1, 15000, 0, '2026-01-02T16:59:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1542-2', 'hist-ticket-64-1542', 'prod-latte', 1, 15000, 0, '2026-01-02T16:59:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1542', 'hist-ticket-64-1542', 'cash', 30000, 'completed', '2026-01-02T16:59:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1543', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-02T10:24:42.000Z', '2026-01-02T10:24:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1543-1', 'hist-ticket-64-1543', 'prod-mocha', 1, 16500, 0, '2026-01-02T10:24:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1543-2', 'hist-ticket-64-1543', 'prod-mocha', 1, 16500, 0, '2026-01-02T10:24:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1543', 'hist-ticket-64-1543', 'cash', 33000, 'completed', '2026-01-02T10:24:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1544', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-02T15:24:59.000Z', '2026-01-02T15:24:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1544-1', 'hist-ticket-64-1544', 'prod-americano', 1, 12000, 0, '2026-01-02T15:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1544-2', 'hist-ticket-64-1544', 'prod-americano', 1, 12000, 0, '2026-01-02T15:24:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1544-3', 'hist-ticket-64-1544', 'prod-mocha', 1, 16500, 0, '2026-01-02T15:24:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1544', 'hist-ticket-64-1544', 'cash', 40500, 'completed', '2026-01-02T15:24:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1545', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-02T15:32:40.000Z', '2026-01-02T15:32:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1545-1', 'hist-ticket-64-1545', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T15:32:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1545-2', 'hist-ticket-64-1545', 'prod-americano', 1, 12000, 0, '2026-01-02T15:32:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1545-3', 'hist-ticket-64-1545', 'prod-latte', 1, 15000, 0, '2026-01-02T15:32:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1545', 'hist-ticket-64-1545', 'cash', 41500, 'completed', '2026-01-02T15:32:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1546', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-02T19:40:40.000Z', '2026-01-02T19:40:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1546-1', 'hist-ticket-64-1546', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T19:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1546-2', 'hist-ticket-64-1546', 'prod-americano', 1, 12000, 0, '2026-01-02T19:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1546-3', 'hist-ticket-64-1546', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T19:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1546-4', 'hist-ticket-64-1546', 'prod-latte', 1, 15000, 0, '2026-01-02T19:40:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1546', 'hist-ticket-64-1546', 'cash', 56000, 'completed', '2026-01-02T19:40:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1547', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-01-02T17:23:54.000Z', '2026-01-02T17:23:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1547-1', 'hist-ticket-64-1547', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T17:23:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1547', 'hist-ticket-64-1547', 'cash', 14500, 'completed', '2026-01-02T17:23:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1548', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-02T14:43:37.000Z', '2026-01-02T14:43:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1548-1', 'hist-ticket-64-1548', 'prod-latte', 1, 15000, 0, '2026-01-02T14:43:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1548-2', 'hist-ticket-64-1548', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T14:43:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1548', 'hist-ticket-64-1548', 'cash', 29500, 'completed', '2026-01-02T14:43:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1549', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-02T15:05:29.000Z', '2026-01-02T15:05:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1549-1', 'hist-ticket-64-1549', 'prod-mocha', 1, 16500, 0, '2026-01-02T15:05:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1549-2', 'hist-ticket-64-1549', 'prod-mocha', 1, 16500, 0, '2026-01-02T15:05:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1549', 'hist-ticket-64-1549', 'cash', 33000, 'completed', '2026-01-02T15:05:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1550', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-02T08:12:24.000Z', '2026-01-02T08:12:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1550-1', 'hist-ticket-64-1550', 'prod-mocha', 1, 16500, 0, '2026-01-02T08:12:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1550-2', 'hist-ticket-64-1550', 'prod-latte', 1, 15000, 0, '2026-01-02T08:12:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1550', 'hist-ticket-64-1550', 'cash', 31500, 'completed', '2026-01-02T08:12:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1551', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-02T14:16:08.000Z', '2026-01-02T14:16:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1551-1', 'hist-ticket-64-1551', 'prod-mocha', 1, 16500, 0, '2026-01-02T14:16:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1551', 'hist-ticket-64-1551', 'cash', 16500, 'completed', '2026-01-02T14:16:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1552', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-02T12:37:09.000Z', '2026-01-02T12:37:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1552-1', 'hist-ticket-64-1552', 'prod-mocha', 1, 16500, 0, '2026-01-02T12:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1552-2', 'hist-ticket-64-1552', 'prod-latte', 1, 15000, 0, '2026-01-02T12:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1552-3', 'hist-ticket-64-1552', 'prod-latte', 1, 15000, 0, '2026-01-02T12:37:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1552-4', 'hist-ticket-64-1552', 'prod-latte', 1, 15000, 0, '2026-01-02T12:37:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1552', 'hist-ticket-64-1552', 'cash', 61500, 'completed', '2026-01-02T12:37:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1553', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-02T17:31:03.000Z', '2026-01-02T17:31:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1553-1', 'hist-ticket-64-1553', 'prod-latte', 1, 15000, 0, '2026-01-02T17:31:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1553-2', 'hist-ticket-64-1553', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T17:31:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1553-3', 'hist-ticket-64-1553', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T17:31:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1553-4', 'hist-ticket-64-1553', 'prod-latte', 1, 15000, 0, '2026-01-02T17:31:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1553', 'hist-ticket-64-1553', 'cash', 59000, 'completed', '2026-01-02T17:31:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1554', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-02T16:54:49.000Z', '2026-01-02T16:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1554-1', 'hist-ticket-64-1554', 'prod-latte', 1, 15000, 0, '2026-01-02T16:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1554-2', 'hist-ticket-64-1554', 'prod-mocha', 1, 16500, 0, '2026-01-02T16:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1554', 'hist-ticket-64-1554', 'cash', 31500, 'completed', '2026-01-02T16:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1555', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-02T11:50:20.000Z', '2026-01-02T11:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1555-1', 'hist-ticket-64-1555', 'prod-mocha', 1, 16500, 0, '2026-01-02T11:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1555-2', 'hist-ticket-64-1555', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T11:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1555-3', 'hist-ticket-64-1555', 'prod-latte', 1, 15000, 0, '2026-01-02T11:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1555', 'hist-ticket-64-1555', 'cash', 46000, 'completed', '2026-01-02T11:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1556', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-01-02T16:10:46.000Z', '2026-01-02T16:10:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1556-1', 'hist-ticket-64-1556', 'prod-americano', 1, 12000, 0, '2026-01-02T16:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1556-2', 'hist-ticket-64-1556', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T16:10:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1556', 'hist-ticket-64-1556', 'cash', 26500, 'completed', '2026-01-02T16:10:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1557', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-02T18:40:27.000Z', '2026-01-02T18:40:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1557-1', 'hist-ticket-64-1557', 'prod-latte', 1, 15000, 0, '2026-01-02T18:40:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1557-2', 'hist-ticket-64-1557', 'prod-mocha', 1, 16500, 0, '2026-01-02T18:40:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1557-3', 'hist-ticket-64-1557', 'prod-latte', 1, 15000, 0, '2026-01-02T18:40:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1557', 'hist-ticket-64-1557', 'cash', 46500, 'completed', '2026-01-02T18:40:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1558', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-02T16:09:56.000Z', '2026-01-02T16:09:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1558-1', 'hist-ticket-64-1558', 'prod-mocha', 1, 16500, 0, '2026-01-02T16:09:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1558-2', 'hist-ticket-64-1558', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T16:09:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1558', 'hist-ticket-64-1558', 'cash', 31000, 'completed', '2026-01-02T16:09:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1559', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-02T11:28:30.000Z', '2026-01-02T11:28:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1559-1', 'hist-ticket-64-1559', 'prod-mocha', 1, 16500, 0, '2026-01-02T11:28:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1559-2', 'hist-ticket-64-1559', 'prod-mocha', 1, 16500, 0, '2026-01-02T11:28:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1559', 'hist-ticket-64-1559', 'cash', 33000, 'completed', '2026-01-02T11:28:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1560', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-02T15:32:50.000Z', '2026-01-02T15:32:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1560-1', 'hist-ticket-64-1560', 'prod-americano', 1, 12000, 0, '2026-01-02T15:32:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1560-2', 'hist-ticket-64-1560', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T15:32:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1560', 'hist-ticket-64-1560', 'cash', 26500, 'completed', '2026-01-02T15:32:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1561', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-02T09:01:53.000Z', '2026-01-02T09:01:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1561-1', 'hist-ticket-64-1561', 'prod-latte', 1, 15000, 0, '2026-01-02T09:01:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1561', 'hist-ticket-64-1561', 'cash', 15000, 'completed', '2026-01-02T09:01:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-64-1562', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-01-02T19:00:00.000Z', '2026-01-02T19:00:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1562-1', 'hist-ticket-64-1562', 'prod-latte', 1, 15000, 0, '2026-01-02T19:00:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-64-1562-2', 'hist-ticket-64-1562', 'prod-cappuccino', 1, 14500, 0, '2026-01-02T19:00:00.000Z');