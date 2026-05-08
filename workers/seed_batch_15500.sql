INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3420-1', 'hist-ticket-136-3420', 'prod-mocha', 1, 16500, 0, '2026-03-15T09:20:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3420-2', 'hist-ticket-136-3420', 'prod-mocha', 1, 16500, 0, '2026-03-15T09:20:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3420-3', 'hist-ticket-136-3420', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T09:20:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3420', 'hist-ticket-136-3420', 'cash', 47500, 'completed', '2026-03-15T09:20:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3421', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-15T19:13:45.000Z', '2026-03-15T19:13:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3421-1', 'hist-ticket-136-3421', 'prod-americano', 1, 12000, 0, '2026-03-15T19:13:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3421', 'hist-ticket-136-3421', 'cash', 12000, 'completed', '2026-03-15T19:13:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3422', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-03-15T12:16:37.000Z', '2026-03-15T12:16:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3422-1', 'hist-ticket-136-3422', 'prod-latte', 1, 15000, 0, '2026-03-15T12:16:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3422-2', 'hist-ticket-136-3422', 'prod-latte', 1, 15000, 0, '2026-03-15T12:16:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3422', 'hist-ticket-136-3422', 'cash', 30000, 'completed', '2026-03-15T12:16:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3423', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-15T11:43:23.000Z', '2026-03-15T11:43:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3423-1', 'hist-ticket-136-3423', 'prod-americano', 1, 12000, 0, '2026-03-15T11:43:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3423', 'hist-ticket-136-3423', 'cash', 12000, 'completed', '2026-03-15T11:43:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3424', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-03-15T11:56:40.000Z', '2026-03-15T11:56:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3424-1', 'hist-ticket-136-3424', 'prod-latte', 1, 15000, 0, '2026-03-15T11:56:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3424-2', 'hist-ticket-136-3424', 'prod-americano', 1, 12000, 0, '2026-03-15T11:56:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3424', 'hist-ticket-136-3424', 'cash', 27000, 'completed', '2026-03-15T11:56:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3425', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-15T08:24:19.000Z', '2026-03-15T08:24:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3425-1', 'hist-ticket-136-3425', 'prod-latte', 1, 15000, 0, '2026-03-15T08:24:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3425', 'hist-ticket-136-3425', 'cash', 15000, 'completed', '2026-03-15T08:24:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3426', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-15T12:10:43.000Z', '2026-03-15T12:10:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3426-1', 'hist-ticket-136-3426', 'prod-mocha', 1, 16500, 0, '2026-03-15T12:10:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3426-2', 'hist-ticket-136-3426', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T12:10:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3426-3', 'hist-ticket-136-3426', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T12:10:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3426-4', 'hist-ticket-136-3426', 'prod-latte', 1, 15000, 0, '2026-03-15T12:10:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3426', 'hist-ticket-136-3426', 'cash', 60500, 'completed', '2026-03-15T12:10:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3427', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-15T16:03:52.000Z', '2026-03-15T16:03:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3427-1', 'hist-ticket-136-3427', 'prod-americano', 1, 12000, 0, '2026-03-15T16:03:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3427-2', 'hist-ticket-136-3427', 'prod-latte', 1, 15000, 0, '2026-03-15T16:03:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3427', 'hist-ticket-136-3427', 'cash', 27000, 'completed', '2026-03-15T16:03:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3428', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-15T18:50:18.000Z', '2026-03-15T18:50:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3428-1', 'hist-ticket-136-3428', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T18:50:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3428', 'hist-ticket-136-3428', 'cash', 14500, 'completed', '2026-03-15T18:50:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3429', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-15T17:56:01.000Z', '2026-03-15T17:56:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3429-1', 'hist-ticket-136-3429', 'prod-latte', 1, 15000, 0, '2026-03-15T17:56:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3429', 'hist-ticket-136-3429', 'cash', 15000, 'completed', '2026-03-15T17:56:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3430', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-15T15:08:52.000Z', '2026-03-15T15:08:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3430-1', 'hist-ticket-136-3430', 'prod-americano', 1, 12000, 0, '2026-03-15T15:08:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3430', 'hist-ticket-136-3430', 'cash', 12000, 'completed', '2026-03-15T15:08:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3431', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-03-15T13:12:16.000Z', '2026-03-15T13:12:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3431-1', 'hist-ticket-136-3431', 'prod-mocha', 1, 16500, 0, '2026-03-15T13:12:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3431', 'hist-ticket-136-3431', 'cash', 16500, 'completed', '2026-03-15T13:12:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3432', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-15T08:45:19.000Z', '2026-03-15T08:45:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3432-1', 'hist-ticket-136-3432', 'prod-mocha', 1, 16500, 0, '2026-03-15T08:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3432-2', 'hist-ticket-136-3432', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T08:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3432-3', 'hist-ticket-136-3432', 'prod-americano', 1, 12000, 0, '2026-03-15T08:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3432-4', 'hist-ticket-136-3432', 'prod-mocha', 1, 16500, 0, '2026-03-15T08:45:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3432', 'hist-ticket-136-3432', 'cash', 59500, 'completed', '2026-03-15T08:45:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3433', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-15T15:42:33.000Z', '2026-03-15T15:42:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3433-1', 'hist-ticket-136-3433', 'prod-mocha', 1, 16500, 0, '2026-03-15T15:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3433-2', 'hist-ticket-136-3433', 'prod-latte', 1, 15000, 0, '2026-03-15T15:42:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3433-3', 'hist-ticket-136-3433', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T15:42:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3433', 'hist-ticket-136-3433', 'cash', 46000, 'completed', '2026-03-15T15:42:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3434', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-15T11:00:26.000Z', '2026-03-15T11:00:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3434-1', 'hist-ticket-136-3434', 'prod-latte', 1, 15000, 0, '2026-03-15T11:00:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3434-2', 'hist-ticket-136-3434', 'prod-americano', 1, 12000, 0, '2026-03-15T11:00:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3434', 'hist-ticket-136-3434', 'cash', 27000, 'completed', '2026-03-15T11:00:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3435', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-15T18:53:17.000Z', '2026-03-15T18:53:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3435-1', 'hist-ticket-136-3435', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T18:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3435-2', 'hist-ticket-136-3435', 'prod-mocha', 1, 16500, 0, '2026-03-15T18:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3435-3', 'hist-ticket-136-3435', 'prod-mocha', 1, 16500, 0, '2026-03-15T18:53:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3435', 'hist-ticket-136-3435', 'cash', 47500, 'completed', '2026-03-15T18:53:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3436', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-15T08:31:15.000Z', '2026-03-15T08:31:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3436-1', 'hist-ticket-136-3436', 'prod-latte', 1, 15000, 0, '2026-03-15T08:31:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3436-2', 'hist-ticket-136-3436', 'prod-latte', 1, 15000, 0, '2026-03-15T08:31:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3436-3', 'hist-ticket-136-3436', 'prod-latte', 1, 15000, 0, '2026-03-15T08:31:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3436', 'hist-ticket-136-3436', 'cash', 45000, 'completed', '2026-03-15T08:31:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3437', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-15T09:21:23.000Z', '2026-03-15T09:21:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3437-1', 'hist-ticket-136-3437', 'prod-mocha', 1, 16500, 0, '2026-03-15T09:21:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3437-2', 'hist-ticket-136-3437', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T09:21:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3437-3', 'hist-ticket-136-3437', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T09:21:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3437', 'hist-ticket-136-3437', 'cash', 45500, 'completed', '2026-03-15T09:21:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3438', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-15T16:10:26.000Z', '2026-03-15T16:10:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3438-1', 'hist-ticket-136-3438', 'prod-americano', 1, 12000, 0, '2026-03-15T16:10:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3438-2', 'hist-ticket-136-3438', 'prod-americano', 1, 12000, 0, '2026-03-15T16:10:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3438', 'hist-ticket-136-3438', 'cash', 24000, 'completed', '2026-03-15T16:10:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3439', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-15T15:20:59.000Z', '2026-03-15T15:20:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3439-1', 'hist-ticket-136-3439', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T15:20:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3439-2', 'hist-ticket-136-3439', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T15:20:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3439-3', 'hist-ticket-136-3439', 'prod-latte', 1, 15000, 0, '2026-03-15T15:20:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3439', 'hist-ticket-136-3439', 'cash', 44000, 'completed', '2026-03-15T15:20:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3440', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-15T13:52:43.000Z', '2026-03-15T13:52:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3440-1', 'hist-ticket-136-3440', 'prod-latte', 1, 15000, 0, '2026-03-15T13:52:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3440', 'hist-ticket-136-3440', 'cash', 15000, 'completed', '2026-03-15T13:52:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3441', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-03-15T15:43:25.000Z', '2026-03-15T15:43:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3441-1', 'hist-ticket-136-3441', 'prod-latte', 1, 15000, 0, '2026-03-15T15:43:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3441', 'hist-ticket-136-3441', 'cash', 15000, 'completed', '2026-03-15T15:43:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3442', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-15T10:14:30.000Z', '2026-03-15T10:14:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3442-1', 'hist-ticket-136-3442', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T10:14:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3442-2', 'hist-ticket-136-3442', 'prod-americano', 1, 12000, 0, '2026-03-15T10:14:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3442', 'hist-ticket-136-3442', 'cash', 26500, 'completed', '2026-03-15T10:14:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3443', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-15T13:15:09.000Z', '2026-03-15T13:15:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3443-1', 'hist-ticket-136-3443', 'prod-mocha', 1, 16500, 0, '2026-03-15T13:15:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3443', 'hist-ticket-136-3443', 'cash', 16500, 'completed', '2026-03-15T13:15:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3444', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-15T11:39:25.000Z', '2026-03-15T11:39:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3444-1', 'hist-ticket-136-3444', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T11:39:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3444-2', 'hist-ticket-136-3444', 'prod-latte', 1, 15000, 0, '2026-03-15T11:39:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3444-3', 'hist-ticket-136-3444', 'prod-americano', 1, 12000, 0, '2026-03-15T11:39:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3444-4', 'hist-ticket-136-3444', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T11:39:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3444', 'hist-ticket-136-3444', 'cash', 56000, 'completed', '2026-03-15T11:39:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3445', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-16T08:53:45.000Z', '2026-03-16T08:53:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3445-1', 'hist-ticket-137-3445', 'prod-mocha', 1, 16500, 0, '2026-03-16T08:53:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3445-2', 'hist-ticket-137-3445', 'prod-americano', 1, 12000, 0, '2026-03-16T08:53:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3445-3', 'hist-ticket-137-3445', 'prod-americano', 1, 12000, 0, '2026-03-16T08:53:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3445-4', 'hist-ticket-137-3445', 'prod-mocha', 1, 16500, 0, '2026-03-16T08:53:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3445', 'hist-ticket-137-3445', 'cash', 57000, 'completed', '2026-03-16T08:53:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3446', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-16T19:37:21.000Z', '2026-03-16T19:37:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3446-1', 'hist-ticket-137-3446', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T19:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3446-2', 'hist-ticket-137-3446', 'prod-americano', 1, 12000, 0, '2026-03-16T19:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3446-3', 'hist-ticket-137-3446', 'prod-mocha', 1, 16500, 0, '2026-03-16T19:37:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3446-4', 'hist-ticket-137-3446', 'prod-americano', 1, 12000, 0, '2026-03-16T19:37:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3446', 'hist-ticket-137-3446', 'cash', 55000, 'completed', '2026-03-16T19:37:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3447', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-16T14:22:28.000Z', '2026-03-16T14:22:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3447-1', 'hist-ticket-137-3447', 'prod-latte', 1, 15000, 0, '2026-03-16T14:22:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3447', 'hist-ticket-137-3447', 'cash', 15000, 'completed', '2026-03-16T14:22:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3448', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-16T09:35:03.000Z', '2026-03-16T09:35:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3448-1', 'hist-ticket-137-3448', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:35:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3448-2', 'hist-ticket-137-3448', 'prod-americano', 1, 12000, 0, '2026-03-16T09:35:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3448-3', 'hist-ticket-137-3448', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:35:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3448', 'hist-ticket-137-3448', 'cash', 41000, 'completed', '2026-03-16T09:35:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3449', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-16T09:06:20.000Z', '2026-03-16T09:06:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3449-1', 'hist-ticket-137-3449', 'prod-latte', 1, 15000, 0, '2026-03-16T09:06:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3449', 'hist-ticket-137-3449', 'cash', 15000, 'completed', '2026-03-16T09:06:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3450', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-16T09:58:05.000Z', '2026-03-16T09:58:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3450-1', 'hist-ticket-137-3450', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:58:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3450-2', 'hist-ticket-137-3450', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:58:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3450-3', 'hist-ticket-137-3450', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:58:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3450', 'hist-ticket-137-3450', 'cash', 43500, 'completed', '2026-03-16T09:58:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3451', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-16T19:32:36.000Z', '2026-03-16T19:32:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3451-1', 'hist-ticket-137-3451', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T19:32:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3451-2', 'hist-ticket-137-3451', 'prod-latte', 1, 15000, 0, '2026-03-16T19:32:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3451-3', 'hist-ticket-137-3451', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T19:32:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3451-4', 'hist-ticket-137-3451', 'prod-latte', 1, 15000, 0, '2026-03-16T19:32:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3451', 'hist-ticket-137-3451', 'cash', 59000, 'completed', '2026-03-16T19:32:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3452', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-16T09:36:25.000Z', '2026-03-16T09:36:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3452-1', 'hist-ticket-137-3452', 'prod-americano', 1, 12000, 0, '2026-03-16T09:36:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3452-2', 'hist-ticket-137-3452', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:36:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3452-3', 'hist-ticket-137-3452', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T09:36:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3452-4', 'hist-ticket-137-3452', 'prod-latte', 1, 15000, 0, '2026-03-16T09:36:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3452', 'hist-ticket-137-3452', 'cash', 56000, 'completed', '2026-03-16T09:36:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3453', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-16T10:24:37.000Z', '2026-03-16T10:24:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3453-1', 'hist-ticket-137-3453', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T10:24:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3453-2', 'hist-ticket-137-3453', 'prod-mocha', 1, 16500, 0, '2026-03-16T10:24:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3453-3', 'hist-ticket-137-3453', 'prod-americano', 1, 12000, 0, '2026-03-16T10:24:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3453-4', 'hist-ticket-137-3453', 'prod-mocha', 1, 16500, 0, '2026-03-16T10:24:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3453', 'hist-ticket-137-3453', 'cash', 59500, 'completed', '2026-03-16T10:24:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3454', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-16T08:19:13.000Z', '2026-03-16T08:19:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3454-1', 'hist-ticket-137-3454', 'prod-americano', 1, 12000, 0, '2026-03-16T08:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3454-2', 'hist-ticket-137-3454', 'prod-mocha', 1, 16500, 0, '2026-03-16T08:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3454-3', 'hist-ticket-137-3454', 'prod-mocha', 1, 16500, 0, '2026-03-16T08:19:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3454', 'hist-ticket-137-3454', 'cash', 45000, 'completed', '2026-03-16T08:19:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3455', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-16T14:19:17.000Z', '2026-03-16T14:19:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3455-1', 'hist-ticket-137-3455', 'prod-americano', 1, 12000, 0, '2026-03-16T14:19:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3455-2', 'hist-ticket-137-3455', 'prod-mocha', 1, 16500, 0, '2026-03-16T14:19:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3455-3', 'hist-ticket-137-3455', 'prod-mocha', 1, 16500, 0, '2026-03-16T14:19:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3455-4', 'hist-ticket-137-3455', 'prod-latte', 1, 15000, 0, '2026-03-16T14:19:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3455', 'hist-ticket-137-3455', 'cash', 60000, 'completed', '2026-03-16T14:19:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3456', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-16T16:39:43.000Z', '2026-03-16T16:39:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3456-1', 'hist-ticket-137-3456', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T16:39:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3456-2', 'hist-ticket-137-3456', 'prod-americano', 1, 12000, 0, '2026-03-16T16:39:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3456-3', 'hist-ticket-137-3456', 'prod-latte', 1, 15000, 0, '2026-03-16T16:39:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3456-4', 'hist-ticket-137-3456', 'prod-latte', 1, 15000, 0, '2026-03-16T16:39:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3456', 'hist-ticket-137-3456', 'cash', 56500, 'completed', '2026-03-16T16:39:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3457', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-16T08:59:32.000Z', '2026-03-16T08:59:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3457-1', 'hist-ticket-137-3457', 'prod-latte', 1, 15000, 0, '2026-03-16T08:59:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3457-2', 'hist-ticket-137-3457', 'prod-americano', 1, 12000, 0, '2026-03-16T08:59:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3457-3', 'hist-ticket-137-3457', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T08:59:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3457', 'hist-ticket-137-3457', 'cash', 41500, 'completed', '2026-03-16T08:59:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3458', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-03-16T13:16:44.000Z', '2026-03-16T13:16:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3458-1', 'hist-ticket-137-3458', 'prod-americano', 1, 12000, 0, '2026-03-16T13:16:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3458', 'hist-ticket-137-3458', 'cash', 12000, 'completed', '2026-03-16T13:16:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3459', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-16T13:06:36.000Z', '2026-03-16T13:06:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3459-1', 'hist-ticket-137-3459', 'prod-mocha', 1, 16500, 0, '2026-03-16T13:06:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3459', 'hist-ticket-137-3459', 'cash', 16500, 'completed', '2026-03-16T13:06:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3460', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-16T19:49:59.000Z', '2026-03-16T19:49:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3460-1', 'hist-ticket-137-3460', 'prod-americano', 1, 12000, 0, '2026-03-16T19:49:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3460', 'hist-ticket-137-3460', 'cash', 12000, 'completed', '2026-03-16T19:49:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3461', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-16T18:32:17.000Z', '2026-03-16T18:32:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3461-1', 'hist-ticket-137-3461', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T18:32:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3461', 'hist-ticket-137-3461', 'cash', 14500, 'completed', '2026-03-16T18:32:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3462', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-03-16T14:49:04.000Z', '2026-03-16T14:49:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3462-1', 'hist-ticket-137-3462', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T14:49:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3462', 'hist-ticket-137-3462', 'cash', 14500, 'completed', '2026-03-16T14:49:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3463', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-16T12:33:08.000Z', '2026-03-16T12:33:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3463-1', 'hist-ticket-137-3463', 'prod-latte', 1, 15000, 0, '2026-03-16T12:33:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3463-2', 'hist-ticket-137-3463', 'prod-americano', 1, 12000, 0, '2026-03-16T12:33:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3463', 'hist-ticket-137-3463', 'cash', 27000, 'completed', '2026-03-16T12:33:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3464', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-16T13:42:27.000Z', '2026-03-16T13:42:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3464-1', 'hist-ticket-137-3464', 'prod-latte', 1, 15000, 0, '2026-03-16T13:42:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3464', 'hist-ticket-137-3464', 'cash', 15000, 'completed', '2026-03-16T13:42:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3465', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-16T19:15:17.000Z', '2026-03-16T19:15:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3465-1', 'hist-ticket-137-3465', 'prod-americano', 1, 12000, 0, '2026-03-16T19:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3465-2', 'hist-ticket-137-3465', 'prod-mocha', 1, 16500, 0, '2026-03-16T19:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3465-3', 'hist-ticket-137-3465', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T19:15:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3465', 'hist-ticket-137-3465', 'cash', 43000, 'completed', '2026-03-16T19:15:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3466', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-03-16T10:43:00.000Z', '2026-03-16T10:43:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3466-1', 'hist-ticket-137-3466', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T10:43:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3466-2', 'hist-ticket-137-3466', 'prod-americano', 1, 12000, 0, '2026-03-16T10:43:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3466-3', 'hist-ticket-137-3466', 'prod-latte', 1, 15000, 0, '2026-03-16T10:43:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3466', 'hist-ticket-137-3466', 'cash', 41500, 'completed', '2026-03-16T10:43:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3467', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-16T11:35:00.000Z', '2026-03-16T11:35:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3467-1', 'hist-ticket-137-3467', 'prod-latte', 1, 15000, 0, '2026-03-16T11:35:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3467', 'hist-ticket-137-3467', 'cash', 15000, 'completed', '2026-03-16T11:35:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3468', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-16T09:54:27.000Z', '2026-03-16T09:54:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3468-1', 'hist-ticket-137-3468', 'prod-latte', 1, 15000, 0, '2026-03-16T09:54:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3468', 'hist-ticket-137-3468', 'cash', 15000, 'completed', '2026-03-16T09:54:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3469', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-16T18:08:43.000Z', '2026-03-16T18:08:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3469-1', 'hist-ticket-137-3469', 'prod-americano', 1, 12000, 0, '2026-03-16T18:08:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3469-2', 'hist-ticket-137-3469', 'prod-mocha', 1, 16500, 0, '2026-03-16T18:08:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3469', 'hist-ticket-137-3469', 'cash', 28500, 'completed', '2026-03-16T18:08:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3470', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-03-16T12:50:45.000Z', '2026-03-16T12:50:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3470-1', 'hist-ticket-137-3470', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T12:50:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3470-2', 'hist-ticket-137-3470', 'prod-mocha', 1, 16500, 0, '2026-03-16T12:50:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3470-3', 'hist-ticket-137-3470', 'prod-mocha', 1, 16500, 0, '2026-03-16T12:50:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3470-4', 'hist-ticket-137-3470', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T12:50:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3470', 'hist-ticket-137-3470', 'cash', 62000, 'completed', '2026-03-16T12:50:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3471', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-16T10:06:19.000Z', '2026-03-16T10:06:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3471-1', 'hist-ticket-137-3471', 'prod-americano', 1, 12000, 0, '2026-03-16T10:06:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3471', 'hist-ticket-137-3471', 'cash', 12000, 'completed', '2026-03-16T10:06:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-137-3472', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-16T08:07:48.000Z', '2026-03-16T08:07:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3472-1', 'hist-ticket-137-3472', 'prod-americano', 1, 12000, 0, '2026-03-16T08:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3472-2', 'hist-ticket-137-3472', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T08:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3472-3', 'hist-ticket-137-3472', 'prod-cappuccino', 1, 14500, 0, '2026-03-16T08:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-137-3472-4', 'hist-ticket-137-3472', 'prod-americano', 1, 12000, 0, '2026-03-16T08:07:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-137-3472', 'hist-ticket-137-3472', 'cash', 53000, 'completed', '2026-03-16T08:07:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3473', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-17T13:26:54.000Z', '2026-03-17T13:26:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3473-1', 'hist-ticket-138-3473', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T13:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3473-2', 'hist-ticket-138-3473', 'prod-latte', 1, 15000, 0, '2026-03-17T13:26:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3473-3', 'hist-ticket-138-3473', 'prod-mocha', 1, 16500, 0, '2026-03-17T13:26:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3473', 'hist-ticket-138-3473', 'cash', 46000, 'completed', '2026-03-17T13:26:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3474', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-17T12:53:33.000Z', '2026-03-17T12:53:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3474-1', 'hist-ticket-138-3474', 'prod-latte', 1, 15000, 0, '2026-03-17T12:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3474-2', 'hist-ticket-138-3474', 'prod-americano', 1, 12000, 0, '2026-03-17T12:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3474-3', 'hist-ticket-138-3474', 'prod-mocha', 1, 16500, 0, '2026-03-17T12:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3474-4', 'hist-ticket-138-3474', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T12:53:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3474', 'hist-ticket-138-3474', 'cash', 58000, 'completed', '2026-03-17T12:53:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3475', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-17T16:38:58.000Z', '2026-03-17T16:38:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3475-1', 'hist-ticket-138-3475', 'prod-latte', 1, 15000, 0, '2026-03-17T16:38:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3475-2', 'hist-ticket-138-3475', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T16:38:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3475', 'hist-ticket-138-3475', 'cash', 29500, 'completed', '2026-03-17T16:38:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3476', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-03-17T18:10:43.000Z', '2026-03-17T18:10:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3476-1', 'hist-ticket-138-3476', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T18:10:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3476-2', 'hist-ticket-138-3476', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T18:10:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3476', 'hist-ticket-138-3476', 'cash', 29000, 'completed', '2026-03-17T18:10:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3477', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-17T10:31:22.000Z', '2026-03-17T10:31:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3477-1', 'hist-ticket-138-3477', 'prod-latte', 1, 15000, 0, '2026-03-17T10:31:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3477-2', 'hist-ticket-138-3477', 'prod-americano', 1, 12000, 0, '2026-03-17T10:31:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3477-3', 'hist-ticket-138-3477', 'prod-mocha', 1, 16500, 0, '2026-03-17T10:31:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3477-4', 'hist-ticket-138-3477', 'prod-americano', 1, 12000, 0, '2026-03-17T10:31:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3477', 'hist-ticket-138-3477', 'cash', 55500, 'completed', '2026-03-17T10:31:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3478', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-17T17:15:56.000Z', '2026-03-17T17:15:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3478-1', 'hist-ticket-138-3478', 'prod-americano', 1, 12000, 0, '2026-03-17T17:15:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3478-2', 'hist-ticket-138-3478', 'prod-americano', 1, 12000, 0, '2026-03-17T17:15:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3478', 'hist-ticket-138-3478', 'cash', 24000, 'completed', '2026-03-17T17:15:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3479', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-03-17T14:28:47.000Z', '2026-03-17T14:28:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3479-1', 'hist-ticket-138-3479', 'prod-americano', 1, 12000, 0, '2026-03-17T14:28:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3479', 'hist-ticket-138-3479', 'cash', 12000, 'completed', '2026-03-17T14:28:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3480', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-17T18:07:31.000Z', '2026-03-17T18:07:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3480-1', 'hist-ticket-138-3480', 'prod-latte', 1, 15000, 0, '2026-03-17T18:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3480-2', 'hist-ticket-138-3480', 'prod-americano', 1, 12000, 0, '2026-03-17T18:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3480-3', 'hist-ticket-138-3480', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T18:07:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3480-4', 'hist-ticket-138-3480', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T18:07:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3480', 'hist-ticket-138-3480', 'cash', 56000, 'completed', '2026-03-17T18:07:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3481', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-03-17T19:09:18.000Z', '2026-03-17T19:09:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3481-1', 'hist-ticket-138-3481', 'prod-latte', 1, 15000, 0, '2026-03-17T19:09:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3481-2', 'hist-ticket-138-3481', 'prod-mocha', 1, 16500, 0, '2026-03-17T19:09:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3481-3', 'hist-ticket-138-3481', 'prod-americano', 1, 12000, 0, '2026-03-17T19:09:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3481-4', 'hist-ticket-138-3481', 'prod-mocha', 1, 16500, 0, '2026-03-17T19:09:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3481', 'hist-ticket-138-3481', 'cash', 60000, 'completed', '2026-03-17T19:09:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3482', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-17T15:23:45.000Z', '2026-03-17T15:23:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3482-1', 'hist-ticket-138-3482', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T15:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3482-2', 'hist-ticket-138-3482', 'prod-mocha', 1, 16500, 0, '2026-03-17T15:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3482-3', 'hist-ticket-138-3482', 'prod-latte', 1, 15000, 0, '2026-03-17T15:23:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3482-4', 'hist-ticket-138-3482', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T15:23:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3482', 'hist-ticket-138-3482', 'cash', 60500, 'completed', '2026-03-17T15:23:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3483', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-17T19:14:18.000Z', '2026-03-17T19:14:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3483-1', 'hist-ticket-138-3483', 'prod-mocha', 1, 16500, 0, '2026-03-17T19:14:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3483-2', 'hist-ticket-138-3483', 'prod-americano', 1, 12000, 0, '2026-03-17T19:14:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3483-3', 'hist-ticket-138-3483', 'prod-latte', 1, 15000, 0, '2026-03-17T19:14:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3483-4', 'hist-ticket-138-3483', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T19:14:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3483', 'hist-ticket-138-3483', 'cash', 58000, 'completed', '2026-03-17T19:14:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3484', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-17T18:36:00.000Z', '2026-03-17T18:36:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3484-1', 'hist-ticket-138-3484', 'prod-latte', 1, 15000, 0, '2026-03-17T18:36:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3484-2', 'hist-ticket-138-3484', 'prod-mocha', 1, 16500, 0, '2026-03-17T18:36:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3484-3', 'hist-ticket-138-3484', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T18:36:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3484-4', 'hist-ticket-138-3484', 'prod-latte', 1, 15000, 0, '2026-03-17T18:36:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3484', 'hist-ticket-138-3484', 'cash', 61000, 'completed', '2026-03-17T18:36:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3485', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-17T10:31:09.000Z', '2026-03-17T10:31:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3485-1', 'hist-ticket-138-3485', 'prod-mocha', 1, 16500, 0, '2026-03-17T10:31:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3485', 'hist-ticket-138-3485', 'cash', 16500, 'completed', '2026-03-17T10:31:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3486', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-03-17T09:05:44.000Z', '2026-03-17T09:05:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3486-1', 'hist-ticket-138-3486', 'prod-latte', 1, 15000, 0, '2026-03-17T09:05:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3486', 'hist-ticket-138-3486', 'cash', 15000, 'completed', '2026-03-17T09:05:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3487', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-17T16:48:53.000Z', '2026-03-17T16:48:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3487-1', 'hist-ticket-138-3487', 'prod-americano', 1, 12000, 0, '2026-03-17T16:48:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3487-2', 'hist-ticket-138-3487', 'prod-latte', 1, 15000, 0, '2026-03-17T16:48:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3487', 'hist-ticket-138-3487', 'cash', 27000, 'completed', '2026-03-17T16:48:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3488', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-17T14:04:58.000Z', '2026-03-17T14:04:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3488-1', 'hist-ticket-138-3488', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T14:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3488-2', 'hist-ticket-138-3488', 'prod-americano', 1, 12000, 0, '2026-03-17T14:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3488-3', 'hist-ticket-138-3488', 'prod-latte', 1, 15000, 0, '2026-03-17T14:04:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3488', 'hist-ticket-138-3488', 'cash', 41500, 'completed', '2026-03-17T14:04:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3489', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-17T17:29:00.000Z', '2026-03-17T17:29:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3489-1', 'hist-ticket-138-3489', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T17:29:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3489', 'hist-ticket-138-3489', 'cash', 14500, 'completed', '2026-03-17T17:29:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3490', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-17T18:42:12.000Z', '2026-03-17T18:42:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3490-1', 'hist-ticket-138-3490', 'prod-latte', 1, 15000, 0, '2026-03-17T18:42:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3490-2', 'hist-ticket-138-3490', 'prod-latte', 1, 15000, 0, '2026-03-17T18:42:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3490-3', 'hist-ticket-138-3490', 'prod-mocha', 1, 16500, 0, '2026-03-17T18:42:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3490-4', 'hist-ticket-138-3490', 'prod-americano', 1, 12000, 0, '2026-03-17T18:42:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3490', 'hist-ticket-138-3490', 'cash', 58500, 'completed', '2026-03-17T18:42:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3491', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-17T09:24:44.000Z', '2026-03-17T09:24:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3491-1', 'hist-ticket-138-3491', 'prod-mocha', 1, 16500, 0, '2026-03-17T09:24:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3491-2', 'hist-ticket-138-3491', 'prod-cappuccino', 1, 14500, 0, '2026-03-17T09:24:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3491-3', 'hist-ticket-138-3491', 'prod-latte', 1, 15000, 0, '2026-03-17T09:24:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3491', 'hist-ticket-138-3491', 'cash', 46000, 'completed', '2026-03-17T09:24:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-138-3492', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-17T08:15:23.000Z', '2026-03-17T08:15:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3492-1', 'hist-ticket-138-3492', 'prod-mocha', 1, 16500, 0, '2026-03-17T08:15:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3492-2', 'hist-ticket-138-3492', 'prod-americano', 1, 12000, 0, '2026-03-17T08:15:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-138-3492-3', 'hist-ticket-138-3492', 'prod-latte', 1, 15000, 0, '2026-03-17T08:15:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-138-3492', 'hist-ticket-138-3492', 'cash', 43500, 'completed', '2026-03-17T08:15:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3493', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-18T19:57:57.000Z', '2026-03-18T19:57:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3493-1', 'hist-ticket-139-3493', 'prod-americano', 1, 12000, 0, '2026-03-18T19:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3493-2', 'hist-ticket-139-3493', 'prod-mocha', 1, 16500, 0, '2026-03-18T19:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3493-3', 'hist-ticket-139-3493', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T19:57:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3493-4', 'hist-ticket-139-3493', 'prod-americano', 1, 12000, 0, '2026-03-18T19:57:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3493', 'hist-ticket-139-3493', 'cash', 55000, 'completed', '2026-03-18T19:57:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3494', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-18T08:41:05.000Z', '2026-03-18T08:41:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3494-1', 'hist-ticket-139-3494', 'prod-mocha', 1, 16500, 0, '2026-03-18T08:41:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3494-2', 'hist-ticket-139-3494', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T08:41:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3494-3', 'hist-ticket-139-3494', 'prod-mocha', 1, 16500, 0, '2026-03-18T08:41:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3494-4', 'hist-ticket-139-3494', 'prod-latte', 1, 15000, 0, '2026-03-18T08:41:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3494', 'hist-ticket-139-3494', 'cash', 62500, 'completed', '2026-03-18T08:41:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3495', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-18T17:30:19.000Z', '2026-03-18T17:30:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3495-1', 'hist-ticket-139-3495', 'prod-latte', 1, 15000, 0, '2026-03-18T17:30:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3495', 'hist-ticket-139-3495', 'cash', 15000, 'completed', '2026-03-18T17:30:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3496', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-18T18:20:44.000Z', '2026-03-18T18:20:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3496-1', 'hist-ticket-139-3496', 'prod-latte', 1, 15000, 0, '2026-03-18T18:20:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3496', 'hist-ticket-139-3496', 'cash', 15000, 'completed', '2026-03-18T18:20:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3497', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-18T10:58:17.000Z', '2026-03-18T10:58:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3497-1', 'hist-ticket-139-3497', 'prod-americano', 1, 12000, 0, '2026-03-18T10:58:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3497-2', 'hist-ticket-139-3497', 'prod-mocha', 1, 16500, 0, '2026-03-18T10:58:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3497', 'hist-ticket-139-3497', 'cash', 28500, 'completed', '2026-03-18T10:58:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3498', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-18T19:08:06.000Z', '2026-03-18T19:08:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3498-1', 'hist-ticket-139-3498', 'prod-latte', 1, 15000, 0, '2026-03-18T19:08:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3498-2', 'hist-ticket-139-3498', 'prod-mocha', 1, 16500, 0, '2026-03-18T19:08:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3498-3', 'hist-ticket-139-3498', 'prod-mocha', 1, 16500, 0, '2026-03-18T19:08:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3498', 'hist-ticket-139-3498', 'cash', 48000, 'completed', '2026-03-18T19:08:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3499', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-18T12:21:44.000Z', '2026-03-18T12:21:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3499-1', 'hist-ticket-139-3499', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T12:21:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3499-2', 'hist-ticket-139-3499', 'prod-americano', 1, 12000, 0, '2026-03-18T12:21:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3499-3', 'hist-ticket-139-3499', 'prod-mocha', 1, 16500, 0, '2026-03-18T12:21:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3499', 'hist-ticket-139-3499', 'cash', 43000, 'completed', '2026-03-18T12:21:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3500', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-18T14:57:11.000Z', '2026-03-18T14:57:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3500-1', 'hist-ticket-139-3500', 'prod-americano', 1, 12000, 0, '2026-03-18T14:57:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3500-2', 'hist-ticket-139-3500', 'prod-latte', 1, 15000, 0, '2026-03-18T14:57:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3500', 'hist-ticket-139-3500', 'cash', 27000, 'completed', '2026-03-18T14:57:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3501', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-18T19:12:28.000Z', '2026-03-18T19:12:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3501-1', 'hist-ticket-139-3501', 'prod-americano', 1, 12000, 0, '2026-03-18T19:12:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3501-2', 'hist-ticket-139-3501', 'prod-americano', 1, 12000, 0, '2026-03-18T19:12:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3501-3', 'hist-ticket-139-3501', 'prod-latte', 1, 15000, 0, '2026-03-18T19:12:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3501', 'hist-ticket-139-3501', 'cash', 39000, 'completed', '2026-03-18T19:12:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3502', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-18T15:58:08.000Z', '2026-03-18T15:58:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3502-1', 'hist-ticket-139-3502', 'prod-mocha', 1, 16500, 0, '2026-03-18T15:58:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3502-2', 'hist-ticket-139-3502', 'prod-latte', 1, 15000, 0, '2026-03-18T15:58:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3502-3', 'hist-ticket-139-3502', 'prod-mocha', 1, 16500, 0, '2026-03-18T15:58:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3502', 'hist-ticket-139-3502', 'cash', 48000, 'completed', '2026-03-18T15:58:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3503', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-18T10:54:26.000Z', '2026-03-18T10:54:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3503-1', 'hist-ticket-139-3503', 'prod-americano', 1, 12000, 0, '2026-03-18T10:54:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3503-2', 'hist-ticket-139-3503', 'prod-latte', 1, 15000, 0, '2026-03-18T10:54:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3503-3', 'hist-ticket-139-3503', 'prod-americano', 1, 12000, 0, '2026-03-18T10:54:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3503-4', 'hist-ticket-139-3503', 'prod-americano', 1, 12000, 0, '2026-03-18T10:54:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3503', 'hist-ticket-139-3503', 'cash', 51000, 'completed', '2026-03-18T10:54:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3504', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-18T17:05:13.000Z', '2026-03-18T17:05:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3504-1', 'hist-ticket-139-3504', 'prod-americano', 1, 12000, 0, '2026-03-18T17:05:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3504', 'hist-ticket-139-3504', 'cash', 12000, 'completed', '2026-03-18T17:05:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3505', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-18T10:47:27.000Z', '2026-03-18T10:47:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3505-1', 'hist-ticket-139-3505', 'prod-mocha', 1, 16500, 0, '2026-03-18T10:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3505-2', 'hist-ticket-139-3505', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T10:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3505-3', 'hist-ticket-139-3505', 'prod-latte', 1, 15000, 0, '2026-03-18T10:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3505-4', 'hist-ticket-139-3505', 'prod-latte', 1, 15000, 0, '2026-03-18T10:47:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3505', 'hist-ticket-139-3505', 'cash', 61000, 'completed', '2026-03-18T10:47:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3506', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-18T08:35:54.000Z', '2026-03-18T08:35:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3506-1', 'hist-ticket-139-3506', 'prod-latte', 1, 15000, 0, '2026-03-18T08:35:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3506-2', 'hist-ticket-139-3506', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T08:35:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3506-3', 'hist-ticket-139-3506', 'prod-americano', 1, 12000, 0, '2026-03-18T08:35:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3506-4', 'hist-ticket-139-3506', 'prod-americano', 1, 12000, 0, '2026-03-18T08:35:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3506', 'hist-ticket-139-3506', 'cash', 53500, 'completed', '2026-03-18T08:35:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3507', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-18T19:01:51.000Z', '2026-03-18T19:01:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3507-1', 'hist-ticket-139-3507', 'prod-mocha', 1, 16500, 0, '2026-03-18T19:01:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3507-2', 'hist-ticket-139-3507', 'prod-latte', 1, 15000, 0, '2026-03-18T19:01:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3507-3', 'hist-ticket-139-3507', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T19:01:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3507', 'hist-ticket-139-3507', 'cash', 46000, 'completed', '2026-03-18T19:01:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3508', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-18T17:49:08.000Z', '2026-03-18T17:49:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3508-1', 'hist-ticket-139-3508', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T17:49:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3508', 'hist-ticket-139-3508', 'cash', 14500, 'completed', '2026-03-18T17:49:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3509', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-18T08:15:16.000Z', '2026-03-18T08:15:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3509-1', 'hist-ticket-139-3509', 'prod-latte', 1, 15000, 0, '2026-03-18T08:15:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3509', 'hist-ticket-139-3509', 'cash', 15000, 'completed', '2026-03-18T08:15:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3510', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-18T16:55:59.000Z', '2026-03-18T16:55:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3510-1', 'hist-ticket-139-3510', 'prod-latte', 1, 15000, 0, '2026-03-18T16:55:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3510-2', 'hist-ticket-139-3510', 'prod-americano', 1, 12000, 0, '2026-03-18T16:55:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3510', 'hist-ticket-139-3510', 'cash', 27000, 'completed', '2026-03-18T16:55:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3511', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-03-18T14:23:30.000Z', '2026-03-18T14:23:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3511-1', 'hist-ticket-139-3511', 'prod-americano', 1, 12000, 0, '2026-03-18T14:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3511-2', 'hist-ticket-139-3511', 'prod-americano', 1, 12000, 0, '2026-03-18T14:23:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3511', 'hist-ticket-139-3511', 'cash', 24000, 'completed', '2026-03-18T14:23:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3512', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-18T11:39:15.000Z', '2026-03-18T11:39:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3512-1', 'hist-ticket-139-3512', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T11:39:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3512-2', 'hist-ticket-139-3512', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T11:39:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3512-3', 'hist-ticket-139-3512', 'prod-americano', 1, 12000, 0, '2026-03-18T11:39:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3512', 'hist-ticket-139-3512', 'cash', 41000, 'completed', '2026-03-18T11:39:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3513', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-18T17:02:38.000Z', '2026-03-18T17:02:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3513-1', 'hist-ticket-139-3513', 'prod-latte', 1, 15000, 0, '2026-03-18T17:02:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3513-2', 'hist-ticket-139-3513', 'prod-americano', 1, 12000, 0, '2026-03-18T17:02:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3513', 'hist-ticket-139-3513', 'cash', 27000, 'completed', '2026-03-18T17:02:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-139-3514', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-18T14:57:24.000Z', '2026-03-18T14:57:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3514-1', 'hist-ticket-139-3514', 'prod-latte', 1, 15000, 0, '2026-03-18T14:57:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3514-2', 'hist-ticket-139-3514', 'prod-cappuccino', 1, 14500, 0, '2026-03-18T14:57:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3514-3', 'hist-ticket-139-3514', 'prod-latte', 1, 15000, 0, '2026-03-18T14:57:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-139-3514-4', 'hist-ticket-139-3514', 'prod-mocha', 1, 16500, 0, '2026-03-18T14:57:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-139-3514', 'hist-ticket-139-3514', 'cash', 61000, 'completed', '2026-03-18T14:57:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3515', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-19T09:48:14.000Z', '2026-03-19T09:48:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3515-1', 'hist-ticket-140-3515', 'prod-mocha', 1, 16500, 0, '2026-03-19T09:48:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3515-2', 'hist-ticket-140-3515', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T09:48:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3515-3', 'hist-ticket-140-3515', 'prod-americano', 1, 12000, 0, '2026-03-19T09:48:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3515-4', 'hist-ticket-140-3515', 'prod-mocha', 1, 16500, 0, '2026-03-19T09:48:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3515', 'hist-ticket-140-3515', 'cash', 59500, 'completed', '2026-03-19T09:48:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3516', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-19T15:03:14.000Z', '2026-03-19T15:03:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3516-1', 'hist-ticket-140-3516', 'prod-mocha', 1, 16500, 0, '2026-03-19T15:03:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3516', 'hist-ticket-140-3516', 'cash', 16500, 'completed', '2026-03-19T15:03:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3517', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-03-19T08:58:15.000Z', '2026-03-19T08:58:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3517-1', 'hist-ticket-140-3517', 'prod-latte', 1, 15000, 0, '2026-03-19T08:58:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3517-2', 'hist-ticket-140-3517', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T08:58:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3517-3', 'hist-ticket-140-3517', 'prod-latte', 1, 15000, 0, '2026-03-19T08:58:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3517', 'hist-ticket-140-3517', 'cash', 44500, 'completed', '2026-03-19T08:58:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3518', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-19T08:31:52.000Z', '2026-03-19T08:31:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3518-1', 'hist-ticket-140-3518', 'prod-latte', 1, 15000, 0, '2026-03-19T08:31:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3518-2', 'hist-ticket-140-3518', 'prod-mocha', 1, 16500, 0, '2026-03-19T08:31:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3518-3', 'hist-ticket-140-3518', 'prod-latte', 1, 15000, 0, '2026-03-19T08:31:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3518-4', 'hist-ticket-140-3518', 'prod-americano', 1, 12000, 0, '2026-03-19T08:31:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3518', 'hist-ticket-140-3518', 'cash', 58500, 'completed', '2026-03-19T08:31:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3519', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-19T10:58:48.000Z', '2026-03-19T10:58:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3519-1', 'hist-ticket-140-3519', 'prod-mocha', 1, 16500, 0, '2026-03-19T10:58:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3519-2', 'hist-ticket-140-3519', 'prod-americano', 1, 12000, 0, '2026-03-19T10:58:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3519', 'hist-ticket-140-3519', 'cash', 28500, 'completed', '2026-03-19T10:58:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3520', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-19T12:04:42.000Z', '2026-03-19T12:04:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3520-1', 'hist-ticket-140-3520', 'prod-latte', 1, 15000, 0, '2026-03-19T12:04:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3520-2', 'hist-ticket-140-3520', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T12:04:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3520-3', 'hist-ticket-140-3520', 'prod-latte', 1, 15000, 0, '2026-03-19T12:04:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3520', 'hist-ticket-140-3520', 'cash', 44500, 'completed', '2026-03-19T12:04:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3521', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-03-19T19:08:23.000Z', '2026-03-19T19:08:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3521-1', 'hist-ticket-140-3521', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T19:08:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3521', 'hist-ticket-140-3521', 'cash', 14500, 'completed', '2026-03-19T19:08:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3522', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-19T12:07:14.000Z', '2026-03-19T12:07:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3522-1', 'hist-ticket-140-3522', 'prod-mocha', 1, 16500, 0, '2026-03-19T12:07:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3522', 'hist-ticket-140-3522', 'cash', 16500, 'completed', '2026-03-19T12:07:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3523', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-03-19T10:25:23.000Z', '2026-03-19T10:25:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3523-1', 'hist-ticket-140-3523', 'prod-latte', 1, 15000, 0, '2026-03-19T10:25:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3523', 'hist-ticket-140-3523', 'cash', 15000, 'completed', '2026-03-19T10:25:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3524', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-19T09:27:10.000Z', '2026-03-19T09:27:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3524-1', 'hist-ticket-140-3524', 'prod-latte', 1, 15000, 0, '2026-03-19T09:27:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3524-2', 'hist-ticket-140-3524', 'prod-americano', 1, 12000, 0, '2026-03-19T09:27:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3524-3', 'hist-ticket-140-3524', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T09:27:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3524', 'hist-ticket-140-3524', 'cash', 41500, 'completed', '2026-03-19T09:27:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3525', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-19T18:48:23.000Z', '2026-03-19T18:48:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3525-1', 'hist-ticket-140-3525', 'prod-latte', 1, 15000, 0, '2026-03-19T18:48:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3525-2', 'hist-ticket-140-3525', 'prod-americano', 1, 12000, 0, '2026-03-19T18:48:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3525-3', 'hist-ticket-140-3525', 'prod-latte', 1, 15000, 0, '2026-03-19T18:48:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3525-4', 'hist-ticket-140-3525', 'prod-latte', 1, 15000, 0, '2026-03-19T18:48:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3525', 'hist-ticket-140-3525', 'cash', 57000, 'completed', '2026-03-19T18:48:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3526', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-19T14:43:54.000Z', '2026-03-19T14:43:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3526-1', 'hist-ticket-140-3526', 'prod-mocha', 1, 16500, 0, '2026-03-19T14:43:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3526-2', 'hist-ticket-140-3526', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T14:43:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3526-3', 'hist-ticket-140-3526', 'prod-americano', 1, 12000, 0, '2026-03-19T14:43:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3526', 'hist-ticket-140-3526', 'cash', 43000, 'completed', '2026-03-19T14:43:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3527', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-19T16:28:20.000Z', '2026-03-19T16:28:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3527-1', 'hist-ticket-140-3527', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T16:28:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3527-2', 'hist-ticket-140-3527', 'prod-latte', 1, 15000, 0, '2026-03-19T16:28:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3527', 'hist-ticket-140-3527', 'cash', 29500, 'completed', '2026-03-19T16:28:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3528', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-19T08:16:18.000Z', '2026-03-19T08:16:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3528-1', 'hist-ticket-140-3528', 'prod-americano', 1, 12000, 0, '2026-03-19T08:16:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3528-2', 'hist-ticket-140-3528', 'prod-americano', 1, 12000, 0, '2026-03-19T08:16:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3528', 'hist-ticket-140-3528', 'cash', 24000, 'completed', '2026-03-19T08:16:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3529', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-19T10:29:39.000Z', '2026-03-19T10:29:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3529-1', 'hist-ticket-140-3529', 'prod-americano', 1, 12000, 0, '2026-03-19T10:29:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3529-2', 'hist-ticket-140-3529', 'prod-mocha', 1, 16500, 0, '2026-03-19T10:29:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3529-3', 'hist-ticket-140-3529', 'prod-mocha', 1, 16500, 0, '2026-03-19T10:29:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3529', 'hist-ticket-140-3529', 'cash', 45000, 'completed', '2026-03-19T10:29:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3530', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-19T19:42:07.000Z', '2026-03-19T19:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3530-1', 'hist-ticket-140-3530', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T19:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3530-2', 'hist-ticket-140-3530', 'prod-latte', 1, 15000, 0, '2026-03-19T19:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3530-3', 'hist-ticket-140-3530', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T19:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3530-4', 'hist-ticket-140-3530', 'prod-americano', 1, 12000, 0, '2026-03-19T19:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3530', 'hist-ticket-140-3530', 'cash', 56000, 'completed', '2026-03-19T19:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3531', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-19T08:07:07.000Z', '2026-03-19T08:07:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3531-1', 'hist-ticket-140-3531', 'prod-mocha', 1, 16500, 0, '2026-03-19T08:07:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3531-2', 'hist-ticket-140-3531', 'prod-americano', 1, 12000, 0, '2026-03-19T08:07:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3531', 'hist-ticket-140-3531', 'cash', 28500, 'completed', '2026-03-19T08:07:07.000Z');