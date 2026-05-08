INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4414', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-19T13:11:02.000Z', '2026-04-19T13:11:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4414-1', 'hist-ticket-171-4414', 'prod-mocha', 1, 16500, 0, '2026-04-19T13:11:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4414', 'hist-ticket-171-4414', 'cash', 16500, 'completed', '2026-04-19T13:11:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4415', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-19T14:38:17.000Z', '2026-04-19T14:38:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4415-1', 'hist-ticket-171-4415', 'prod-latte', 1, 15000, 0, '2026-04-19T14:38:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4415', 'hist-ticket-171-4415', 'cash', 15000, 'completed', '2026-04-19T14:38:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4416', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T11:33:37.000Z', '2026-04-19T11:33:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4416-1', 'hist-ticket-171-4416', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:33:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4416', 'hist-ticket-171-4416', 'cash', 16500, 'completed', '2026-04-19T11:33:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4417', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T14:03:19.000Z', '2026-04-19T14:03:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4417-1', 'hist-ticket-171-4417', 'prod-mocha', 1, 16500, 0, '2026-04-19T14:03:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4417-2', 'hist-ticket-171-4417', 'prod-latte', 1, 15000, 0, '2026-04-19T14:03:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4417', 'hist-ticket-171-4417', 'cash', 31500, 'completed', '2026-04-19T14:03:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4418', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-19T15:13:23.000Z', '2026-04-19T15:13:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4418-1', 'hist-ticket-171-4418', 'prod-americano', 1, 12000, 0, '2026-04-19T15:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4418-2', 'hist-ticket-171-4418', 'prod-americano', 1, 12000, 0, '2026-04-19T15:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4418-3', 'hist-ticket-171-4418', 'prod-latte', 1, 15000, 0, '2026-04-19T15:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4418-4', 'hist-ticket-171-4418', 'prod-mocha', 1, 16500, 0, '2026-04-19T15:13:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4418', 'hist-ticket-171-4418', 'cash', 55500, 'completed', '2026-04-19T15:13:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4419', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-19T11:12:40.000Z', '2026-04-19T11:12:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4419-1', 'hist-ticket-171-4419', 'prod-americano', 1, 12000, 0, '2026-04-19T11:12:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4419', 'hist-ticket-171-4419', 'cash', 12000, 'completed', '2026-04-19T11:12:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4420', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-19T10:24:32.000Z', '2026-04-19T10:24:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4420-1', 'hist-ticket-171-4420', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T10:24:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4420-2', 'hist-ticket-171-4420', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T10:24:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4420-3', 'hist-ticket-171-4420', 'prod-mocha', 1, 16500, 0, '2026-04-19T10:24:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4420', 'hist-ticket-171-4420', 'cash', 45500, 'completed', '2026-04-19T10:24:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4421', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-19T15:35:35.000Z', '2026-04-19T15:35:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4421-1', 'hist-ticket-171-4421', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T15:35:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4421-2', 'hist-ticket-171-4421', 'prod-mocha', 1, 16500, 0, '2026-04-19T15:35:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4421', 'hist-ticket-171-4421', 'cash', 31000, 'completed', '2026-04-19T15:35:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4422', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-19T11:16:40.000Z', '2026-04-19T11:16:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4422-1', 'hist-ticket-171-4422', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:16:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4422-2', 'hist-ticket-171-4422', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:16:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4422-3', 'hist-ticket-171-4422', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T11:16:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4422', 'hist-ticket-171-4422', 'cash', 47500, 'completed', '2026-04-19T11:16:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4423', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T17:55:31.000Z', '2026-04-19T17:55:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4423-1', 'hist-ticket-171-4423', 'prod-latte', 1, 15000, 0, '2026-04-19T17:55:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4423-2', 'hist-ticket-171-4423', 'prod-americano', 1, 12000, 0, '2026-04-19T17:55:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4423', 'hist-ticket-171-4423', 'cash', 27000, 'completed', '2026-04-19T17:55:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4424', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T09:48:00.000Z', '2026-04-19T09:48:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4424-1', 'hist-ticket-171-4424', 'prod-mocha', 1, 16500, 0, '2026-04-19T09:48:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4424-2', 'hist-ticket-171-4424', 'prod-americano', 1, 12000, 0, '2026-04-19T09:48:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4424', 'hist-ticket-171-4424', 'cash', 28500, 'completed', '2026-04-19T09:48:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4425', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T11:02:45.000Z', '2026-04-19T11:02:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4425-1', 'hist-ticket-171-4425', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:02:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4425-2', 'hist-ticket-171-4425', 'prod-americano', 1, 12000, 0, '2026-04-19T11:02:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4425', 'hist-ticket-171-4425', 'cash', 28500, 'completed', '2026-04-19T11:02:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4426', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-19T09:37:41.000Z', '2026-04-19T09:37:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4426-1', 'hist-ticket-171-4426', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T09:37:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4426-2', 'hist-ticket-171-4426', 'prod-latte', 1, 15000, 0, '2026-04-19T09:37:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4426-3', 'hist-ticket-171-4426', 'prod-latte', 1, 15000, 0, '2026-04-19T09:37:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4426', 'hist-ticket-171-4426', 'cash', 44500, 'completed', '2026-04-19T09:37:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4427', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-19T13:08:24.000Z', '2026-04-19T13:08:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4427-1', 'hist-ticket-171-4427', 'prod-americano', 1, 12000, 0, '2026-04-19T13:08:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4427', 'hist-ticket-171-4427', 'cash', 12000, 'completed', '2026-04-19T13:08:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4428', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T10:25:25.000Z', '2026-04-19T10:25:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4428-1', 'hist-ticket-171-4428', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T10:25:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4428-2', 'hist-ticket-171-4428', 'prod-latte', 1, 15000, 0, '2026-04-19T10:25:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4428', 'hist-ticket-171-4428', 'cash', 29500, 'completed', '2026-04-19T10:25:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4429', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-19T19:53:19.000Z', '2026-04-19T19:53:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4429-1', 'hist-ticket-171-4429', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T19:53:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4429', 'hist-ticket-171-4429', 'cash', 14500, 'completed', '2026-04-19T19:53:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4430', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T15:49:26.000Z', '2026-04-19T15:49:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4430-1', 'hist-ticket-171-4430', 'prod-latte', 1, 15000, 0, '2026-04-19T15:49:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4430', 'hist-ticket-171-4430', 'cash', 15000, 'completed', '2026-04-19T15:49:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4431', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-19T11:58:49.000Z', '2026-04-19T11:58:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4431-1', 'hist-ticket-171-4431', 'prod-americano', 1, 12000, 0, '2026-04-19T11:58:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4431-2', 'hist-ticket-171-4431', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:58:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4431-3', 'hist-ticket-171-4431', 'prod-americano', 1, 12000, 0, '2026-04-19T11:58:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4431', 'hist-ticket-171-4431', 'cash', 40500, 'completed', '2026-04-19T11:58:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4432', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-19T13:10:38.000Z', '2026-04-19T13:10:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4432-1', 'hist-ticket-171-4432', 'prod-mocha', 1, 16500, 0, '2026-04-19T13:10:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4432', 'hist-ticket-171-4432', 'cash', 16500, 'completed', '2026-04-19T13:10:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4433', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-19T09:04:23.000Z', '2026-04-19T09:04:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4433-1', 'hist-ticket-171-4433', 'prod-americano', 1, 12000, 0, '2026-04-19T09:04:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4433-2', 'hist-ticket-171-4433', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T09:04:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4433', 'hist-ticket-171-4433', 'cash', 26500, 'completed', '2026-04-19T09:04:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4434', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-19T16:47:47.000Z', '2026-04-19T16:47:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4434-1', 'hist-ticket-171-4434', 'prod-mocha', 1, 16500, 0, '2026-04-19T16:47:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4434-2', 'hist-ticket-171-4434', 'prod-americano', 1, 12000, 0, '2026-04-19T16:47:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4434', 'hist-ticket-171-4434', 'cash', 28500, 'completed', '2026-04-19T16:47:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4435', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T17:43:26.000Z', '2026-04-19T17:43:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4435-1', 'hist-ticket-171-4435', 'prod-americano', 1, 12000, 0, '2026-04-19T17:43:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4435', 'hist-ticket-171-4435', 'cash', 12000, 'completed', '2026-04-19T17:43:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4436', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T12:01:05.000Z', '2026-04-19T12:01:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4436-1', 'hist-ticket-171-4436', 'prod-americano', 1, 12000, 0, '2026-04-19T12:01:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4436', 'hist-ticket-171-4436', 'cash', 12000, 'completed', '2026-04-19T12:01:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4437', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-04-19T08:40:39.000Z', '2026-04-19T08:40:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4437-1', 'hist-ticket-171-4437', 'prod-mocha', 1, 16500, 0, '2026-04-19T08:40:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4437', 'hist-ticket-171-4437', 'cash', 16500, 'completed', '2026-04-19T08:40:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4438', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-19T09:04:20.000Z', '2026-04-19T09:04:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4438-1', 'hist-ticket-171-4438', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T09:04:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4438-2', 'hist-ticket-171-4438', 'prod-americano', 1, 12000, 0, '2026-04-19T09:04:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4438-3', 'hist-ticket-171-4438', 'prod-latte', 1, 15000, 0, '2026-04-19T09:04:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4438-4', 'hist-ticket-171-4438', 'prod-mocha', 1, 16500, 0, '2026-04-19T09:04:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4438', 'hist-ticket-171-4438', 'cash', 58000, 'completed', '2026-04-19T09:04:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4439', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-04-19T13:18:06.000Z', '2026-04-19T13:18:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4439-1', 'hist-ticket-171-4439', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4439-2', 'hist-ticket-171-4439', 'prod-mocha', 1, 16500, 0, '2026-04-19T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4439-3', 'hist-ticket-171-4439', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4439-4', 'hist-ticket-171-4439', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T13:18:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4439', 'hist-ticket-171-4439', 'cash', 60000, 'completed', '2026-04-19T13:18:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4440', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-04-20T18:50:00.000Z', '2026-04-20T18:50:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4440-1', 'hist-ticket-172-4440', 'prod-mocha', 1, 16500, 0, '2026-04-20T18:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4440-2', 'hist-ticket-172-4440', 'prod-americano', 1, 12000, 0, '2026-04-20T18:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4440-3', 'hist-ticket-172-4440', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4440-4', 'hist-ticket-172-4440', 'prod-latte', 1, 15000, 0, '2026-04-20T18:50:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4440', 'hist-ticket-172-4440', 'cash', 58000, 'completed', '2026-04-20T18:50:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4441', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-20T11:21:20.000Z', '2026-04-20T11:21:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4441-1', 'hist-ticket-172-4441', 'prod-latte', 1, 15000, 0, '2026-04-20T11:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4441-2', 'hist-ticket-172-4441', 'prod-mocha', 1, 16500, 0, '2026-04-20T11:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4441-3', 'hist-ticket-172-4441', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T11:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4441-4', 'hist-ticket-172-4441', 'prod-mocha', 1, 16500, 0, '2026-04-20T11:21:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4441', 'hist-ticket-172-4441', 'cash', 62500, 'completed', '2026-04-20T11:21:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4442', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-20T08:49:36.000Z', '2026-04-20T08:49:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4442-1', 'hist-ticket-172-4442', 'prod-americano', 1, 12000, 0, '2026-04-20T08:49:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4442-2', 'hist-ticket-172-4442', 'prod-mocha', 1, 16500, 0, '2026-04-20T08:49:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4442-3', 'hist-ticket-172-4442', 'prod-americano', 1, 12000, 0, '2026-04-20T08:49:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4442', 'hist-ticket-172-4442', 'cash', 40500, 'completed', '2026-04-20T08:49:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4443', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-04-20T08:19:47.000Z', '2026-04-20T08:19:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4443-1', 'hist-ticket-172-4443', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T08:19:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4443-2', 'hist-ticket-172-4443', 'prod-mocha', 1, 16500, 0, '2026-04-20T08:19:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4443-3', 'hist-ticket-172-4443', 'prod-latte', 1, 15000, 0, '2026-04-20T08:19:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4443-4', 'hist-ticket-172-4443', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T08:19:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4443', 'hist-ticket-172-4443', 'cash', 60500, 'completed', '2026-04-20T08:19:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4444', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-20T14:09:16.000Z', '2026-04-20T14:09:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4444-1', 'hist-ticket-172-4444', 'prod-latte', 1, 15000, 0, '2026-04-20T14:09:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4444-2', 'hist-ticket-172-4444', 'prod-latte', 1, 15000, 0, '2026-04-20T14:09:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4444-3', 'hist-ticket-172-4444', 'prod-latte', 1, 15000, 0, '2026-04-20T14:09:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4444', 'hist-ticket-172-4444', 'cash', 45000, 'completed', '2026-04-20T14:09:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4445', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-20T18:42:21.000Z', '2026-04-20T18:42:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4445-1', 'hist-ticket-172-4445', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T18:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4445-2', 'hist-ticket-172-4445', 'prod-mocha', 1, 16500, 0, '2026-04-20T18:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4445-3', 'hist-ticket-172-4445', 'prod-americano', 1, 12000, 0, '2026-04-20T18:42:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4445', 'hist-ticket-172-4445', 'cash', 43000, 'completed', '2026-04-20T18:42:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4446', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-20T15:47:14.000Z', '2026-04-20T15:47:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4446-1', 'hist-ticket-172-4446', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:47:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4446-2', 'hist-ticket-172-4446', 'prod-latte', 1, 15000, 0, '2026-04-20T15:47:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4446-3', 'hist-ticket-172-4446', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:47:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4446', 'hist-ticket-172-4446', 'cash', 46000, 'completed', '2026-04-20T15:47:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4447', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-20T19:35:39.000Z', '2026-04-20T19:35:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4447-1', 'hist-ticket-172-4447', 'prod-latte', 1, 15000, 0, '2026-04-20T19:35:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4447-2', 'hist-ticket-172-4447', 'prod-americano', 1, 12000, 0, '2026-04-20T19:35:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4447-3', 'hist-ticket-172-4447', 'prod-mocha', 1, 16500, 0, '2026-04-20T19:35:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4447', 'hist-ticket-172-4447', 'cash', 43500, 'completed', '2026-04-20T19:35:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4448', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-20T12:17:42.000Z', '2026-04-20T12:17:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4448-1', 'hist-ticket-172-4448', 'prod-mocha', 1, 16500, 0, '2026-04-20T12:17:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4448', 'hist-ticket-172-4448', 'cash', 16500, 'completed', '2026-04-20T12:17:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4449', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-20T15:27:03.000Z', '2026-04-20T15:27:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4449-1', 'hist-ticket-172-4449', 'prod-americano', 1, 12000, 0, '2026-04-20T15:27:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4449', 'hist-ticket-172-4449', 'cash', 12000, 'completed', '2026-04-20T15:27:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4450', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-20T17:45:16.000Z', '2026-04-20T17:45:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4450-1', 'hist-ticket-172-4450', 'prod-latte', 1, 15000, 0, '2026-04-20T17:45:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4450-2', 'hist-ticket-172-4450', 'prod-mocha', 1, 16500, 0, '2026-04-20T17:45:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4450', 'hist-ticket-172-4450', 'cash', 31500, 'completed', '2026-04-20T17:45:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4451', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-20T09:15:52.000Z', '2026-04-20T09:15:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4451-1', 'hist-ticket-172-4451', 'prod-latte', 1, 15000, 0, '2026-04-20T09:15:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4451', 'hist-ticket-172-4451', 'cash', 15000, 'completed', '2026-04-20T09:15:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4452', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-20T13:22:49.000Z', '2026-04-20T13:22:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4452-1', 'hist-ticket-172-4452', 'prod-latte', 1, 15000, 0, '2026-04-20T13:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4452-2', 'hist-ticket-172-4452', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T13:22:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4452', 'hist-ticket-172-4452', 'cash', 29500, 'completed', '2026-04-20T13:22:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4453', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-20T12:54:11.000Z', '2026-04-20T12:54:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4453-1', 'hist-ticket-172-4453', 'prod-mocha', 1, 16500, 0, '2026-04-20T12:54:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4453-2', 'hist-ticket-172-4453', 'prod-americano', 1, 12000, 0, '2026-04-20T12:54:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4453', 'hist-ticket-172-4453', 'cash', 28500, 'completed', '2026-04-20T12:54:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4454', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-20T09:57:47.000Z', '2026-04-20T09:57:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4454-1', 'hist-ticket-172-4454', 'prod-mocha', 1, 16500, 0, '2026-04-20T09:57:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4454-2', 'hist-ticket-172-4454', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T09:57:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4454', 'hist-ticket-172-4454', 'cash', 31000, 'completed', '2026-04-20T09:57:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4455', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-20T15:03:19.000Z', '2026-04-20T15:03:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4455-1', 'hist-ticket-172-4455', 'prod-americano', 1, 12000, 0, '2026-04-20T15:03:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4455-2', 'hist-ticket-172-4455', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:03:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4455-3', 'hist-ticket-172-4455', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:03:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4455-4', 'hist-ticket-172-4455', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:03:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4455', 'hist-ticket-172-4455', 'cash', 61500, 'completed', '2026-04-20T15:03:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4456', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-20T09:19:03.000Z', '2026-04-20T09:19:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4456-1', 'hist-ticket-172-4456', 'prod-mocha', 1, 16500, 0, '2026-04-20T09:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4456-2', 'hist-ticket-172-4456', 'prod-americano', 1, 12000, 0, '2026-04-20T09:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4456-3', 'hist-ticket-172-4456', 'prod-latte', 1, 15000, 0, '2026-04-20T09:19:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4456', 'hist-ticket-172-4456', 'cash', 43500, 'completed', '2026-04-20T09:19:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4457', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-20T15:24:43.000Z', '2026-04-20T15:24:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4457-1', 'hist-ticket-172-4457', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:24:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4457-2', 'hist-ticket-172-4457', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:24:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4457-3', 'hist-ticket-172-4457', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T15:24:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4457-4', 'hist-ticket-172-4457', 'prod-mocha', 1, 16500, 0, '2026-04-20T15:24:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4457', 'hist-ticket-172-4457', 'cash', 62000, 'completed', '2026-04-20T15:24:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4458', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-04-20T09:48:21.000Z', '2026-04-20T09:48:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4458-1', 'hist-ticket-172-4458', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T09:48:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4458-2', 'hist-ticket-172-4458', 'prod-mocha', 1, 16500, 0, '2026-04-20T09:48:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4458-3', 'hist-ticket-172-4458', 'prod-latte', 1, 15000, 0, '2026-04-20T09:48:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4458', 'hist-ticket-172-4458', 'cash', 46000, 'completed', '2026-04-20T09:48:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4459', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-20T19:22:52.000Z', '2026-04-20T19:22:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4459-1', 'hist-ticket-172-4459', 'prod-latte', 1, 15000, 0, '2026-04-20T19:22:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4459-2', 'hist-ticket-172-4459', 'prod-latte', 1, 15000, 0, '2026-04-20T19:22:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4459-3', 'hist-ticket-172-4459', 'prod-latte', 1, 15000, 0, '2026-04-20T19:22:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4459-4', 'hist-ticket-172-4459', 'prod-americano', 1, 12000, 0, '2026-04-20T19:22:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4459', 'hist-ticket-172-4459', 'cash', 57000, 'completed', '2026-04-20T19:22:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4460', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-20T11:09:25.000Z', '2026-04-20T11:09:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4460-1', 'hist-ticket-172-4460', 'prod-latte', 1, 15000, 0, '2026-04-20T11:09:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4460-2', 'hist-ticket-172-4460', 'prod-cappuccino', 1, 14500, 0, '2026-04-20T11:09:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4460-3', 'hist-ticket-172-4460', 'prod-americano', 1, 12000, 0, '2026-04-20T11:09:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4460', 'hist-ticket-172-4460', 'cash', 41500, 'completed', '2026-04-20T11:09:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-172-4461', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-20T17:25:02.000Z', '2026-04-20T17:25:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4461-1', 'hist-ticket-172-4461', 'prod-americano', 1, 12000, 0, '2026-04-20T17:25:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4461-2', 'hist-ticket-172-4461', 'prod-americano', 1, 12000, 0, '2026-04-20T17:25:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-172-4461-3', 'hist-ticket-172-4461', 'prod-americano', 1, 12000, 0, '2026-04-20T17:25:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-172-4461', 'hist-ticket-172-4461', 'cash', 36000, 'completed', '2026-04-20T17:25:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4462', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-21T13:25:32.000Z', '2026-04-21T13:25:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4462-1', 'hist-ticket-173-4462', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T13:25:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4462-2', 'hist-ticket-173-4462', 'prod-latte', 1, 15000, 0, '2026-04-21T13:25:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4462', 'hist-ticket-173-4462', 'cash', 29500, 'completed', '2026-04-21T13:25:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4463', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-21T10:49:39.000Z', '2026-04-21T10:49:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4463-1', 'hist-ticket-173-4463', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:49:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4463-2', 'hist-ticket-173-4463', 'prod-americano', 1, 12000, 0, '2026-04-21T10:49:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4463-3', 'hist-ticket-173-4463', 'prod-americano', 1, 12000, 0, '2026-04-21T10:49:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4463', 'hist-ticket-173-4463', 'cash', 38500, 'completed', '2026-04-21T10:49:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4464', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-21T10:22:17.000Z', '2026-04-21T10:22:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4464-1', 'hist-ticket-173-4464', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:22:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4464', 'hist-ticket-173-4464', 'cash', 14500, 'completed', '2026-04-21T10:22:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4465', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-21T15:34:18.000Z', '2026-04-21T15:34:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4465-1', 'hist-ticket-173-4465', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:34:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4465-2', 'hist-ticket-173-4465', 'prod-latte', 1, 15000, 0, '2026-04-21T15:34:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4465-3', 'hist-ticket-173-4465', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:34:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4465', 'hist-ticket-173-4465', 'cash', 48000, 'completed', '2026-04-21T15:34:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4466', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-21T15:40:31.000Z', '2026-04-21T15:40:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4466-1', 'hist-ticket-173-4466', 'prod-mocha', 1, 16500, 0, '2026-04-21T15:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4466-2', 'hist-ticket-173-4466', 'prod-americano', 1, 12000, 0, '2026-04-21T15:40:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4466', 'hist-ticket-173-4466', 'cash', 28500, 'completed', '2026-04-21T15:40:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4467', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T10:00:06.000Z', '2026-04-21T10:00:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4467-1', 'hist-ticket-173-4467', 'prod-americano', 1, 12000, 0, '2026-04-21T10:00:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4467', 'hist-ticket-173-4467', 'cash', 12000, 'completed', '2026-04-21T10:00:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4468', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-21T15:48:06.000Z', '2026-04-21T15:48:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4468-1', 'hist-ticket-173-4468', 'prod-latte', 1, 15000, 0, '2026-04-21T15:48:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4468', 'hist-ticket-173-4468', 'cash', 15000, 'completed', '2026-04-21T15:48:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4469', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T09:43:18.000Z', '2026-04-21T09:43:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4469-1', 'hist-ticket-173-4469', 'prod-americano', 1, 12000, 0, '2026-04-21T09:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4469-2', 'hist-ticket-173-4469', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T09:43:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4469', 'hist-ticket-173-4469', 'cash', 26500, 'completed', '2026-04-21T09:43:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4470', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-21T10:30:58.000Z', '2026-04-21T10:30:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4470-1', 'hist-ticket-173-4470', 'prod-americano', 1, 12000, 0, '2026-04-21T10:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4470-2', 'hist-ticket-173-4470', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T10:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4470-3', 'hist-ticket-173-4470', 'prod-americano', 1, 12000, 0, '2026-04-21T10:30:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4470', 'hist-ticket-173-4470', 'cash', 38500, 'completed', '2026-04-21T10:30:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4471', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-21T09:41:15.000Z', '2026-04-21T09:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4471-1', 'hist-ticket-173-4471', 'prod-mocha', 1, 16500, 0, '2026-04-21T09:41:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4471', 'hist-ticket-173-4471', 'cash', 16500, 'completed', '2026-04-21T09:41:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4472', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-21T17:40:11.000Z', '2026-04-21T17:40:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4472-1', 'hist-ticket-173-4472', 'prod-americano', 1, 12000, 0, '2026-04-21T17:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4472-2', 'hist-ticket-173-4472', 'prod-mocha', 1, 16500, 0, '2026-04-21T17:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4472-3', 'hist-ticket-173-4472', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T17:40:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4472-4', 'hist-ticket-173-4472', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T17:40:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4472', 'hist-ticket-173-4472', 'cash', 57500, 'completed', '2026-04-21T17:40:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4473', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-21T16:09:47.000Z', '2026-04-21T16:09:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4473-1', 'hist-ticket-173-4473', 'prod-americano', 1, 12000, 0, '2026-04-21T16:09:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4473', 'hist-ticket-173-4473', 'cash', 12000, 'completed', '2026-04-21T16:09:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4474', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-21T12:24:18.000Z', '2026-04-21T12:24:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4474-1', 'hist-ticket-173-4474', 'prod-mocha', 1, 16500, 0, '2026-04-21T12:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4474-2', 'hist-ticket-173-4474', 'prod-americano', 1, 12000, 0, '2026-04-21T12:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4474-3', 'hist-ticket-173-4474', 'prod-latte', 1, 15000, 0, '2026-04-21T12:24:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4474', 'hist-ticket-173-4474', 'cash', 43500, 'completed', '2026-04-21T12:24:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4475', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-04-21T12:37:18.000Z', '2026-04-21T12:37:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4475-1', 'hist-ticket-173-4475', 'prod-americano', 1, 12000, 0, '2026-04-21T12:37:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4475', 'hist-ticket-173-4475', 'cash', 12000, 'completed', '2026-04-21T12:37:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4476', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-21T17:43:56.000Z', '2026-04-21T17:43:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4476-1', 'hist-ticket-173-4476', 'prod-latte', 1, 15000, 0, '2026-04-21T17:43:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4476-2', 'hist-ticket-173-4476', 'prod-americano', 1, 12000, 0, '2026-04-21T17:43:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4476-3', 'hist-ticket-173-4476', 'prod-americano', 1, 12000, 0, '2026-04-21T17:43:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4476', 'hist-ticket-173-4476', 'cash', 39000, 'completed', '2026-04-21T17:43:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4477', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-21T15:36:25.000Z', '2026-04-21T15:36:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4477-1', 'hist-ticket-173-4477', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T15:36:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4477', 'hist-ticket-173-4477', 'cash', 14500, 'completed', '2026-04-21T15:36:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4478', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-21T09:23:00.000Z', '2026-04-21T09:23:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4478-1', 'hist-ticket-173-4478', 'prod-americano', 1, 12000, 0, '2026-04-21T09:23:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4478-2', 'hist-ticket-173-4478', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T09:23:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4478', 'hist-ticket-173-4478', 'cash', 26500, 'completed', '2026-04-21T09:23:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4479', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-21T10:19:39.000Z', '2026-04-21T10:19:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4479-1', 'hist-ticket-173-4479', 'prod-mocha', 1, 16500, 0, '2026-04-21T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4479-2', 'hist-ticket-173-4479', 'prod-latte', 1, 15000, 0, '2026-04-21T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4479-3', 'hist-ticket-173-4479', 'prod-americano', 1, 12000, 0, '2026-04-21T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4479-4', 'hist-ticket-173-4479', 'prod-americano', 1, 12000, 0, '2026-04-21T10:19:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4479', 'hist-ticket-173-4479', 'cash', 55500, 'completed', '2026-04-21T10:19:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4480', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-04-21T09:13:20.000Z', '2026-04-21T09:13:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4480-1', 'hist-ticket-173-4480', 'prod-americano', 1, 12000, 0, '2026-04-21T09:13:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4480-2', 'hist-ticket-173-4480', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T09:13:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4480-3', 'hist-ticket-173-4480', 'prod-americano', 1, 12000, 0, '2026-04-21T09:13:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4480-4', 'hist-ticket-173-4480', 'prod-latte', 1, 15000, 0, '2026-04-21T09:13:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4480', 'hist-ticket-173-4480', 'cash', 53500, 'completed', '2026-04-21T09:13:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4481', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-21T15:36:48.000Z', '2026-04-21T15:36:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4481-1', 'hist-ticket-173-4481', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T15:36:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4481-2', 'hist-ticket-173-4481', 'prod-americano', 1, 12000, 0, '2026-04-21T15:36:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4481', 'hist-ticket-173-4481', 'cash', 26500, 'completed', '2026-04-21T15:36:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4482', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-21T14:40:06.000Z', '2026-04-21T14:40:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4482-1', 'hist-ticket-173-4482', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T14:40:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4482', 'hist-ticket-173-4482', 'cash', 14500, 'completed', '2026-04-21T14:40:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4483', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-21T19:28:54.000Z', '2026-04-21T19:28:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4483-1', 'hist-ticket-173-4483', 'prod-latte', 1, 15000, 0, '2026-04-21T19:28:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4483', 'hist-ticket-173-4483', 'cash', 15000, 'completed', '2026-04-21T19:28:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4484', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-21T08:59:06.000Z', '2026-04-21T08:59:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4484-1', 'hist-ticket-173-4484', 'prod-americano', 1, 12000, 0, '2026-04-21T08:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4484-2', 'hist-ticket-173-4484', 'prod-mocha', 1, 16500, 0, '2026-04-21T08:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4484-3', 'hist-ticket-173-4484', 'prod-mocha', 1, 16500, 0, '2026-04-21T08:59:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4484', 'hist-ticket-173-4484', 'cash', 45000, 'completed', '2026-04-21T08:59:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4485', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T19:30:42.000Z', '2026-04-21T19:30:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4485-1', 'hist-ticket-173-4485', 'prod-mocha', 1, 16500, 0, '2026-04-21T19:30:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4485-2', 'hist-ticket-173-4485', 'prod-mocha', 1, 16500, 0, '2026-04-21T19:30:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4485-3', 'hist-ticket-173-4485', 'prod-americano', 1, 12000, 0, '2026-04-21T19:30:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4485-4', 'hist-ticket-173-4485', 'prod-mocha', 1, 16500, 0, '2026-04-21T19:30:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4485', 'hist-ticket-173-4485', 'cash', 61500, 'completed', '2026-04-21T19:30:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4486', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-21T18:16:27.000Z', '2026-04-21T18:16:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4486-1', 'hist-ticket-173-4486', 'prod-latte', 1, 15000, 0, '2026-04-21T18:16:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4486-2', 'hist-ticket-173-4486', 'prod-latte', 1, 15000, 0, '2026-04-21T18:16:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4486', 'hist-ticket-173-4486', 'cash', 30000, 'completed', '2026-04-21T18:16:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4487', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-21T12:36:35.000Z', '2026-04-21T12:36:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4487-1', 'hist-ticket-173-4487', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T12:36:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4487-2', 'hist-ticket-173-4487', 'prod-americano', 1, 12000, 0, '2026-04-21T12:36:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4487', 'hist-ticket-173-4487', 'cash', 26500, 'completed', '2026-04-21T12:36:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4488', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-21T08:34:25.000Z', '2026-04-21T08:34:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4488-1', 'hist-ticket-173-4488', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T08:34:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4488-2', 'hist-ticket-173-4488', 'prod-americano', 1, 12000, 0, '2026-04-21T08:34:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4488', 'hist-ticket-173-4488', 'cash', 26500, 'completed', '2026-04-21T08:34:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4489', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-21T08:50:16.000Z', '2026-04-21T08:50:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4489-1', 'hist-ticket-173-4489', 'prod-latte', 1, 15000, 0, '2026-04-21T08:50:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4489-2', 'hist-ticket-173-4489', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T08:50:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4489-3', 'hist-ticket-173-4489', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T08:50:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4489', 'hist-ticket-173-4489', 'cash', 44000, 'completed', '2026-04-21T08:50:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4490', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-21T08:02:07.000Z', '2026-04-21T08:02:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4490-1', 'hist-ticket-173-4490', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T08:02:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4490', 'hist-ticket-173-4490', 'cash', 14500, 'completed', '2026-04-21T08:02:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-173-4491', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-21T14:50:08.000Z', '2026-04-21T14:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4491-1', 'hist-ticket-173-4491', 'prod-mocha', 1, 16500, 0, '2026-04-21T14:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4491-2', 'hist-ticket-173-4491', 'prod-cappuccino', 1, 14500, 0, '2026-04-21T14:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-173-4491-3', 'hist-ticket-173-4491', 'prod-mocha', 1, 16500, 0, '2026-04-21T14:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-173-4491', 'hist-ticket-173-4491', 'cash', 47500, 'completed', '2026-04-21T14:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4492', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-22T09:19:29.000Z', '2026-04-22T09:19:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4492-1', 'hist-ticket-174-4492', 'prod-americano', 1, 12000, 0, '2026-04-22T09:19:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4492', 'hist-ticket-174-4492', 'cash', 12000, 'completed', '2026-04-22T09:19:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4493', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-22T15:21:02.000Z', '2026-04-22T15:21:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4493-1', 'hist-ticket-174-4493', 'prod-americano', 1, 12000, 0, '2026-04-22T15:21:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4493', 'hist-ticket-174-4493', 'cash', 12000, 'completed', '2026-04-22T15:21:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4494', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-22T14:55:41.000Z', '2026-04-22T14:55:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4494-1', 'hist-ticket-174-4494', 'prod-mocha', 1, 16500, 0, '2026-04-22T14:55:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4494-2', 'hist-ticket-174-4494', 'prod-americano', 1, 12000, 0, '2026-04-22T14:55:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4494-3', 'hist-ticket-174-4494', 'prod-mocha', 1, 16500, 0, '2026-04-22T14:55:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4494', 'hist-ticket-174-4494', 'cash', 45000, 'completed', '2026-04-22T14:55:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4495', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-22T14:51:07.000Z', '2026-04-22T14:51:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4495-1', 'hist-ticket-174-4495', 'prod-americano', 1, 12000, 0, '2026-04-22T14:51:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4495-2', 'hist-ticket-174-4495', 'prod-latte', 1, 15000, 0, '2026-04-22T14:51:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4495-3', 'hist-ticket-174-4495', 'prod-americano', 1, 12000, 0, '2026-04-22T14:51:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4495-4', 'hist-ticket-174-4495', 'prod-latte', 1, 15000, 0, '2026-04-22T14:51:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4495', 'hist-ticket-174-4495', 'cash', 54000, 'completed', '2026-04-22T14:51:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4496', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-22T12:08:15.000Z', '2026-04-22T12:08:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4496-1', 'hist-ticket-174-4496', 'prod-mocha', 1, 16500, 0, '2026-04-22T12:08:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4496-2', 'hist-ticket-174-4496', 'prod-mocha', 1, 16500, 0, '2026-04-22T12:08:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4496', 'hist-ticket-174-4496', 'cash', 33000, 'completed', '2026-04-22T12:08:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4497', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-22T17:30:40.000Z', '2026-04-22T17:30:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4497-1', 'hist-ticket-174-4497', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T17:30:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4497', 'hist-ticket-174-4497', 'cash', 14500, 'completed', '2026-04-22T17:30:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4498', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-22T12:06:09.000Z', '2026-04-22T12:06:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4498-1', 'hist-ticket-174-4498', 'prod-latte', 1, 15000, 0, '2026-04-22T12:06:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4498-2', 'hist-ticket-174-4498', 'prod-americano', 1, 12000, 0, '2026-04-22T12:06:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4498-3', 'hist-ticket-174-4498', 'prod-latte', 1, 15000, 0, '2026-04-22T12:06:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4498', 'hist-ticket-174-4498', 'cash', 42000, 'completed', '2026-04-22T12:06:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4499', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-22T08:12:25.000Z', '2026-04-22T08:12:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4499-1', 'hist-ticket-174-4499', 'prod-latte', 1, 15000, 0, '2026-04-22T08:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4499-2', 'hist-ticket-174-4499', 'prod-latte', 1, 15000, 0, '2026-04-22T08:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4499-3', 'hist-ticket-174-4499', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T08:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4499-4', 'hist-ticket-174-4499', 'prod-latte', 1, 15000, 0, '2026-04-22T08:12:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4499', 'hist-ticket-174-4499', 'cash', 59500, 'completed', '2026-04-22T08:12:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4500', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-22T11:51:53.000Z', '2026-04-22T11:51:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4500-1', 'hist-ticket-174-4500', 'prod-mocha', 1, 16500, 0, '2026-04-22T11:51:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4500-2', 'hist-ticket-174-4500', 'prod-latte', 1, 15000, 0, '2026-04-22T11:51:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4500', 'hist-ticket-174-4500', 'cash', 31500, 'completed', '2026-04-22T11:51:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4501', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-22T11:03:56.000Z', '2026-04-22T11:03:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4501-1', 'hist-ticket-174-4501', 'prod-latte', 1, 15000, 0, '2026-04-22T11:03:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4501-2', 'hist-ticket-174-4501', 'prod-mocha', 1, 16500, 0, '2026-04-22T11:03:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4501-3', 'hist-ticket-174-4501', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:03:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4501-4', 'hist-ticket-174-4501', 'prod-americano', 1, 12000, 0, '2026-04-22T11:03:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4501', 'hist-ticket-174-4501', 'cash', 58000, 'completed', '2026-04-22T11:03:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4502', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-22T11:43:13.000Z', '2026-04-22T11:43:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4502-1', 'hist-ticket-174-4502', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:43:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4502', 'hist-ticket-174-4502', 'cash', 14500, 'completed', '2026-04-22T11:43:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4503', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-22T08:32:30.000Z', '2026-04-22T08:32:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4503-1', 'hist-ticket-174-4503', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T08:32:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4503', 'hist-ticket-174-4503', 'cash', 14500, 'completed', '2026-04-22T08:32:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4504', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-22T08:28:41.000Z', '2026-04-22T08:28:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4504-1', 'hist-ticket-174-4504', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T08:28:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4504', 'hist-ticket-174-4504', 'cash', 14500, 'completed', '2026-04-22T08:28:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4505', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-22T16:28:32.000Z', '2026-04-22T16:28:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4505-1', 'hist-ticket-174-4505', 'prod-latte', 1, 15000, 0, '2026-04-22T16:28:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4505', 'hist-ticket-174-4505', 'cash', 15000, 'completed', '2026-04-22T16:28:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4506', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-22T12:23:11.000Z', '2026-04-22T12:23:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4506-1', 'hist-ticket-174-4506', 'prod-mocha', 1, 16500, 0, '2026-04-22T12:23:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4506-2', 'hist-ticket-174-4506', 'prod-americano', 1, 12000, 0, '2026-04-22T12:23:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4506', 'hist-ticket-174-4506', 'cash', 28500, 'completed', '2026-04-22T12:23:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4507', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T09:54:30.000Z', '2026-04-22T09:54:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4507-1', 'hist-ticket-174-4507', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:54:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4507-2', 'hist-ticket-174-4507', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:54:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4507-3', 'hist-ticket-174-4507', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:54:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4507', 'hist-ticket-174-4507', 'cash', 47500, 'completed', '2026-04-22T09:54:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4508', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-22T15:40:14.000Z', '2026-04-22T15:40:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4508-1', 'hist-ticket-174-4508', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T15:40:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4508-2', 'hist-ticket-174-4508', 'prod-latte', 1, 15000, 0, '2026-04-22T15:40:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4508-3', 'hist-ticket-174-4508', 'prod-americano', 1, 12000, 0, '2026-04-22T15:40:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4508', 'hist-ticket-174-4508', 'cash', 41500, 'completed', '2026-04-22T15:40:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4509', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T09:58:03.000Z', '2026-04-22T09:58:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4509-1', 'hist-ticket-174-4509', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:58:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4509-2', 'hist-ticket-174-4509', 'prod-americano', 1, 12000, 0, '2026-04-22T09:58:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4509', 'hist-ticket-174-4509', 'cash', 28500, 'completed', '2026-04-22T09:58:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4510', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T10:43:24.000Z', '2026-04-22T10:43:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4510-1', 'hist-ticket-174-4510', 'prod-americano', 1, 12000, 0, '2026-04-22T10:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4510-2', 'hist-ticket-174-4510', 'prod-latte', 1, 15000, 0, '2026-04-22T10:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4510-3', 'hist-ticket-174-4510', 'prod-americano', 1, 12000, 0, '2026-04-22T10:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4510-4', 'hist-ticket-174-4510', 'prod-mocha', 1, 16500, 0, '2026-04-22T10:43:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4510', 'hist-ticket-174-4510', 'cash', 55500, 'completed', '2026-04-22T10:43:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4511', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-22T18:39:36.000Z', '2026-04-22T18:39:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4511-1', 'hist-ticket-174-4511', 'prod-latte', 1, 15000, 0, '2026-04-22T18:39:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4511', 'hist-ticket-174-4511', 'cash', 15000, 'completed', '2026-04-22T18:39:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4512', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-22T08:05:48.000Z', '2026-04-22T08:05:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4512-1', 'hist-ticket-174-4512', 'prod-latte', 1, 15000, 0, '2026-04-22T08:05:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4512', 'hist-ticket-174-4512', 'cash', 15000, 'completed', '2026-04-22T08:05:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4513', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-22T14:50:24.000Z', '2026-04-22T14:50:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4513-1', 'hist-ticket-174-4513', 'prod-latte', 1, 15000, 0, '2026-04-22T14:50:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4513', 'hist-ticket-174-4513', 'cash', 15000, 'completed', '2026-04-22T14:50:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4514', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-22T13:59:34.000Z', '2026-04-22T13:59:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4514-1', 'hist-ticket-174-4514', 'prod-latte', 1, 15000, 0, '2026-04-22T13:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4514-2', 'hist-ticket-174-4514', 'prod-mocha', 1, 16500, 0, '2026-04-22T13:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4514-3', 'hist-ticket-174-4514', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T13:59:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4514-4', 'hist-ticket-174-4514', 'prod-americano', 1, 12000, 0, '2026-04-22T13:59:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4514', 'hist-ticket-174-4514', 'cash', 58000, 'completed', '2026-04-22T13:59:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4515', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-22T11:50:20.000Z', '2026-04-22T11:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4515-1', 'hist-ticket-174-4515', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4515-2', 'hist-ticket-174-4515', 'prod-americano', 1, 12000, 0, '2026-04-22T11:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4515', 'hist-ticket-174-4515', 'cash', 26500, 'completed', '2026-04-22T11:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4516', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-22T12:59:38.000Z', '2026-04-22T12:59:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4516-1', 'hist-ticket-174-4516', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T12:59:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4516-2', 'hist-ticket-174-4516', 'prod-latte', 1, 15000, 0, '2026-04-22T12:59:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4516', 'hist-ticket-174-4516', 'cash', 29500, 'completed', '2026-04-22T12:59:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4517', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-22T15:50:10.000Z', '2026-04-22T15:50:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4517-1', 'hist-ticket-174-4517', 'prod-americano', 1, 12000, 0, '2026-04-22T15:50:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4517-2', 'hist-ticket-174-4517', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T15:50:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4517', 'hist-ticket-174-4517', 'cash', 26500, 'completed', '2026-04-22T15:50:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4518', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T08:58:41.000Z', '2026-04-22T08:58:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4518-1', 'hist-ticket-174-4518', 'prod-latte', 1, 15000, 0, '2026-04-22T08:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4518-2', 'hist-ticket-174-4518', 'prod-latte', 1, 15000, 0, '2026-04-22T08:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4518-3', 'hist-ticket-174-4518', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T08:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4518-4', 'hist-ticket-174-4518', 'prod-mocha', 1, 16500, 0, '2026-04-22T08:58:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4518', 'hist-ticket-174-4518', 'cash', 61000, 'completed', '2026-04-22T08:58:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4519', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-22T14:16:44.000Z', '2026-04-22T14:16:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4519-1', 'hist-ticket-174-4519', 'prod-mocha', 1, 16500, 0, '2026-04-22T14:16:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4519-2', 'hist-ticket-174-4519', 'prod-americano', 1, 12000, 0, '2026-04-22T14:16:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4519', 'hist-ticket-174-4519', 'cash', 28500, 'completed', '2026-04-22T14:16:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4520', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-22T16:04:28.000Z', '2026-04-22T16:04:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4520-1', 'hist-ticket-174-4520', 'prod-latte', 1, 15000, 0, '2026-04-22T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4520-2', 'hist-ticket-174-4520', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4520-3', 'hist-ticket-174-4520', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4520-4', 'hist-ticket-174-4520', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T16:04:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4520', 'hist-ticket-174-4520', 'cash', 58500, 'completed', '2026-04-22T16:04:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4521', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-22T11:25:20.000Z', '2026-04-22T11:25:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4521-1', 'hist-ticket-174-4521', 'prod-mocha', 1, 16500, 0, '2026-04-22T11:25:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4521-2', 'hist-ticket-174-4521', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T11:25:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4521', 'hist-ticket-174-4521', 'cash', 31000, 'completed', '2026-04-22T11:25:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4522', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-22T09:07:05.000Z', '2026-04-22T09:07:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4522-1', 'hist-ticket-174-4522', 'prod-americano', 1, 12000, 0, '2026-04-22T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4522-2', 'hist-ticket-174-4522', 'prod-latte', 1, 15000, 0, '2026-04-22T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4522-3', 'hist-ticket-174-4522', 'prod-cappuccino', 1, 14500, 0, '2026-04-22T09:07:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4522-4', 'hist-ticket-174-4522', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:07:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4522', 'hist-ticket-174-4522', 'cash', 58000, 'completed', '2026-04-22T09:07:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-174-4523', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-22T09:33:32.000Z', '2026-04-22T09:33:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4523-1', 'hist-ticket-174-4523', 'prod-mocha', 1, 16500, 0, '2026-04-22T09:33:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4523-2', 'hist-ticket-174-4523', 'prod-americano', 1, 12000, 0, '2026-04-22T09:33:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-174-4523-3', 'hist-ticket-174-4523', 'prod-americano', 1, 12000, 0, '2026-04-22T09:33:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-174-4523', 'hist-ticket-174-4523', 'cash', 40500, 'completed', '2026-04-22T09:33:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4524', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-23T10:24:46.000Z', '2026-04-23T10:24:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4524-1', 'hist-ticket-175-4524', 'prod-mocha', 1, 16500, 0, '2026-04-23T10:24:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4524-2', 'hist-ticket-175-4524', 'prod-americano', 1, 12000, 0, '2026-04-23T10:24:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4524-3', 'hist-ticket-175-4524', 'prod-americano', 1, 12000, 0, '2026-04-23T10:24:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4524', 'hist-ticket-175-4524', 'cash', 40500, 'completed', '2026-04-23T10:24:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4525', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-23T11:58:47.000Z', '2026-04-23T11:58:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4525-1', 'hist-ticket-175-4525', 'prod-mocha', 1, 16500, 0, '2026-04-23T11:58:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4525', 'hist-ticket-175-4525', 'cash', 16500, 'completed', '2026-04-23T11:58:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4526', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-23T13:48:18.000Z', '2026-04-23T13:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4526-1', 'hist-ticket-175-4526', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4526-2', 'hist-ticket-175-4526', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4526-3', 'hist-ticket-175-4526', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:48:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4526', 'hist-ticket-175-4526', 'cash', 43500, 'completed', '2026-04-23T13:48:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4527', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-23T17:45:45.000Z', '2026-04-23T17:45:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4527-1', 'hist-ticket-175-4527', 'prod-americano', 1, 12000, 0, '2026-04-23T17:45:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4527-2', 'hist-ticket-175-4527', 'prod-mocha', 1, 16500, 0, '2026-04-23T17:45:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4527-3', 'hist-ticket-175-4527', 'prod-mocha', 1, 16500, 0, '2026-04-23T17:45:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4527-4', 'hist-ticket-175-4527', 'prod-americano', 1, 12000, 0, '2026-04-23T17:45:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4527', 'hist-ticket-175-4527', 'cash', 57000, 'completed', '2026-04-23T17:45:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4528', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-23T10:32:37.000Z', '2026-04-23T10:32:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4528-1', 'hist-ticket-175-4528', 'prod-americano', 1, 12000, 0, '2026-04-23T10:32:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4528-2', 'hist-ticket-175-4528', 'prod-mocha', 1, 16500, 0, '2026-04-23T10:32:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4528', 'hist-ticket-175-4528', 'cash', 28500, 'completed', '2026-04-23T10:32:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4529', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-23T08:46:54.000Z', '2026-04-23T08:46:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4529-1', 'hist-ticket-175-4529', 'prod-americano', 1, 12000, 0, '2026-04-23T08:46:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4529-2', 'hist-ticket-175-4529', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T08:46:54.000Z');