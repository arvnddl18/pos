INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1119-4', 'hist-ticket-46-1119', 'prod-latte', 1, 15000, 0, '2025-12-15T14:30:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1119', 'hist-ticket-46-1119', 'cash', 59500, 'completed', '2025-12-15T14:30:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1120', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-15T14:11:08.000Z', '2025-12-15T14:11:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1120-1', 'hist-ticket-46-1120', 'prod-mocha', 1, 16500, 0, '2025-12-15T14:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1120-2', 'hist-ticket-46-1120', 'prod-mocha', 1, 16500, 0, '2025-12-15T14:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1120-3', 'hist-ticket-46-1120', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T14:11:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1120', 'hist-ticket-46-1120', 'cash', 47500, 'completed', '2025-12-15T14:11:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1121', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-15T13:21:14.000Z', '2025-12-15T13:21:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1121-1', 'hist-ticket-46-1121', 'prod-americano', 1, 12000, 0, '2025-12-15T13:21:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1121-2', 'hist-ticket-46-1121', 'prod-mocha', 1, 16500, 0, '2025-12-15T13:21:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1121', 'hist-ticket-46-1121', 'cash', 28500, 'completed', '2025-12-15T13:21:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1122', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-12-15T15:07:26.000Z', '2025-12-15T15:07:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1122-1', 'hist-ticket-46-1122', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T15:07:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1122-2', 'hist-ticket-46-1122', 'prod-cappuccino', 1, 14500, 0, '2025-12-15T15:07:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1122-3', 'hist-ticket-46-1122', 'prod-americano', 1, 12000, 0, '2025-12-15T15:07:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1122', 'hist-ticket-46-1122', 'cash', 41000, 'completed', '2025-12-15T15:07:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-46-1123', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-15T15:32:56.000Z', '2025-12-15T15:32:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-46-1123-1', 'hist-ticket-46-1123', 'prod-americano', 1, 12000, 0, '2025-12-15T15:32:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-46-1123', 'hist-ticket-46-1123', 'cash', 12000, 'completed', '2025-12-15T15:32:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1124', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-12-16T19:54:54.000Z', '2025-12-16T19:54:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1124-1', 'hist-ticket-47-1124', 'prod-mocha', 1, 16500, 0, '2025-12-16T19:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1124-2', 'hist-ticket-47-1124', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T19:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1124-3', 'hist-ticket-47-1124', 'prod-mocha', 1, 16500, 0, '2025-12-16T19:54:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1124', 'hist-ticket-47-1124', 'cash', 47500, 'completed', '2025-12-16T19:54:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1125', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-16T14:59:37.000Z', '2025-12-16T14:59:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1125-1', 'hist-ticket-47-1125', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T14:59:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1125-2', 'hist-ticket-47-1125', 'prod-americano', 1, 12000, 0, '2025-12-16T14:59:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1125-3', 'hist-ticket-47-1125', 'prod-mocha', 1, 16500, 0, '2025-12-16T14:59:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1125-4', 'hist-ticket-47-1125', 'prod-latte', 1, 15000, 0, '2025-12-16T14:59:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1125', 'hist-ticket-47-1125', 'cash', 58000, 'completed', '2025-12-16T14:59:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1126', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-16T15:24:52.000Z', '2025-12-16T15:24:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1126-1', 'hist-ticket-47-1126', 'prod-latte', 1, 15000, 0, '2025-12-16T15:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1126-2', 'hist-ticket-47-1126', 'prod-latte', 1, 15000, 0, '2025-12-16T15:24:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1126-3', 'hist-ticket-47-1126', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T15:24:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1126', 'hist-ticket-47-1126', 'cash', 44500, 'completed', '2025-12-16T15:24:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1127', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-16T13:07:04.000Z', '2025-12-16T13:07:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1127-1', 'hist-ticket-47-1127', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T13:07:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1127-2', 'hist-ticket-47-1127', 'prod-americano', 1, 12000, 0, '2025-12-16T13:07:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1127-3', 'hist-ticket-47-1127', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T13:07:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1127-4', 'hist-ticket-47-1127', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T13:07:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1127', 'hist-ticket-47-1127', 'cash', 55500, 'completed', '2025-12-16T13:07:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1128', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-16T14:54:36.000Z', '2025-12-16T14:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1128-1', 'hist-ticket-47-1128', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T14:54:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1128-2', 'hist-ticket-47-1128', 'prod-americano', 1, 12000, 0, '2025-12-16T14:54:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1128', 'hist-ticket-47-1128', 'cash', 26500, 'completed', '2025-12-16T14:54:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1129', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-16T15:32:55.000Z', '2025-12-16T15:32:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1129-1', 'hist-ticket-47-1129', 'prod-mocha', 1, 16500, 0, '2025-12-16T15:32:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1129-2', 'hist-ticket-47-1129', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T15:32:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1129-3', 'hist-ticket-47-1129', 'prod-mocha', 1, 16500, 0, '2025-12-16T15:32:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1129', 'hist-ticket-47-1129', 'cash', 47500, 'completed', '2025-12-16T15:32:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1130', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-16T09:45:27.000Z', '2025-12-16T09:45:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1130-1', 'hist-ticket-47-1130', 'prod-latte', 1, 15000, 0, '2025-12-16T09:45:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1130-2', 'hist-ticket-47-1130', 'prod-latte', 1, 15000, 0, '2025-12-16T09:45:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1130-3', 'hist-ticket-47-1130', 'prod-americano', 1, 12000, 0, '2025-12-16T09:45:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1130-4', 'hist-ticket-47-1130', 'prod-latte', 1, 15000, 0, '2025-12-16T09:45:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1130', 'hist-ticket-47-1130', 'cash', 57000, 'completed', '2025-12-16T09:45:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1131', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-16T13:44:45.000Z', '2025-12-16T13:44:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1131-1', 'hist-ticket-47-1131', 'prod-latte', 1, 15000, 0, '2025-12-16T13:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1131-2', 'hist-ticket-47-1131', 'prod-latte', 1, 15000, 0, '2025-12-16T13:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1131-3', 'hist-ticket-47-1131', 'prod-latte', 1, 15000, 0, '2025-12-16T13:44:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1131-4', 'hist-ticket-47-1131', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T13:44:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1131', 'hist-ticket-47-1131', 'cash', 59500, 'completed', '2025-12-16T13:44:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1132', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-16T17:54:32.000Z', '2025-12-16T17:54:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1132-1', 'hist-ticket-47-1132', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T17:54:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1132-2', 'hist-ticket-47-1132', 'prod-mocha', 1, 16500, 0, '2025-12-16T17:54:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1132-3', 'hist-ticket-47-1132', 'prod-latte', 1, 15000, 0, '2025-12-16T17:54:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1132-4', 'hist-ticket-47-1132', 'prod-mocha', 1, 16500, 0, '2025-12-16T17:54:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1132', 'hist-ticket-47-1132', 'cash', 62500, 'completed', '2025-12-16T17:54:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1133', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-16T08:11:58.000Z', '2025-12-16T08:11:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1133-1', 'hist-ticket-47-1133', 'prod-latte', 1, 15000, 0, '2025-12-16T08:11:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1133', 'hist-ticket-47-1133', 'cash', 15000, 'completed', '2025-12-16T08:11:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1134', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-16T10:20:30.000Z', '2025-12-16T10:20:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1134-1', 'hist-ticket-47-1134', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T10:20:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1134-2', 'hist-ticket-47-1134', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T10:20:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1134-3', 'hist-ticket-47-1134', 'prod-mocha', 1, 16500, 0, '2025-12-16T10:20:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1134', 'hist-ticket-47-1134', 'cash', 45500, 'completed', '2025-12-16T10:20:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1135', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-16T19:38:30.000Z', '2025-12-16T19:38:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1135-1', 'hist-ticket-47-1135', 'prod-mocha', 1, 16500, 0, '2025-12-16T19:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1135-2', 'hist-ticket-47-1135', 'prod-americano', 1, 12000, 0, '2025-12-16T19:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1135-3', 'hist-ticket-47-1135', 'prod-latte', 1, 15000, 0, '2025-12-16T19:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1135-4', 'hist-ticket-47-1135', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T19:38:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1135', 'hist-ticket-47-1135', 'cash', 58000, 'completed', '2025-12-16T19:38:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-47-1136', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-16T08:58:59.000Z', '2025-12-16T08:58:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1136-1', 'hist-ticket-47-1136', 'prod-latte', 1, 15000, 0, '2025-12-16T08:58:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1136-2', 'hist-ticket-47-1136', 'prod-latte', 1, 15000, 0, '2025-12-16T08:58:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1136-3', 'hist-ticket-47-1136', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T08:58:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-47-1136-4', 'hist-ticket-47-1136', 'prod-cappuccino', 1, 14500, 0, '2025-12-16T08:58:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-47-1136', 'hist-ticket-47-1136', 'cash', 59000, 'completed', '2025-12-16T08:58:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1137', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-17T11:55:57.000Z', '2025-12-17T11:55:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1137-1', 'hist-ticket-48-1137', 'prod-americano', 1, 12000, 0, '2025-12-17T11:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1137-2', 'hist-ticket-48-1137', 'prod-americano', 1, 12000, 0, '2025-12-17T11:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1137-3', 'hist-ticket-48-1137', 'prod-mocha', 1, 16500, 0, '2025-12-17T11:55:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1137', 'hist-ticket-48-1137', 'cash', 40500, 'completed', '2025-12-17T11:55:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1138', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-17T17:49:18.000Z', '2025-12-17T17:49:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1138-1', 'hist-ticket-48-1138', 'prod-latte', 1, 15000, 0, '2025-12-17T17:49:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1138', 'hist-ticket-48-1138', 'cash', 15000, 'completed', '2025-12-17T17:49:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1139', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-17T10:02:10.000Z', '2025-12-17T10:02:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1139-1', 'hist-ticket-48-1139', 'prod-latte', 1, 15000, 0, '2025-12-17T10:02:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1139-2', 'hist-ticket-48-1139', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T10:02:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1139', 'hist-ticket-48-1139', 'cash', 29500, 'completed', '2025-12-17T10:02:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1140', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-17T15:02:45.000Z', '2025-12-17T15:02:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1140-1', 'hist-ticket-48-1140', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T15:02:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1140-2', 'hist-ticket-48-1140', 'prod-latte', 1, 15000, 0, '2025-12-17T15:02:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1140-3', 'hist-ticket-48-1140', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T15:02:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1140-4', 'hist-ticket-48-1140', 'prod-latte', 1, 15000, 0, '2025-12-17T15:02:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1140', 'hist-ticket-48-1140', 'cash', 59000, 'completed', '2025-12-17T15:02:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1141', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-17T13:29:49.000Z', '2025-12-17T13:29:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1141-1', 'hist-ticket-48-1141', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T13:29:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1141', 'hist-ticket-48-1141', 'cash', 14500, 'completed', '2025-12-17T13:29:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1142', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-17T14:22:52.000Z', '2025-12-17T14:22:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1142-1', 'hist-ticket-48-1142', 'prod-mocha', 1, 16500, 0, '2025-12-17T14:22:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1142', 'hist-ticket-48-1142', 'cash', 16500, 'completed', '2025-12-17T14:22:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1143', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-17T09:47:48.000Z', '2025-12-17T09:47:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1143-1', 'hist-ticket-48-1143', 'prod-americano', 1, 12000, 0, '2025-12-17T09:47:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1143', 'hist-ticket-48-1143', 'cash', 12000, 'completed', '2025-12-17T09:47:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1144', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-17T11:31:47.000Z', '2025-12-17T11:31:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1144-1', 'hist-ticket-48-1144', 'prod-americano', 1, 12000, 0, '2025-12-17T11:31:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1144-2', 'hist-ticket-48-1144', 'prod-americano', 1, 12000, 0, '2025-12-17T11:31:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1144-3', 'hist-ticket-48-1144', 'prod-latte', 1, 15000, 0, '2025-12-17T11:31:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1144', 'hist-ticket-48-1144', 'cash', 39000, 'completed', '2025-12-17T11:31:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1145', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-17T15:14:07.000Z', '2025-12-17T15:14:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1145-1', 'hist-ticket-48-1145', 'prod-latte', 1, 15000, 0, '2025-12-17T15:14:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1145-2', 'hist-ticket-48-1145', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T15:14:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1145', 'hist-ticket-48-1145', 'cash', 29500, 'completed', '2025-12-17T15:14:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1146', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-17T08:52:51.000Z', '2025-12-17T08:52:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1146-1', 'hist-ticket-48-1146', 'prod-latte', 1, 15000, 0, '2025-12-17T08:52:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1146-2', 'hist-ticket-48-1146', 'prod-americano', 1, 12000, 0, '2025-12-17T08:52:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1146', 'hist-ticket-48-1146', 'cash', 27000, 'completed', '2025-12-17T08:52:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1147', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-17T17:57:07.000Z', '2025-12-17T17:57:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1147-1', 'hist-ticket-48-1147', 'prod-latte', 1, 15000, 0, '2025-12-17T17:57:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1147', 'hist-ticket-48-1147', 'cash', 15000, 'completed', '2025-12-17T17:57:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1148', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2025-12-17T13:48:11.000Z', '2025-12-17T13:48:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1148-1', 'hist-ticket-48-1148', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T13:48:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1148-2', 'hist-ticket-48-1148', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T13:48:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1148-3', 'hist-ticket-48-1148', 'prod-latte', 1, 15000, 0, '2025-12-17T13:48:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1148', 'hist-ticket-48-1148', 'cash', 44000, 'completed', '2025-12-17T13:48:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1149', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-17T10:25:01.000Z', '2025-12-17T10:25:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1149-1', 'hist-ticket-48-1149', 'prod-americano', 1, 12000, 0, '2025-12-17T10:25:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1149-2', 'hist-ticket-48-1149', 'prod-americano', 1, 12000, 0, '2025-12-17T10:25:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1149-3', 'hist-ticket-48-1149', 'prod-latte', 1, 15000, 0, '2025-12-17T10:25:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1149-4', 'hist-ticket-48-1149', 'prod-americano', 1, 12000, 0, '2025-12-17T10:25:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1149', 'hist-ticket-48-1149', 'cash', 51000, 'completed', '2025-12-17T10:25:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1150', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-17T13:25:34.000Z', '2025-12-17T13:25:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1150-1', 'hist-ticket-48-1150', 'prod-latte', 1, 15000, 0, '2025-12-17T13:25:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1150-2', 'hist-ticket-48-1150', 'prod-latte', 1, 15000, 0, '2025-12-17T13:25:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1150-3', 'hist-ticket-48-1150', 'prod-mocha', 1, 16500, 0, '2025-12-17T13:25:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1150', 'hist-ticket-48-1150', 'cash', 46500, 'completed', '2025-12-17T13:25:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1151', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-17T13:43:59.000Z', '2025-12-17T13:43:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1151-1', 'hist-ticket-48-1151', 'prod-americano', 1, 12000, 0, '2025-12-17T13:43:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1151-2', 'hist-ticket-48-1151', 'prod-latte', 1, 15000, 0, '2025-12-17T13:43:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1151-3', 'hist-ticket-48-1151', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T13:43:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1151-4', 'hist-ticket-48-1151', 'prod-americano', 1, 12000, 0, '2025-12-17T13:43:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1151', 'hist-ticket-48-1151', 'cash', 53500, 'completed', '2025-12-17T13:43:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1152', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-17T19:34:45.000Z', '2025-12-17T19:34:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1152-1', 'hist-ticket-48-1152', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T19:34:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1152-2', 'hist-ticket-48-1152', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T19:34:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1152-3', 'hist-ticket-48-1152', 'prod-latte', 1, 15000, 0, '2025-12-17T19:34:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1152', 'hist-ticket-48-1152', 'cash', 44000, 'completed', '2025-12-17T19:34:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1153', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-17T15:50:31.000Z', '2025-12-17T15:50:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1153-1', 'hist-ticket-48-1153', 'prod-mocha', 1, 16500, 0, '2025-12-17T15:50:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1153-2', 'hist-ticket-48-1153', 'prod-latte', 1, 15000, 0, '2025-12-17T15:50:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1153-3', 'hist-ticket-48-1153', 'prod-americano', 1, 12000, 0, '2025-12-17T15:50:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1153-4', 'hist-ticket-48-1153', 'prod-mocha', 1, 16500, 0, '2025-12-17T15:50:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1153', 'hist-ticket-48-1153', 'cash', 60000, 'completed', '2025-12-17T15:50:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1154', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-17T16:32:33.000Z', '2025-12-17T16:32:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1154-1', 'hist-ticket-48-1154', 'prod-latte', 1, 15000, 0, '2025-12-17T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1154-2', 'hist-ticket-48-1154', 'prod-mocha', 1, 16500, 0, '2025-12-17T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1154-3', 'hist-ticket-48-1154', 'prod-mocha', 1, 16500, 0, '2025-12-17T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1154-4', 'hist-ticket-48-1154', 'prod-latte', 1, 15000, 0, '2025-12-17T16:32:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1154', 'hist-ticket-48-1154', 'cash', 63000, 'completed', '2025-12-17T16:32:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1155', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-12-17T09:47:34.000Z', '2025-12-17T09:47:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1155-1', 'hist-ticket-48-1155', 'prod-mocha', 1, 16500, 0, '2025-12-17T09:47:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1155-2', 'hist-ticket-48-1155', 'prod-mocha', 1, 16500, 0, '2025-12-17T09:47:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1155-3', 'hist-ticket-48-1155', 'prod-cappuccino', 1, 14500, 0, '2025-12-17T09:47:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1155-4', 'hist-ticket-48-1155', 'prod-americano', 1, 12000, 0, '2025-12-17T09:47:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1155', 'hist-ticket-48-1155', 'cash', 59500, 'completed', '2025-12-17T09:47:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-48-1156', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-17T17:55:56.000Z', '2025-12-17T17:55:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1156-1', 'hist-ticket-48-1156', 'prod-latte', 1, 15000, 0, '2025-12-17T17:55:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1156-2', 'hist-ticket-48-1156', 'prod-latte', 1, 15000, 0, '2025-12-17T17:55:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1156-3', 'hist-ticket-48-1156', 'prod-americano', 1, 12000, 0, '2025-12-17T17:55:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-48-1156-4', 'hist-ticket-48-1156', 'prod-americano', 1, 12000, 0, '2025-12-17T17:55:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-48-1156', 'hist-ticket-48-1156', 'cash', 54000, 'completed', '2025-12-17T17:55:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1157', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-12-18T18:11:04.000Z', '2025-12-18T18:11:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1157-1', 'hist-ticket-49-1157', 'prod-americano', 1, 12000, 0, '2025-12-18T18:11:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1157-2', 'hist-ticket-49-1157', 'prod-mocha', 1, 16500, 0, '2025-12-18T18:11:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1157-3', 'hist-ticket-49-1157', 'prod-mocha', 1, 16500, 0, '2025-12-18T18:11:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1157-4', 'hist-ticket-49-1157', 'prod-mocha', 1, 16500, 0, '2025-12-18T18:11:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1157', 'hist-ticket-49-1157', 'cash', 61500, 'completed', '2025-12-18T18:11:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1158', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-18T11:18:58.000Z', '2025-12-18T11:18:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1158-1', 'hist-ticket-49-1158', 'prod-americano', 1, 12000, 0, '2025-12-18T11:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1158-2', 'hist-ticket-49-1158', 'prod-mocha', 1, 16500, 0, '2025-12-18T11:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1158-3', 'hist-ticket-49-1158', 'prod-latte', 1, 15000, 0, '2025-12-18T11:18:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1158', 'hist-ticket-49-1158', 'cash', 43500, 'completed', '2025-12-18T11:18:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1159', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-18T14:35:47.000Z', '2025-12-18T14:35:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1159-1', 'hist-ticket-49-1159', 'prod-americano', 1, 12000, 0, '2025-12-18T14:35:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1159-2', 'hist-ticket-49-1159', 'prod-americano', 1, 12000, 0, '2025-12-18T14:35:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1159', 'hist-ticket-49-1159', 'cash', 24000, 'completed', '2025-12-18T14:35:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1160', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-18T14:19:54.000Z', '2025-12-18T14:19:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1160-1', 'hist-ticket-49-1160', 'prod-latte', 1, 15000, 0, '2025-12-18T14:19:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1160', 'hist-ticket-49-1160', 'cash', 15000, 'completed', '2025-12-18T14:19:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1161', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-18T18:18:52.000Z', '2025-12-18T18:18:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1161-1', 'hist-ticket-49-1161', 'prod-latte', 1, 15000, 0, '2025-12-18T18:18:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1161', 'hist-ticket-49-1161', 'cash', 15000, 'completed', '2025-12-18T18:18:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1162', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-18T18:31:56.000Z', '2025-12-18T18:31:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1162-1', 'hist-ticket-49-1162', 'prod-americano', 1, 12000, 0, '2025-12-18T18:31:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1162-2', 'hist-ticket-49-1162', 'prod-mocha', 1, 16500, 0, '2025-12-18T18:31:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1162-3', 'hist-ticket-49-1162', 'prod-americano', 1, 12000, 0, '2025-12-18T18:31:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1162-4', 'hist-ticket-49-1162', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T18:31:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1162', 'hist-ticket-49-1162', 'cash', 55000, 'completed', '2025-12-18T18:31:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1163', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-12-18T09:54:14.000Z', '2025-12-18T09:54:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1163-1', 'hist-ticket-49-1163', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T09:54:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1163', 'hist-ticket-49-1163', 'cash', 14500, 'completed', '2025-12-18T09:54:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1164', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-18T10:52:08.000Z', '2025-12-18T10:52:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1164-1', 'hist-ticket-49-1164', 'prod-latte', 1, 15000, 0, '2025-12-18T10:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1164-2', 'hist-ticket-49-1164', 'prod-mocha', 1, 16500, 0, '2025-12-18T10:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1164-3', 'hist-ticket-49-1164', 'prod-latte', 1, 15000, 0, '2025-12-18T10:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1164-4', 'hist-ticket-49-1164', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T10:52:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1164', 'hist-ticket-49-1164', 'cash', 61000, 'completed', '2025-12-18T10:52:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1165', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-18T17:56:31.000Z', '2025-12-18T17:56:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1165-1', 'hist-ticket-49-1165', 'prod-mocha', 1, 16500, 0, '2025-12-18T17:56:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1165', 'hist-ticket-49-1165', 'cash', 16500, 'completed', '2025-12-18T17:56:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1166', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-18T12:15:14.000Z', '2025-12-18T12:15:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1166-1', 'hist-ticket-49-1166', 'prod-americano', 1, 12000, 0, '2025-12-18T12:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1166-2', 'hist-ticket-49-1166', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T12:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1166-3', 'hist-ticket-49-1166', 'prod-americano', 1, 12000, 0, '2025-12-18T12:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1166-4', 'hist-ticket-49-1166', 'prod-latte', 1, 15000, 0, '2025-12-18T12:15:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1166', 'hist-ticket-49-1166', 'cash', 53500, 'completed', '2025-12-18T12:15:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1167', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-18T13:09:55.000Z', '2025-12-18T13:09:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1167-1', 'hist-ticket-49-1167', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T13:09:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1167-2', 'hist-ticket-49-1167', 'prod-latte', 1, 15000, 0, '2025-12-18T13:09:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1167', 'hist-ticket-49-1167', 'cash', 29500, 'completed', '2025-12-18T13:09:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1168', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-18T13:32:03.000Z', '2025-12-18T13:32:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1168-1', 'hist-ticket-49-1168', 'prod-mocha', 1, 16500, 0, '2025-12-18T13:32:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1168-2', 'hist-ticket-49-1168', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T13:32:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1168-3', 'hist-ticket-49-1168', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T13:32:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1168-4', 'hist-ticket-49-1168', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T13:32:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1168', 'hist-ticket-49-1168', 'cash', 60000, 'completed', '2025-12-18T13:32:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1169', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-18T15:18:16.000Z', '2025-12-18T15:18:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1169-1', 'hist-ticket-49-1169', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T15:18:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1169-2', 'hist-ticket-49-1169', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T15:18:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1169-3', 'hist-ticket-49-1169', 'prod-latte', 1, 15000, 0, '2025-12-18T15:18:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1169', 'hist-ticket-49-1169', 'cash', 44000, 'completed', '2025-12-18T15:18:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1170', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-18T15:12:39.000Z', '2025-12-18T15:12:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1170-1', 'hist-ticket-49-1170', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T15:12:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1170-2', 'hist-ticket-49-1170', 'prod-americano', 1, 12000, 0, '2025-12-18T15:12:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1170-3', 'hist-ticket-49-1170', 'prod-americano', 1, 12000, 0, '2025-12-18T15:12:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1170-4', 'hist-ticket-49-1170', 'prod-mocha', 1, 16500, 0, '2025-12-18T15:12:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1170', 'hist-ticket-49-1170', 'cash', 55000, 'completed', '2025-12-18T15:12:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1171', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-18T15:11:00.000Z', '2025-12-18T15:11:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1171-1', 'hist-ticket-49-1171', 'prod-latte', 1, 15000, 0, '2025-12-18T15:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1171-2', 'hist-ticket-49-1171', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T15:11:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1171', 'hist-ticket-49-1171', 'cash', 29500, 'completed', '2025-12-18T15:11:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1172', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-18T08:26:56.000Z', '2025-12-18T08:26:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1172-1', 'hist-ticket-49-1172', 'prod-americano', 1, 12000, 0, '2025-12-18T08:26:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1172-2', 'hist-ticket-49-1172', 'prod-latte', 1, 15000, 0, '2025-12-18T08:26:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1172-3', 'hist-ticket-49-1172', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T08:26:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1172', 'hist-ticket-49-1172', 'cash', 41500, 'completed', '2025-12-18T08:26:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1173', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-12-18T12:44:10.000Z', '2025-12-18T12:44:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1173-1', 'hist-ticket-49-1173', 'prod-americano', 1, 12000, 0, '2025-12-18T12:44:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1173', 'hist-ticket-49-1173', 'cash', 12000, 'completed', '2025-12-18T12:44:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1174', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-18T11:36:58.000Z', '2025-12-18T11:36:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1174-1', 'hist-ticket-49-1174', 'prod-latte', 1, 15000, 0, '2025-12-18T11:36:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1174-2', 'hist-ticket-49-1174', 'prod-americano', 1, 12000, 0, '2025-12-18T11:36:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1174-3', 'hist-ticket-49-1174', 'prod-americano', 1, 12000, 0, '2025-12-18T11:36:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1174', 'hist-ticket-49-1174', 'cash', 39000, 'completed', '2025-12-18T11:36:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1175', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-18T14:59:49.000Z', '2025-12-18T14:59:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1175-1', 'hist-ticket-49-1175', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T14:59:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1175', 'hist-ticket-49-1175', 'cash', 14500, 'completed', '2025-12-18T14:59:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1176', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-12-18T13:23:40.000Z', '2025-12-18T13:23:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1176-1', 'hist-ticket-49-1176', 'prod-mocha', 1, 16500, 0, '2025-12-18T13:23:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1176-2', 'hist-ticket-49-1176', 'prod-mocha', 1, 16500, 0, '2025-12-18T13:23:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1176', 'hist-ticket-49-1176', 'cash', 33000, 'completed', '2025-12-18T13:23:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1177', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-18T14:54:12.000Z', '2025-12-18T14:54:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1177-1', 'hist-ticket-49-1177', 'prod-americano', 1, 12000, 0, '2025-12-18T14:54:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1177-2', 'hist-ticket-49-1177', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T14:54:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1177-3', 'hist-ticket-49-1177', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T14:54:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1177', 'hist-ticket-49-1177', 'cash', 41000, 'completed', '2025-12-18T14:54:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1178', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-18T11:01:40.000Z', '2025-12-18T11:01:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1178-1', 'hist-ticket-49-1178', 'prod-mocha', 1, 16500, 0, '2025-12-18T11:01:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1178', 'hist-ticket-49-1178', 'cash', 16500, 'completed', '2025-12-18T11:01:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1179', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-18T18:35:43.000Z', '2025-12-18T18:35:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1179-1', 'hist-ticket-49-1179', 'prod-latte', 1, 15000, 0, '2025-12-18T18:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1179-2', 'hist-ticket-49-1179', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T18:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1179-3', 'hist-ticket-49-1179', 'prod-latte', 1, 15000, 0, '2025-12-18T18:35:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1179-4', 'hist-ticket-49-1179', 'prod-latte', 1, 15000, 0, '2025-12-18T18:35:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1179', 'hist-ticket-49-1179', 'cash', 59500, 'completed', '2025-12-18T18:35:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1180', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-18T12:57:21.000Z', '2025-12-18T12:57:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1180-1', 'hist-ticket-49-1180', 'prod-latte', 1, 15000, 0, '2025-12-18T12:57:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1180-2', 'hist-ticket-49-1180', 'prod-cappuccino', 1, 14500, 0, '2025-12-18T12:57:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1180', 'hist-ticket-49-1180', 'cash', 29500, 'completed', '2025-12-18T12:57:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1181', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-12-18T14:44:16.000Z', '2025-12-18T14:44:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1181-1', 'hist-ticket-49-1181', 'prod-mocha', 1, 16500, 0, '2025-12-18T14:44:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1181-2', 'hist-ticket-49-1181', 'prod-latte', 1, 15000, 0, '2025-12-18T14:44:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1181', 'hist-ticket-49-1181', 'cash', 31500, 'completed', '2025-12-18T14:44:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-49-1182', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-12-18T14:01:58.000Z', '2025-12-18T14:01:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-49-1182-1', 'hist-ticket-49-1182', 'prod-americano', 1, 12000, 0, '2025-12-18T14:01:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-49-1182', 'hist-ticket-49-1182', 'cash', 12000, 'completed', '2025-12-18T14:01:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1183', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-19T14:36:37.000Z', '2025-12-19T14:36:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1183-1', 'hist-ticket-50-1183', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T14:36:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1183-2', 'hist-ticket-50-1183', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T14:36:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1183', 'hist-ticket-50-1183', 'cash', 29000, 'completed', '2025-12-19T14:36:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1184', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-19T13:00:38.000Z', '2025-12-19T13:00:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1184-1', 'hist-ticket-50-1184', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T13:00:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1184-2', 'hist-ticket-50-1184', 'prod-latte', 1, 15000, 0, '2025-12-19T13:00:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1184-3', 'hist-ticket-50-1184', 'prod-mocha', 1, 16500, 0, '2025-12-19T13:00:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1184', 'hist-ticket-50-1184', 'cash', 46000, 'completed', '2025-12-19T13:00:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1185', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-19T19:51:02.000Z', '2025-12-19T19:51:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1185-1', 'hist-ticket-50-1185', 'prod-latte', 1, 15000, 0, '2025-12-19T19:51:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1185-2', 'hist-ticket-50-1185', 'prod-americano', 1, 12000, 0, '2025-12-19T19:51:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1185-3', 'hist-ticket-50-1185', 'prod-americano', 1, 12000, 0, '2025-12-19T19:51:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1185', 'hist-ticket-50-1185', 'cash', 39000, 'completed', '2025-12-19T19:51:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1186', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-19T08:35:58.000Z', '2025-12-19T08:35:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1186-1', 'hist-ticket-50-1186', 'prod-americano', 1, 12000, 0, '2025-12-19T08:35:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1186', 'hist-ticket-50-1186', 'cash', 12000, 'completed', '2025-12-19T08:35:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1187', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-19T13:59:03.000Z', '2025-12-19T13:59:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1187-1', 'hist-ticket-50-1187', 'prod-latte', 1, 15000, 0, '2025-12-19T13:59:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1187', 'hist-ticket-50-1187', 'cash', 15000, 'completed', '2025-12-19T13:59:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1188', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-19T19:28:30.000Z', '2025-12-19T19:28:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1188-1', 'hist-ticket-50-1188', 'prod-americano', 1, 12000, 0, '2025-12-19T19:28:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1188-2', 'hist-ticket-50-1188', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T19:28:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1188-3', 'hist-ticket-50-1188', 'prod-latte', 1, 15000, 0, '2025-12-19T19:28:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1188', 'hist-ticket-50-1188', 'cash', 41500, 'completed', '2025-12-19T19:28:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1189', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-19T10:11:48.000Z', '2025-12-19T10:11:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1189-1', 'hist-ticket-50-1189', 'prod-latte', 1, 15000, 0, '2025-12-19T10:11:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1189-2', 'hist-ticket-50-1189', 'prod-latte', 1, 15000, 0, '2025-12-19T10:11:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1189-3', 'hist-ticket-50-1189', 'prod-americano', 1, 12000, 0, '2025-12-19T10:11:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1189', 'hist-ticket-50-1189', 'cash', 42000, 'completed', '2025-12-19T10:11:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1190', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-19T15:44:07.000Z', '2025-12-19T15:44:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1190-1', 'hist-ticket-50-1190', 'prod-latte', 1, 15000, 0, '2025-12-19T15:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1190-2', 'hist-ticket-50-1190', 'prod-americano', 1, 12000, 0, '2025-12-19T15:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1190-3', 'hist-ticket-50-1190', 'prod-americano', 1, 12000, 0, '2025-12-19T15:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1190-4', 'hist-ticket-50-1190', 'prod-americano', 1, 12000, 0, '2025-12-19T15:44:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1190', 'hist-ticket-50-1190', 'cash', 51000, 'completed', '2025-12-19T15:44:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1191', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-19T12:07:08.000Z', '2025-12-19T12:07:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1191-1', 'hist-ticket-50-1191', 'prod-latte', 1, 15000, 0, '2025-12-19T12:07:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1191-2', 'hist-ticket-50-1191', 'prod-americano', 1, 12000, 0, '2025-12-19T12:07:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1191-3', 'hist-ticket-50-1191', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T12:07:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1191', 'hist-ticket-50-1191', 'cash', 41500, 'completed', '2025-12-19T12:07:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1192', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-19T19:17:36.000Z', '2025-12-19T19:17:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1192-1', 'hist-ticket-50-1192', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T19:17:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1192', 'hist-ticket-50-1192', 'cash', 14500, 'completed', '2025-12-19T19:17:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1193', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-19T17:24:20.000Z', '2025-12-19T17:24:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1193-1', 'hist-ticket-50-1193', 'prod-mocha', 1, 16500, 0, '2025-12-19T17:24:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1193-2', 'hist-ticket-50-1193', 'prod-americano', 1, 12000, 0, '2025-12-19T17:24:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1193', 'hist-ticket-50-1193', 'cash', 28500, 'completed', '2025-12-19T17:24:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1194', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-12-19T15:33:10.000Z', '2025-12-19T15:33:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1194-1', 'hist-ticket-50-1194', 'prod-latte', 1, 15000, 0, '2025-12-19T15:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1194-2', 'hist-ticket-50-1194', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T15:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1194-3', 'hist-ticket-50-1194', 'prod-mocha', 1, 16500, 0, '2025-12-19T15:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1194-4', 'hist-ticket-50-1194', 'prod-americano', 1, 12000, 0, '2025-12-19T15:33:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1194', 'hist-ticket-50-1194', 'cash', 58000, 'completed', '2025-12-19T15:33:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1195', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-19T12:49:52.000Z', '2025-12-19T12:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1195-1', 'hist-ticket-50-1195', 'prod-mocha', 1, 16500, 0, '2025-12-19T12:49:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1195', 'hist-ticket-50-1195', 'cash', 16500, 'completed', '2025-12-19T12:49:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1196', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-19T12:51:58.000Z', '2025-12-19T12:51:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1196-1', 'hist-ticket-50-1196', 'prod-americano', 1, 12000, 0, '2025-12-19T12:51:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1196', 'hist-ticket-50-1196', 'cash', 12000, 'completed', '2025-12-19T12:51:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1197', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-12-19T11:35:23.000Z', '2025-12-19T11:35:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1197-1', 'hist-ticket-50-1197', 'prod-latte', 1, 15000, 0, '2025-12-19T11:35:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1197', 'hist-ticket-50-1197', 'cash', 15000, 'completed', '2025-12-19T11:35:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1198', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-19T19:28:18.000Z', '2025-12-19T19:28:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1198-1', 'hist-ticket-50-1198', 'prod-americano', 1, 12000, 0, '2025-12-19T19:28:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1198-2', 'hist-ticket-50-1198', 'prod-americano', 1, 12000, 0, '2025-12-19T19:28:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1198', 'hist-ticket-50-1198', 'cash', 24000, 'completed', '2025-12-19T19:28:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1199', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-19T19:46:45.000Z', '2025-12-19T19:46:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1199-1', 'hist-ticket-50-1199', 'prod-mocha', 1, 16500, 0, '2025-12-19T19:46:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1199-2', 'hist-ticket-50-1199', 'prod-latte', 1, 15000, 0, '2025-12-19T19:46:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1199', 'hist-ticket-50-1199', 'cash', 31500, 'completed', '2025-12-19T19:46:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1200', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-19T13:12:35.000Z', '2025-12-19T13:12:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1200-1', 'hist-ticket-50-1200', 'prod-americano', 1, 12000, 0, '2025-12-19T13:12:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1200-2', 'hist-ticket-50-1200', 'prod-mocha', 1, 16500, 0, '2025-12-19T13:12:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1200-3', 'hist-ticket-50-1200', 'prod-americano', 1, 12000, 0, '2025-12-19T13:12:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1200-4', 'hist-ticket-50-1200', 'prod-mocha', 1, 16500, 0, '2025-12-19T13:12:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1200', 'hist-ticket-50-1200', 'cash', 57000, 'completed', '2025-12-19T13:12:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1201', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-19T19:15:58.000Z', '2025-12-19T19:15:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1201-1', 'hist-ticket-50-1201', 'prod-americano', 1, 12000, 0, '2025-12-19T19:15:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1201-2', 'hist-ticket-50-1201', 'prod-mocha', 1, 16500, 0, '2025-12-19T19:15:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1201', 'hist-ticket-50-1201', 'cash', 28500, 'completed', '2025-12-19T19:15:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1202', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-19T08:58:41.000Z', '2025-12-19T08:58:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1202-1', 'hist-ticket-50-1202', 'prod-americano', 1, 12000, 0, '2025-12-19T08:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1202-2', 'hist-ticket-50-1202', 'prod-mocha', 1, 16500, 0, '2025-12-19T08:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1202-3', 'hist-ticket-50-1202', 'prod-americano', 1, 12000, 0, '2025-12-19T08:58:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1202', 'hist-ticket-50-1202', 'cash', 40500, 'completed', '2025-12-19T08:58:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1203', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-12-19T12:46:46.000Z', '2025-12-19T12:46:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1203-1', 'hist-ticket-50-1203', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T12:46:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1203', 'hist-ticket-50-1203', 'cash', 14500, 'completed', '2025-12-19T12:46:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1204', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-19T16:51:38.000Z', '2025-12-19T16:51:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1204-1', 'hist-ticket-50-1204', 'prod-americano', 1, 12000, 0, '2025-12-19T16:51:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1204-2', 'hist-ticket-50-1204', 'prod-americano', 1, 12000, 0, '2025-12-19T16:51:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1204-3', 'hist-ticket-50-1204', 'prod-americano', 1, 12000, 0, '2025-12-19T16:51:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1204', 'hist-ticket-50-1204', 'cash', 36000, 'completed', '2025-12-19T16:51:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1205', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-19T09:21:01.000Z', '2025-12-19T09:21:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1205-1', 'hist-ticket-50-1205', 'prod-mocha', 1, 16500, 0, '2025-12-19T09:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1205-2', 'hist-ticket-50-1205', 'prod-latte', 1, 15000, 0, '2025-12-19T09:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1205-3', 'hist-ticket-50-1205', 'prod-mocha', 1, 16500, 0, '2025-12-19T09:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1205-4', 'hist-ticket-50-1205', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T09:21:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1205', 'hist-ticket-50-1205', 'cash', 62500, 'completed', '2025-12-19T09:21:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1206', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-19T12:10:04.000Z', '2025-12-19T12:10:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1206-1', 'hist-ticket-50-1206', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T12:10:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1206', 'hist-ticket-50-1206', 'cash', 14500, 'completed', '2025-12-19T12:10:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-50-1207', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-19T18:20:31.000Z', '2025-12-19T18:20:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1207-1', 'hist-ticket-50-1207', 'prod-mocha', 1, 16500, 0, '2025-12-19T18:20:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1207-2', 'hist-ticket-50-1207', 'prod-mocha', 1, 16500, 0, '2025-12-19T18:20:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1207-3', 'hist-ticket-50-1207', 'prod-americano', 1, 12000, 0, '2025-12-19T18:20:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-50-1207-4', 'hist-ticket-50-1207', 'prod-cappuccino', 1, 14500, 0, '2025-12-19T18:20:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-50-1207', 'hist-ticket-50-1207', 'cash', 59500, 'completed', '2025-12-19T18:20:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1208', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-20T09:57:06.000Z', '2025-12-20T09:57:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1208-1', 'hist-ticket-51-1208', 'prod-latte', 1, 15000, 0, '2025-12-20T09:57:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1208-2', 'hist-ticket-51-1208', 'prod-americano', 1, 12000, 0, '2025-12-20T09:57:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1208-3', 'hist-ticket-51-1208', 'prod-americano', 1, 12000, 0, '2025-12-20T09:57:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1208-4', 'hist-ticket-51-1208', 'prod-latte', 1, 15000, 0, '2025-12-20T09:57:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1208', 'hist-ticket-51-1208', 'cash', 54000, 'completed', '2025-12-20T09:57:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1209', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-20T18:52:08.000Z', '2025-12-20T18:52:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1209-1', 'hist-ticket-51-1209', 'prod-americano', 1, 12000, 0, '2025-12-20T18:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1209-2', 'hist-ticket-51-1209', 'prod-americano', 1, 12000, 0, '2025-12-20T18:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1209-3', 'hist-ticket-51-1209', 'prod-americano', 1, 12000, 0, '2025-12-20T18:52:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1209', 'hist-ticket-51-1209', 'cash', 36000, 'completed', '2025-12-20T18:52:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1210', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-20T12:14:49.000Z', '2025-12-20T12:14:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1210-1', 'hist-ticket-51-1210', 'prod-latte', 1, 15000, 0, '2025-12-20T12:14:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1210-2', 'hist-ticket-51-1210', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T12:14:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1210', 'hist-ticket-51-1210', 'cash', 29500, 'completed', '2025-12-20T12:14:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1211', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-20T10:36:51.000Z', '2025-12-20T10:36:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1211-1', 'hist-ticket-51-1211', 'prod-mocha', 1, 16500, 0, '2025-12-20T10:36:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1211-2', 'hist-ticket-51-1211', 'prod-latte', 1, 15000, 0, '2025-12-20T10:36:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1211', 'hist-ticket-51-1211', 'cash', 31500, 'completed', '2025-12-20T10:36:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1212', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-20T09:33:36.000Z', '2025-12-20T09:33:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1212-1', 'hist-ticket-51-1212', 'prod-latte', 1, 15000, 0, '2025-12-20T09:33:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1212-2', 'hist-ticket-51-1212', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T09:33:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1212-3', 'hist-ticket-51-1212', 'prod-americano', 1, 12000, 0, '2025-12-20T09:33:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1212', 'hist-ticket-51-1212', 'cash', 41500, 'completed', '2025-12-20T09:33:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1213', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-20T16:16:07.000Z', '2025-12-20T16:16:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1213-1', 'hist-ticket-51-1213', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T16:16:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1213-2', 'hist-ticket-51-1213', 'prod-americano', 1, 12000, 0, '2025-12-20T16:16:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1213-3', 'hist-ticket-51-1213', 'prod-mocha', 1, 16500, 0, '2025-12-20T16:16:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1213-4', 'hist-ticket-51-1213', 'prod-latte', 1, 15000, 0, '2025-12-20T16:16:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1213', 'hist-ticket-51-1213', 'cash', 58000, 'completed', '2025-12-20T16:16:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1214', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-20T13:13:22.000Z', '2025-12-20T13:13:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1214-1', 'hist-ticket-51-1214', 'prod-latte', 1, 15000, 0, '2025-12-20T13:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1214-2', 'hist-ticket-51-1214', 'prod-americano', 1, 12000, 0, '2025-12-20T13:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1214-3', 'hist-ticket-51-1214', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:13:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1214', 'hist-ticket-51-1214', 'cash', 41500, 'completed', '2025-12-20T13:13:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1215', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-20T18:44:26.000Z', '2025-12-20T18:44:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1215-1', 'hist-ticket-51-1215', 'prod-mocha', 1, 16500, 0, '2025-12-20T18:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1215-2', 'hist-ticket-51-1215', 'prod-latte', 1, 15000, 0, '2025-12-20T18:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1215-3', 'hist-ticket-51-1215', 'prod-americano', 1, 12000, 0, '2025-12-20T18:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1215-4', 'hist-ticket-51-1215', 'prod-americano', 1, 12000, 0, '2025-12-20T18:44:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1215', 'hist-ticket-51-1215', 'cash', 55500, 'completed', '2025-12-20T18:44:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1216', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-20T08:49:48.000Z', '2025-12-20T08:49:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1216-1', 'hist-ticket-51-1216', 'prod-latte', 1, 15000, 0, '2025-12-20T08:49:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1216-2', 'hist-ticket-51-1216', 'prod-mocha', 1, 16500, 0, '2025-12-20T08:49:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1216', 'hist-ticket-51-1216', 'cash', 31500, 'completed', '2025-12-20T08:49:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1217', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-20T11:22:33.000Z', '2025-12-20T11:22:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1217-1', 'hist-ticket-51-1217', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T11:22:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1217-2', 'hist-ticket-51-1217', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T11:22:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1217', 'hist-ticket-51-1217', 'cash', 29000, 'completed', '2025-12-20T11:22:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1218', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-20T17:37:03.000Z', '2025-12-20T17:37:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1218-1', 'hist-ticket-51-1218', 'prod-latte', 1, 15000, 0, '2025-12-20T17:37:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1218-2', 'hist-ticket-51-1218', 'prod-mocha', 1, 16500, 0, '2025-12-20T17:37:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1218', 'hist-ticket-51-1218', 'cash', 31500, 'completed', '2025-12-20T17:37:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1219', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-20T09:48:45.000Z', '2025-12-20T09:48:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1219-1', 'hist-ticket-51-1219', 'prod-americano', 1, 12000, 0, '2025-12-20T09:48:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1219-2', 'hist-ticket-51-1219', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T09:48:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1219', 'hist-ticket-51-1219', 'cash', 26500, 'completed', '2025-12-20T09:48:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1220', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-20T09:47:34.000Z', '2025-12-20T09:47:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1220-1', 'hist-ticket-51-1220', 'prod-americano', 1, 12000, 0, '2025-12-20T09:47:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1220-2', 'hist-ticket-51-1220', 'prod-latte', 1, 15000, 0, '2025-12-20T09:47:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1220-3', 'hist-ticket-51-1220', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T09:47:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1220', 'hist-ticket-51-1220', 'cash', 41500, 'completed', '2025-12-20T09:47:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1221', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-20T17:30:16.000Z', '2025-12-20T17:30:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1221-1', 'hist-ticket-51-1221', 'prod-mocha', 1, 16500, 0, '2025-12-20T17:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1221-2', 'hist-ticket-51-1221', 'prod-mocha', 1, 16500, 0, '2025-12-20T17:30:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1221', 'hist-ticket-51-1221', 'cash', 33000, 'completed', '2025-12-20T17:30:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1222', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-20T14:27:25.000Z', '2025-12-20T14:27:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1222-1', 'hist-ticket-51-1222', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T14:27:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1222-2', 'hist-ticket-51-1222', 'prod-latte', 1, 15000, 0, '2025-12-20T14:27:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1222-3', 'hist-ticket-51-1222', 'prod-americano', 1, 12000, 0, '2025-12-20T14:27:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1222', 'hist-ticket-51-1222', 'cash', 41500, 'completed', '2025-12-20T14:27:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1223', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-20T12:45:52.000Z', '2025-12-20T12:45:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1223-1', 'hist-ticket-51-1223', 'prod-latte', 1, 15000, 0, '2025-12-20T12:45:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1223-2', 'hist-ticket-51-1223', 'prod-mocha', 1, 16500, 0, '2025-12-20T12:45:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1223', 'hist-ticket-51-1223', 'cash', 31500, 'completed', '2025-12-20T12:45:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1224', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-20T18:32:44.000Z', '2025-12-20T18:32:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1224-1', 'hist-ticket-51-1224', 'prod-latte', 1, 15000, 0, '2025-12-20T18:32:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1224-2', 'hist-ticket-51-1224', 'prod-mocha', 1, 16500, 0, '2025-12-20T18:32:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1224-3', 'hist-ticket-51-1224', 'prod-latte', 1, 15000, 0, '2025-12-20T18:32:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1224-4', 'hist-ticket-51-1224', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T18:32:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1224', 'hist-ticket-51-1224', 'cash', 61000, 'completed', '2025-12-20T18:32:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1225', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-20T13:08:32.000Z', '2025-12-20T13:08:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1225-1', 'hist-ticket-51-1225', 'prod-mocha', 1, 16500, 0, '2025-12-20T13:08:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1225-2', 'hist-ticket-51-1225', 'prod-mocha', 1, 16500, 0, '2025-12-20T13:08:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1225-3', 'hist-ticket-51-1225', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:08:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1225-4', 'hist-ticket-51-1225', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:08:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1225', 'hist-ticket-51-1225', 'cash', 62000, 'completed', '2025-12-20T13:08:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1226', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-20T18:11:01.000Z', '2025-12-20T18:11:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1226-1', 'hist-ticket-51-1226', 'prod-mocha', 1, 16500, 0, '2025-12-20T18:11:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1226', 'hist-ticket-51-1226', 'cash', 16500, 'completed', '2025-12-20T18:11:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1227', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-20T12:39:54.000Z', '2025-12-20T12:39:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1227-1', 'hist-ticket-51-1227', 'prod-latte', 1, 15000, 0, '2025-12-20T12:39:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1227', 'hist-ticket-51-1227', 'cash', 15000, 'completed', '2025-12-20T12:39:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1228', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-20T11:30:27.000Z', '2025-12-20T11:30:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;