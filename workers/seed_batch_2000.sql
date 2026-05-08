INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-443', 'hist-ticket-18-443', 'cash', 56000, 'completed', '2025-11-17T15:12:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-444', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-17T08:05:40.000Z', '2025-11-17T08:05:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-444-1', 'hist-ticket-18-444', 'prod-mocha', 1, 16500, 0, '2025-11-17T08:05:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-444-2', 'hist-ticket-18-444', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T08:05:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-444', 'hist-ticket-18-444', 'cash', 31000, 'completed', '2025-11-17T08:05:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-445', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-11-17T16:44:05.000Z', '2025-11-17T16:44:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-445-1', 'hist-ticket-18-445', 'prod-americano', 1, 12000, 0, '2025-11-17T16:44:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-445', 'hist-ticket-18-445', 'cash', 12000, 'completed', '2025-11-17T16:44:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-446', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-17T19:05:57.000Z', '2025-11-17T19:05:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-446-1', 'hist-ticket-18-446', 'prod-latte', 1, 15000, 0, '2025-11-17T19:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-446-2', 'hist-ticket-18-446', 'prod-americano', 1, 12000, 0, '2025-11-17T19:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-446-3', 'hist-ticket-18-446', 'prod-latte', 1, 15000, 0, '2025-11-17T19:05:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-446-4', 'hist-ticket-18-446', 'prod-mocha', 1, 16500, 0, '2025-11-17T19:05:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-446', 'hist-ticket-18-446', 'cash', 58500, 'completed', '2025-11-17T19:05:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-447', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-17T11:26:58.000Z', '2025-11-17T11:26:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-447-1', 'hist-ticket-18-447', 'prod-mocha', 1, 16500, 0, '2025-11-17T11:26:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-447', 'hist-ticket-18-447', 'cash', 16500, 'completed', '2025-11-17T11:26:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-448', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-17T09:09:44.000Z', '2025-11-17T09:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-448-1', 'hist-ticket-18-448', 'prod-mocha', 1, 16500, 0, '2025-11-17T09:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-448-2', 'hist-ticket-18-448', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T09:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-448-3', 'hist-ticket-18-448', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T09:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-448', 'hist-ticket-18-448', 'cash', 45500, 'completed', '2025-11-17T09:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-449', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-11-17T12:52:38.000Z', '2025-11-17T12:52:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-449-1', 'hist-ticket-18-449', 'prod-americano', 1, 12000, 0, '2025-11-17T12:52:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-449', 'hist-ticket-18-449', 'cash', 12000, 'completed', '2025-11-17T12:52:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-450', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2025-11-17T15:28:35.000Z', '2025-11-17T15:28:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-450-1', 'hist-ticket-18-450', 'prod-americano', 1, 12000, 0, '2025-11-17T15:28:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-450-2', 'hist-ticket-18-450', 'prod-latte', 1, 15000, 0, '2025-11-17T15:28:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-450', 'hist-ticket-18-450', 'cash', 27000, 'completed', '2025-11-17T15:28:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-451', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-17T10:55:40.000Z', '2025-11-17T10:55:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-451-1', 'hist-ticket-18-451', 'prod-mocha', 1, 16500, 0, '2025-11-17T10:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-451-2', 'hist-ticket-18-451', 'prod-americano', 1, 12000, 0, '2025-11-17T10:55:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-451', 'hist-ticket-18-451', 'cash', 28500, 'completed', '2025-11-17T10:55:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-452', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-17T19:25:57.000Z', '2025-11-17T19:25:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-452-1', 'hist-ticket-18-452', 'prod-mocha', 1, 16500, 0, '2025-11-17T19:25:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-452-2', 'hist-ticket-18-452', 'prod-latte', 1, 15000, 0, '2025-11-17T19:25:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-452', 'hist-ticket-18-452', 'cash', 31500, 'completed', '2025-11-17T19:25:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-453', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-17T14:07:06.000Z', '2025-11-17T14:07:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-453-1', 'hist-ticket-18-453', 'prod-americano', 1, 12000, 0, '2025-11-17T14:07:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-453', 'hist-ticket-18-453', 'cash', 12000, 'completed', '2025-11-17T14:07:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-454', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-17T17:16:24.000Z', '2025-11-17T17:16:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-454-1', 'hist-ticket-18-454', 'prod-latte', 1, 15000, 0, '2025-11-17T17:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-454-2', 'hist-ticket-18-454', 'prod-americano', 1, 12000, 0, '2025-11-17T17:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-454-3', 'hist-ticket-18-454', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T17:16:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-454', 'hist-ticket-18-454', 'cash', 41500, 'completed', '2025-11-17T17:16:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-455', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-17T17:56:45.000Z', '2025-11-17T17:56:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-455-1', 'hist-ticket-18-455', 'prod-americano', 1, 12000, 0, '2025-11-17T17:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-455-2', 'hist-ticket-18-455', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T17:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-455-3', 'hist-ticket-18-455', 'prod-mocha', 1, 16500, 0, '2025-11-17T17:56:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-455', 'hist-ticket-18-455', 'cash', 43000, 'completed', '2025-11-17T17:56:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-456', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-17T08:41:15.000Z', '2025-11-17T08:41:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-456-1', 'hist-ticket-18-456', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T08:41:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-456-2', 'hist-ticket-18-456', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T08:41:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-456-3', 'hist-ticket-18-456', 'prod-americano', 1, 12000, 0, '2025-11-17T08:41:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-456-4', 'hist-ticket-18-456', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T08:41:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-456', 'hist-ticket-18-456', 'cash', 55500, 'completed', '2025-11-17T08:41:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-457', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-17T16:57:32.000Z', '2025-11-17T16:57:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-457-1', 'hist-ticket-18-457', 'prod-mocha', 1, 16500, 0, '2025-11-17T16:57:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-457-2', 'hist-ticket-18-457', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T16:57:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-457', 'hist-ticket-18-457', 'cash', 31000, 'completed', '2025-11-17T16:57:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-458', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-17T15:52:31.000Z', '2025-11-17T15:52:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-458-1', 'hist-ticket-18-458', 'prod-americano', 1, 12000, 0, '2025-11-17T15:52:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-458-2', 'hist-ticket-18-458', 'prod-mocha', 1, 16500, 0, '2025-11-17T15:52:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-458-3', 'hist-ticket-18-458', 'prod-mocha', 1, 16500, 0, '2025-11-17T15:52:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-458-4', 'hist-ticket-18-458', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T15:52:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-458', 'hist-ticket-18-458', 'cash', 59500, 'completed', '2025-11-17T15:52:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-459', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-17T16:14:58.000Z', '2025-11-17T16:14:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-459-1', 'hist-ticket-18-459', 'prod-latte', 1, 15000, 0, '2025-11-17T16:14:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-459-2', 'hist-ticket-18-459', 'prod-latte', 1, 15000, 0, '2025-11-17T16:14:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-459-3', 'hist-ticket-18-459', 'prod-latte', 1, 15000, 0, '2025-11-17T16:14:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-459', 'hist-ticket-18-459', 'cash', 45000, 'completed', '2025-11-17T16:14:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-460', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-11-17T11:41:30.000Z', '2025-11-17T11:41:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-460-1', 'hist-ticket-18-460', 'prod-americano', 1, 12000, 0, '2025-11-17T11:41:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-460-2', 'hist-ticket-18-460', 'prod-latte', 1, 15000, 0, '2025-11-17T11:41:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-460-3', 'hist-ticket-18-460', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T11:41:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-460-4', 'hist-ticket-18-460', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T11:41:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-460', 'hist-ticket-18-460', 'cash', 56000, 'completed', '2025-11-17T11:41:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-461', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2025-11-18T11:26:57.000Z', '2025-11-18T11:26:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-461-1', 'hist-ticket-19-461', 'prod-latte', 1, 15000, 0, '2025-11-18T11:26:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-461-2', 'hist-ticket-19-461', 'prod-mocha', 1, 16500, 0, '2025-11-18T11:26:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-461', 'hist-ticket-19-461', 'cash', 31500, 'completed', '2025-11-18T11:26:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-462', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-18T10:36:21.000Z', '2025-11-18T10:36:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-462-1', 'hist-ticket-19-462', 'prod-mocha', 1, 16500, 0, '2025-11-18T10:36:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-462-2', 'hist-ticket-19-462', 'prod-americano', 1, 12000, 0, '2025-11-18T10:36:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-462-3', 'hist-ticket-19-462', 'prod-mocha', 1, 16500, 0, '2025-11-18T10:36:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-462-4', 'hist-ticket-19-462', 'prod-americano', 1, 12000, 0, '2025-11-18T10:36:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-462', 'hist-ticket-19-462', 'cash', 57000, 'completed', '2025-11-18T10:36:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-463', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-18T16:03:28.000Z', '2025-11-18T16:03:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-463-1', 'hist-ticket-19-463', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T16:03:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-463-2', 'hist-ticket-19-463', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T16:03:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-463', 'hist-ticket-19-463', 'cash', 29000, 'completed', '2025-11-18T16:03:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-464', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-18T10:01:41.000Z', '2025-11-18T10:01:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-464-1', 'hist-ticket-19-464', 'prod-americano', 1, 12000, 0, '2025-11-18T10:01:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-464-2', 'hist-ticket-19-464', 'prod-latte', 1, 15000, 0, '2025-11-18T10:01:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-464-3', 'hist-ticket-19-464', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T10:01:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-464-4', 'hist-ticket-19-464', 'prod-latte', 1, 15000, 0, '2025-11-18T10:01:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-464', 'hist-ticket-19-464', 'cash', 56500, 'completed', '2025-11-18T10:01:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-465', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-18T14:39:51.000Z', '2025-11-18T14:39:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-465-1', 'hist-ticket-19-465', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T14:39:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-465-2', 'hist-ticket-19-465', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T14:39:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-465-3', 'hist-ticket-19-465', 'prod-mocha', 1, 16500, 0, '2025-11-18T14:39:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-465', 'hist-ticket-19-465', 'cash', 45500, 'completed', '2025-11-18T14:39:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-466', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-18T18:09:37.000Z', '2025-11-18T18:09:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-466-1', 'hist-ticket-19-466', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T18:09:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-466-2', 'hist-ticket-19-466', 'prod-latte', 1, 15000, 0, '2025-11-18T18:09:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-466-3', 'hist-ticket-19-466', 'prod-mocha', 1, 16500, 0, '2025-11-18T18:09:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-466-4', 'hist-ticket-19-466', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T18:09:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-466', 'hist-ticket-19-466', 'cash', 60500, 'completed', '2025-11-18T18:09:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-467', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-11-18T09:14:46.000Z', '2025-11-18T09:14:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-467-1', 'hist-ticket-19-467', 'prod-latte', 1, 15000, 0, '2025-11-18T09:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-467-2', 'hist-ticket-19-467', 'prod-latte', 1, 15000, 0, '2025-11-18T09:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-467-3', 'hist-ticket-19-467', 'prod-latte', 1, 15000, 0, '2025-11-18T09:14:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-467', 'hist-ticket-19-467', 'cash', 45000, 'completed', '2025-11-18T09:14:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-468', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-18T10:04:10.000Z', '2025-11-18T10:04:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-468-1', 'hist-ticket-19-468', 'prod-latte', 1, 15000, 0, '2025-11-18T10:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-468-2', 'hist-ticket-19-468', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T10:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-468-3', 'hist-ticket-19-468', 'prod-americano', 1, 12000, 0, '2025-11-18T10:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-468-4', 'hist-ticket-19-468', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T10:04:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-468', 'hist-ticket-19-468', 'cash', 56000, 'completed', '2025-11-18T10:04:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-469', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-18T13:49:07.000Z', '2025-11-18T13:49:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-469-1', 'hist-ticket-19-469', 'prod-mocha', 1, 16500, 0, '2025-11-18T13:49:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-469', 'hist-ticket-19-469', 'cash', 16500, 'completed', '2025-11-18T13:49:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-470', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-18T19:30:18.000Z', '2025-11-18T19:30:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-470-1', 'hist-ticket-19-470', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T19:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-470-2', 'hist-ticket-19-470', 'prod-americano', 1, 12000, 0, '2025-11-18T19:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-470-3', 'hist-ticket-19-470', 'prod-americano', 1, 12000, 0, '2025-11-18T19:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-470-4', 'hist-ticket-19-470', 'prod-latte', 1, 15000, 0, '2025-11-18T19:30:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-470', 'hist-ticket-19-470', 'cash', 53500, 'completed', '2025-11-18T19:30:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-471', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-18T08:28:50.000Z', '2025-11-18T08:28:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-471-1', 'hist-ticket-19-471', 'prod-latte', 1, 15000, 0, '2025-11-18T08:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-471-2', 'hist-ticket-19-471', 'prod-mocha', 1, 16500, 0, '2025-11-18T08:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-471-3', 'hist-ticket-19-471', 'prod-mocha', 1, 16500, 0, '2025-11-18T08:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-471-4', 'hist-ticket-19-471', 'prod-mocha', 1, 16500, 0, '2025-11-18T08:28:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-471', 'hist-ticket-19-471', 'cash', 64500, 'completed', '2025-11-18T08:28:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-472', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-18T11:03:08.000Z', '2025-11-18T11:03:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-472-1', 'hist-ticket-19-472', 'prod-americano', 1, 12000, 0, '2025-11-18T11:03:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-472-2', 'hist-ticket-19-472', 'prod-latte', 1, 15000, 0, '2025-11-18T11:03:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-472-3', 'hist-ticket-19-472', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T11:03:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-472-4', 'hist-ticket-19-472', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T11:03:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-472', 'hist-ticket-19-472', 'cash', 56000, 'completed', '2025-11-18T11:03:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-473', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-18T16:50:08.000Z', '2025-11-18T16:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-473-1', 'hist-ticket-19-473', 'prod-latte', 1, 15000, 0, '2025-11-18T16:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-473', 'hist-ticket-19-473', 'cash', 15000, 'completed', '2025-11-18T16:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-474', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-11-18T08:42:09.000Z', '2025-11-18T08:42:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-474-1', 'hist-ticket-19-474', 'prod-mocha', 1, 16500, 0, '2025-11-18T08:42:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-474', 'hist-ticket-19-474', 'cash', 16500, 'completed', '2025-11-18T08:42:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-475', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-18T10:15:28.000Z', '2025-11-18T10:15:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-475-1', 'hist-ticket-19-475', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T10:15:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-475-2', 'hist-ticket-19-475', 'prod-mocha', 1, 16500, 0, '2025-11-18T10:15:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-475-3', 'hist-ticket-19-475', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T10:15:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-475', 'hist-ticket-19-475', 'cash', 45500, 'completed', '2025-11-18T10:15:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-19-476', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-11-18T12:32:37.000Z', '2025-11-18T12:32:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-476-1', 'hist-ticket-19-476', 'prod-americano', 1, 12000, 0, '2025-11-18T12:32:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-476-2', 'hist-ticket-19-476', 'prod-latte', 1, 15000, 0, '2025-11-18T12:32:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-476-3', 'hist-ticket-19-476', 'prod-mocha', 1, 16500, 0, '2025-11-18T12:32:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-19-476-4', 'hist-ticket-19-476', 'prod-cappuccino', 1, 14500, 0, '2025-11-18T12:32:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-19-476', 'hist-ticket-19-476', 'cash', 58000, 'completed', '2025-11-18T12:32:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-477', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-19T14:50:02.000Z', '2025-11-19T14:50:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-477-1', 'hist-ticket-20-477', 'prod-mocha', 1, 16500, 0, '2025-11-19T14:50:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-477-2', 'hist-ticket-20-477', 'prod-americano', 1, 12000, 0, '2025-11-19T14:50:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-477', 'hist-ticket-20-477', 'cash', 28500, 'completed', '2025-11-19T14:50:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-478', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-19T09:44:52.000Z', '2025-11-19T09:44:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-478-1', 'hist-ticket-20-478', 'prod-mocha', 1, 16500, 0, '2025-11-19T09:44:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-478-2', 'hist-ticket-20-478', 'prod-latte', 1, 15000, 0, '2025-11-19T09:44:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-478-3', 'hist-ticket-20-478', 'prod-latte', 1, 15000, 0, '2025-11-19T09:44:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-478', 'hist-ticket-20-478', 'cash', 46500, 'completed', '2025-11-19T09:44:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-479', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-19T14:09:14.000Z', '2025-11-19T14:09:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-479-1', 'hist-ticket-20-479', 'prod-mocha', 1, 16500, 0, '2025-11-19T14:09:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-479-2', 'hist-ticket-20-479', 'prod-americano', 1, 12000, 0, '2025-11-19T14:09:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-479-3', 'hist-ticket-20-479', 'prod-mocha', 1, 16500, 0, '2025-11-19T14:09:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-479-4', 'hist-ticket-20-479', 'prod-latte', 1, 15000, 0, '2025-11-19T14:09:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-479', 'hist-ticket-20-479', 'cash', 60000, 'completed', '2025-11-19T14:09:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-480', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-19T09:41:16.000Z', '2025-11-19T09:41:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-480-1', 'hist-ticket-20-480', 'prod-latte', 1, 15000, 0, '2025-11-19T09:41:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-480-2', 'hist-ticket-20-480', 'prod-mocha', 1, 16500, 0, '2025-11-19T09:41:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-480-3', 'hist-ticket-20-480', 'prod-mocha', 1, 16500, 0, '2025-11-19T09:41:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-480-4', 'hist-ticket-20-480', 'prod-americano', 1, 12000, 0, '2025-11-19T09:41:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-480', 'hist-ticket-20-480', 'cash', 60000, 'completed', '2025-11-19T09:41:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-481', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-19T17:42:10.000Z', '2025-11-19T17:42:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-481-1', 'hist-ticket-20-481', 'prod-mocha', 1, 16500, 0, '2025-11-19T17:42:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-481-2', 'hist-ticket-20-481', 'prod-latte', 1, 15000, 0, '2025-11-19T17:42:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-481-3', 'hist-ticket-20-481', 'prod-latte', 1, 15000, 0, '2025-11-19T17:42:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-481-4', 'hist-ticket-20-481', 'prod-cappuccino', 1, 14500, 0, '2025-11-19T17:42:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-481', 'hist-ticket-20-481', 'cash', 61000, 'completed', '2025-11-19T17:42:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-482', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-19T17:48:04.000Z', '2025-11-19T17:48:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-482-1', 'hist-ticket-20-482', 'prod-americano', 1, 12000, 0, '2025-11-19T17:48:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-482-2', 'hist-ticket-20-482', 'prod-americano', 1, 12000, 0, '2025-11-19T17:48:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-482-3', 'hist-ticket-20-482', 'prod-latte', 1, 15000, 0, '2025-11-19T17:48:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-482-4', 'hist-ticket-20-482', 'prod-latte', 1, 15000, 0, '2025-11-19T17:48:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-482', 'hist-ticket-20-482', 'cash', 54000, 'completed', '2025-11-19T17:48:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-483', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-11-19T17:43:15.000Z', '2025-11-19T17:43:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-483-1', 'hist-ticket-20-483', 'prod-latte', 1, 15000, 0, '2025-11-19T17:43:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-483', 'hist-ticket-20-483', 'cash', 15000, 'completed', '2025-11-19T17:43:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-484', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-19T10:40:37.000Z', '2025-11-19T10:40:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-484-1', 'hist-ticket-20-484', 'prod-latte', 1, 15000, 0, '2025-11-19T10:40:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-484-2', 'hist-ticket-20-484', 'prod-mocha', 1, 16500, 0, '2025-11-19T10:40:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-484-3', 'hist-ticket-20-484', 'prod-mocha', 1, 16500, 0, '2025-11-19T10:40:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-484-4', 'hist-ticket-20-484', 'prod-americano', 1, 12000, 0, '2025-11-19T10:40:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-484', 'hist-ticket-20-484', 'cash', 60000, 'completed', '2025-11-19T10:40:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-485', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-19T13:58:29.000Z', '2025-11-19T13:58:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-485-1', 'hist-ticket-20-485', 'prod-americano', 1, 12000, 0, '2025-11-19T13:58:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-485', 'hist-ticket-20-485', 'cash', 12000, 'completed', '2025-11-19T13:58:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-486', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-19T11:38:54.000Z', '2025-11-19T11:38:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-486-1', 'hist-ticket-20-486', 'prod-americano', 1, 12000, 0, '2025-11-19T11:38:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-486', 'hist-ticket-20-486', 'cash', 12000, 'completed', '2025-11-19T11:38:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-487', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-19T12:18:30.000Z', '2025-11-19T12:18:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-487-1', 'hist-ticket-20-487', 'prod-mocha', 1, 16500, 0, '2025-11-19T12:18:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-487-2', 'hist-ticket-20-487', 'prod-americano', 1, 12000, 0, '2025-11-19T12:18:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-487-3', 'hist-ticket-20-487', 'prod-latte', 1, 15000, 0, '2025-11-19T12:18:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-487-4', 'hist-ticket-20-487', 'prod-mocha', 1, 16500, 0, '2025-11-19T12:18:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-487', 'hist-ticket-20-487', 'cash', 60000, 'completed', '2025-11-19T12:18:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-488', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-19T17:09:44.000Z', '2025-11-19T17:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-488-1', 'hist-ticket-20-488', 'prod-cappuccino', 1, 14500, 0, '2025-11-19T17:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-488-2', 'hist-ticket-20-488', 'prod-mocha', 1, 16500, 0, '2025-11-19T17:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-488-3', 'hist-ticket-20-488', 'prod-cappuccino', 1, 14500, 0, '2025-11-19T17:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-488', 'hist-ticket-20-488', 'cash', 45500, 'completed', '2025-11-19T17:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-489', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-19T14:29:15.000Z', '2025-11-19T14:29:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-489-1', 'hist-ticket-20-489', 'prod-americano', 1, 12000, 0, '2025-11-19T14:29:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-489-2', 'hist-ticket-20-489', 'prod-cappuccino', 1, 14500, 0, '2025-11-19T14:29:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-489', 'hist-ticket-20-489', 'cash', 26500, 'completed', '2025-11-19T14:29:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-490', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-19T13:36:40.000Z', '2025-11-19T13:36:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-490-1', 'hist-ticket-20-490', 'prod-mocha', 1, 16500, 0, '2025-11-19T13:36:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-490-2', 'hist-ticket-20-490', 'prod-americano', 1, 12000, 0, '2025-11-19T13:36:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-490-3', 'hist-ticket-20-490', 'prod-americano', 1, 12000, 0, '2025-11-19T13:36:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-490', 'hist-ticket-20-490', 'cash', 40500, 'completed', '2025-11-19T13:36:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-491', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2025-11-19T13:01:06.000Z', '2025-11-19T13:01:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-491-1', 'hist-ticket-20-491', 'prod-mocha', 1, 16500, 0, '2025-11-19T13:01:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-491-2', 'hist-ticket-20-491', 'prod-americano', 1, 12000, 0, '2025-11-19T13:01:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-491-3', 'hist-ticket-20-491', 'prod-mocha', 1, 16500, 0, '2025-11-19T13:01:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-491-4', 'hist-ticket-20-491', 'prod-cappuccino', 1, 14500, 0, '2025-11-19T13:01:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-491', 'hist-ticket-20-491', 'cash', 59500, 'completed', '2025-11-19T13:01:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-492', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-19T09:55:57.000Z', '2025-11-19T09:55:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-492-1', 'hist-ticket-20-492', 'prod-latte', 1, 15000, 0, '2025-11-19T09:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-492-2', 'hist-ticket-20-492', 'prod-americano', 1, 12000, 0, '2025-11-19T09:55:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-492', 'hist-ticket-20-492', 'cash', 27000, 'completed', '2025-11-19T09:55:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-20-493', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-19T18:48:45.000Z', '2025-11-19T18:48:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-493-1', 'hist-ticket-20-493', 'prod-latte', 1, 15000, 0, '2025-11-19T18:48:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-493-2', 'hist-ticket-20-493', 'prod-mocha', 1, 16500, 0, '2025-11-19T18:48:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-20-493-3', 'hist-ticket-20-493', 'prod-americano', 1, 12000, 0, '2025-11-19T18:48:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-20-493', 'hist-ticket-20-493', 'cash', 43500, 'completed', '2025-11-19T18:48:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-494', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-20T14:55:12.000Z', '2025-11-20T14:55:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-494-1', 'hist-ticket-21-494', 'prod-americano', 1, 12000, 0, '2025-11-20T14:55:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-494', 'hist-ticket-21-494', 'cash', 12000, 'completed', '2025-11-20T14:55:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-495', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-20T08:38:55.000Z', '2025-11-20T08:38:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-495-1', 'hist-ticket-21-495', 'prod-mocha', 1, 16500, 0, '2025-11-20T08:38:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-495-2', 'hist-ticket-21-495', 'prod-mocha', 1, 16500, 0, '2025-11-20T08:38:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-495-3', 'hist-ticket-21-495', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T08:38:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-495-4', 'hist-ticket-21-495', 'prod-latte', 1, 15000, 0, '2025-11-20T08:38:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-495', 'hist-ticket-21-495', 'cash', 62500, 'completed', '2025-11-20T08:38:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-496', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-20T17:56:13.000Z', '2025-11-20T17:56:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-496-1', 'hist-ticket-21-496', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T17:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-496-2', 'hist-ticket-21-496', 'prod-latte', 1, 15000, 0, '2025-11-20T17:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-496-3', 'hist-ticket-21-496', 'prod-latte', 1, 15000, 0, '2025-11-20T17:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-496-4', 'hist-ticket-21-496', 'prod-latte', 1, 15000, 0, '2025-11-20T17:56:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-496', 'hist-ticket-21-496', 'cash', 59500, 'completed', '2025-11-20T17:56:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-497', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-20T08:45:34.000Z', '2025-11-20T08:45:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-497-1', 'hist-ticket-21-497', 'prod-mocha', 1, 16500, 0, '2025-11-20T08:45:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-497-2', 'hist-ticket-21-497', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T08:45:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-497-3', 'hist-ticket-21-497', 'prod-americano', 1, 12000, 0, '2025-11-20T08:45:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-497-4', 'hist-ticket-21-497', 'prod-latte', 1, 15000, 0, '2025-11-20T08:45:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-497', 'hist-ticket-21-497', 'cash', 58000, 'completed', '2025-11-20T08:45:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-498', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-20T12:04:18.000Z', '2025-11-20T12:04:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-498-1', 'hist-ticket-21-498', 'prod-americano', 1, 12000, 0, '2025-11-20T12:04:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-498', 'hist-ticket-21-498', 'cash', 12000, 'completed', '2025-11-20T12:04:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-499', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-20T09:49:44.000Z', '2025-11-20T09:49:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-499-1', 'hist-ticket-21-499', 'prod-latte', 1, 15000, 0, '2025-11-20T09:49:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-499-2', 'hist-ticket-21-499', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T09:49:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-499-3', 'hist-ticket-21-499', 'prod-americano', 1, 12000, 0, '2025-11-20T09:49:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-499', 'hist-ticket-21-499', 'cash', 41500, 'completed', '2025-11-20T09:49:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-500', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-20T19:09:44.000Z', '2025-11-20T19:09:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-500-1', 'hist-ticket-21-500', 'prod-mocha', 1, 16500, 0, '2025-11-20T19:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-500-2', 'hist-ticket-21-500', 'prod-latte', 1, 15000, 0, '2025-11-20T19:09:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-500-3', 'hist-ticket-21-500', 'prod-latte', 1, 15000, 0, '2025-11-20T19:09:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-500', 'hist-ticket-21-500', 'cash', 46500, 'completed', '2025-11-20T19:09:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-501', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-20T15:31:39.000Z', '2025-11-20T15:31:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-501-1', 'hist-ticket-21-501', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T15:31:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-501-2', 'hist-ticket-21-501', 'prod-americano', 1, 12000, 0, '2025-11-20T15:31:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-501-3', 'hist-ticket-21-501', 'prod-latte', 1, 15000, 0, '2025-11-20T15:31:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-501-4', 'hist-ticket-21-501', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T15:31:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-501', 'hist-ticket-21-501', 'cash', 56000, 'completed', '2025-11-20T15:31:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-502', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-20T18:34:52.000Z', '2025-11-20T18:34:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-502-1', 'hist-ticket-21-502', 'prod-latte', 1, 15000, 0, '2025-11-20T18:34:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-502-2', 'hist-ticket-21-502', 'prod-mocha', 1, 16500, 0, '2025-11-20T18:34:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-502', 'hist-ticket-21-502', 'cash', 31500, 'completed', '2025-11-20T18:34:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-503', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-20T18:09:20.000Z', '2025-11-20T18:09:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-503-1', 'hist-ticket-21-503', 'prod-americano', 1, 12000, 0, '2025-11-20T18:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-503-2', 'hist-ticket-21-503', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T18:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-503-3', 'hist-ticket-21-503', 'prod-americano', 1, 12000, 0, '2025-11-20T18:09:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-503-4', 'hist-ticket-21-503', 'prod-americano', 1, 12000, 0, '2025-11-20T18:09:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-503', 'hist-ticket-21-503', 'cash', 50500, 'completed', '2025-11-20T18:09:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-504', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-20T17:36:17.000Z', '2025-11-20T17:36:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-504-1', 'hist-ticket-21-504', 'prod-latte', 1, 15000, 0, '2025-11-20T17:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-504-2', 'hist-ticket-21-504', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T17:36:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-504-3', 'hist-ticket-21-504', 'prod-latte', 1, 15000, 0, '2025-11-20T17:36:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-504', 'hist-ticket-21-504', 'cash', 44500, 'completed', '2025-11-20T17:36:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-505', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-20T19:30:40.000Z', '2025-11-20T19:30:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-505-1', 'hist-ticket-21-505', 'prod-americano', 1, 12000, 0, '2025-11-20T19:30:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-505-2', 'hist-ticket-21-505', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T19:30:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-505-3', 'hist-ticket-21-505', 'prod-latte', 1, 15000, 0, '2025-11-20T19:30:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-505', 'hist-ticket-21-505', 'cash', 41500, 'completed', '2025-11-20T19:30:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-506', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-20T17:10:45.000Z', '2025-11-20T17:10:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-506-1', 'hist-ticket-21-506', 'prod-mocha', 1, 16500, 0, '2025-11-20T17:10:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-506-2', 'hist-ticket-21-506', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T17:10:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-506', 'hist-ticket-21-506', 'cash', 31000, 'completed', '2025-11-20T17:10:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-507', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-20T13:06:27.000Z', '2025-11-20T13:06:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-507-1', 'hist-ticket-21-507', 'prod-mocha', 1, 16500, 0, '2025-11-20T13:06:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-507-2', 'hist-ticket-21-507', 'prod-americano', 1, 12000, 0, '2025-11-20T13:06:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-507-3', 'hist-ticket-21-507', 'prod-americano', 1, 12000, 0, '2025-11-20T13:06:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-507', 'hist-ticket-21-507', 'cash', 40500, 'completed', '2025-11-20T13:06:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-508', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-20T08:04:27.000Z', '2025-11-20T08:04:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-508-1', 'hist-ticket-21-508', 'prod-mocha', 1, 16500, 0, '2025-11-20T08:04:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-508-2', 'hist-ticket-21-508', 'prod-americano', 1, 12000, 0, '2025-11-20T08:04:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-508-3', 'hist-ticket-21-508', 'prod-mocha', 1, 16500, 0, '2025-11-20T08:04:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-508', 'hist-ticket-21-508', 'cash', 45000, 'completed', '2025-11-20T08:04:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-509', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-20T18:12:26.000Z', '2025-11-20T18:12:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-509-1', 'hist-ticket-21-509', 'prod-mocha', 1, 16500, 0, '2025-11-20T18:12:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-509-2', 'hist-ticket-21-509', 'prod-latte', 1, 15000, 0, '2025-11-20T18:12:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-509', 'hist-ticket-21-509', 'cash', 31500, 'completed', '2025-11-20T18:12:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-510', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2025-11-20T11:10:02.000Z', '2025-11-20T11:10:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-510-1', 'hist-ticket-21-510', 'prod-americano', 1, 12000, 0, '2025-11-20T11:10:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-510-2', 'hist-ticket-21-510', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T11:10:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-510-3', 'hist-ticket-21-510', 'prod-americano', 1, 12000, 0, '2025-11-20T11:10:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-510-4', 'hist-ticket-21-510', 'prod-mocha', 1, 16500, 0, '2025-11-20T11:10:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-510', 'hist-ticket-21-510', 'cash', 55000, 'completed', '2025-11-20T11:10:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-511', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-20T15:20:19.000Z', '2025-11-20T15:20:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-511-1', 'hist-ticket-21-511', 'prod-latte', 1, 15000, 0, '2025-11-20T15:20:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-511-2', 'hist-ticket-21-511', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T15:20:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-511', 'hist-ticket-21-511', 'cash', 29500, 'completed', '2025-11-20T15:20:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-512', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-20T13:30:07.000Z', '2025-11-20T13:30:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-512-1', 'hist-ticket-21-512', 'prod-cappuccino', 1, 14500, 0, '2025-11-20T13:30:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-512', 'hist-ticket-21-512', 'cash', 14500, 'completed', '2025-11-20T13:30:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-513', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-11-20T15:13:29.000Z', '2025-11-20T15:13:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-513-1', 'hist-ticket-21-513', 'prod-latte', 1, 15000, 0, '2025-11-20T15:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-513-2', 'hist-ticket-21-513', 'prod-americano', 1, 12000, 0, '2025-11-20T15:13:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-513-3', 'hist-ticket-21-513', 'prod-latte', 1, 15000, 0, '2025-11-20T15:13:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-513', 'hist-ticket-21-513', 'cash', 42000, 'completed', '2025-11-20T15:13:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-21-514', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2025-11-20T10:32:28.000Z', '2025-11-20T10:32:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-514-1', 'hist-ticket-21-514', 'prod-mocha', 1, 16500, 0, '2025-11-20T10:32:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-514-2', 'hist-ticket-21-514', 'prod-latte', 1, 15000, 0, '2025-11-20T10:32:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-514-3', 'hist-ticket-21-514', 'prod-mocha', 1, 16500, 0, '2025-11-20T10:32:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-21-514-4', 'hist-ticket-21-514', 'prod-latte', 1, 15000, 0, '2025-11-20T10:32:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-21-514', 'hist-ticket-21-514', 'cash', 63000, 'completed', '2025-11-20T10:32:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-515', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-21T13:11:45.000Z', '2025-11-21T13:11:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-515-1', 'hist-ticket-22-515', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T13:11:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-515-2', 'hist-ticket-22-515', 'prod-latte', 1, 15000, 0, '2025-11-21T13:11:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-515-3', 'hist-ticket-22-515', 'prod-mocha', 1, 16500, 0, '2025-11-21T13:11:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-515-4', 'hist-ticket-22-515', 'prod-mocha', 1, 16500, 0, '2025-11-21T13:11:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-515', 'hist-ticket-22-515', 'cash', 62500, 'completed', '2025-11-21T13:11:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-516', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-21T17:48:51.000Z', '2025-11-21T17:48:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-516-1', 'hist-ticket-22-516', 'prod-americano', 1, 12000, 0, '2025-11-21T17:48:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-516-2', 'hist-ticket-22-516', 'prod-mocha', 1, 16500, 0, '2025-11-21T17:48:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-516', 'hist-ticket-22-516', 'cash', 28500, 'completed', '2025-11-21T17:48:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-517', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-21T18:02:30.000Z', '2025-11-21T18:02:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-517-1', 'hist-ticket-22-517', 'prod-latte', 1, 15000, 0, '2025-11-21T18:02:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-517', 'hist-ticket-22-517', 'cash', 15000, 'completed', '2025-11-21T18:02:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-518', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-21T18:12:30.000Z', '2025-11-21T18:12:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-518-1', 'hist-ticket-22-518', 'prod-latte', 1, 15000, 0, '2025-11-21T18:12:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-518', 'hist-ticket-22-518', 'cash', 15000, 'completed', '2025-11-21T18:12:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-519', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-21T14:15:06.000Z', '2025-11-21T14:15:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-519-1', 'hist-ticket-22-519', 'prod-mocha', 1, 16500, 0, '2025-11-21T14:15:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-519', 'hist-ticket-22-519', 'cash', 16500, 'completed', '2025-11-21T14:15:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-520', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-21T11:18:36.000Z', '2025-11-21T11:18:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-520-1', 'hist-ticket-22-520', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T11:18:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-520-2', 'hist-ticket-22-520', 'prod-mocha', 1, 16500, 0, '2025-11-21T11:18:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-520-3', 'hist-ticket-22-520', 'prod-latte', 1, 15000, 0, '2025-11-21T11:18:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-520-4', 'hist-ticket-22-520', 'prod-americano', 1, 12000, 0, '2025-11-21T11:18:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-520', 'hist-ticket-22-520', 'cash', 58000, 'completed', '2025-11-21T11:18:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-521', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-21T11:03:14.000Z', '2025-11-21T11:03:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-521-1', 'hist-ticket-22-521', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T11:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-521-2', 'hist-ticket-22-521', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T11:03:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-521', 'hist-ticket-22-521', 'cash', 29000, 'completed', '2025-11-21T11:03:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-522', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-21T14:15:19.000Z', '2025-11-21T14:15:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-522-1', 'hist-ticket-22-522', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T14:15:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-522', 'hist-ticket-22-522', 'cash', 14500, 'completed', '2025-11-21T14:15:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-523', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-21T17:04:57.000Z', '2025-11-21T17:04:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-523-1', 'hist-ticket-22-523', 'prod-mocha', 1, 16500, 0, '2025-11-21T17:04:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-523', 'hist-ticket-22-523', 'cash', 16500, 'completed', '2025-11-21T17:04:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-524', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-21T13:39:57.000Z', '2025-11-21T13:39:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-524-1', 'hist-ticket-22-524', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T13:39:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-524-2', 'hist-ticket-22-524', 'prod-latte', 1, 15000, 0, '2025-11-21T13:39:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-524-3', 'hist-ticket-22-524', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T13:39:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-524', 'hist-ticket-22-524', 'cash', 44000, 'completed', '2025-11-21T13:39:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-525', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-11-21T08:19:54.000Z', '2025-11-21T08:19:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-525-1', 'hist-ticket-22-525', 'prod-latte', 1, 15000, 0, '2025-11-21T08:19:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-525-2', 'hist-ticket-22-525', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T08:19:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-525-3', 'hist-ticket-22-525', 'prod-americano', 1, 12000, 0, '2025-11-21T08:19:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-525', 'hist-ticket-22-525', 'cash', 41500, 'completed', '2025-11-21T08:19:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-526', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-21T15:26:37.000Z', '2025-11-21T15:26:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-526-1', 'hist-ticket-22-526', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T15:26:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-526-2', 'hist-ticket-22-526', 'prod-americano', 1, 12000, 0, '2025-11-21T15:26:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-526-3', 'hist-ticket-22-526', 'prod-mocha', 1, 16500, 0, '2025-11-21T15:26:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-526', 'hist-ticket-22-526', 'cash', 43000, 'completed', '2025-11-21T15:26:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-527', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-21T14:57:27.000Z', '2025-11-21T14:57:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-527-1', 'hist-ticket-22-527', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T14:57:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-527-2', 'hist-ticket-22-527', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T14:57:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-527', 'hist-ticket-22-527', 'cash', 29000, 'completed', '2025-11-21T14:57:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-528', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-21T10:53:58.000Z', '2025-11-21T10:53:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-528-1', 'hist-ticket-22-528', 'prod-latte', 1, 15000, 0, '2025-11-21T10:53:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-528-2', 'hist-ticket-22-528', 'prod-latte', 1, 15000, 0, '2025-11-21T10:53:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-528-3', 'hist-ticket-22-528', 'prod-latte', 1, 15000, 0, '2025-11-21T10:53:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-528', 'hist-ticket-22-528', 'cash', 45000, 'completed', '2025-11-21T10:53:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-529', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-21T17:13:40.000Z', '2025-11-21T17:13:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-529-1', 'hist-ticket-22-529', 'prod-latte', 1, 15000, 0, '2025-11-21T17:13:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-529-2', 'hist-ticket-22-529', 'prod-americano', 1, 12000, 0, '2025-11-21T17:13:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-529-3', 'hist-ticket-22-529', 'prod-mocha', 1, 16500, 0, '2025-11-21T17:13:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-529-4', 'hist-ticket-22-529', 'prod-americano', 1, 12000, 0, '2025-11-21T17:13:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-529', 'hist-ticket-22-529', 'cash', 55500, 'completed', '2025-11-21T17:13:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-530', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-11-21T09:46:38.000Z', '2025-11-21T09:46:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-530-1', 'hist-ticket-22-530', 'prod-mocha', 1, 16500, 0, '2025-11-21T09:46:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-530-2', 'hist-ticket-22-530', 'prod-mocha', 1, 16500, 0, '2025-11-21T09:46:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-530-3', 'hist-ticket-22-530', 'prod-mocha', 1, 16500, 0, '2025-11-21T09:46:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-530', 'hist-ticket-22-530', 'cash', 49500, 'completed', '2025-11-21T09:46:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-531', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-21T15:19:57.000Z', '2025-11-21T15:19:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-531-1', 'hist-ticket-22-531', 'prod-mocha', 1, 16500, 0, '2025-11-21T15:19:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-531', 'hist-ticket-22-531', 'cash', 16500, 'completed', '2025-11-21T15:19:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-532', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-21T12:11:50.000Z', '2025-11-21T12:11:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-532-1', 'hist-ticket-22-532', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T12:11:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-532-2', 'hist-ticket-22-532', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T12:11:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-532', 'hist-ticket-22-532', 'cash', 29000, 'completed', '2025-11-21T12:11:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-533', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-21T11:09:42.000Z', '2025-11-21T11:09:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-533-1', 'hist-ticket-22-533', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T11:09:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-533-2', 'hist-ticket-22-533', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T11:09:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-533-3', 'hist-ticket-22-533', 'prod-latte', 1, 15000, 0, '2025-11-21T11:09:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-533-4', 'hist-ticket-22-533', 'prod-latte', 1, 15000, 0, '2025-11-21T11:09:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-533', 'hist-ticket-22-533', 'cash', 59000, 'completed', '2025-11-21T11:09:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-22-534', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-21T08:06:33.000Z', '2025-11-21T08:06:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-534-1', 'hist-ticket-22-534', 'prod-mocha', 1, 16500, 0, '2025-11-21T08:06:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-534-2', 'hist-ticket-22-534', 'prod-latte', 1, 15000, 0, '2025-11-21T08:06:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-534-3', 'hist-ticket-22-534', 'prod-cappuccino', 1, 14500, 0, '2025-11-21T08:06:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-22-534-4', 'hist-ticket-22-534', 'prod-latte', 1, 15000, 0, '2025-11-21T08:06:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-22-534', 'hist-ticket-22-534', 'cash', 61000, 'completed', '2025-11-21T08:06:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-535', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-22T13:02:21.000Z', '2025-11-22T13:02:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-535-1', 'hist-ticket-23-535', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T13:02:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-535', 'hist-ticket-23-535', 'cash', 14500, 'completed', '2025-11-22T13:02:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-536', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-11-22T15:32:40.000Z', '2025-11-22T15:32:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-536-1', 'hist-ticket-23-536', 'prod-latte', 1, 15000, 0, '2025-11-22T15:32:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-536-2', 'hist-ticket-23-536', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T15:32:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-536-3', 'hist-ticket-23-536', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T15:32:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-536', 'hist-ticket-23-536', 'cash', 44000, 'completed', '2025-11-22T15:32:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-537', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-22T18:01:08.000Z', '2025-11-22T18:01:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-537-1', 'hist-ticket-23-537', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T18:01:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-537-2', 'hist-ticket-23-537', 'prod-americano', 1, 12000, 0, '2025-11-22T18:01:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-537', 'hist-ticket-23-537', 'cash', 26500, 'completed', '2025-11-22T18:01:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-538', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-22T13:43:05.000Z', '2025-11-22T13:43:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-538-1', 'hist-ticket-23-538', 'prod-americano', 1, 12000, 0, '2025-11-22T13:43:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-538-2', 'hist-ticket-23-538', 'prod-latte', 1, 15000, 0, '2025-11-22T13:43:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-538', 'hist-ticket-23-538', 'cash', 27000, 'completed', '2025-11-22T13:43:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-539', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-11-22T14:42:09.000Z', '2025-11-22T14:42:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-539-1', 'hist-ticket-23-539', 'prod-latte', 1, 15000, 0, '2025-11-22T14:42:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-539-2', 'hist-ticket-23-539', 'prod-americano', 1, 12000, 0, '2025-11-22T14:42:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-539', 'hist-ticket-23-539', 'cash', 27000, 'completed', '2025-11-22T14:42:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-540', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-11-22T12:47:18.000Z', '2025-11-22T12:47:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-540-1', 'hist-ticket-23-540', 'prod-latte', 1, 15000, 0, '2025-11-22T12:47:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-540', 'hist-ticket-23-540', 'cash', 15000, 'completed', '2025-11-22T12:47:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-541', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-22T10:55:52.000Z', '2025-11-22T10:55:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-541-1', 'hist-ticket-23-541', 'prod-americano', 1, 12000, 0, '2025-11-22T10:55:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-541-2', 'hist-ticket-23-541', 'prod-americano', 1, 12000, 0, '2025-11-22T10:55:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-541-3', 'hist-ticket-23-541', 'prod-americano', 1, 12000, 0, '2025-11-22T10:55:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-541-4', 'hist-ticket-23-541', 'prod-latte', 1, 15000, 0, '2025-11-22T10:55:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-541', 'hist-ticket-23-541', 'cash', 51000, 'completed', '2025-11-22T10:55:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-542', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-22T19:58:41.000Z', '2025-11-22T19:58:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-542-1', 'hist-ticket-23-542', 'prod-americano', 1, 12000, 0, '2025-11-22T19:58:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-542-2', 'hist-ticket-23-542', 'prod-mocha', 1, 16500, 0, '2025-11-22T19:58:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-542', 'hist-ticket-23-542', 'cash', 28500, 'completed', '2025-11-22T19:58:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-543', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-22T13:11:13.000Z', '2025-11-22T13:11:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-543-1', 'hist-ticket-23-543', 'prod-latte', 1, 15000, 0, '2025-11-22T13:11:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-543-2', 'hist-ticket-23-543', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T13:11:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-543', 'hist-ticket-23-543', 'cash', 29500, 'completed', '2025-11-22T13:11:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-544', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-22T17:27:35.000Z', '2025-11-22T17:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-544-1', 'hist-ticket-23-544', 'prod-americano', 1, 12000, 0, '2025-11-22T17:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-544-2', 'hist-ticket-23-544', 'prod-mocha', 1, 16500, 0, '2025-11-22T17:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-544-3', 'hist-ticket-23-544', 'prod-mocha', 1, 16500, 0, '2025-11-22T17:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-544-4', 'hist-ticket-23-544', 'prod-latte', 1, 15000, 0, '2025-11-22T17:27:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-544', 'hist-ticket-23-544', 'cash', 60000, 'completed', '2025-11-22T17:27:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-545', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-22T16:55:36.000Z', '2025-11-22T16:55:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-545-1', 'hist-ticket-23-545', 'prod-mocha', 1, 16500, 0, '2025-11-22T16:55:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-545-2', 'hist-ticket-23-545', 'prod-mocha', 1, 16500, 0, '2025-11-22T16:55:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-545-3', 'hist-ticket-23-545', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T16:55:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-545', 'hist-ticket-23-545', 'cash', 47500, 'completed', '2025-11-22T16:55:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-546', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-22T18:44:23.000Z', '2025-11-22T18:44:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-546-1', 'hist-ticket-23-546', 'prod-americano', 1, 12000, 0, '2025-11-22T18:44:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-546-2', 'hist-ticket-23-546', 'prod-mocha', 1, 16500, 0, '2025-11-22T18:44:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-546', 'hist-ticket-23-546', 'cash', 28500, 'completed', '2025-11-22T18:44:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-547', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-22T15:19:28.000Z', '2025-11-22T15:19:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-547-1', 'hist-ticket-23-547', 'prod-mocha', 1, 16500, 0, '2025-11-22T15:19:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-547-2', 'hist-ticket-23-547', 'prod-americano', 1, 12000, 0, '2025-11-22T15:19:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-547-3', 'hist-ticket-23-547', 'prod-latte', 1, 15000, 0, '2025-11-22T15:19:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-547', 'hist-ticket-23-547', 'cash', 43500, 'completed', '2025-11-22T15:19:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-548', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-22T12:46:30.000Z', '2025-11-22T12:46:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-548-1', 'hist-ticket-23-548', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T12:46:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-548-2', 'hist-ticket-23-548', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T12:46:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-548-3', 'hist-ticket-23-548', 'prod-cappuccino', 1, 14500, 0, '2025-11-22T12:46:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-548-4', 'hist-ticket-23-548', 'prod-mocha', 1, 16500, 0, '2025-11-22T12:46:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-548', 'hist-ticket-23-548', 'cash', 60000, 'completed', '2025-11-22T12:46:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-549', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-22T15:59:08.000Z', '2025-11-22T15:59:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-549-1', 'hist-ticket-23-549', 'prod-mocha', 1, 16500, 0, '2025-11-22T15:59:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-549-2', 'hist-ticket-23-549', 'prod-latte', 1, 15000, 0, '2025-11-22T15:59:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-23-549', 'hist-ticket-23-549', 'cash', 31500, 'completed', '2025-11-22T15:59:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-23-550', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-22T18:17:32.000Z', '2025-11-22T18:17:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-23-550-1', 'hist-ticket-23-550', 'prod-latte', 1, 15000, 0, '2025-11-22T18:17:32.000Z');