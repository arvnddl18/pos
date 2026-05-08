INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-64-1562', 'hist-ticket-64-1562', 'cash', 29500, 'completed', '2026-01-02T19:00:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1563', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-03T15:41:44.000Z', '2026-01-03T15:41:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1563-1', 'hist-ticket-65-1563', 'prod-mocha', 1, 16500, 0, '2026-01-03T15:41:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1563-2', 'hist-ticket-65-1563', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:41:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1563-3', 'hist-ticket-65-1563', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:41:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1563-4', 'hist-ticket-65-1563', 'prod-mocha', 1, 16500, 0, '2026-01-03T15:41:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1563', 'hist-ticket-65-1563', 'cash', 62000, 'completed', '2026-01-03T15:41:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1564', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-03T15:41:48.000Z', '2026-01-03T15:41:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1564-1', 'hist-ticket-65-1564', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:41:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1564-2', 'hist-ticket-65-1564', 'prod-americano', 1, 12000, 0, '2026-01-03T15:41:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1564', 'hist-ticket-65-1564', 'cash', 26500, 'completed', '2026-01-03T15:41:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1565', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-03T16:56:08.000Z', '2026-01-03T16:56:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1565-1', 'hist-ticket-65-1565', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T16:56:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1565', 'hist-ticket-65-1565', 'cash', 14500, 'completed', '2026-01-03T16:56:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1566', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-03T15:48:18.000Z', '2026-01-03T15:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1566-1', 'hist-ticket-65-1566', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1566-2', 'hist-ticket-65-1566', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1566-3', 'hist-ticket-65-1566', 'prod-mocha', 1, 16500, 0, '2026-01-03T15:48:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1566', 'hist-ticket-65-1566', 'cash', 45500, 'completed', '2026-01-03T15:48:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1567', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-03T16:12:44.000Z', '2026-01-03T16:12:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1567-1', 'hist-ticket-65-1567', 'prod-americano', 1, 12000, 0, '2026-01-03T16:12:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1567-2', 'hist-ticket-65-1567', 'prod-latte', 1, 15000, 0, '2026-01-03T16:12:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1567-3', 'hist-ticket-65-1567', 'prod-mocha', 1, 16500, 0, '2026-01-03T16:12:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1567', 'hist-ticket-65-1567', 'cash', 43500, 'completed', '2026-01-03T16:12:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1568', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-01-03T13:10:34.000Z', '2026-01-03T13:10:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1568-1', 'hist-ticket-65-1568', 'prod-americano', 1, 12000, 0, '2026-01-03T13:10:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1568-2', 'hist-ticket-65-1568', 'prod-americano', 1, 12000, 0, '2026-01-03T13:10:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1568-3', 'hist-ticket-65-1568', 'prod-americano', 1, 12000, 0, '2026-01-03T13:10:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1568-4', 'hist-ticket-65-1568', 'prod-latte', 1, 15000, 0, '2026-01-03T13:10:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1568', 'hist-ticket-65-1568', 'cash', 51000, 'completed', '2026-01-03T13:10:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1569', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-03T19:18:28.000Z', '2026-01-03T19:18:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1569-1', 'hist-ticket-65-1569', 'prod-latte', 1, 15000, 0, '2026-01-03T19:18:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1569', 'hist-ticket-65-1569', 'cash', 15000, 'completed', '2026-01-03T19:18:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1570', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-03T15:29:14.000Z', '2026-01-03T15:29:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1570-1', 'hist-ticket-65-1570', 'prod-americano', 1, 12000, 0, '2026-01-03T15:29:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1570-2', 'hist-ticket-65-1570', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T15:29:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1570-3', 'hist-ticket-65-1570', 'prod-americano', 1, 12000, 0, '2026-01-03T15:29:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1570', 'hist-ticket-65-1570', 'cash', 38500, 'completed', '2026-01-03T15:29:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1571', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-01-03T13:08:49.000Z', '2026-01-03T13:08:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1571-1', 'hist-ticket-65-1571', 'prod-mocha', 1, 16500, 0, '2026-01-03T13:08:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1571-2', 'hist-ticket-65-1571', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T13:08:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1571-3', 'hist-ticket-65-1571', 'prod-latte', 1, 15000, 0, '2026-01-03T13:08:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1571', 'hist-ticket-65-1571', 'cash', 46000, 'completed', '2026-01-03T13:08:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1572', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-01-03T08:06:19.000Z', '2026-01-03T08:06:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1572-1', 'hist-ticket-65-1572', 'prod-latte', 1, 15000, 0, '2026-01-03T08:06:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1572', 'hist-ticket-65-1572', 'cash', 15000, 'completed', '2026-01-03T08:06:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1573', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-03T08:40:32.000Z', '2026-01-03T08:40:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1573-1', 'hist-ticket-65-1573', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T08:40:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1573-2', 'hist-ticket-65-1573', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:40:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1573-3', 'hist-ticket-65-1573', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T08:40:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1573-4', 'hist-ticket-65-1573', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:40:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1573', 'hist-ticket-65-1573', 'cash', 62000, 'completed', '2026-01-03T08:40:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1574', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-03T08:54:56.000Z', '2026-01-03T08:54:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1574-1', 'hist-ticket-65-1574', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:54:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1574-2', 'hist-ticket-65-1574', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T08:54:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1574-3', 'hist-ticket-65-1574', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T08:54:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1574', 'hist-ticket-65-1574', 'cash', 45500, 'completed', '2026-01-03T08:54:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1575', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-03T13:40:11.000Z', '2026-01-03T13:40:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1575-1', 'hist-ticket-65-1575', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T13:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1575-2', 'hist-ticket-65-1575', 'prod-americano', 1, 12000, 0, '2026-01-03T13:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1575-3', 'hist-ticket-65-1575', 'prod-americano', 1, 12000, 0, '2026-01-03T13:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1575-4', 'hist-ticket-65-1575', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T13:40:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1575', 'hist-ticket-65-1575', 'cash', 53000, 'completed', '2026-01-03T13:40:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1576', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-03T09:09:03.000Z', '2026-01-03T09:09:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1576-1', 'hist-ticket-65-1576', 'prod-americano', 1, 12000, 0, '2026-01-03T09:09:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1576', 'hist-ticket-65-1576', 'cash', 12000, 'completed', '2026-01-03T09:09:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1577', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-03T11:21:02.000Z', '2026-01-03T11:21:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1577-1', 'hist-ticket-65-1577', 'prod-mocha', 1, 16500, 0, '2026-01-03T11:21:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1577-2', 'hist-ticket-65-1577', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T11:21:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1577-3', 'hist-ticket-65-1577', 'prod-mocha', 1, 16500, 0, '2026-01-03T11:21:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1577-4', 'hist-ticket-65-1577', 'prod-mocha', 1, 16500, 0, '2026-01-03T11:21:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1577', 'hist-ticket-65-1577', 'cash', 64000, 'completed', '2026-01-03T11:21:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1578', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-03T18:01:44.000Z', '2026-01-03T18:01:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1578-1', 'hist-ticket-65-1578', 'prod-mocha', 1, 16500, 0, '2026-01-03T18:01:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1578-2', 'hist-ticket-65-1578', 'prod-latte', 1, 15000, 0, '2026-01-03T18:01:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1578-3', 'hist-ticket-65-1578', 'prod-latte', 1, 15000, 0, '2026-01-03T18:01:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1578-4', 'hist-ticket-65-1578', 'prod-latte', 1, 15000, 0, '2026-01-03T18:01:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1578', 'hist-ticket-65-1578', 'cash', 61500, 'completed', '2026-01-03T18:01:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1579', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-03T08:31:01.000Z', '2026-01-03T08:31:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1579-1', 'hist-ticket-65-1579', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:31:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1579-2', 'hist-ticket-65-1579', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:31:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1579', 'hist-ticket-65-1579', 'cash', 33000, 'completed', '2026-01-03T08:31:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1580', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-03T18:25:55.000Z', '2026-01-03T18:25:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1580-1', 'hist-ticket-65-1580', 'prod-latte', 1, 15000, 0, '2026-01-03T18:25:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1580', 'hist-ticket-65-1580', 'cash', 15000, 'completed', '2026-01-03T18:25:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1581', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-03T11:11:11.000Z', '2026-01-03T11:11:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1581-1', 'hist-ticket-65-1581', 'prod-latte', 1, 15000, 0, '2026-01-03T11:11:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1581-2', 'hist-ticket-65-1581', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T11:11:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1581-3', 'hist-ticket-65-1581', 'prod-latte', 1, 15000, 0, '2026-01-03T11:11:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1581', 'hist-ticket-65-1581', 'cash', 44500, 'completed', '2026-01-03T11:11:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1582', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-03T19:05:34.000Z', '2026-01-03T19:05:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1582-1', 'hist-ticket-65-1582', 'prod-americano', 1, 12000, 0, '2026-01-03T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1582-2', 'hist-ticket-65-1582', 'prod-americano', 1, 12000, 0, '2026-01-03T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1582-3', 'hist-ticket-65-1582', 'prod-mocha', 1, 16500, 0, '2026-01-03T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1582-4', 'hist-ticket-65-1582', 'prod-americano', 1, 12000, 0, '2026-01-03T19:05:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1582', 'hist-ticket-65-1582', 'cash', 52500, 'completed', '2026-01-03T19:05:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1583', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-03T19:05:17.000Z', '2026-01-03T19:05:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1583-1', 'hist-ticket-65-1583', 'prod-latte', 1, 15000, 0, '2026-01-03T19:05:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1583-2', 'hist-ticket-65-1583', 'prod-latte', 1, 15000, 0, '2026-01-03T19:05:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1583', 'hist-ticket-65-1583', 'cash', 30000, 'completed', '2026-01-03T19:05:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1584', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-03T16:08:55.000Z', '2026-01-03T16:08:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1584-1', 'hist-ticket-65-1584', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T16:08:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1584-2', 'hist-ticket-65-1584', 'prod-latte', 1, 15000, 0, '2026-01-03T16:08:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1584', 'hist-ticket-65-1584', 'cash', 29500, 'completed', '2026-01-03T16:08:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1585', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-03T14:04:53.000Z', '2026-01-03T14:04:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1585-1', 'hist-ticket-65-1585', 'prod-americano', 1, 12000, 0, '2026-01-03T14:04:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1585', 'hist-ticket-65-1585', 'cash', 12000, 'completed', '2026-01-03T14:04:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1586', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-01-03T15:46:37.000Z', '2026-01-03T15:46:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1586-1', 'hist-ticket-65-1586', 'prod-americano', 1, 12000, 0, '2026-01-03T15:46:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1586', 'hist-ticket-65-1586', 'cash', 12000, 'completed', '2026-01-03T15:46:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1587', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-03T10:10:46.000Z', '2026-01-03T10:10:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1587-1', 'hist-ticket-65-1587', 'prod-americano', 1, 12000, 0, '2026-01-03T10:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1587-2', 'hist-ticket-65-1587', 'prod-americano', 1, 12000, 0, '2026-01-03T10:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1587-3', 'hist-ticket-65-1587', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T10:10:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1587', 'hist-ticket-65-1587', 'cash', 38500, 'completed', '2026-01-03T10:10:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1588', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-03T19:48:17.000Z', '2026-01-03T19:48:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1588-1', 'hist-ticket-65-1588', 'prod-latte', 1, 15000, 0, '2026-01-03T19:48:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1588-2', 'hist-ticket-65-1588', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T19:48:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1588-3', 'hist-ticket-65-1588', 'prod-americano', 1, 12000, 0, '2026-01-03T19:48:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1588-4', 'hist-ticket-65-1588', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T19:48:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1588', 'hist-ticket-65-1588', 'cash', 56000, 'completed', '2026-01-03T19:48:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1589', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-03T12:05:46.000Z', '2026-01-03T12:05:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1589-1', 'hist-ticket-65-1589', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T12:05:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1589', 'hist-ticket-65-1589', 'cash', 14500, 'completed', '2026-01-03T12:05:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1590', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-03T11:00:43.000Z', '2026-01-03T11:00:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1590-1', 'hist-ticket-65-1590', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T11:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1590-2', 'hist-ticket-65-1590', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T11:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1590-3', 'hist-ticket-65-1590', 'prod-americano', 1, 12000, 0, '2026-01-03T11:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1590-4', 'hist-ticket-65-1590', 'prod-mocha', 1, 16500, 0, '2026-01-03T11:00:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1590', 'hist-ticket-65-1590', 'cash', 57500, 'completed', '2026-01-03T11:00:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1591', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-03T14:58:48.000Z', '2026-01-03T14:58:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1591-1', 'hist-ticket-65-1591', 'prod-latte', 1, 15000, 0, '2026-01-03T14:58:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1591-2', 'hist-ticket-65-1591', 'prod-americano', 1, 12000, 0, '2026-01-03T14:58:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1591-3', 'hist-ticket-65-1591', 'prod-latte', 1, 15000, 0, '2026-01-03T14:58:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1591', 'hist-ticket-65-1591', 'cash', 42000, 'completed', '2026-01-03T14:58:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1592', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-01-03T12:02:13.000Z', '2026-01-03T12:02:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1592-1', 'hist-ticket-65-1592', 'prod-americano', 1, 12000, 0, '2026-01-03T12:02:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1592-2', 'hist-ticket-65-1592', 'prod-latte', 1, 15000, 0, '2026-01-03T12:02:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1592-3', 'hist-ticket-65-1592', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T12:02:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1592-4', 'hist-ticket-65-1592', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T12:02:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1592', 'hist-ticket-65-1592', 'cash', 56000, 'completed', '2026-01-03T12:02:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1593', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-03T08:38:44.000Z', '2026-01-03T08:38:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1593-1', 'hist-ticket-65-1593', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T08:38:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1593-2', 'hist-ticket-65-1593', 'prod-mocha', 1, 16500, 0, '2026-01-03T08:38:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1593', 'hist-ticket-65-1593', 'cash', 31000, 'completed', '2026-01-03T08:38:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1594', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-03T18:13:13.000Z', '2026-01-03T18:13:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1594-1', 'hist-ticket-65-1594', 'prod-latte', 1, 15000, 0, '2026-01-03T18:13:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1594', 'hist-ticket-65-1594', 'cash', 15000, 'completed', '2026-01-03T18:13:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1595', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-03T19:16:50.000Z', '2026-01-03T19:16:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1595-1', 'hist-ticket-65-1595', 'prod-latte', 1, 15000, 0, '2026-01-03T19:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1595-2', 'hist-ticket-65-1595', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T19:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1595-3', 'hist-ticket-65-1595', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T19:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1595-4', 'hist-ticket-65-1595', 'prod-americano', 1, 12000, 0, '2026-01-03T19:16:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1595', 'hist-ticket-65-1595', 'cash', 56000, 'completed', '2026-01-03T19:16:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1596', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-01-03T18:10:47.000Z', '2026-01-03T18:10:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1596-1', 'hist-ticket-65-1596', 'prod-latte', 1, 15000, 0, '2026-01-03T18:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1596-2', 'hist-ticket-65-1596', 'prod-latte', 1, 15000, 0, '2026-01-03T18:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1596-3', 'hist-ticket-65-1596', 'prod-mocha', 1, 16500, 0, '2026-01-03T18:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1596-4', 'hist-ticket-65-1596', 'prod-mocha', 1, 16500, 0, '2026-01-03T18:10:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1596', 'hist-ticket-65-1596', 'cash', 63000, 'completed', '2026-01-03T18:10:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1597', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-03T16:00:46.000Z', '2026-01-03T16:00:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1597-1', 'hist-ticket-65-1597', 'prod-latte', 1, 15000, 0, '2026-01-03T16:00:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1597-2', 'hist-ticket-65-1597', 'prod-cappuccino', 1, 14500, 0, '2026-01-03T16:00:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1597-3', 'hist-ticket-65-1597', 'prod-americano', 1, 12000, 0, '2026-01-03T16:00:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1597-4', 'hist-ticket-65-1597', 'prod-latte', 1, 15000, 0, '2026-01-03T16:00:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1597', 'hist-ticket-65-1597', 'cash', 56500, 'completed', '2026-01-03T16:00:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-65-1598', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-03T16:11:39.000Z', '2026-01-03T16:11:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1598-1', 'hist-ticket-65-1598', 'prod-americano', 1, 12000, 0, '2026-01-03T16:11:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1598-2', 'hist-ticket-65-1598', 'prod-americano', 1, 12000, 0, '2026-01-03T16:11:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1598-3', 'hist-ticket-65-1598', 'prod-mocha', 1, 16500, 0, '2026-01-03T16:11:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-65-1598-4', 'hist-ticket-65-1598', 'prod-americano', 1, 12000, 0, '2026-01-03T16:11:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-65-1598', 'hist-ticket-65-1598', 'cash', 52500, 'completed', '2026-01-03T16:11:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1599', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-04T09:16:45.000Z', '2026-01-04T09:16:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1599-1', 'hist-ticket-66-1599', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:16:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1599', 'hist-ticket-66-1599', 'cash', 16500, 'completed', '2026-01-04T09:16:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1600', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-04T10:58:59.000Z', '2026-01-04T10:58:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1600-1', 'hist-ticket-66-1600', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T10:58:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1600-2', 'hist-ticket-66-1600', 'prod-latte', 1, 15000, 0, '2026-01-04T10:58:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1600', 'hist-ticket-66-1600', 'cash', 29500, 'completed', '2026-01-04T10:58:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1601', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-04T14:45:00.000Z', '2026-01-04T14:45:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1601-1', 'hist-ticket-66-1601', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T14:45:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1601', 'hist-ticket-66-1601', 'cash', 14500, 'completed', '2026-01-04T14:45:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1602', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-04T09:49:52.000Z', '2026-01-04T09:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1602-1', 'hist-ticket-66-1602', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:49:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1602', 'hist-ticket-66-1602', 'cash', 16500, 'completed', '2026-01-04T09:49:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1603', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-04T09:54:50.000Z', '2026-01-04T09:54:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1603-1', 'hist-ticket-66-1603', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:54:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1603-2', 'hist-ticket-66-1603', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:54:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1603-3', 'hist-ticket-66-1603', 'prod-latte', 1, 15000, 0, '2026-01-04T09:54:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1603-4', 'hist-ticket-66-1603', 'prod-americano', 1, 12000, 0, '2026-01-04T09:54:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1603', 'hist-ticket-66-1603', 'cash', 60000, 'completed', '2026-01-04T09:54:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1604', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-04T18:20:58.000Z', '2026-01-04T18:20:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1604-1', 'hist-ticket-66-1604', 'prod-americano', 1, 12000, 0, '2026-01-04T18:20:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1604-2', 'hist-ticket-66-1604', 'prod-latte', 1, 15000, 0, '2026-01-04T18:20:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1604', 'hist-ticket-66-1604', 'cash', 27000, 'completed', '2026-01-04T18:20:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1605', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-01-04T19:05:44.000Z', '2026-01-04T19:05:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1605-1', 'hist-ticket-66-1605', 'prod-americano', 1, 12000, 0, '2026-01-04T19:05:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1605-2', 'hist-ticket-66-1605', 'prod-americano', 1, 12000, 0, '2026-01-04T19:05:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1605', 'hist-ticket-66-1605', 'cash', 24000, 'completed', '2026-01-04T19:05:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1606', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-04T09:05:19.000Z', '2026-01-04T09:05:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1606-1', 'hist-ticket-66-1606', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T09:05:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1606-2', 'hist-ticket-66-1606', 'prod-latte', 1, 15000, 0, '2026-01-04T09:05:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1606', 'hist-ticket-66-1606', 'cash', 29500, 'completed', '2026-01-04T09:05:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1607', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-01-04T14:51:45.000Z', '2026-01-04T14:51:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1607-1', 'hist-ticket-66-1607', 'prod-americano', 1, 12000, 0, '2026-01-04T14:51:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1607-2', 'hist-ticket-66-1607', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T14:51:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1607-3', 'hist-ticket-66-1607', 'prod-americano', 1, 12000, 0, '2026-01-04T14:51:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1607-4', 'hist-ticket-66-1607', 'prod-mocha', 1, 16500, 0, '2026-01-04T14:51:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1607', 'hist-ticket-66-1607', 'cash', 55000, 'completed', '2026-01-04T14:51:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1608', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-04T13:20:17.000Z', '2026-01-04T13:20:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1608-1', 'hist-ticket-66-1608', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T13:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1608-2', 'hist-ticket-66-1608', 'prod-latte', 1, 15000, 0, '2026-01-04T13:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1608-3', 'hist-ticket-66-1608', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T13:20:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1608-4', 'hist-ticket-66-1608', 'prod-mocha', 1, 16500, 0, '2026-01-04T13:20:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1608', 'hist-ticket-66-1608', 'cash', 60500, 'completed', '2026-01-04T13:20:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1609', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-01-04T14:07:00.000Z', '2026-01-04T14:07:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1609-1', 'hist-ticket-66-1609', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T14:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1609-2', 'hist-ticket-66-1609', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T14:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1609-3', 'hist-ticket-66-1609', 'prod-mocha', 1, 16500, 0, '2026-01-04T14:07:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1609-4', 'hist-ticket-66-1609', 'prod-americano', 1, 12000, 0, '2026-01-04T14:07:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1609', 'hist-ticket-66-1609', 'cash', 57500, 'completed', '2026-01-04T14:07:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1610', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-04T11:56:40.000Z', '2026-01-04T11:56:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1610-1', 'hist-ticket-66-1610', 'prod-mocha', 1, 16500, 0, '2026-01-04T11:56:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1610-2', 'hist-ticket-66-1610', 'prod-americano', 1, 12000, 0, '2026-01-04T11:56:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1610', 'hist-ticket-66-1610', 'cash', 28500, 'completed', '2026-01-04T11:56:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1611', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-04T15:03:18.000Z', '2026-01-04T15:03:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1611-1', 'hist-ticket-66-1611', 'prod-latte', 1, 15000, 0, '2026-01-04T15:03:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1611', 'hist-ticket-66-1611', 'cash', 15000, 'completed', '2026-01-04T15:03:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1612', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-04T14:57:14.000Z', '2026-01-04T14:57:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1612-1', 'hist-ticket-66-1612', 'prod-latte', 1, 15000, 0, '2026-01-04T14:57:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1612', 'hist-ticket-66-1612', 'cash', 15000, 'completed', '2026-01-04T14:57:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1613', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-01-04T15:30:18.000Z', '2026-01-04T15:30:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1613-1', 'hist-ticket-66-1613', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T15:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1613-2', 'hist-ticket-66-1613', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T15:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1613-3', 'hist-ticket-66-1613', 'prod-mocha', 1, 16500, 0, '2026-01-04T15:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1613-4', 'hist-ticket-66-1613', 'prod-americano', 1, 12000, 0, '2026-01-04T15:30:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1613', 'hist-ticket-66-1613', 'cash', 57500, 'completed', '2026-01-04T15:30:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1614', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-04T15:53:42.000Z', '2026-01-04T15:53:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1614-1', 'hist-ticket-66-1614', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T15:53:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1614-2', 'hist-ticket-66-1614', 'prod-latte', 1, 15000, 0, '2026-01-04T15:53:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1614-3', 'hist-ticket-66-1614', 'prod-americano', 1, 12000, 0, '2026-01-04T15:53:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1614', 'hist-ticket-66-1614', 'cash', 41500, 'completed', '2026-01-04T15:53:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1615', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-04T12:52:33.000Z', '2026-01-04T12:52:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1615-1', 'hist-ticket-66-1615', 'prod-latte', 1, 15000, 0, '2026-01-04T12:52:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1615-2', 'hist-ticket-66-1615', 'prod-americano', 1, 12000, 0, '2026-01-04T12:52:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1615-3', 'hist-ticket-66-1615', 'prod-latte', 1, 15000, 0, '2026-01-04T12:52:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1615', 'hist-ticket-66-1615', 'cash', 42000, 'completed', '2026-01-04T12:52:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1616', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-01-04T16:44:12.000Z', '2026-01-04T16:44:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1616-1', 'hist-ticket-66-1616', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T16:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1616-2', 'hist-ticket-66-1616', 'prod-latte', 1, 15000, 0, '2026-01-04T16:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1616-3', 'hist-ticket-66-1616', 'prod-mocha', 1, 16500, 0, '2026-01-04T16:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1616-4', 'hist-ticket-66-1616', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T16:44:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1616', 'hist-ticket-66-1616', 'cash', 60500, 'completed', '2026-01-04T16:44:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1617', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-04T13:57:46.000Z', '2026-01-04T13:57:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1617-1', 'hist-ticket-66-1617', 'prod-latte', 1, 15000, 0, '2026-01-04T13:57:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1617-2', 'hist-ticket-66-1617', 'prod-mocha', 1, 16500, 0, '2026-01-04T13:57:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1617-3', 'hist-ticket-66-1617', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T13:57:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1617', 'hist-ticket-66-1617', 'cash', 46000, 'completed', '2026-01-04T13:57:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1618', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-04T13:41:36.000Z', '2026-01-04T13:41:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1618-1', 'hist-ticket-66-1618', 'prod-americano', 1, 12000, 0, '2026-01-04T13:41:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1618', 'hist-ticket-66-1618', 'cash', 12000, 'completed', '2026-01-04T13:41:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1619', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-04T09:10:03.000Z', '2026-01-04T09:10:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1619-1', 'hist-ticket-66-1619', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:10:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1619-2', 'hist-ticket-66-1619', 'prod-mocha', 1, 16500, 0, '2026-01-04T09:10:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1619', 'hist-ticket-66-1619', 'cash', 33000, 'completed', '2026-01-04T09:10:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1620', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-04T09:52:51.000Z', '2026-01-04T09:52:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1620-1', 'hist-ticket-66-1620', 'prod-latte', 1, 15000, 0, '2026-01-04T09:52:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1620-2', 'hist-ticket-66-1620', 'prod-latte', 1, 15000, 0, '2026-01-04T09:52:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1620-3', 'hist-ticket-66-1620', 'prod-latte', 1, 15000, 0, '2026-01-04T09:52:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1620', 'hist-ticket-66-1620', 'cash', 45000, 'completed', '2026-01-04T09:52:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1621', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-04T17:34:07.000Z', '2026-01-04T17:34:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1621-1', 'hist-ticket-66-1621', 'prod-mocha', 1, 16500, 0, '2026-01-04T17:34:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1621-2', 'hist-ticket-66-1621', 'prod-latte', 1, 15000, 0, '2026-01-04T17:34:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1621-3', 'hist-ticket-66-1621', 'prod-americano', 1, 12000, 0, '2026-01-04T17:34:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1621-4', 'hist-ticket-66-1621', 'prod-latte', 1, 15000, 0, '2026-01-04T17:34:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1621', 'hist-ticket-66-1621', 'cash', 58500, 'completed', '2026-01-04T17:34:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1622', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-04T19:42:58.000Z', '2026-01-04T19:42:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1622-1', 'hist-ticket-66-1622', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T19:42:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1622-2', 'hist-ticket-66-1622', 'prod-mocha', 1, 16500, 0, '2026-01-04T19:42:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1622-3', 'hist-ticket-66-1622', 'prod-latte', 1, 15000, 0, '2026-01-04T19:42:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1622', 'hist-ticket-66-1622', 'cash', 46000, 'completed', '2026-01-04T19:42:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1623', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-04T12:22:25.000Z', '2026-01-04T12:22:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1623-1', 'hist-ticket-66-1623', 'prod-mocha', 1, 16500, 0, '2026-01-04T12:22:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1623-2', 'hist-ticket-66-1623', 'prod-mocha', 1, 16500, 0, '2026-01-04T12:22:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1623-3', 'hist-ticket-66-1623', 'prod-latte', 1, 15000, 0, '2026-01-04T12:22:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1623', 'hist-ticket-66-1623', 'cash', 48000, 'completed', '2026-01-04T12:22:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1624', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-01-04T08:52:03.000Z', '2026-01-04T08:52:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1624-1', 'hist-ticket-66-1624', 'prod-mocha', 1, 16500, 0, '2026-01-04T08:52:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1624-2', 'hist-ticket-66-1624', 'prod-latte', 1, 15000, 0, '2026-01-04T08:52:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1624-3', 'hist-ticket-66-1624', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T08:52:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1624-4', 'hist-ticket-66-1624', 'prod-americano', 1, 12000, 0, '2026-01-04T08:52:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1624', 'hist-ticket-66-1624', 'cash', 58000, 'completed', '2026-01-04T08:52:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1625', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-04T11:21:17.000Z', '2026-01-04T11:21:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1625-1', 'hist-ticket-66-1625', 'prod-americano', 1, 12000, 0, '2026-01-04T11:21:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1625-2', 'hist-ticket-66-1625', 'prod-americano', 1, 12000, 0, '2026-01-04T11:21:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1625-3', 'hist-ticket-66-1625', 'prod-americano', 1, 12000, 0, '2026-01-04T11:21:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1625', 'hist-ticket-66-1625', 'cash', 36000, 'completed', '2026-01-04T11:21:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-66-1626', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-04T13:30:27.000Z', '2026-01-04T13:30:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1626-1', 'hist-ticket-66-1626', 'prod-americano', 1, 12000, 0, '2026-01-04T13:30:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-66-1626-2', 'hist-ticket-66-1626', 'prod-cappuccino', 1, 14500, 0, '2026-01-04T13:30:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-66-1626', 'hist-ticket-66-1626', 'cash', 26500, 'completed', '2026-01-04T13:30:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1627', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-05T16:17:32.000Z', '2026-01-05T16:17:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1627-1', 'hist-ticket-67-1627', 'prod-americano', 1, 12000, 0, '2026-01-05T16:17:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1627-2', 'hist-ticket-67-1627', 'prod-americano', 1, 12000, 0, '2026-01-05T16:17:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1627-3', 'hist-ticket-67-1627', 'prod-americano', 1, 12000, 0, '2026-01-05T16:17:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1627-4', 'hist-ticket-67-1627', 'prod-latte', 1, 15000, 0, '2026-01-05T16:17:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1627', 'hist-ticket-67-1627', 'cash', 51000, 'completed', '2026-01-05T16:17:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1628', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-05T10:24:55.000Z', '2026-01-05T10:24:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1628-1', 'hist-ticket-67-1628', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T10:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1628-2', 'hist-ticket-67-1628', 'prod-americano', 1, 12000, 0, '2026-01-05T10:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1628-3', 'hist-ticket-67-1628', 'prod-latte', 1, 15000, 0, '2026-01-05T10:24:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1628', 'hist-ticket-67-1628', 'cash', 41500, 'completed', '2026-01-05T10:24:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1629', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-05T08:34:26.000Z', '2026-01-05T08:34:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1629-1', 'hist-ticket-67-1629', 'prod-latte', 1, 15000, 0, '2026-01-05T08:34:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1629-2', 'hist-ticket-67-1629', 'prod-americano', 1, 12000, 0, '2026-01-05T08:34:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1629-3', 'hist-ticket-67-1629', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T08:34:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1629-4', 'hist-ticket-67-1629', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T08:34:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1629', 'hist-ticket-67-1629', 'cash', 56000, 'completed', '2026-01-05T08:34:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1630', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-05T11:34:37.000Z', '2026-01-05T11:34:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1630-1', 'hist-ticket-67-1630', 'prod-americano', 1, 12000, 0, '2026-01-05T11:34:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1630', 'hist-ticket-67-1630', 'cash', 12000, 'completed', '2026-01-05T11:34:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1631', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-05T15:13:39.000Z', '2026-01-05T15:13:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1631-1', 'hist-ticket-67-1631', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T15:13:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1631-2', 'hist-ticket-67-1631', 'prod-mocha', 1, 16500, 0, '2026-01-05T15:13:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1631', 'hist-ticket-67-1631', 'cash', 31000, 'completed', '2026-01-05T15:13:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1632', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-05T10:55:03.000Z', '2026-01-05T10:55:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1632-1', 'hist-ticket-67-1632', 'prod-mocha', 1, 16500, 0, '2026-01-05T10:55:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1632', 'hist-ticket-67-1632', 'cash', 16500, 'completed', '2026-01-05T10:55:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1633', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-05T18:56:51.000Z', '2026-01-05T18:56:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1633-1', 'hist-ticket-67-1633', 'prod-latte', 1, 15000, 0, '2026-01-05T18:56:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1633', 'hist-ticket-67-1633', 'cash', 15000, 'completed', '2026-01-05T18:56:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1634', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-01-05T16:29:45.000Z', '2026-01-05T16:29:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1634-1', 'hist-ticket-67-1634', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T16:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1634-2', 'hist-ticket-67-1634', 'prod-mocha', 1, 16500, 0, '2026-01-05T16:29:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1634', 'hist-ticket-67-1634', 'cash', 31000, 'completed', '2026-01-05T16:29:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1635', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-05T09:18:43.000Z', '2026-01-05T09:18:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1635-1', 'hist-ticket-67-1635', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T09:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1635-2', 'hist-ticket-67-1635', 'prod-latte', 1, 15000, 0, '2026-01-05T09:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1635-3', 'hist-ticket-67-1635', 'prod-americano', 1, 12000, 0, '2026-01-05T09:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1635-4', 'hist-ticket-67-1635', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T09:18:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1635', 'hist-ticket-67-1635', 'cash', 56000, 'completed', '2026-01-05T09:18:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1636', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-05T12:42:14.000Z', '2026-01-05T12:42:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1636-1', 'hist-ticket-67-1636', 'prod-americano', 1, 12000, 0, '2026-01-05T12:42:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1636-2', 'hist-ticket-67-1636', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T12:42:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1636', 'hist-ticket-67-1636', 'cash', 26500, 'completed', '2026-01-05T12:42:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1637', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-05T12:23:41.000Z', '2026-01-05T12:23:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1637-1', 'hist-ticket-67-1637', 'prod-latte', 1, 15000, 0, '2026-01-05T12:23:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1637-2', 'hist-ticket-67-1637', 'prod-mocha', 1, 16500, 0, '2026-01-05T12:23:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1637', 'hist-ticket-67-1637', 'cash', 31500, 'completed', '2026-01-05T12:23:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1638', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-05T14:13:11.000Z', '2026-01-05T14:13:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1638-1', 'hist-ticket-67-1638', 'prod-mocha', 1, 16500, 0, '2026-01-05T14:13:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1638-2', 'hist-ticket-67-1638', 'prod-latte', 1, 15000, 0, '2026-01-05T14:13:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1638', 'hist-ticket-67-1638', 'cash', 31500, 'completed', '2026-01-05T14:13:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1639', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-05T08:55:30.000Z', '2026-01-05T08:55:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1639-1', 'hist-ticket-67-1639', 'prod-americano', 1, 12000, 0, '2026-01-05T08:55:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1639-2', 'hist-ticket-67-1639', 'prod-americano', 1, 12000, 0, '2026-01-05T08:55:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1639-3', 'hist-ticket-67-1639', 'prod-americano', 1, 12000, 0, '2026-01-05T08:55:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1639', 'hist-ticket-67-1639', 'cash', 36000, 'completed', '2026-01-05T08:55:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1640', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-01-05T13:50:59.000Z', '2026-01-05T13:50:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1640-1', 'hist-ticket-67-1640', 'prod-mocha', 1, 16500, 0, '2026-01-05T13:50:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1640-2', 'hist-ticket-67-1640', 'prod-latte', 1, 15000, 0, '2026-01-05T13:50:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1640-3', 'hist-ticket-67-1640', 'prod-mocha', 1, 16500, 0, '2026-01-05T13:50:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1640-4', 'hist-ticket-67-1640', 'prod-mocha', 1, 16500, 0, '2026-01-05T13:50:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1640', 'hist-ticket-67-1640', 'cash', 64500, 'completed', '2026-01-05T13:50:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1641', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-05T18:47:23.000Z', '2026-01-05T18:47:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1641-1', 'hist-ticket-67-1641', 'prod-americano', 1, 12000, 0, '2026-01-05T18:47:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1641-2', 'hist-ticket-67-1641', 'prod-americano', 1, 12000, 0, '2026-01-05T18:47:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1641', 'hist-ticket-67-1641', 'cash', 24000, 'completed', '2026-01-05T18:47:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1642', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-05T17:07:51.000Z', '2026-01-05T17:07:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1642-1', 'hist-ticket-67-1642', 'prod-latte', 1, 15000, 0, '2026-01-05T17:07:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1642-2', 'hist-ticket-67-1642', 'prod-latte', 1, 15000, 0, '2026-01-05T17:07:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1642-3', 'hist-ticket-67-1642', 'prod-latte', 1, 15000, 0, '2026-01-05T17:07:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1642', 'hist-ticket-67-1642', 'cash', 45000, 'completed', '2026-01-05T17:07:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1643', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-05T14:15:59.000Z', '2026-01-05T14:15:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1643-1', 'hist-ticket-67-1643', 'prod-latte', 1, 15000, 0, '2026-01-05T14:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1643-2', 'hist-ticket-67-1643', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T14:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1643-3', 'hist-ticket-67-1643', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T14:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1643-4', 'hist-ticket-67-1643', 'prod-mocha', 1, 16500, 0, '2026-01-05T14:15:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1643', 'hist-ticket-67-1643', 'cash', 60500, 'completed', '2026-01-05T14:15:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-67-1644', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-05T15:18:28.000Z', '2026-01-05T15:18:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1644-1', 'hist-ticket-67-1644', 'prod-americano', 1, 12000, 0, '2026-01-05T15:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1644-2', 'hist-ticket-67-1644', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T15:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-67-1644-3', 'hist-ticket-67-1644', 'prod-cappuccino', 1, 14500, 0, '2026-01-05T15:18:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-67-1644', 'hist-ticket-67-1644', 'cash', 41000, 'completed', '2026-01-05T15:18:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1645', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-06T13:46:59.000Z', '2026-01-06T13:46:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1645-1', 'hist-ticket-68-1645', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T13:46:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1645-2', 'hist-ticket-68-1645', 'prod-americano', 1, 12000, 0, '2026-01-06T13:46:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1645-3', 'hist-ticket-68-1645', 'prod-americano', 1, 12000, 0, '2026-01-06T13:46:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1645-4', 'hist-ticket-68-1645', 'prod-mocha', 1, 16500, 0, '2026-01-06T13:46:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1645', 'hist-ticket-68-1645', 'cash', 55000, 'completed', '2026-01-06T13:46:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1646', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-06T16:10:56.000Z', '2026-01-06T16:10:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1646-1', 'hist-ticket-68-1646', 'prod-americano', 1, 12000, 0, '2026-01-06T16:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1646-2', 'hist-ticket-68-1646', 'prod-americano', 1, 12000, 0, '2026-01-06T16:10:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1646', 'hist-ticket-68-1646', 'cash', 24000, 'completed', '2026-01-06T16:10:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1647', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-06T15:48:52.000Z', '2026-01-06T15:48:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1647-1', 'hist-ticket-68-1647', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T15:48:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1647-2', 'hist-ticket-68-1647', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T15:48:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1647-3', 'hist-ticket-68-1647', 'prod-latte', 1, 15000, 0, '2026-01-06T15:48:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1647-4', 'hist-ticket-68-1647', 'prod-americano', 1, 12000, 0, '2026-01-06T15:48:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1647', 'hist-ticket-68-1647', 'cash', 56000, 'completed', '2026-01-06T15:48:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1648', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-01-06T09:42:12.000Z', '2026-01-06T09:42:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1648-1', 'hist-ticket-68-1648', 'prod-americano', 1, 12000, 0, '2026-01-06T09:42:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1648-2', 'hist-ticket-68-1648', 'prod-latte', 1, 15000, 0, '2026-01-06T09:42:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1648-3', 'hist-ticket-68-1648', 'prod-americano', 1, 12000, 0, '2026-01-06T09:42:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1648', 'hist-ticket-68-1648', 'cash', 39000, 'completed', '2026-01-06T09:42:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1649', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-06T10:05:30.000Z', '2026-01-06T10:05:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1649-1', 'hist-ticket-68-1649', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T10:05:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1649-2', 'hist-ticket-68-1649', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T10:05:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1649-3', 'hist-ticket-68-1649', 'prod-mocha', 1, 16500, 0, '2026-01-06T10:05:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1649-4', 'hist-ticket-68-1649', 'prod-latte', 1, 15000, 0, '2026-01-06T10:05:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1649', 'hist-ticket-68-1649', 'cash', 60500, 'completed', '2026-01-06T10:05:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1650', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-06T14:28:01.000Z', '2026-01-06T14:28:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1650-1', 'hist-ticket-68-1650', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T14:28:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1650-2', 'hist-ticket-68-1650', 'prod-americano', 1, 12000, 0, '2026-01-06T14:28:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1650', 'hist-ticket-68-1650', 'cash', 26500, 'completed', '2026-01-06T14:28:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1651', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-06T11:43:27.000Z', '2026-01-06T11:43:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1651-1', 'hist-ticket-68-1651', 'prod-mocha', 1, 16500, 0, '2026-01-06T11:43:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1651-2', 'hist-ticket-68-1651', 'prod-mocha', 1, 16500, 0, '2026-01-06T11:43:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1651-3', 'hist-ticket-68-1651', 'prod-latte', 1, 15000, 0, '2026-01-06T11:43:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1651', 'hist-ticket-68-1651', 'cash', 48000, 'completed', '2026-01-06T11:43:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1652', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-01-06T11:07:05.000Z', '2026-01-06T11:07:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1652-1', 'hist-ticket-68-1652', 'prod-americano', 1, 12000, 0, '2026-01-06T11:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1652-2', 'hist-ticket-68-1652', 'prod-latte', 1, 15000, 0, '2026-01-06T11:07:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1652', 'hist-ticket-68-1652', 'cash', 27000, 'completed', '2026-01-06T11:07:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1653', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-06T13:22:02.000Z', '2026-01-06T13:22:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1653-1', 'hist-ticket-68-1653', 'prod-mocha', 1, 16500, 0, '2026-01-06T13:22:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1653-2', 'hist-ticket-68-1653', 'prod-mocha', 1, 16500, 0, '2026-01-06T13:22:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1653', 'hist-ticket-68-1653', 'cash', 33000, 'completed', '2026-01-06T13:22:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1654', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-06T15:48:48.000Z', '2026-01-06T15:48:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1654-1', 'hist-ticket-68-1654', 'prod-americano', 1, 12000, 0, '2026-01-06T15:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1654-2', 'hist-ticket-68-1654', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T15:48:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1654-3', 'hist-ticket-68-1654', 'prod-mocha', 1, 16500, 0, '2026-01-06T15:48:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1654', 'hist-ticket-68-1654', 'cash', 43000, 'completed', '2026-01-06T15:48:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1655', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-01-06T16:23:12.000Z', '2026-01-06T16:23:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1655-1', 'hist-ticket-68-1655', 'prod-mocha', 1, 16500, 0, '2026-01-06T16:23:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1655-2', 'hist-ticket-68-1655', 'prod-americano', 1, 12000, 0, '2026-01-06T16:23:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1655', 'hist-ticket-68-1655', 'cash', 28500, 'completed', '2026-01-06T16:23:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1656', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-06T17:08:19.000Z', '2026-01-06T17:08:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1656-1', 'hist-ticket-68-1656', 'prod-mocha', 1, 16500, 0, '2026-01-06T17:08:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1656', 'hist-ticket-68-1656', 'cash', 16500, 'completed', '2026-01-06T17:08:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1657', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-06T15:10:46.000Z', '2026-01-06T15:10:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1657-1', 'hist-ticket-68-1657', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T15:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1657-2', 'hist-ticket-68-1657', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T15:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1657-3', 'hist-ticket-68-1657', 'prod-latte', 1, 15000, 0, '2026-01-06T15:10:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1657', 'hist-ticket-68-1657', 'cash', 44000, 'completed', '2026-01-06T15:10:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1658', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-01-06T12:23:14.000Z', '2026-01-06T12:23:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1658-1', 'hist-ticket-68-1658', 'prod-americano', 1, 12000, 0, '2026-01-06T12:23:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1658-2', 'hist-ticket-68-1658', 'prod-mocha', 1, 16500, 0, '2026-01-06T12:23:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1658-3', 'hist-ticket-68-1658', 'prod-latte', 1, 15000, 0, '2026-01-06T12:23:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1658-4', 'hist-ticket-68-1658', 'prod-mocha', 1, 16500, 0, '2026-01-06T12:23:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1658', 'hist-ticket-68-1658', 'cash', 60000, 'completed', '2026-01-06T12:23:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1659', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-06T16:53:27.000Z', '2026-01-06T16:53:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1659-1', 'hist-ticket-68-1659', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T16:53:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1659-2', 'hist-ticket-68-1659', 'prod-mocha', 1, 16500, 0, '2026-01-06T16:53:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1659-3', 'hist-ticket-68-1659', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T16:53:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1659-4', 'hist-ticket-68-1659', 'prod-mocha', 1, 16500, 0, '2026-01-06T16:53:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1659', 'hist-ticket-68-1659', 'cash', 62000, 'completed', '2026-01-06T16:53:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1660', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-06T19:44:00.000Z', '2026-01-06T19:44:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1660-1', 'hist-ticket-68-1660', 'prod-mocha', 1, 16500, 0, '2026-01-06T19:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1660-2', 'hist-ticket-68-1660', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T19:44:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1660-3', 'hist-ticket-68-1660', 'prod-mocha', 1, 16500, 0, '2026-01-06T19:44:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1660', 'hist-ticket-68-1660', 'cash', 47500, 'completed', '2026-01-06T19:44:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1661', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-06T11:25:19.000Z', '2026-01-06T11:25:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1661-1', 'hist-ticket-68-1661', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T11:25:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1661-2', 'hist-ticket-68-1661', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T11:25:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1661-3', 'hist-ticket-68-1661', 'prod-mocha', 1, 16500, 0, '2026-01-06T11:25:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1661-4', 'hist-ticket-68-1661', 'prod-latte', 1, 15000, 0, '2026-01-06T11:25:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1661', 'hist-ticket-68-1661', 'cash', 60500, 'completed', '2026-01-06T11:25:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-68-1662', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-01-06T10:34:23.000Z', '2026-01-06T10:34:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1662-1', 'hist-ticket-68-1662', 'prod-americano', 1, 12000, 0, '2026-01-06T10:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1662-2', 'hist-ticket-68-1662', 'prod-mocha', 1, 16500, 0, '2026-01-06T10:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1662-3', 'hist-ticket-68-1662', 'prod-americano', 1, 12000, 0, '2026-01-06T10:34:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-68-1662-4', 'hist-ticket-68-1662', 'prod-cappuccino', 1, 14500, 0, '2026-01-06T10:34:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-68-1662', 'hist-ticket-68-1662', 'cash', 55000, 'completed', '2026-01-06T10:34:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1663', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-07T15:59:02.000Z', '2026-01-07T15:59:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1663-1', 'hist-ticket-69-1663', 'prod-americano', 1, 12000, 0, '2026-01-07T15:59:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1663', 'hist-ticket-69-1663', 'cash', 12000, 'completed', '2026-01-07T15:59:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1664', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-07T18:39:11.000Z', '2026-01-07T18:39:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1664-1', 'hist-ticket-69-1664', 'prod-latte', 1, 15000, 0, '2026-01-07T18:39:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1664-2', 'hist-ticket-69-1664', 'prod-latte', 1, 15000, 0, '2026-01-07T18:39:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1664-3', 'hist-ticket-69-1664', 'prod-mocha', 1, 16500, 0, '2026-01-07T18:39:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1664-4', 'hist-ticket-69-1664', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T18:39:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1664', 'hist-ticket-69-1664', 'cash', 61000, 'completed', '2026-01-07T18:39:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1665', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-01-07T08:04:04.000Z', '2026-01-07T08:04:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1665-1', 'hist-ticket-69-1665', 'prod-mocha', 1, 16500, 0, '2026-01-07T08:04:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1665-2', 'hist-ticket-69-1665', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T08:04:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1665-3', 'hist-ticket-69-1665', 'prod-mocha', 1, 16500, 0, '2026-01-07T08:04:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1665-4', 'hist-ticket-69-1665', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T08:04:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1665', 'hist-ticket-69-1665', 'cash', 62000, 'completed', '2026-01-07T08:04:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1666', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-07T17:52:44.000Z', '2026-01-07T17:52:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1666-1', 'hist-ticket-69-1666', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T17:52:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1666-2', 'hist-ticket-69-1666', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T17:52:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1666-3', 'hist-ticket-69-1666', 'prod-americano', 1, 12000, 0, '2026-01-07T17:52:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1666-4', 'hist-ticket-69-1666', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T17:52:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-69-1666', 'hist-ticket-69-1666', 'cash', 55500, 'completed', '2026-01-07T17:52:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-69-1667', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-07T13:13:50.000Z', '2026-01-07T13:13:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1667-1', 'hist-ticket-69-1667', 'prod-latte', 1, 15000, 0, '2026-01-07T13:13:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1667-2', 'hist-ticket-69-1667', 'prod-cappuccino', 1, 14500, 0, '2026-01-07T13:13:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1667-3', 'hist-ticket-69-1667', 'prod-americano', 1, 12000, 0, '2026-01-07T13:13:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-69-1667-4', 'hist-ticket-69-1667', 'prod-mocha', 1, 16500, 0, '2026-01-07T13:13:50.000Z');