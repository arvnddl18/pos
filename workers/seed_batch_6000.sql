INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1341-3', 'hist-ticket-55-1341', 'prod-mocha', 1, 16500, 0, '2025-12-24T16:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1341-4', 'hist-ticket-55-1341', 'prod-mocha', 1, 16500, 0, '2025-12-24T16:19:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1341', 'hist-ticket-55-1341', 'cash', 63000, 'completed', '2025-12-24T16:19:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1342', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-25T15:26:15.000Z', '2025-12-25T15:26:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1342-1', 'hist-ticket-56-1342', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T15:26:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1342', 'hist-ticket-56-1342', 'cash', 14500, 'completed', '2025-12-25T15:26:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1343', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-25T13:52:59.000Z', '2025-12-25T13:52:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1343-1', 'hist-ticket-56-1343', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T13:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1343-2', 'hist-ticket-56-1343', 'prod-americano', 1, 12000, 0, '2025-12-25T13:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1343-3', 'hist-ticket-56-1343', 'prod-latte', 1, 15000, 0, '2025-12-25T13:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1343-4', 'hist-ticket-56-1343', 'prod-latte', 1, 15000, 0, '2025-12-25T13:52:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1343', 'hist-ticket-56-1343', 'cash', 56500, 'completed', '2025-12-25T13:52:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1344', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-12-25T11:18:56.000Z', '2025-12-25T11:18:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1344-1', 'hist-ticket-56-1344', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T11:18:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1344', 'hist-ticket-56-1344', 'cash', 14500, 'completed', '2025-12-25T11:18:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1345', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-25T09:15:44.000Z', '2025-12-25T09:15:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1345-1', 'hist-ticket-56-1345', 'prod-mocha', 1, 16500, 0, '2025-12-25T09:15:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1345-2', 'hist-ticket-56-1345', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T09:15:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1345-3', 'hist-ticket-56-1345', 'prod-mocha', 1, 16500, 0, '2025-12-25T09:15:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1345', 'hist-ticket-56-1345', 'cash', 47500, 'completed', '2025-12-25T09:15:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1346', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-25T11:28:44.000Z', '2025-12-25T11:28:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1346-1', 'hist-ticket-56-1346', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T11:28:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1346', 'hist-ticket-56-1346', 'cash', 14500, 'completed', '2025-12-25T11:28:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1347', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-25T16:06:17.000Z', '2025-12-25T16:06:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1347-1', 'hist-ticket-56-1347', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T16:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1347-2', 'hist-ticket-56-1347', 'prod-mocha', 1, 16500, 0, '2025-12-25T16:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1347-3', 'hist-ticket-56-1347', 'prod-mocha', 1, 16500, 0, '2025-12-25T16:06:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1347-4', 'hist-ticket-56-1347', 'prod-mocha', 1, 16500, 0, '2025-12-25T16:06:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1347', 'hist-ticket-56-1347', 'cash', 64000, 'completed', '2025-12-25T16:06:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1348', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-12-25T10:55:12.000Z', '2025-12-25T10:55:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1348-1', 'hist-ticket-56-1348', 'prod-americano', 1, 12000, 0, '2025-12-25T10:55:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1348-2', 'hist-ticket-56-1348', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T10:55:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1348', 'hist-ticket-56-1348', 'cash', 26500, 'completed', '2025-12-25T10:55:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1349', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-25T12:17:21.000Z', '2025-12-25T12:17:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1349-1', 'hist-ticket-56-1349', 'prod-mocha', 1, 16500, 0, '2025-12-25T12:17:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1349-2', 'hist-ticket-56-1349', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T12:17:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1349', 'hist-ticket-56-1349', 'cash', 31000, 'completed', '2025-12-25T12:17:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1350', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-25T09:38:10.000Z', '2025-12-25T09:38:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1350-1', 'hist-ticket-56-1350', 'prod-latte', 1, 15000, 0, '2025-12-25T09:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1350-2', 'hist-ticket-56-1350', 'prod-latte', 1, 15000, 0, '2025-12-25T09:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1350-3', 'hist-ticket-56-1350', 'prod-latte', 1, 15000, 0, '2025-12-25T09:38:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1350-4', 'hist-ticket-56-1350', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T09:38:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1350', 'hist-ticket-56-1350', 'cash', 59500, 'completed', '2025-12-25T09:38:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1351', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-25T17:56:57.000Z', '2025-12-25T17:56:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1351-1', 'hist-ticket-56-1351', 'prod-latte', 1, 15000, 0, '2025-12-25T17:56:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1351', 'hist-ticket-56-1351', 'cash', 15000, 'completed', '2025-12-25T17:56:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1352', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-25T10:04:54.000Z', '2025-12-25T10:04:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1352-1', 'hist-ticket-56-1352', 'prod-mocha', 1, 16500, 0, '2025-12-25T10:04:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1352-2', 'hist-ticket-56-1352', 'prod-americano', 1, 12000, 0, '2025-12-25T10:04:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1352-3', 'hist-ticket-56-1352', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T10:04:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1352-4', 'hist-ticket-56-1352', 'prod-mocha', 1, 16500, 0, '2025-12-25T10:04:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1352', 'hist-ticket-56-1352', 'cash', 59500, 'completed', '2025-12-25T10:04:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1353', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-25T18:03:22.000Z', '2025-12-25T18:03:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1353-1', 'hist-ticket-56-1353', 'prod-mocha', 1, 16500, 0, '2025-12-25T18:03:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1353-2', 'hist-ticket-56-1353', 'prod-mocha', 1, 16500, 0, '2025-12-25T18:03:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1353', 'hist-ticket-56-1353', 'cash', 33000, 'completed', '2025-12-25T18:03:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1354', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-12-25T11:38:09.000Z', '2025-12-25T11:38:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1354-1', 'hist-ticket-56-1354', 'prod-latte', 1, 15000, 0, '2025-12-25T11:38:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1354-2', 'hist-ticket-56-1354', 'prod-mocha', 1, 16500, 0, '2025-12-25T11:38:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1354-3', 'hist-ticket-56-1354', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T11:38:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1354', 'hist-ticket-56-1354', 'cash', 46000, 'completed', '2025-12-25T11:38:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1355', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-25T16:57:48.000Z', '2025-12-25T16:57:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1355-1', 'hist-ticket-56-1355', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T16:57:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1355-2', 'hist-ticket-56-1355', 'prod-mocha', 1, 16500, 0, '2025-12-25T16:57:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1355-3', 'hist-ticket-56-1355', 'prod-latte', 1, 15000, 0, '2025-12-25T16:57:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1355', 'hist-ticket-56-1355', 'cash', 46000, 'completed', '2025-12-25T16:57:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1356', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-25T12:58:51.000Z', '2025-12-25T12:58:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1356-1', 'hist-ticket-56-1356', 'prod-latte', 1, 15000, 0, '2025-12-25T12:58:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1356-2', 'hist-ticket-56-1356', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T12:58:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1356', 'hist-ticket-56-1356', 'cash', 29500, 'completed', '2025-12-25T12:58:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1357', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-12-25T11:39:19.000Z', '2025-12-25T11:39:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1357-1', 'hist-ticket-56-1357', 'prod-mocha', 1, 16500, 0, '2025-12-25T11:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1357-2', 'hist-ticket-56-1357', 'prod-mocha', 1, 16500, 0, '2025-12-25T11:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1357-3', 'hist-ticket-56-1357', 'prod-latte', 1, 15000, 0, '2025-12-25T11:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1357-4', 'hist-ticket-56-1357', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T11:39:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1357', 'hist-ticket-56-1357', 'cash', 62500, 'completed', '2025-12-25T11:39:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1358', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-25T16:00:22.000Z', '2025-12-25T16:00:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1358-1', 'hist-ticket-56-1358', 'prod-latte', 1, 15000, 0, '2025-12-25T16:00:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1358-2', 'hist-ticket-56-1358', 'prod-latte', 1, 15000, 0, '2025-12-25T16:00:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1358-3', 'hist-ticket-56-1358', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T16:00:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1358-4', 'hist-ticket-56-1358', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T16:00:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1358', 'hist-ticket-56-1358', 'cash', 59000, 'completed', '2025-12-25T16:00:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1359', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-25T15:56:20.000Z', '2025-12-25T15:56:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1359-1', 'hist-ticket-56-1359', 'prod-americano', 1, 12000, 0, '2025-12-25T15:56:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1359-2', 'hist-ticket-56-1359', 'prod-latte', 1, 15000, 0, '2025-12-25T15:56:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1359-3', 'hist-ticket-56-1359', 'prod-americano', 1, 12000, 0, '2025-12-25T15:56:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1359', 'hist-ticket-56-1359', 'cash', 39000, 'completed', '2025-12-25T15:56:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1360', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-25T08:42:07.000Z', '2025-12-25T08:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1360-1', 'hist-ticket-56-1360', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T08:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1360-2', 'hist-ticket-56-1360', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T08:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1360-3', 'hist-ticket-56-1360', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T08:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1360', 'hist-ticket-56-1360', 'cash', 43500, 'completed', '2025-12-25T08:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1361', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-25T08:16:33.000Z', '2025-12-25T08:16:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1361-1', 'hist-ticket-56-1361', 'prod-americano', 1, 12000, 0, '2025-12-25T08:16:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1361-2', 'hist-ticket-56-1361', 'prod-americano', 1, 12000, 0, '2025-12-25T08:16:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1361-3', 'hist-ticket-56-1361', 'prod-latte', 1, 15000, 0, '2025-12-25T08:16:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1361', 'hist-ticket-56-1361', 'cash', 39000, 'completed', '2025-12-25T08:16:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1362', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-25T12:05:57.000Z', '2025-12-25T12:05:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1362-1', 'hist-ticket-56-1362', 'prod-cappuccino', 1, 14500, 0, '2025-12-25T12:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1362-2', 'hist-ticket-56-1362', 'prod-latte', 1, 15000, 0, '2025-12-25T12:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1362-3', 'hist-ticket-56-1362', 'prod-americano', 1, 12000, 0, '2025-12-25T12:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1362-4', 'hist-ticket-56-1362', 'prod-americano', 1, 12000, 0, '2025-12-25T12:05:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1362', 'hist-ticket-56-1362', 'cash', 53500, 'completed', '2025-12-25T12:05:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1363', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-25T08:00:03.000Z', '2025-12-25T08:00:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1363-1', 'hist-ticket-56-1363', 'prod-mocha', 1, 16500, 0, '2025-12-25T08:00:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1363-2', 'hist-ticket-56-1363', 'prod-mocha', 1, 16500, 0, '2025-12-25T08:00:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1363-3', 'hist-ticket-56-1363', 'prod-mocha', 1, 16500, 0, '2025-12-25T08:00:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1363-4', 'hist-ticket-56-1363', 'prod-mocha', 1, 16500, 0, '2025-12-25T08:00:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1363', 'hist-ticket-56-1363', 'cash', 66000, 'completed', '2025-12-25T08:00:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-56-1364', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-25T09:51:24.000Z', '2025-12-25T09:51:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1364-1', 'hist-ticket-56-1364', 'prod-mocha', 1, 16500, 0, '2025-12-25T09:51:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1364-2', 'hist-ticket-56-1364', 'prod-americano', 1, 12000, 0, '2025-12-25T09:51:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1364-3', 'hist-ticket-56-1364', 'prod-latte', 1, 15000, 0, '2025-12-25T09:51:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-56-1364-4', 'hist-ticket-56-1364', 'prod-americano', 1, 12000, 0, '2025-12-25T09:51:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-56-1364', 'hist-ticket-56-1364', 'cash', 55500, 'completed', '2025-12-25T09:51:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1365', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-26T16:07:24.000Z', '2025-12-26T16:07:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1365-1', 'hist-ticket-57-1365', 'prod-americano', 1, 12000, 0, '2025-12-26T16:07:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1365', 'hist-ticket-57-1365', 'cash', 12000, 'completed', '2025-12-26T16:07:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1366', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-26T18:12:05.000Z', '2025-12-26T18:12:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1366-1', 'hist-ticket-57-1366', 'prod-mocha', 1, 16500, 0, '2025-12-26T18:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1366-2', 'hist-ticket-57-1366', 'prod-americano', 1, 12000, 0, '2025-12-26T18:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1366-3', 'hist-ticket-57-1366', 'prod-mocha', 1, 16500, 0, '2025-12-26T18:12:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1366-4', 'hist-ticket-57-1366', 'prod-latte', 1, 15000, 0, '2025-12-26T18:12:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1366', 'hist-ticket-57-1366', 'cash', 60000, 'completed', '2025-12-26T18:12:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1367', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-12-26T13:39:27.000Z', '2025-12-26T13:39:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1367-1', 'hist-ticket-57-1367', 'prod-mocha', 1, 16500, 0, '2025-12-26T13:39:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1367-2', 'hist-ticket-57-1367', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T13:39:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1367', 'hist-ticket-57-1367', 'cash', 31000, 'completed', '2025-12-26T13:39:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1368', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-26T14:00:06.000Z', '2025-12-26T14:00:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1368-1', 'hist-ticket-57-1368', 'prod-americano', 1, 12000, 0, '2025-12-26T14:00:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1368', 'hist-ticket-57-1368', 'cash', 12000, 'completed', '2025-12-26T14:00:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1369', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-26T08:56:07.000Z', '2025-12-26T08:56:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1369-1', 'hist-ticket-57-1369', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T08:56:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1369-2', 'hist-ticket-57-1369', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T08:56:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1369', 'hist-ticket-57-1369', 'cash', 29000, 'completed', '2025-12-26T08:56:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1370', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-26T18:19:38.000Z', '2025-12-26T18:19:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1370-1', 'hist-ticket-57-1370', 'prod-americano', 1, 12000, 0, '2025-12-26T18:19:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1370-2', 'hist-ticket-57-1370', 'prod-latte', 1, 15000, 0, '2025-12-26T18:19:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1370-3', 'hist-ticket-57-1370', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:19:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1370', 'hist-ticket-57-1370', 'cash', 41500, 'completed', '2025-12-26T18:19:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1371', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-26T09:09:17.000Z', '2025-12-26T09:09:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1371-1', 'hist-ticket-57-1371', 'prod-latte', 1, 15000, 0, '2025-12-26T09:09:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1371', 'hist-ticket-57-1371', 'cash', 15000, 'completed', '2025-12-26T09:09:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1372', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-26T08:09:32.000Z', '2025-12-26T08:09:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1372-1', 'hist-ticket-57-1372', 'prod-latte', 1, 15000, 0, '2025-12-26T08:09:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1372-2', 'hist-ticket-57-1372', 'prod-americano', 1, 12000, 0, '2025-12-26T08:09:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1372-3', 'hist-ticket-57-1372', 'prod-mocha', 1, 16500, 0, '2025-12-26T08:09:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1372', 'hist-ticket-57-1372', 'cash', 43500, 'completed', '2025-12-26T08:09:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1373', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-26T13:36:59.000Z', '2025-12-26T13:36:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1373-1', 'hist-ticket-57-1373', 'prod-latte', 1, 15000, 0, '2025-12-26T13:36:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1373', 'hist-ticket-57-1373', 'cash', 15000, 'completed', '2025-12-26T13:36:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1374', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-26T08:00:58.000Z', '2025-12-26T08:00:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1374-1', 'hist-ticket-57-1374', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T08:00:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1374-2', 'hist-ticket-57-1374', 'prod-mocha', 1, 16500, 0, '2025-12-26T08:00:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1374', 'hist-ticket-57-1374', 'cash', 31000, 'completed', '2025-12-26T08:00:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1375', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-26T10:27:59.000Z', '2025-12-26T10:27:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1375-1', 'hist-ticket-57-1375', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T10:27:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1375-2', 'hist-ticket-57-1375', 'prod-americano', 1, 12000, 0, '2025-12-26T10:27:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1375-3', 'hist-ticket-57-1375', 'prod-americano', 1, 12000, 0, '2025-12-26T10:27:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1375', 'hist-ticket-57-1375', 'cash', 38500, 'completed', '2025-12-26T10:27:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1376', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-26T10:36:46.000Z', '2025-12-26T10:36:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1376-1', 'hist-ticket-57-1376', 'prod-mocha', 1, 16500, 0, '2025-12-26T10:36:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1376-2', 'hist-ticket-57-1376', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T10:36:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1376-3', 'hist-ticket-57-1376', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T10:36:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1376', 'hist-ticket-57-1376', 'cash', 45500, 'completed', '2025-12-26T10:36:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1377', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-26T09:59:24.000Z', '2025-12-26T09:59:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1377-1', 'hist-ticket-57-1377', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T09:59:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1377', 'hist-ticket-57-1377', 'cash', 14500, 'completed', '2025-12-26T09:59:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1378', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-26T18:55:45.000Z', '2025-12-26T18:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1378-1', 'hist-ticket-57-1378', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1378-2', 'hist-ticket-57-1378', 'prod-mocha', 1, 16500, 0, '2025-12-26T18:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1378-3', 'hist-ticket-57-1378', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1378-4', 'hist-ticket-57-1378', 'prod-latte', 1, 15000, 0, '2025-12-26T18:55:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1378', 'hist-ticket-57-1378', 'cash', 60500, 'completed', '2025-12-26T18:55:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1379', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-26T09:58:27.000Z', '2025-12-26T09:58:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1379-1', 'hist-ticket-57-1379', 'prod-mocha', 1, 16500, 0, '2025-12-26T09:58:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1379-2', 'hist-ticket-57-1379', 'prod-americano', 1, 12000, 0, '2025-12-26T09:58:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1379', 'hist-ticket-57-1379', 'cash', 28500, 'completed', '2025-12-26T09:58:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1380', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-26T18:23:58.000Z', '2025-12-26T18:23:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1380-1', 'hist-ticket-57-1380', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:23:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1380-2', 'hist-ticket-57-1380', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:23:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1380-3', 'hist-ticket-57-1380', 'prod-latte', 1, 15000, 0, '2025-12-26T18:23:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1380', 'hist-ticket-57-1380', 'cash', 44000, 'completed', '2025-12-26T18:23:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1381', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-12-26T11:04:24.000Z', '2025-12-26T11:04:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1381-1', 'hist-ticket-57-1381', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T11:04:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1381', 'hist-ticket-57-1381', 'cash', 14500, 'completed', '2025-12-26T11:04:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1382', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-26T18:31:31.000Z', '2025-12-26T18:31:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1382-1', 'hist-ticket-57-1382', 'prod-mocha', 1, 16500, 0, '2025-12-26T18:31:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1382-2', 'hist-ticket-57-1382', 'prod-latte', 1, 15000, 0, '2025-12-26T18:31:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1382', 'hist-ticket-57-1382', 'cash', 31500, 'completed', '2025-12-26T18:31:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1383', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-26T16:49:49.000Z', '2025-12-26T16:49:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1383-1', 'hist-ticket-57-1383', 'prod-mocha', 1, 16500, 0, '2025-12-26T16:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1383-2', 'hist-ticket-57-1383', 'prod-americano', 1, 12000, 0, '2025-12-26T16:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1383-3', 'hist-ticket-57-1383', 'prod-latte', 1, 15000, 0, '2025-12-26T16:49:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1383', 'hist-ticket-57-1383', 'cash', 43500, 'completed', '2025-12-26T16:49:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1384', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-26T17:29:32.000Z', '2025-12-26T17:29:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1384-1', 'hist-ticket-57-1384', 'prod-mocha', 1, 16500, 0, '2025-12-26T17:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1384-2', 'hist-ticket-57-1384', 'prod-mocha', 1, 16500, 0, '2025-12-26T17:29:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1384', 'hist-ticket-57-1384', 'cash', 33000, 'completed', '2025-12-26T17:29:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1385', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-26T18:24:40.000Z', '2025-12-26T18:24:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1385-1', 'hist-ticket-57-1385', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T18:24:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1385-2', 'hist-ticket-57-1385', 'prod-latte', 1, 15000, 0, '2025-12-26T18:24:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1385-3', 'hist-ticket-57-1385', 'prod-americano', 1, 12000, 0, '2025-12-26T18:24:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1385', 'hist-ticket-57-1385', 'cash', 41500, 'completed', '2025-12-26T18:24:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1386', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-12-26T14:20:14.000Z', '2025-12-26T14:20:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1386-1', 'hist-ticket-57-1386', 'prod-americano', 1, 12000, 0, '2025-12-26T14:20:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1386', 'hist-ticket-57-1386', 'cash', 12000, 'completed', '2025-12-26T14:20:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1387', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-26T08:33:12.000Z', '2025-12-26T08:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1387-1', 'hist-ticket-57-1387', 'prod-mocha', 1, 16500, 0, '2025-12-26T08:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1387-2', 'hist-ticket-57-1387', 'prod-mocha', 1, 16500, 0, '2025-12-26T08:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1387-3', 'hist-ticket-57-1387', 'prod-mocha', 1, 16500, 0, '2025-12-26T08:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1387', 'hist-ticket-57-1387', 'cash', 49500, 'completed', '2025-12-26T08:33:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-57-1388', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-26T12:44:23.000Z', '2025-12-26T12:44:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1388-1', 'hist-ticket-57-1388', 'prod-americano', 1, 12000, 0, '2025-12-26T12:44:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1388-2', 'hist-ticket-57-1388', 'prod-latte', 1, 15000, 0, '2025-12-26T12:44:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1388-3', 'hist-ticket-57-1388', 'prod-cappuccino', 1, 14500, 0, '2025-12-26T12:44:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-57-1388-4', 'hist-ticket-57-1388', 'prod-latte', 1, 15000, 0, '2025-12-26T12:44:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-57-1388', 'hist-ticket-57-1388', 'cash', 56500, 'completed', '2025-12-26T12:44:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1389', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-27T14:34:21.000Z', '2025-12-27T14:34:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1389-1', 'hist-ticket-58-1389', 'prod-latte', 1, 15000, 0, '2025-12-27T14:34:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1389', 'hist-ticket-58-1389', 'cash', 15000, 'completed', '2025-12-27T14:34:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1390', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-12-27T12:29:49.000Z', '2025-12-27T12:29:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1390-1', 'hist-ticket-58-1390', 'prod-americano', 1, 12000, 0, '2025-12-27T12:29:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1390', 'hist-ticket-58-1390', 'cash', 12000, 'completed', '2025-12-27T12:29:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1391', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-27T08:03:43.000Z', '2025-12-27T08:03:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1391-1', 'hist-ticket-58-1391', 'prod-latte', 1, 15000, 0, '2025-12-27T08:03:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1391-2', 'hist-ticket-58-1391', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T08:03:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1391-3', 'hist-ticket-58-1391', 'prod-americano', 1, 12000, 0, '2025-12-27T08:03:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1391', 'hist-ticket-58-1391', 'cash', 41500, 'completed', '2025-12-27T08:03:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1392', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-27T17:20:46.000Z', '2025-12-27T17:20:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1392-1', 'hist-ticket-58-1392', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T17:20:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1392', 'hist-ticket-58-1392', 'cash', 14500, 'completed', '2025-12-27T17:20:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1393', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-27T19:30:15.000Z', '2025-12-27T19:30:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1393-1', 'hist-ticket-58-1393', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T19:30:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1393-2', 'hist-ticket-58-1393', 'prod-americano', 1, 12000, 0, '2025-12-27T19:30:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1393-3', 'hist-ticket-58-1393', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T19:30:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1393', 'hist-ticket-58-1393', 'cash', 41000, 'completed', '2025-12-27T19:30:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1394', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-12-27T08:19:37.000Z', '2025-12-27T08:19:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1394-1', 'hist-ticket-58-1394', 'prod-mocha', 1, 16500, 0, '2025-12-27T08:19:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1394', 'hist-ticket-58-1394', 'cash', 16500, 'completed', '2025-12-27T08:19:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1395', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-27T16:13:08.000Z', '2025-12-27T16:13:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1395-1', 'hist-ticket-58-1395', 'prod-latte', 1, 15000, 0, '2025-12-27T16:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1395-2', 'hist-ticket-58-1395', 'prod-mocha', 1, 16500, 0, '2025-12-27T16:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1395-3', 'hist-ticket-58-1395', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T16:13:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1395', 'hist-ticket-58-1395', 'cash', 46000, 'completed', '2025-12-27T16:13:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1396', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-27T14:38:03.000Z', '2025-12-27T14:38:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1396-1', 'hist-ticket-58-1396', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T14:38:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1396-2', 'hist-ticket-58-1396', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T14:38:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1396-3', 'hist-ticket-58-1396', 'prod-mocha', 1, 16500, 0, '2025-12-27T14:38:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1396', 'hist-ticket-58-1396', 'cash', 45500, 'completed', '2025-12-27T14:38:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1397', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-27T08:31:53.000Z', '2025-12-27T08:31:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1397-1', 'hist-ticket-58-1397', 'prod-mocha', 1, 16500, 0, '2025-12-27T08:31:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1397-2', 'hist-ticket-58-1397', 'prod-americano', 1, 12000, 0, '2025-12-27T08:31:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1397-3', 'hist-ticket-58-1397', 'prod-mocha', 1, 16500, 0, '2025-12-27T08:31:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1397', 'hist-ticket-58-1397', 'cash', 45000, 'completed', '2025-12-27T08:31:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1398', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-27T13:39:09.000Z', '2025-12-27T13:39:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1398-1', 'hist-ticket-58-1398', 'prod-latte', 1, 15000, 0, '2025-12-27T13:39:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1398', 'hist-ticket-58-1398', 'cash', 15000, 'completed', '2025-12-27T13:39:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1399', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-27T08:47:40.000Z', '2025-12-27T08:47:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1399-1', 'hist-ticket-58-1399', 'prod-americano', 1, 12000, 0, '2025-12-27T08:47:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1399-2', 'hist-ticket-58-1399', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T08:47:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1399', 'hist-ticket-58-1399', 'cash', 26500, 'completed', '2025-12-27T08:47:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1400', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-27T14:05:03.000Z', '2025-12-27T14:05:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1400-1', 'hist-ticket-58-1400', 'prod-americano', 1, 12000, 0, '2025-12-27T14:05:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1400', 'hist-ticket-58-1400', 'cash', 12000, 'completed', '2025-12-27T14:05:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1401', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-27T13:14:03.000Z', '2025-12-27T13:14:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1401-1', 'hist-ticket-58-1401', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T13:14:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1401-2', 'hist-ticket-58-1401', 'prod-americano', 1, 12000, 0, '2025-12-27T13:14:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1401', 'hist-ticket-58-1401', 'cash', 26500, 'completed', '2025-12-27T13:14:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1402', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-27T13:48:14.000Z', '2025-12-27T13:48:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1402-1', 'hist-ticket-58-1402', 'prod-mocha', 1, 16500, 0, '2025-12-27T13:48:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1402-2', 'hist-ticket-58-1402', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T13:48:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1402-3', 'hist-ticket-58-1402', 'prod-americano', 1, 12000, 0, '2025-12-27T13:48:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1402', 'hist-ticket-58-1402', 'cash', 43000, 'completed', '2025-12-27T13:48:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1403', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-27T15:19:15.000Z', '2025-12-27T15:19:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1403-1', 'hist-ticket-58-1403', 'prod-americano', 1, 12000, 0, '2025-12-27T15:19:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1403-2', 'hist-ticket-58-1403', 'prod-mocha', 1, 16500, 0, '2025-12-27T15:19:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1403', 'hist-ticket-58-1403', 'cash', 28500, 'completed', '2025-12-27T15:19:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1404', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-27T12:17:16.000Z', '2025-12-27T12:17:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1404-1', 'hist-ticket-58-1404', 'prod-americano', 1, 12000, 0, '2025-12-27T12:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1404-2', 'hist-ticket-58-1404', 'prod-latte', 1, 15000, 0, '2025-12-27T12:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1404-3', 'hist-ticket-58-1404', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T12:17:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1404-4', 'hist-ticket-58-1404', 'prod-mocha', 1, 16500, 0, '2025-12-27T12:17:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1404', 'hist-ticket-58-1404', 'cash', 58000, 'completed', '2025-12-27T12:17:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1405', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-27T12:29:58.000Z', '2025-12-27T12:29:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1405-1', 'hist-ticket-58-1405', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T12:29:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1405', 'hist-ticket-58-1405', 'cash', 14500, 'completed', '2025-12-27T12:29:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1406', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-27T13:32:23.000Z', '2025-12-27T13:32:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1406-1', 'hist-ticket-58-1406', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T13:32:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1406-2', 'hist-ticket-58-1406', 'prod-americano', 1, 12000, 0, '2025-12-27T13:32:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1406-3', 'hist-ticket-58-1406', 'prod-latte', 1, 15000, 0, '2025-12-27T13:32:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1406', 'hist-ticket-58-1406', 'cash', 41500, 'completed', '2025-12-27T13:32:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1407', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-27T09:23:31.000Z', '2025-12-27T09:23:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1407-1', 'hist-ticket-58-1407', 'prod-americano', 1, 12000, 0, '2025-12-27T09:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1407-2', 'hist-ticket-58-1407', 'prod-americano', 1, 12000, 0, '2025-12-27T09:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1407-3', 'hist-ticket-58-1407', 'prod-mocha', 1, 16500, 0, '2025-12-27T09:23:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1407', 'hist-ticket-58-1407', 'cash', 40500, 'completed', '2025-12-27T09:23:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1408', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-27T16:45:42.000Z', '2025-12-27T16:45:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1408-1', 'hist-ticket-58-1408', 'prod-americano', 1, 12000, 0, '2025-12-27T16:45:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1408-2', 'hist-ticket-58-1408', 'prod-americano', 1, 12000, 0, '2025-12-27T16:45:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1408-3', 'hist-ticket-58-1408', 'prod-americano', 1, 12000, 0, '2025-12-27T16:45:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1408', 'hist-ticket-58-1408', 'cash', 36000, 'completed', '2025-12-27T16:45:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1409', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-27T14:26:20.000Z', '2025-12-27T14:26:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1409-1', 'hist-ticket-58-1409', 'prod-latte', 1, 15000, 0, '2025-12-27T14:26:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1409-2', 'hist-ticket-58-1409', 'prod-mocha', 1, 16500, 0, '2025-12-27T14:26:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1409-3', 'hist-ticket-58-1409', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T14:26:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1409-4', 'hist-ticket-58-1409', 'prod-americano', 1, 12000, 0, '2025-12-27T14:26:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1409', 'hist-ticket-58-1409', 'cash', 58000, 'completed', '2025-12-27T14:26:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1410', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-27T08:12:38.000Z', '2025-12-27T08:12:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1410-1', 'hist-ticket-58-1410', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T08:12:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1410', 'hist-ticket-58-1410', 'cash', 14500, 'completed', '2025-12-27T08:12:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1411', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-27T11:16:05.000Z', '2025-12-27T11:16:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1411-1', 'hist-ticket-58-1411', 'prod-americano', 1, 12000, 0, '2025-12-27T11:16:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1411-2', 'hist-ticket-58-1411', 'prod-americano', 1, 12000, 0, '2025-12-27T11:16:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1411-3', 'hist-ticket-58-1411', 'prod-mocha', 1, 16500, 0, '2025-12-27T11:16:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1411-4', 'hist-ticket-58-1411', 'prod-latte', 1, 15000, 0, '2025-12-27T11:16:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1411', 'hist-ticket-58-1411', 'cash', 55500, 'completed', '2025-12-27T11:16:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1412', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-27T12:09:50.000Z', '2025-12-27T12:09:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1412-1', 'hist-ticket-58-1412', 'prod-mocha', 1, 16500, 0, '2025-12-27T12:09:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1412', 'hist-ticket-58-1412', 'cash', 16500, 'completed', '2025-12-27T12:09:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1413', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-12-27T19:13:28.000Z', '2025-12-27T19:13:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1413-1', 'hist-ticket-58-1413', 'prod-latte', 1, 15000, 0, '2025-12-27T19:13:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1413-2', 'hist-ticket-58-1413', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T19:13:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1413-3', 'hist-ticket-58-1413', 'prod-latte', 1, 15000, 0, '2025-12-27T19:13:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1413', 'hist-ticket-58-1413', 'cash', 44500, 'completed', '2025-12-27T19:13:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1414', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-27T16:51:51.000Z', '2025-12-27T16:51:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1414-1', 'hist-ticket-58-1414', 'prod-mocha', 1, 16500, 0, '2025-12-27T16:51:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1414', 'hist-ticket-58-1414', 'cash', 16500, 'completed', '2025-12-27T16:51:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1415', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-27T10:15:04.000Z', '2025-12-27T10:15:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1415-1', 'hist-ticket-58-1415', 'prod-latte', 1, 15000, 0, '2025-12-27T10:15:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1415-2', 'hist-ticket-58-1415', 'prod-latte', 1, 15000, 0, '2025-12-27T10:15:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1415', 'hist-ticket-58-1415', 'cash', 30000, 'completed', '2025-12-27T10:15:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1416', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-27T19:32:19.000Z', '2025-12-27T19:32:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1416-1', 'hist-ticket-58-1416', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T19:32:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1416-2', 'hist-ticket-58-1416', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T19:32:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1416-3', 'hist-ticket-58-1416', 'prod-americano', 1, 12000, 0, '2025-12-27T19:32:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1416', 'hist-ticket-58-1416', 'cash', 41000, 'completed', '2025-12-27T19:32:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1417', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-27T11:23:48.000Z', '2025-12-27T11:23:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1417-1', 'hist-ticket-58-1417', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T11:23:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1417-2', 'hist-ticket-58-1417', 'prod-americano', 1, 12000, 0, '2025-12-27T11:23:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1417-3', 'hist-ticket-58-1417', 'prod-americano', 1, 12000, 0, '2025-12-27T11:23:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1417-4', 'hist-ticket-58-1417', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T11:23:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1417', 'hist-ticket-58-1417', 'cash', 53000, 'completed', '2025-12-27T11:23:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1418', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-27T10:08:33.000Z', '2025-12-27T10:08:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1418-1', 'hist-ticket-58-1418', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T10:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1418-2', 'hist-ticket-58-1418', 'prod-mocha', 1, 16500, 0, '2025-12-27T10:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1418-3', 'hist-ticket-58-1418', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T10:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1418-4', 'hist-ticket-58-1418', 'prod-americano', 1, 12000, 0, '2025-12-27T10:08:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1418', 'hist-ticket-58-1418', 'cash', 57500, 'completed', '2025-12-27T10:08:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1419', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-27T17:14:29.000Z', '2025-12-27T17:14:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1419-1', 'hist-ticket-58-1419', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T17:14:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1419-2', 'hist-ticket-58-1419', 'prod-latte', 1, 15000, 0, '2025-12-27T17:14:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1419', 'hist-ticket-58-1419', 'cash', 29500, 'completed', '2025-12-27T17:14:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1420', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-12-27T10:21:10.000Z', '2025-12-27T10:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1420-1', 'hist-ticket-58-1420', 'prod-mocha', 1, 16500, 0, '2025-12-27T10:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1420-2', 'hist-ticket-58-1420', 'prod-americano', 1, 12000, 0, '2025-12-27T10:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1420-3', 'hist-ticket-58-1420', 'prod-americano', 1, 12000, 0, '2025-12-27T10:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1420', 'hist-ticket-58-1420', 'cash', 40500, 'completed', '2025-12-27T10:21:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1421', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-12-27T14:00:07.000Z', '2025-12-27T14:00:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1421-1', 'hist-ticket-58-1421', 'prod-latte', 1, 15000, 0, '2025-12-27T14:00:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1421-2', 'hist-ticket-58-1421', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T14:00:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1421', 'hist-ticket-58-1421', 'cash', 29500, 'completed', '2025-12-27T14:00:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1422', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-27T17:52:44.000Z', '2025-12-27T17:52:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1422-1', 'hist-ticket-58-1422', 'prod-mocha', 1, 16500, 0, '2025-12-27T17:52:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1422-2', 'hist-ticket-58-1422', 'prod-americano', 1, 12000, 0, '2025-12-27T17:52:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1422-3', 'hist-ticket-58-1422', 'prod-mocha', 1, 16500, 0, '2025-12-27T17:52:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1422', 'hist-ticket-58-1422', 'cash', 45000, 'completed', '2025-12-27T17:52:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1423', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-27T17:55:38.000Z', '2025-12-27T17:55:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1423-1', 'hist-ticket-58-1423', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T17:55:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1423-2', 'hist-ticket-58-1423', 'prod-mocha', 1, 16500, 0, '2025-12-27T17:55:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1423-3', 'hist-ticket-58-1423', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T17:55:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1423-4', 'hist-ticket-58-1423', 'prod-americano', 1, 12000, 0, '2025-12-27T17:55:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1423', 'hist-ticket-58-1423', 'cash', 57500, 'completed', '2025-12-27T17:55:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1424', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-27T16:04:12.000Z', '2025-12-27T16:04:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1424-1', 'hist-ticket-58-1424', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T16:04:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1424-2', 'hist-ticket-58-1424', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T16:04:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1424-3', 'hist-ticket-58-1424', 'prod-cappuccino', 1, 14500, 0, '2025-12-27T16:04:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1424', 'hist-ticket-58-1424', 'cash', 43500, 'completed', '2025-12-27T16:04:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1425', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-27T14:26:37.000Z', '2025-12-27T14:26:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1425-1', 'hist-ticket-58-1425', 'prod-mocha', 1, 16500, 0, '2025-12-27T14:26:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1425-2', 'hist-ticket-58-1425', 'prod-americano', 1, 12000, 0, '2025-12-27T14:26:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1425', 'hist-ticket-58-1425', 'cash', 28500, 'completed', '2025-12-27T14:26:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1426', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-27T12:11:19.000Z', '2025-12-27T12:11:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1426-1', 'hist-ticket-58-1426', 'prod-americano', 1, 12000, 0, '2025-12-27T12:11:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1426-2', 'hist-ticket-58-1426', 'prod-mocha', 1, 16500, 0, '2025-12-27T12:11:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1426', 'hist-ticket-58-1426', 'cash', 28500, 'completed', '2025-12-27T12:11:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1427', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-27T11:58:25.000Z', '2025-12-27T11:58:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1427-1', 'hist-ticket-58-1427', 'prod-americano', 1, 12000, 0, '2025-12-27T11:58:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1427-2', 'hist-ticket-58-1427', 'prod-latte', 1, 15000, 0, '2025-12-27T11:58:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1427-3', 'hist-ticket-58-1427', 'prod-americano', 1, 12000, 0, '2025-12-27T11:58:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1427', 'hist-ticket-58-1427', 'cash', 39000, 'completed', '2025-12-27T11:58:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-58-1428', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-27T18:51:14.000Z', '2025-12-27T18:51:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1428-1', 'hist-ticket-58-1428', 'prod-mocha', 1, 16500, 0, '2025-12-27T18:51:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1428-2', 'hist-ticket-58-1428', 'prod-latte', 1, 15000, 0, '2025-12-27T18:51:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1428-3', 'hist-ticket-58-1428', 'prod-latte', 1, 15000, 0, '2025-12-27T18:51:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-58-1428-4', 'hist-ticket-58-1428', 'prod-latte', 1, 15000, 0, '2025-12-27T18:51:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-58-1428', 'hist-ticket-58-1428', 'cash', 61500, 'completed', '2025-12-27T18:51:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1429', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-12-28T16:52:51.000Z', '2025-12-28T16:52:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1429-1', 'hist-ticket-59-1429', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T16:52:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1429-2', 'hist-ticket-59-1429', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T16:52:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1429', 'hist-ticket-59-1429', 'cash', 29000, 'completed', '2025-12-28T16:52:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1430', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-28T16:30:27.000Z', '2025-12-28T16:30:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1430-1', 'hist-ticket-59-1430', 'prod-americano', 1, 12000, 0, '2025-12-28T16:30:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1430-2', 'hist-ticket-59-1430', 'prod-americano', 1, 12000, 0, '2025-12-28T16:30:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1430-3', 'hist-ticket-59-1430', 'prod-mocha', 1, 16500, 0, '2025-12-28T16:30:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1430-4', 'hist-ticket-59-1430', 'prod-latte', 1, 15000, 0, '2025-12-28T16:30:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1430', 'hist-ticket-59-1430', 'cash', 55500, 'completed', '2025-12-28T16:30:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1431', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-12-28T11:48:48.000Z', '2025-12-28T11:48:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1431-1', 'hist-ticket-59-1431', 'prod-americano', 1, 12000, 0, '2025-12-28T11:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1431-2', 'hist-ticket-59-1431', 'prod-latte', 1, 15000, 0, '2025-12-28T11:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1431-3', 'hist-ticket-59-1431', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T11:48:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1431', 'hist-ticket-59-1431', 'cash', 41500, 'completed', '2025-12-28T11:48:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1432', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-28T16:16:49.000Z', '2025-12-28T16:16:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1432-1', 'hist-ticket-59-1432', 'prod-latte', 1, 15000, 0, '2025-12-28T16:16:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1432-2', 'hist-ticket-59-1432', 'prod-latte', 1, 15000, 0, '2025-12-28T16:16:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1432-3', 'hist-ticket-59-1432', 'prod-latte', 1, 15000, 0, '2025-12-28T16:16:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1432-4', 'hist-ticket-59-1432', 'prod-latte', 1, 15000, 0, '2025-12-28T16:16:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1432', 'hist-ticket-59-1432', 'cash', 60000, 'completed', '2025-12-28T16:16:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1433', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-28T15:51:35.000Z', '2025-12-28T15:51:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1433-1', 'hist-ticket-59-1433', 'prod-mocha', 1, 16500, 0, '2025-12-28T15:51:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1433', 'hist-ticket-59-1433', 'cash', 16500, 'completed', '2025-12-28T15:51:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1434', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-28T08:19:53.000Z', '2025-12-28T08:19:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1434-1', 'hist-ticket-59-1434', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T08:19:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1434-2', 'hist-ticket-59-1434', 'prod-latte', 1, 15000, 0, '2025-12-28T08:19:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1434-3', 'hist-ticket-59-1434', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T08:19:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1434-4', 'hist-ticket-59-1434', 'prod-americano', 1, 12000, 0, '2025-12-28T08:19:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1434', 'hist-ticket-59-1434', 'cash', 56000, 'completed', '2025-12-28T08:19:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1435', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-28T11:19:09.000Z', '2025-12-28T11:19:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1435-1', 'hist-ticket-59-1435', 'prod-americano', 1, 12000, 0, '2025-12-28T11:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1435-2', 'hist-ticket-59-1435', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T11:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1435-3', 'hist-ticket-59-1435', 'prod-mocha', 1, 16500, 0, '2025-12-28T11:19:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1435', 'hist-ticket-59-1435', 'cash', 43000, 'completed', '2025-12-28T11:19:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1436', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-28T10:11:34.000Z', '2025-12-28T10:11:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1436-1', 'hist-ticket-59-1436', 'prod-mocha', 1, 16500, 0, '2025-12-28T10:11:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1436', 'hist-ticket-59-1436', 'cash', 16500, 'completed', '2025-12-28T10:11:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1437', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-28T19:12:47.000Z', '2025-12-28T19:12:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1437-1', 'hist-ticket-59-1437', 'prod-americano', 1, 12000, 0, '2025-12-28T19:12:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1437-2', 'hist-ticket-59-1437', 'prod-americano', 1, 12000, 0, '2025-12-28T19:12:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1437-3', 'hist-ticket-59-1437', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T19:12:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1437', 'hist-ticket-59-1437', 'cash', 38500, 'completed', '2025-12-28T19:12:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1438', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-28T14:07:54.000Z', '2025-12-28T14:07:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1438-1', 'hist-ticket-59-1438', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T14:07:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1438-2', 'hist-ticket-59-1438', 'prod-latte', 1, 15000, 0, '2025-12-28T14:07:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1438', 'hist-ticket-59-1438', 'cash', 29500, 'completed', '2025-12-28T14:07:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1439', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-28T12:28:11.000Z', '2025-12-28T12:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1439-1', 'hist-ticket-59-1439', 'prod-americano', 1, 12000, 0, '2025-12-28T12:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1439-2', 'hist-ticket-59-1439', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T12:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1439-3', 'hist-ticket-59-1439', 'prod-americano', 1, 12000, 0, '2025-12-28T12:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1439-4', 'hist-ticket-59-1439', 'prod-americano', 1, 12000, 0, '2025-12-28T12:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1439', 'hist-ticket-59-1439', 'cash', 50500, 'completed', '2025-12-28T12:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1440', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-28T12:14:35.000Z', '2025-12-28T12:14:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1440-1', 'hist-ticket-59-1440', 'prod-latte', 1, 15000, 0, '2025-12-28T12:14:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1440-2', 'hist-ticket-59-1440', 'prod-latte', 1, 15000, 0, '2025-12-28T12:14:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1440-3', 'hist-ticket-59-1440', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T12:14:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1440', 'hist-ticket-59-1440', 'cash', 44500, 'completed', '2025-12-28T12:14:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1441', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-12-28T11:07:57.000Z', '2025-12-28T11:07:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1441-1', 'hist-ticket-59-1441', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T11:07:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1441-2', 'hist-ticket-59-1441', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T11:07:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1441-3', 'hist-ticket-59-1441', 'prod-americano', 1, 12000, 0, '2025-12-28T11:07:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1441-4', 'hist-ticket-59-1441', 'prod-latte', 1, 15000, 0, '2025-12-28T11:07:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1441', 'hist-ticket-59-1441', 'cash', 56000, 'completed', '2025-12-28T11:07:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1442', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-28T08:34:48.000Z', '2025-12-28T08:34:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1442-1', 'hist-ticket-59-1442', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T08:34:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1442-2', 'hist-ticket-59-1442', 'prod-latte', 1, 15000, 0, '2025-12-28T08:34:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1442-3', 'hist-ticket-59-1442', 'prod-americano', 1, 12000, 0, '2025-12-28T08:34:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1442', 'hist-ticket-59-1442', 'cash', 41500, 'completed', '2025-12-28T08:34:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1443', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-28T10:09:55.000Z', '2025-12-28T10:09:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1443-1', 'hist-ticket-59-1443', 'prod-latte', 1, 15000, 0, '2025-12-28T10:09:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1443', 'hist-ticket-59-1443', 'cash', 15000, 'completed', '2025-12-28T10:09:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1444', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-12-28T09:45:15.000Z', '2025-12-28T09:45:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1444-1', 'hist-ticket-59-1444', 'prod-latte', 1, 15000, 0, '2025-12-28T09:45:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1444-2', 'hist-ticket-59-1444', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T09:45:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1444-3', 'hist-ticket-59-1444', 'prod-americano', 1, 12000, 0, '2025-12-28T09:45:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1444-4', 'hist-ticket-59-1444', 'prod-latte', 1, 15000, 0, '2025-12-28T09:45:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1444', 'hist-ticket-59-1444', 'cash', 56500, 'completed', '2025-12-28T09:45:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1445', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-28T15:06:22.000Z', '2025-12-28T15:06:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1445-1', 'hist-ticket-59-1445', 'prod-americano', 1, 12000, 0, '2025-12-28T15:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1445-2', 'hist-ticket-59-1445', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T15:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1445-3', 'hist-ticket-59-1445', 'prod-latte', 1, 15000, 0, '2025-12-28T15:06:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1445-4', 'hist-ticket-59-1445', 'prod-mocha', 1, 16500, 0, '2025-12-28T15:06:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1445', 'hist-ticket-59-1445', 'cash', 58000, 'completed', '2025-12-28T15:06:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1446', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-28T14:57:03.000Z', '2025-12-28T14:57:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1446-1', 'hist-ticket-59-1446', 'prod-mocha', 1, 16500, 0, '2025-12-28T14:57:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1446-2', 'hist-ticket-59-1446', 'prod-mocha', 1, 16500, 0, '2025-12-28T14:57:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1446', 'hist-ticket-59-1446', 'cash', 33000, 'completed', '2025-12-28T14:57:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1447', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-28T13:46:06.000Z', '2025-12-28T13:46:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1447-1', 'hist-ticket-59-1447', 'prod-americano', 1, 12000, 0, '2025-12-28T13:46:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1447', 'hist-ticket-59-1447', 'cash', 12000, 'completed', '2025-12-28T13:46:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1448', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-28T10:20:02.000Z', '2025-12-28T10:20:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1448-1', 'hist-ticket-59-1448', 'prod-mocha', 1, 16500, 0, '2025-12-28T10:20:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1448-2', 'hist-ticket-59-1448', 'prod-cappuccino', 1, 14500, 0, '2025-12-28T10:20:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1448', 'hist-ticket-59-1448', 'cash', 31000, 'completed', '2025-12-28T10:20:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1449', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-28T12:21:14.000Z', '2025-12-28T12:21:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1449-1', 'hist-ticket-59-1449', 'prod-mocha', 1, 16500, 0, '2025-12-28T12:21:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1449-2', 'hist-ticket-59-1449', 'prod-latte', 1, 15000, 0, '2025-12-28T12:21:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1449-3', 'hist-ticket-59-1449', 'prod-americano', 1, 12000, 0, '2025-12-28T12:21:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-59-1449', 'hist-ticket-59-1449', 'cash', 43500, 'completed', '2025-12-28T12:21:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-59-1450', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-28T16:53:03.000Z', '2025-12-28T16:53:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1450-1', 'hist-ticket-59-1450', 'prod-latte', 1, 15000, 0, '2025-12-28T16:53:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-59-1450-2', 'hist-ticket-59-1450', 'prod-latte', 1, 15000, 0, '2025-12-28T16:53:03.000Z');