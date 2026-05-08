INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1005-1', 'hist-ticket-42-1005', 'prod-mocha', 1, 16500, 0, '2025-12-11T16:59:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1005', 'hist-ticket-42-1005', 'cash', 16500, 'completed', '2025-12-11T16:59:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1006', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-12-11T18:35:15.000Z', '2025-12-11T18:35:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1006-1', 'hist-ticket-42-1006', 'prod-americano', 1, 12000, 0, '2025-12-11T18:35:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1006-2', 'hist-ticket-42-1006', 'prod-americano', 1, 12000, 0, '2025-12-11T18:35:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1006', 'hist-ticket-42-1006', 'cash', 24000, 'completed', '2025-12-11T18:35:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1007', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-11T17:59:48.000Z', '2025-12-11T17:59:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1007-1', 'hist-ticket-42-1007', 'prod-latte', 1, 15000, 0, '2025-12-11T17:59:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1007', 'hist-ticket-42-1007', 'cash', 15000, 'completed', '2025-12-11T17:59:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1008', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-11T18:06:21.000Z', '2025-12-11T18:06:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1008-1', 'hist-ticket-42-1008', 'prod-mocha', 1, 16500, 0, '2025-12-11T18:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1008-2', 'hist-ticket-42-1008', 'prod-americano', 1, 12000, 0, '2025-12-11T18:06:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1008-3', 'hist-ticket-42-1008', 'prod-mocha', 1, 16500, 0, '2025-12-11T18:06:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1008', 'hist-ticket-42-1008', 'cash', 45000, 'completed', '2025-12-11T18:06:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1009', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-11T19:12:03.000Z', '2025-12-11T19:12:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1009-1', 'hist-ticket-42-1009', 'prod-latte', 1, 15000, 0, '2025-12-11T19:12:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1009-2', 'hist-ticket-42-1009', 'prod-americano', 1, 12000, 0, '2025-12-11T19:12:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1009-3', 'hist-ticket-42-1009', 'prod-americano', 1, 12000, 0, '2025-12-11T19:12:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1009-4', 'hist-ticket-42-1009', 'prod-americano', 1, 12000, 0, '2025-12-11T19:12:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1009', 'hist-ticket-42-1009', 'cash', 51000, 'completed', '2025-12-11T19:12:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1010', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-11T13:04:41.000Z', '2025-12-11T13:04:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1010-1', 'hist-ticket-42-1010', 'prod-mocha', 1, 16500, 0, '2025-12-11T13:04:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1010-2', 'hist-ticket-42-1010', 'prod-latte', 1, 15000, 0, '2025-12-11T13:04:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1010', 'hist-ticket-42-1010', 'cash', 31500, 'completed', '2025-12-11T13:04:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1011', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-12-11T17:57:36.000Z', '2025-12-11T17:57:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1011-1', 'hist-ticket-42-1011', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:57:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1011-2', 'hist-ticket-42-1011', 'prod-americano', 1, 12000, 0, '2025-12-11T17:57:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1011', 'hist-ticket-42-1011', 'cash', 26500, 'completed', '2025-12-11T17:57:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1012', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-12-11T17:38:18.000Z', '2025-12-11T17:38:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1012-1', 'hist-ticket-42-1012', 'prod-latte', 1, 15000, 0, '2025-12-11T17:38:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1012-2', 'hist-ticket-42-1012', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:38:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1012-3', 'hist-ticket-42-1012', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:38:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1012-4', 'hist-ticket-42-1012', 'prod-americano', 1, 12000, 0, '2025-12-11T17:38:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1012', 'hist-ticket-42-1012', 'cash', 56000, 'completed', '2025-12-11T17:38:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1013', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-11T14:57:01.000Z', '2025-12-11T14:57:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1013-1', 'hist-ticket-42-1013', 'prod-americano', 1, 12000, 0, '2025-12-11T14:57:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1013', 'hist-ticket-42-1013', 'cash', 12000, 'completed', '2025-12-11T14:57:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1014', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-11T08:46:16.000Z', '2025-12-11T08:46:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1014-1', 'hist-ticket-42-1014', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T08:46:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1014', 'hist-ticket-42-1014', 'cash', 14500, 'completed', '2025-12-11T08:46:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1015', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-12-11T17:23:57.000Z', '2025-12-11T17:23:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1015-1', 'hist-ticket-42-1015', 'prod-americano', 1, 12000, 0, '2025-12-11T17:23:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1015-2', 'hist-ticket-42-1015', 'prod-mocha', 1, 16500, 0, '2025-12-11T17:23:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1015', 'hist-ticket-42-1015', 'cash', 28500, 'completed', '2025-12-11T17:23:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1016', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-11T18:30:26.000Z', '2025-12-11T18:30:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1016-1', 'hist-ticket-42-1016', 'prod-latte', 1, 15000, 0, '2025-12-11T18:30:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1016', 'hist-ticket-42-1016', 'cash', 15000, 'completed', '2025-12-11T18:30:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1017', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-11T13:04:30.000Z', '2025-12-11T13:04:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1017-1', 'hist-ticket-42-1017', 'prod-mocha', 1, 16500, 0, '2025-12-11T13:04:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1017-2', 'hist-ticket-42-1017', 'prod-latte', 1, 15000, 0, '2025-12-11T13:04:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1017', 'hist-ticket-42-1017', 'cash', 31500, 'completed', '2025-12-11T13:04:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-42-1018', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-11T17:29:37.000Z', '2025-12-11T17:29:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1018-1', 'hist-ticket-42-1018', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:29:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1018-2', 'hist-ticket-42-1018', 'prod-cappuccino', 1, 14500, 0, '2025-12-11T17:29:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-42-1018-3', 'hist-ticket-42-1018', 'prod-latte', 1, 15000, 0, '2025-12-11T17:29:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-42-1018', 'hist-ticket-42-1018', 'cash', 44000, 'completed', '2025-12-11T17:29:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1019', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-12T09:00:40.000Z', '2025-12-12T09:00:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1019-1', 'hist-ticket-43-1019', 'prod-mocha', 1, 16500, 0, '2025-12-12T09:00:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1019-2', 'hist-ticket-43-1019', 'prod-latte', 1, 15000, 0, '2025-12-12T09:00:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1019', 'hist-ticket-43-1019', 'cash', 31500, 'completed', '2025-12-12T09:00:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1020', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-12-12T09:33:32.000Z', '2025-12-12T09:33:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1020-1', 'hist-ticket-43-1020', 'prod-mocha', 1, 16500, 0, '2025-12-12T09:33:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1020-2', 'hist-ticket-43-1020', 'prod-americano', 1, 12000, 0, '2025-12-12T09:33:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1020-3', 'hist-ticket-43-1020', 'prod-latte', 1, 15000, 0, '2025-12-12T09:33:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1020', 'hist-ticket-43-1020', 'cash', 43500, 'completed', '2025-12-12T09:33:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1021', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-12T16:30:35.000Z', '2025-12-12T16:30:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1021-1', 'hist-ticket-43-1021', 'prod-mocha', 1, 16500, 0, '2025-12-12T16:30:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1021-2', 'hist-ticket-43-1021', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T16:30:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1021-3', 'hist-ticket-43-1021', 'prod-americano', 1, 12000, 0, '2025-12-12T16:30:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1021-4', 'hist-ticket-43-1021', 'prod-latte', 1, 15000, 0, '2025-12-12T16:30:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1021', 'hist-ticket-43-1021', 'cash', 58000, 'completed', '2025-12-12T16:30:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1022', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-12T12:25:32.000Z', '2025-12-12T12:25:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1022-1', 'hist-ticket-43-1022', 'prod-latte', 1, 15000, 0, '2025-12-12T12:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1022-2', 'hist-ticket-43-1022', 'prod-mocha', 1, 16500, 0, '2025-12-12T12:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1022-3', 'hist-ticket-43-1022', 'prod-mocha', 1, 16500, 0, '2025-12-12T12:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1022-4', 'hist-ticket-43-1022', 'prod-latte', 1, 15000, 0, '2025-12-12T12:25:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1022', 'hist-ticket-43-1022', 'cash', 63000, 'completed', '2025-12-12T12:25:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1023', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2025-12-12T19:18:48.000Z', '2025-12-12T19:18:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1023-1', 'hist-ticket-43-1023', 'prod-latte', 1, 15000, 0, '2025-12-12T19:18:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1023-2', 'hist-ticket-43-1023', 'prod-latte', 1, 15000, 0, '2025-12-12T19:18:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1023-3', 'hist-ticket-43-1023', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T19:18:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1023', 'hist-ticket-43-1023', 'cash', 44500, 'completed', '2025-12-12T19:18:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1024', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-12T10:57:44.000Z', '2025-12-12T10:57:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1024-1', 'hist-ticket-43-1024', 'prod-americano', 1, 12000, 0, '2025-12-12T10:57:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1024-2', 'hist-ticket-43-1024', 'prod-latte', 1, 15000, 0, '2025-12-12T10:57:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1024', 'hist-ticket-43-1024', 'cash', 27000, 'completed', '2025-12-12T10:57:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1025', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-12T13:28:06.000Z', '2025-12-12T13:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1025-1', 'hist-ticket-43-1025', 'prod-mocha', 1, 16500, 0, '2025-12-12T13:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1025-2', 'hist-ticket-43-1025', 'prod-americano', 1, 12000, 0, '2025-12-12T13:28:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1025', 'hist-ticket-43-1025', 'cash', 28500, 'completed', '2025-12-12T13:28:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1026', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-12T09:49:04.000Z', '2025-12-12T09:49:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1026-1', 'hist-ticket-43-1026', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T09:49:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1026', 'hist-ticket-43-1026', 'cash', 14500, 'completed', '2025-12-12T09:49:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1027', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-12T14:40:16.000Z', '2025-12-12T14:40:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1027-1', 'hist-ticket-43-1027', 'prod-americano', 1, 12000, 0, '2025-12-12T14:40:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1027-2', 'hist-ticket-43-1027', 'prod-mocha', 1, 16500, 0, '2025-12-12T14:40:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1027-3', 'hist-ticket-43-1027', 'prod-mocha', 1, 16500, 0, '2025-12-12T14:40:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1027-4', 'hist-ticket-43-1027', 'prod-latte', 1, 15000, 0, '2025-12-12T14:40:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1027', 'hist-ticket-43-1027', 'cash', 60000, 'completed', '2025-12-12T14:40:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1028', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-12T11:18:12.000Z', '2025-12-12T11:18:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1028-1', 'hist-ticket-43-1028', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T11:18:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1028-2', 'hist-ticket-43-1028', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T11:18:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1028', 'hist-ticket-43-1028', 'cash', 29000, 'completed', '2025-12-12T11:18:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1029', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-12T13:43:09.000Z', '2025-12-12T13:43:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1029-1', 'hist-ticket-43-1029', 'prod-americano', 1, 12000, 0, '2025-12-12T13:43:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1029-2', 'hist-ticket-43-1029', 'prod-mocha', 1, 16500, 0, '2025-12-12T13:43:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1029-3', 'hist-ticket-43-1029', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T13:43:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1029', 'hist-ticket-43-1029', 'cash', 43000, 'completed', '2025-12-12T13:43:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1030', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-12T11:27:24.000Z', '2025-12-12T11:27:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1030-1', 'hist-ticket-43-1030', 'prod-latte', 1, 15000, 0, '2025-12-12T11:27:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1030', 'hist-ticket-43-1030', 'cash', 15000, 'completed', '2025-12-12T11:27:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1031', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-12T17:52:18.000Z', '2025-12-12T17:52:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1031-1', 'hist-ticket-43-1031', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T17:52:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1031-2', 'hist-ticket-43-1031', 'prod-latte', 1, 15000, 0, '2025-12-12T17:52:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1031', 'hist-ticket-43-1031', 'cash', 29500, 'completed', '2025-12-12T17:52:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1032', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-12T12:59:12.000Z', '2025-12-12T12:59:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1032-1', 'hist-ticket-43-1032', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T12:59:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1032-2', 'hist-ticket-43-1032', 'prod-americano', 1, 12000, 0, '2025-12-12T12:59:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1032-3', 'hist-ticket-43-1032', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T12:59:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1032', 'hist-ticket-43-1032', 'cash', 41000, 'completed', '2025-12-12T12:59:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1033', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-12T12:17:44.000Z', '2025-12-12T12:17:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1033-1', 'hist-ticket-43-1033', 'prod-americano', 1, 12000, 0, '2025-12-12T12:17:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1033-2', 'hist-ticket-43-1033', 'prod-americano', 1, 12000, 0, '2025-12-12T12:17:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1033-3', 'hist-ticket-43-1033', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T12:17:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1033', 'hist-ticket-43-1033', 'cash', 38500, 'completed', '2025-12-12T12:17:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1034', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-12-12T14:29:58.000Z', '2025-12-12T14:29:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1034-1', 'hist-ticket-43-1034', 'prod-americano', 1, 12000, 0, '2025-12-12T14:29:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1034-2', 'hist-ticket-43-1034', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T14:29:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1034-3', 'hist-ticket-43-1034', 'prod-mocha', 1, 16500, 0, '2025-12-12T14:29:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1034-4', 'hist-ticket-43-1034', 'prod-mocha', 1, 16500, 0, '2025-12-12T14:29:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1034', 'hist-ticket-43-1034', 'cash', 59500, 'completed', '2025-12-12T14:29:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1035', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-12T19:38:43.000Z', '2025-12-12T19:38:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1035-1', 'hist-ticket-43-1035', 'prod-latte', 1, 15000, 0, '2025-12-12T19:38:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1035', 'hist-ticket-43-1035', 'cash', 15000, 'completed', '2025-12-12T19:38:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1036', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-12T14:04:53.000Z', '2025-12-12T14:04:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1036-1', 'hist-ticket-43-1036', 'prod-latte', 1, 15000, 0, '2025-12-12T14:04:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1036-2', 'hist-ticket-43-1036', 'prod-latte', 1, 15000, 0, '2025-12-12T14:04:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1036', 'hist-ticket-43-1036', 'cash', 30000, 'completed', '2025-12-12T14:04:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1037', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-12T16:42:23.000Z', '2025-12-12T16:42:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1037-1', 'hist-ticket-43-1037', 'prod-mocha', 1, 16500, 0, '2025-12-12T16:42:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1037', 'hist-ticket-43-1037', 'cash', 16500, 'completed', '2025-12-12T16:42:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1038', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-12T15:14:53.000Z', '2025-12-12T15:14:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1038-1', 'hist-ticket-43-1038', 'prod-latte', 1, 15000, 0, '2025-12-12T15:14:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1038', 'hist-ticket-43-1038', 'cash', 15000, 'completed', '2025-12-12T15:14:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1039', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-12T18:28:52.000Z', '2025-12-12T18:28:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1039-1', 'hist-ticket-43-1039', 'prod-cappuccino', 1, 14500, 0, '2025-12-12T18:28:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1039-2', 'hist-ticket-43-1039', 'prod-latte', 1, 15000, 0, '2025-12-12T18:28:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1039', 'hist-ticket-43-1039', 'cash', 29500, 'completed', '2025-12-12T18:28:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-43-1040', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-12T12:20:58.000Z', '2025-12-12T12:20:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1040-1', 'hist-ticket-43-1040', 'prod-americano', 1, 12000, 0, '2025-12-12T12:20:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1040-2', 'hist-ticket-43-1040', 'prod-mocha', 1, 16500, 0, '2025-12-12T12:20:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1040-3', 'hist-ticket-43-1040', 'prod-latte', 1, 15000, 0, '2025-12-12T12:20:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-43-1040-4', 'hist-ticket-43-1040', 'prod-latte', 1, 15000, 0, '2025-12-12T12:20:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-43-1040', 'hist-ticket-43-1040', 'cash', 58500, 'completed', '2025-12-12T12:20:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1041', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-13T12:11:03.000Z', '2025-12-13T12:11:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1041-1', 'hist-ticket-44-1041', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T12:11:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1041-2', 'hist-ticket-44-1041', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T12:11:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1041', 'hist-ticket-44-1041', 'cash', 29000, 'completed', '2025-12-13T12:11:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1042', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-13T16:10:51.000Z', '2025-12-13T16:10:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1042-1', 'hist-ticket-44-1042', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T16:10:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1042-2', 'hist-ticket-44-1042', 'prod-mocha', 1, 16500, 0, '2025-12-13T16:10:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1042-3', 'hist-ticket-44-1042', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T16:10:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1042-4', 'hist-ticket-44-1042', 'prod-mocha', 1, 16500, 0, '2025-12-13T16:10:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1042', 'hist-ticket-44-1042', 'cash', 62000, 'completed', '2025-12-13T16:10:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1043', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-12-13T18:18:42.000Z', '2025-12-13T18:18:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1043-1', 'hist-ticket-44-1043', 'prod-mocha', 1, 16500, 0, '2025-12-13T18:18:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1043-2', 'hist-ticket-44-1043', 'prod-latte', 1, 15000, 0, '2025-12-13T18:18:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1043-3', 'hist-ticket-44-1043', 'prod-latte', 1, 15000, 0, '2025-12-13T18:18:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1043-4', 'hist-ticket-44-1043', 'prod-latte', 1, 15000, 0, '2025-12-13T18:18:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1043', 'hist-ticket-44-1043', 'cash', 61500, 'completed', '2025-12-13T18:18:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1044', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-13T13:10:23.000Z', '2025-12-13T13:10:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1044-1', 'hist-ticket-44-1044', 'prod-latte', 1, 15000, 0, '2025-12-13T13:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1044-2', 'hist-ticket-44-1044', 'prod-latte', 1, 15000, 0, '2025-12-13T13:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1044-3', 'hist-ticket-44-1044', 'prod-americano', 1, 12000, 0, '2025-12-13T13:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1044-4', 'hist-ticket-44-1044', 'prod-latte', 1, 15000, 0, '2025-12-13T13:10:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1044', 'hist-ticket-44-1044', 'cash', 57000, 'completed', '2025-12-13T13:10:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1045', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-13T12:48:25.000Z', '2025-12-13T12:48:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1045-1', 'hist-ticket-44-1045', 'prod-americano', 1, 12000, 0, '2025-12-13T12:48:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1045-2', 'hist-ticket-44-1045', 'prod-americano', 1, 12000, 0, '2025-12-13T12:48:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1045', 'hist-ticket-44-1045', 'cash', 24000, 'completed', '2025-12-13T12:48:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1046', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-13T12:19:39.000Z', '2025-12-13T12:19:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1046-1', 'hist-ticket-44-1046', 'prod-latte', 1, 15000, 0, '2025-12-13T12:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1046-2', 'hist-ticket-44-1046', 'prod-latte', 1, 15000, 0, '2025-12-13T12:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1046-3', 'hist-ticket-44-1046', 'prod-latte', 1, 15000, 0, '2025-12-13T12:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1046-4', 'hist-ticket-44-1046', 'prod-latte', 1, 15000, 0, '2025-12-13T12:19:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1046', 'hist-ticket-44-1046', 'cash', 60000, 'completed', '2025-12-13T12:19:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1047', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-13T08:13:23.000Z', '2025-12-13T08:13:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1047-1', 'hist-ticket-44-1047', 'prod-latte', 1, 15000, 0, '2025-12-13T08:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1047-2', 'hist-ticket-44-1047', 'prod-latte', 1, 15000, 0, '2025-12-13T08:13:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1047', 'hist-ticket-44-1047', 'cash', 30000, 'completed', '2025-12-13T08:13:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1048', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-12-13T15:27:55.000Z', '2025-12-13T15:27:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1048-1', 'hist-ticket-44-1048', 'prod-mocha', 1, 16500, 0, '2025-12-13T15:27:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1048-2', 'hist-ticket-44-1048', 'prod-americano', 1, 12000, 0, '2025-12-13T15:27:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1048-3', 'hist-ticket-44-1048', 'prod-americano', 1, 12000, 0, '2025-12-13T15:27:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1048-4', 'hist-ticket-44-1048', 'prod-latte', 1, 15000, 0, '2025-12-13T15:27:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1048', 'hist-ticket-44-1048', 'cash', 55500, 'completed', '2025-12-13T15:27:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1049', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-13T15:47:35.000Z', '2025-12-13T15:47:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1049-1', 'hist-ticket-44-1049', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T15:47:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1049-2', 'hist-ticket-44-1049', 'prod-latte', 1, 15000, 0, '2025-12-13T15:47:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1049', 'hist-ticket-44-1049', 'cash', 29500, 'completed', '2025-12-13T15:47:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1050', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-13T16:51:06.000Z', '2025-12-13T16:51:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1050-1', 'hist-ticket-44-1050', 'prod-americano', 1, 12000, 0, '2025-12-13T16:51:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1050-2', 'hist-ticket-44-1050', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T16:51:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1050', 'hist-ticket-44-1050', 'cash', 26500, 'completed', '2025-12-13T16:51:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1051', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-13T13:59:10.000Z', '2025-12-13T13:59:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1051-1', 'hist-ticket-44-1051', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T13:59:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1051-2', 'hist-ticket-44-1051', 'prod-latte', 1, 15000, 0, '2025-12-13T13:59:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1051-3', 'hist-ticket-44-1051', 'prod-americano', 1, 12000, 0, '2025-12-13T13:59:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1051-4', 'hist-ticket-44-1051', 'prod-latte', 1, 15000, 0, '2025-12-13T13:59:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1051', 'hist-ticket-44-1051', 'cash', 56500, 'completed', '2025-12-13T13:59:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1052', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-13T16:04:50.000Z', '2025-12-13T16:04:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1052-1', 'hist-ticket-44-1052', 'prod-latte', 1, 15000, 0, '2025-12-13T16:04:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1052', 'hist-ticket-44-1052', 'cash', 15000, 'completed', '2025-12-13T16:04:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1053', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-12-13T11:37:15.000Z', '2025-12-13T11:37:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1053-1', 'hist-ticket-44-1053', 'prod-latte', 1, 15000, 0, '2025-12-13T11:37:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1053-2', 'hist-ticket-44-1053', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T11:37:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1053', 'hist-ticket-44-1053', 'cash', 29500, 'completed', '2025-12-13T11:37:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1054', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-13T11:53:09.000Z', '2025-12-13T11:53:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1054-1', 'hist-ticket-44-1054', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T11:53:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1054-2', 'hist-ticket-44-1054', 'prod-americano', 1, 12000, 0, '2025-12-13T11:53:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1054-3', 'hist-ticket-44-1054', 'prod-latte', 1, 15000, 0, '2025-12-13T11:53:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1054', 'hist-ticket-44-1054', 'cash', 41500, 'completed', '2025-12-13T11:53:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1055', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-13T09:47:45.000Z', '2025-12-13T09:47:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1055-1', 'hist-ticket-44-1055', 'prod-mocha', 1, 16500, 0, '2025-12-13T09:47:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1055-2', 'hist-ticket-44-1055', 'prod-latte', 1, 15000, 0, '2025-12-13T09:47:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1055-3', 'hist-ticket-44-1055', 'prod-mocha', 1, 16500, 0, '2025-12-13T09:47:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1055-4', 'hist-ticket-44-1055', 'prod-latte', 1, 15000, 0, '2025-12-13T09:47:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1055', 'hist-ticket-44-1055', 'cash', 63000, 'completed', '2025-12-13T09:47:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1056', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-13T17:52:00.000Z', '2025-12-13T17:52:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1056-1', 'hist-ticket-44-1056', 'prod-mocha', 1, 16500, 0, '2025-12-13T17:52:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1056-2', 'hist-ticket-44-1056', 'prod-mocha', 1, 16500, 0, '2025-12-13T17:52:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1056-3', 'hist-ticket-44-1056', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T17:52:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1056', 'hist-ticket-44-1056', 'cash', 47500, 'completed', '2025-12-13T17:52:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1057', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-13T10:29:10.000Z', '2025-12-13T10:29:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1057-1', 'hist-ticket-44-1057', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T10:29:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1057-2', 'hist-ticket-44-1057', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T10:29:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1057-3', 'hist-ticket-44-1057', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T10:29:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1057', 'hist-ticket-44-1057', 'cash', 43500, 'completed', '2025-12-13T10:29:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1058', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-12-13T10:58:43.000Z', '2025-12-13T10:58:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1058-1', 'hist-ticket-44-1058', 'prod-latte', 1, 15000, 0, '2025-12-13T10:58:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1058', 'hist-ticket-44-1058', 'cash', 15000, 'completed', '2025-12-13T10:58:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1059', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-13T13:56:04.000Z', '2025-12-13T13:56:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1059-1', 'hist-ticket-44-1059', 'prod-mocha', 1, 16500, 0, '2025-12-13T13:56:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1059-2', 'hist-ticket-44-1059', 'prod-latte', 1, 15000, 0, '2025-12-13T13:56:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1059', 'hist-ticket-44-1059', 'cash', 31500, 'completed', '2025-12-13T13:56:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1060', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-13T13:38:39.000Z', '2025-12-13T13:38:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1060-1', 'hist-ticket-44-1060', 'prod-americano', 1, 12000, 0, '2025-12-13T13:38:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1060', 'hist-ticket-44-1060', 'cash', 12000, 'completed', '2025-12-13T13:38:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1061', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-13T19:21:24.000Z', '2025-12-13T19:21:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1061-1', 'hist-ticket-44-1061', 'prod-latte', 1, 15000, 0, '2025-12-13T19:21:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1061', 'hist-ticket-44-1061', 'cash', 15000, 'completed', '2025-12-13T19:21:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1062', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-13T14:02:50.000Z', '2025-12-13T14:02:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1062-1', 'hist-ticket-44-1062', 'prod-mocha', 1, 16500, 0, '2025-12-13T14:02:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1062-2', 'hist-ticket-44-1062', 'prod-latte', 1, 15000, 0, '2025-12-13T14:02:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1062-3', 'hist-ticket-44-1062', 'prod-mocha', 1, 16500, 0, '2025-12-13T14:02:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1062-4', 'hist-ticket-44-1062', 'prod-americano', 1, 12000, 0, '2025-12-13T14:02:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1062', 'hist-ticket-44-1062', 'cash', 60000, 'completed', '2025-12-13T14:02:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1063', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-13T17:41:52.000Z', '2025-12-13T17:41:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1063-1', 'hist-ticket-44-1063', 'prod-mocha', 1, 16500, 0, '2025-12-13T17:41:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1063-2', 'hist-ticket-44-1063', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T17:41:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1063-3', 'hist-ticket-44-1063', 'prod-americano', 1, 12000, 0, '2025-12-13T17:41:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1063', 'hist-ticket-44-1063', 'cash', 43000, 'completed', '2025-12-13T17:41:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1064', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-13T12:48:00.000Z', '2025-12-13T12:48:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1064-1', 'hist-ticket-44-1064', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T12:48:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1064-2', 'hist-ticket-44-1064', 'prod-mocha', 1, 16500, 0, '2025-12-13T12:48:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1064', 'hist-ticket-44-1064', 'cash', 31000, 'completed', '2025-12-13T12:48:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1065', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-13T12:35:55.000Z', '2025-12-13T12:35:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1065-1', 'hist-ticket-44-1065', 'prod-mocha', 1, 16500, 0, '2025-12-13T12:35:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1065-2', 'hist-ticket-44-1065', 'prod-mocha', 1, 16500, 0, '2025-12-13T12:35:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1065-3', 'hist-ticket-44-1065', 'prod-americano', 1, 12000, 0, '2025-12-13T12:35:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1065-4', 'hist-ticket-44-1065', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T12:35:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1065', 'hist-ticket-44-1065', 'cash', 59500, 'completed', '2025-12-13T12:35:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1066', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-13T18:53:45.000Z', '2025-12-13T18:53:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1066-1', 'hist-ticket-44-1066', 'prod-mocha', 1, 16500, 0, '2025-12-13T18:53:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1066', 'hist-ticket-44-1066', 'cash', 16500, 'completed', '2025-12-13T18:53:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1067', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-13T13:40:21.000Z', '2025-12-13T13:40:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1067-1', 'hist-ticket-44-1067', 'prod-latte', 1, 15000, 0, '2025-12-13T13:40:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1067-2', 'hist-ticket-44-1067', 'prod-americano', 1, 12000, 0, '2025-12-13T13:40:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1067-3', 'hist-ticket-44-1067', 'prod-americano', 1, 12000, 0, '2025-12-13T13:40:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1067', 'hist-ticket-44-1067', 'cash', 39000, 'completed', '2025-12-13T13:40:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1068', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-13T17:06:08.000Z', '2025-12-13T17:06:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1068-1', 'hist-ticket-44-1068', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T17:06:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1068-2', 'hist-ticket-44-1068', 'prod-mocha', 1, 16500, 0, '2025-12-13T17:06:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1068', 'hist-ticket-44-1068', 'cash', 31000, 'completed', '2025-12-13T17:06:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1069', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-12-13T17:57:40.000Z', '2025-12-13T17:57:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1069-1', 'hist-ticket-44-1069', 'prod-latte', 1, 15000, 0, '2025-12-13T17:57:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1069-2', 'hist-ticket-44-1069', 'prod-latte', 1, 15000, 0, '2025-12-13T17:57:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1069', 'hist-ticket-44-1069', 'cash', 30000, 'completed', '2025-12-13T17:57:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-44-1070', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-13T08:08:17.000Z', '2025-12-13T08:08:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1070-1', 'hist-ticket-44-1070', 'prod-cappuccino', 1, 14500, 0, '2025-12-13T08:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1070-2', 'hist-ticket-44-1070', 'prod-latte', 1, 15000, 0, '2025-12-13T08:08:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-44-1070-3', 'hist-ticket-44-1070', 'prod-americano', 1, 12000, 0, '2025-12-13T08:08:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-44-1070', 'hist-ticket-44-1070', 'cash', 41500, 'completed', '2025-12-13T08:08:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1071', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-14T19:39:58.000Z', '2025-12-14T19:39:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1071-1', 'hist-ticket-45-1071', 'prod-americano', 1, 12000, 0, '2025-12-14T19:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1071-2', 'hist-ticket-45-1071', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T19:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1071-3', 'hist-ticket-45-1071', 'prod-americano', 1, 12000, 0, '2025-12-14T19:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1071-4', 'hist-ticket-45-1071', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T19:39:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1071', 'hist-ticket-45-1071', 'cash', 53000, 'completed', '2025-12-14T19:39:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1072', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-14T10:49:34.000Z', '2025-12-14T10:49:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1072-1', 'hist-ticket-45-1072', 'prod-mocha', 1, 16500, 0, '2025-12-14T10:49:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1072-2', 'hist-ticket-45-1072', 'prod-americano', 1, 12000, 0, '2025-12-14T10:49:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1072-3', 'hist-ticket-45-1072', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T10:49:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1072-4', 'hist-ticket-45-1072', 'prod-mocha', 1, 16500, 0, '2025-12-14T10:49:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1072', 'hist-ticket-45-1072', 'cash', 59500, 'completed', '2025-12-14T10:49:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1073', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-14T12:16:17.000Z', '2025-12-14T12:16:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1073-1', 'hist-ticket-45-1073', 'prod-mocha', 1, 16500, 0, '2025-12-14T12:16:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1073-2', 'hist-ticket-45-1073', 'prod-latte', 1, 15000, 0, '2025-12-14T12:16:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1073', 'hist-ticket-45-1073', 'cash', 31500, 'completed', '2025-12-14T12:16:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1074', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-12-14T08:28:11.000Z', '2025-12-14T08:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1074-1', 'hist-ticket-45-1074', 'prod-latte', 1, 15000, 0, '2025-12-14T08:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1074-2', 'hist-ticket-45-1074', 'prod-mocha', 1, 16500, 0, '2025-12-14T08:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1074', 'hist-ticket-45-1074', 'cash', 31500, 'completed', '2025-12-14T08:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1075', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-14T11:42:11.000Z', '2025-12-14T11:42:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1075-1', 'hist-ticket-45-1075', 'prod-latte', 1, 15000, 0, '2025-12-14T11:42:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1075-2', 'hist-ticket-45-1075', 'prod-mocha', 1, 16500, 0, '2025-12-14T11:42:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1075', 'hist-ticket-45-1075', 'cash', 31500, 'completed', '2025-12-14T11:42:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1076', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-14T19:35:44.000Z', '2025-12-14T19:35:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1076-1', 'hist-ticket-45-1076', 'prod-americano', 1, 12000, 0, '2025-12-14T19:35:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1076', 'hist-ticket-45-1076', 'cash', 12000, 'completed', '2025-12-14T19:35:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1077', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-14T08:51:33.000Z', '2025-12-14T08:51:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1077-1', 'hist-ticket-45-1077', 'prod-americano', 1, 12000, 0, '2025-12-14T08:51:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1077', 'hist-ticket-45-1077', 'cash', 12000, 'completed', '2025-12-14T08:51:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1078', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-14T11:35:48.000Z', '2025-12-14T11:35:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1078-1', 'hist-ticket-45-1078', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T11:35:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1078', 'hist-ticket-45-1078', 'cash', 14500, 'completed', '2025-12-14T11:35:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1079', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-14T15:05:34.000Z', '2025-12-14T15:05:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1079-1', 'hist-ticket-45-1079', 'prod-americano', 1, 12000, 0, '2025-12-14T15:05:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1079', 'hist-ticket-45-1079', 'cash', 12000, 'completed', '2025-12-14T15:05:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1080', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-12-14T11:28:07.000Z', '2025-12-14T11:28:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1080-1', 'hist-ticket-45-1080', 'prod-latte', 1, 15000, 0, '2025-12-14T11:28:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1080-2', 'hist-ticket-45-1080', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T11:28:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1080-3', 'hist-ticket-45-1080', 'prod-americano', 1, 12000, 0, '2025-12-14T11:28:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1080', 'hist-ticket-45-1080', 'cash', 41500, 'completed', '2025-12-14T11:28:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1081', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-14T12:06:01.000Z', '2025-12-14T12:06:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1081-1', 'hist-ticket-45-1081', 'prod-americano', 1, 12000, 0, '2025-12-14T12:06:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1081', 'hist-ticket-45-1081', 'cash', 12000, 'completed', '2025-12-14T12:06:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1082', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-14T10:03:58.000Z', '2025-12-14T10:03:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1082-1', 'hist-ticket-45-1082', 'prod-latte', 1, 15000, 0, '2025-12-14T10:03:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1082-2', 'hist-ticket-45-1082', 'prod-mocha', 1, 16500, 0, '2025-12-14T10:03:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1082', 'hist-ticket-45-1082', 'cash', 31500, 'completed', '2025-12-14T10:03:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1083', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-14T09:45:30.000Z', '2025-12-14T09:45:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1083-1', 'hist-ticket-45-1083', 'prod-americano', 1, 12000, 0, '2025-12-14T09:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1083-2', 'hist-ticket-45-1083', 'prod-americano', 1, 12000, 0, '2025-12-14T09:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1083-3', 'hist-ticket-45-1083', 'prod-americano', 1, 12000, 0, '2025-12-14T09:45:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1083-4', 'hist-ticket-45-1083', 'prod-americano', 1, 12000, 0, '2025-12-14T09:45:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1083', 'hist-ticket-45-1083', 'cash', 48000, 'completed', '2025-12-14T09:45:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1084', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-12-14T11:23:05.000Z', '2025-12-14T11:23:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1084-1', 'hist-ticket-45-1084', 'prod-americano', 1, 12000, 0, '2025-12-14T11:23:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1084-2', 'hist-ticket-45-1084', 'prod-mocha', 1, 16500, 0, '2025-12-14T11:23:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1084-3', 'hist-ticket-45-1084', 'prod-mocha', 1, 16500, 0, '2025-12-14T11:23:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1084-4', 'hist-ticket-45-1084', 'prod-mocha', 1, 16500, 0, '2025-12-14T11:23:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1084', 'hist-ticket-45-1084', 'cash', 61500, 'completed', '2025-12-14T11:23:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1085', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-12-14T15:01:44.000Z', '2025-12-14T15:01:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1085-1', 'hist-ticket-45-1085', 'prod-mocha', 1, 16500, 0, '2025-12-14T15:01:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1085', 'hist-ticket-45-1085', 'cash', 16500, 'completed', '2025-12-14T15:01:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1086', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-12-14T18:34:19.000Z', '2025-12-14T18:34:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1086-1', 'hist-ticket-45-1086', 'prod-mocha', 1, 16500, 0, '2025-12-14T18:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1086-2', 'hist-ticket-45-1086', 'prod-latte', 1, 15000, 0, '2025-12-14T18:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1086-3', 'hist-ticket-45-1086', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T18:34:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1086-4', 'hist-ticket-45-1086', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T18:34:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1086', 'hist-ticket-45-1086', 'cash', 60500, 'completed', '2025-12-14T18:34:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1087', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-12-14T15:16:28.000Z', '2025-12-14T15:16:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1087-1', 'hist-ticket-45-1087', 'prod-mocha', 1, 16500, 0, '2025-12-14T15:16:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1087-2', 'hist-ticket-45-1087', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T15:16:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1087-3', 'hist-ticket-45-1087', 'prod-mocha', 1, 16500, 0, '2025-12-14T15:16:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1087', 'hist-ticket-45-1087', 'cash', 47500, 'completed', '2025-12-14T15:16:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1088', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-14T17:51:26.000Z', '2025-12-14T17:51:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1088-1', 'hist-ticket-45-1088', 'prod-latte', 1, 15000, 0, '2025-12-14T17:51:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1088', 'hist-ticket-45-1088', 'cash', 15000, 'completed', '2025-12-14T17:51:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1089', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-14T18:48:04.000Z', '2025-12-14T18:48:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1089-1', 'hist-ticket-45-1089', 'prod-latte', 1, 15000, 0, '2025-12-14T18:48:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1089', 'hist-ticket-45-1089', 'cash', 15000, 'completed', '2025-12-14T18:48:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1090', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-14T09:00:25.000Z', '2025-12-14T09:00:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1090-1', 'hist-ticket-45-1090', 'prod-mocha', 1, 16500, 0, '2025-12-14T09:00:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1090-2', 'hist-ticket-45-1090', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T09:00:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1090', 'hist-ticket-45-1090', 'cash', 31000, 'completed', '2025-12-14T09:00:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1091', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-12-14T09:28:58.000Z', '2025-12-14T09:28:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1091-1', 'hist-ticket-45-1091', 'prod-mocha', 1, 16500, 0, '2025-12-14T09:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1091-2', 'hist-ticket-45-1091', 'prod-mocha', 1, 16500, 0, '2025-12-14T09:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1091-3', 'hist-ticket-45-1091', 'prod-latte', 1, 15000, 0, '2025-12-14T09:28:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1091', 'hist-ticket-45-1091', 'cash', 48000, 'completed', '2025-12-14T09:28:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1092', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-12-14T14:15:18.000Z', '2025-12-14T14:15:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1092-1', 'hist-ticket-45-1092', 'prod-mocha', 1, 16500, 0, '2025-12-14T14:15:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1092-2', 'hist-ticket-45-1092', 'prod-mocha', 1, 16500, 0, '2025-12-14T14:15:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1092-3', 'hist-ticket-45-1092', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T14:15:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1092', 'hist-ticket-45-1092', 'cash', 47500, 'completed', '2025-12-14T14:15:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1093', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-12-14T12:54:43.000Z', '2025-12-14T12:54:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1093-1', 'hist-ticket-45-1093', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T12:54:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1093', 'hist-ticket-45-1093', 'cash', 14500, 'completed', '2025-12-14T12:54:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1094', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-14T14:09:48.000Z', '2025-12-14T14:09:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1094-1', 'hist-ticket-45-1094', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T14:09:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1094', 'hist-ticket-45-1094', 'cash', 14500, 'completed', '2025-12-14T14:09:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1095', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-12-14T16:55:51.000Z', '2025-12-14T16:55:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1095-1', 'hist-ticket-45-1095', 'prod-mocha', 1, 16500, 0, '2025-12-14T16:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1095-2', 'hist-ticket-45-1095', 'prod-americano', 1, 12000, 0, '2025-12-14T16:55:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1095', 'hist-ticket-45-1095', 'cash', 28500, 'completed', '2025-12-14T16:55:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1096', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-14T18:34:54.000Z', '2025-12-14T18:34:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1096-1', 'hist-ticket-45-1096', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T18:34:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1096-2', 'hist-ticket-45-1096', 'prod-latte', 1, 15000, 0, '2025-12-14T18:34:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1096', 'hist-ticket-45-1096', 'cash', 29500, 'completed', '2025-12-14T18:34:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1097', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-14T19:25:54.000Z', '2025-12-14T19:25:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1097-1', 'hist-ticket-45-1097', 'prod-americano', 1, 12000, 0, '2025-12-14T19:25:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1097-2', 'hist-ticket-45-1097', 'prod-latte', 1, 15000, 0, '2025-12-14T19:25:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1097-3', 'hist-ticket-45-1097', 'prod-americano', 1, 12000, 0, '2025-12-14T19:25:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1097', 'hist-ticket-45-1097', 'cash', 39000, 'completed', '2025-12-14T19:25:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1098', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-12-14T13:46:45.000Z', '2025-12-14T13:46:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1098-1', 'hist-ticket-45-1098', 'prod-mocha', 1, 16500, 0, '2025-12-14T13:46:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1098', 'hist-ticket-45-1098', 'cash', 16500, 'completed', '2025-12-14T13:46:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1099', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-14T13:50:51.000Z', '2025-12-14T13:50:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1099-1', 'hist-ticket-45-1099', 'prod-americano', 1, 12000, 0, '2025-12-14T13:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1099-2', 'hist-ticket-45-1099', 'prod-mocha', 1, 16500, 0, '2025-12-14T13:50:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1099', 'hist-ticket-45-1099', 'cash', 28500, 'completed', '2025-12-14T13:50:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1100', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-12-14T15:13:33.000Z', '2025-12-14T15:13:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1100-1', 'hist-ticket-45-1100', 'prod-latte', 1, 15000, 0, '2025-12-14T15:13:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1100-2', 'hist-ticket-45-1100', 'prod-latte', 1, 15000, 0, '2025-12-14T15:13:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1100-3', 'hist-ticket-45-1100', 'prod-latte', 1, 15000, 0, '2025-12-14T15:13:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1100-4', 'hist-ticket-45-1100', 'prod-latte', 1, 15000, 0, '2025-12-14T15:13:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1100', 'hist-ticket-45-1100', 'cash', 60000, 'completed', '2025-12-14T15:13:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1101', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-14T08:08:51.000Z', '2025-12-14T08:08:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1101-1', 'hist-ticket-45-1101', 'prod-latte', 1, 15000, 0, '2025-12-14T08:08:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1101-2', 'hist-ticket-45-1101', 'prod-americano', 1, 12000, 0, '2025-12-14T08:08:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1101', 'hist-ticket-45-1101', 'cash', 27000, 'completed', '2025-12-14T08:08:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1102', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-14T09:09:32.000Z', '2025-12-14T09:09:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1102-1', 'hist-ticket-45-1102', 'prod-cappuccino', 1, 14500, 0, '2025-12-14T09:09:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1102-2', 'hist-ticket-45-1102', 'prod-latte', 1, 15000, 0, '2025-12-14T09:09:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1102', 'hist-ticket-45-1102', 'cash', 29500, 'completed', '2025-12-14T09:09:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1103', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-14T14:34:01.000Z', '2025-12-14T14:34:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1103-1', 'hist-ticket-45-1103', 'prod-americano', 1, 12000, 0, '2025-12-14T14:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1103-2', 'hist-ticket-45-1103', 'prod-latte', 1, 15000, 0, '2025-12-14T14:34:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1103', 'hist-ticket-45-1103', 'cash', 27000, 'completed', '2025-12-14T14:34:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1104', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-14T19:52:01.000Z', '2025-12-14T19:52:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1104-1', 'hist-ticket-45-1104', 'prod-mocha', 1, 16500, 0, '2025-12-14T19:52:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1104-2', 'hist-ticket-45-1104', 'prod-latte', 1, 15000, 0, '2025-12-14T19:52:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1104', 'hist-ticket-45-1104', 'cash', 31500, 'completed', '2025-12-14T19:52:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-45-1105', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-14T16:55:44.000Z', '2025-12-14T16:55:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1105-1', 'hist-ticket-45-1105', 'prod-mocha', 1, 16500, 0, '2025-12-14T16:55:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-45-1105-2', 'hist-ticket-45-1105', 'prod-latte', 1, 15000, 0, '2025-12-14T16:55:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-45-1105', 'hist-ticket-45-1105', 'cash', 31500, 'completed', '2025-12-14T16:55:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1106', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-15T18:35:25.000Z', '2025-12-15T18:35:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1106-1', 'hist-ticket-46-1106', 'prod-latte', 1, 15000, 0, '2025-12-15T18:35:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1106', 'hist-ticket-46-1106', 'cash', 15000, 'completed', '2025-12-15T18:35:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1107', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-15T11:46:52.000Z', '2025-12-15T11:46:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1107-1', 'hist-ticket-46-1107', 'prod-mocha', 1, 16500, 0, '2025-12-15T11:46:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1107-2', 'hist-ticket-46-1107', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T11:46:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1107-3', 'hist-ticket-46-1107', 'prod-americano', 1, 12000, 0, '2025-12-15T11:46:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1107', 'hist-ticket-46-1107', 'cash', 43000, 'completed', '2025-12-15T11:46:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1108', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-15T09:02:05.000Z', '2025-12-15T09:02:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1108-1', 'hist-ticket-46-1108', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T09:02:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1108-2', 'hist-ticket-46-1108', 'prod-mocha', 1, 16500, 0, '2025-12-15T09:02:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1108-3', 'hist-ticket-46-1108', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T09:02:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1108-4', 'hist-ticket-46-1108', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T09:02:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1108', 'hist-ticket-46-1108', 'cash', 60000, 'completed', '2025-12-15T09:02:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1109', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-15T11:03:48.000Z', '2025-12-15T11:03:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1109-1', 'hist-ticket-46-1109', 'prod-mocha', 1, 16500, 0, '2025-12-15T11:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1109-2', 'hist-ticket-46-1109', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T11:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1109-3', 'hist-ticket-46-1109', 'prod-americano', 1, 12000, 0, '2025-12-15T11:03:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1109', 'hist-ticket-46-1109', 'cash', 43000, 'completed', '2025-12-15T11:03:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1110', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-15T19:08:51.000Z', '2025-12-15T19:08:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1110-1', 'hist-ticket-46-1110', 'prod-americano', 1, 12000, 0, '2025-12-15T19:08:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1110-2', 'hist-ticket-46-1110', 'prod-latte', 1, 15000, 0, '2025-12-15T19:08:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1110', 'hist-ticket-46-1110', 'cash', 27000, 'completed', '2025-12-15T19:08:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1111', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-15T14:14:14.000Z', '2025-12-15T14:14:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1111-1', 'hist-ticket-46-1111', 'prod-americano', 1, 12000, 0, '2025-12-15T14:14:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1111-2', 'hist-ticket-46-1111', 'prod-americano', 1, 12000, 0, '2025-12-15T14:14:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1111', 'hist-ticket-46-1111', 'cash', 24000, 'completed', '2025-12-15T14:14:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1112', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-12-15T09:20:03.000Z', '2025-12-15T09:20:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1112-1', 'hist-ticket-46-1112', 'prod-latte', 1, 15000, 0, '2025-12-15T09:20:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1112-2', 'hist-ticket-46-1112', 'prod-latte', 1, 15000, 0, '2025-12-15T09:20:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1112-3', 'hist-ticket-46-1112', 'prod-latte', 1, 15000, 0, '2025-12-15T09:20:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1112', 'hist-ticket-46-1112', 'cash', 45000, 'completed', '2025-12-15T09:20:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1113', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-15T09:00:24.000Z', '2025-12-15T09:00:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1113-1', 'hist-ticket-46-1113', 'prod-latte', 1, 15000, 0, '2025-12-15T09:00:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1113', 'hist-ticket-46-1113', 'cash', 15000, 'completed', '2025-12-15T09:00:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1114', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-15T14:28:26.000Z', '2025-12-15T14:28:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1114-1', 'hist-ticket-46-1114', 'prod-latte', 1, 15000, 0, '2025-12-15T14:28:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1114-2', 'hist-ticket-46-1114', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T14:28:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1114', 'hist-ticket-46-1114', 'cash', 29500, 'completed', '2025-12-15T14:28:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1115', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-15T17:53:06.000Z', '2025-12-15T17:53:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1115-1', 'hist-ticket-46-1115', 'prod-latte', 1, 15000, 0, '2025-12-15T17:53:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1115', 'hist-ticket-46-1115', 'cash', 15000, 'completed', '2025-12-15T17:53:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1116', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-12-15T17:35:44.000Z', '2025-12-15T17:35:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1116-1', 'hist-ticket-46-1116', 'prod-americano', 1, 12000, 0, '2025-12-15T17:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1116-2', 'hist-ticket-46-1116', 'prod-latte', 1, 15000, 0, '2025-12-15T17:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1116-3', 'hist-ticket-46-1116', 'prod-latte', 1, 15000, 0, '2025-12-15T17:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1116-4', 'hist-ticket-46-1116', 'prod-americano', 1, 12000, 0, '2025-12-15T17:35:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1116', 'hist-ticket-46-1116', 'cash', 54000, 'completed', '2025-12-15T17:35:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1117', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-12-15T08:19:12.000Z', '2025-12-15T08:19:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1117-1', 'hist-ticket-46-1117', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T08:19:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1117-2', 'hist-ticket-46-1117', 'prod-mocha', 1, 16500, 0, '2025-12-15T08:19:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1117', 'hist-ticket-46-1117', 'cash', 31000, 'completed', '2025-12-15T08:19:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1118', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-15T12:01:22.000Z', '2025-12-15T12:01:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1118-1', 'hist-ticket-46-1118', 'prod-mocha', 1, 16500, 0, '2025-12-15T12:01:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1118-2', 'hist-ticket-46-1118', 'prod-latte', 1, 15000, 0, '2025-12-15T12:01:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1118-3', 'hist-ticket-46-1118', 'prod-mocha', 1, 16500, 0, '2025-12-15T12:01:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1118', 'hist-ticket-46-1118', 'cash', 48000, 'completed', '2025-12-15T12:01:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1119', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-15T14:30:32.000Z', '2025-12-15T14:30:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1119-1', 'hist-ticket-46-1119', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T14:30:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1119-2', 'hist-ticket-46-1119', 'prod-latte', 1, 15000, 0, '2025-12-15T14:30:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1119-3', 'hist-ticket-46-1119', 'prod-latte', 1, 15000, 0, '2025-12-15T14:30:32.000Z');