INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3202', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-07T15:58:57.000Z', '2026-03-07T15:58:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3202-1', 'hist-ticket-128-3202', 'prod-mocha', 1, 16500, 0, '2026-03-07T15:58:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3202-2', 'hist-ticket-128-3202', 'prod-americano', 1, 12000, 0, '2026-03-07T15:58:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3202-3', 'hist-ticket-128-3202', 'prod-latte', 1, 15000, 0, '2026-03-07T15:58:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3202', 'hist-ticket-128-3202', 'cash', 43500, 'completed', '2026-03-07T15:58:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3203', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-07T18:41:39.000Z', '2026-03-07T18:41:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3203-1', 'hist-ticket-128-3203', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T18:41:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3203-2', 'hist-ticket-128-3203', 'prod-americano', 1, 12000, 0, '2026-03-07T18:41:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3203-3', 'hist-ticket-128-3203', 'prod-latte', 1, 15000, 0, '2026-03-07T18:41:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3203', 'hist-ticket-128-3203', 'cash', 41500, 'completed', '2026-03-07T18:41:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3204', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-07T10:41:37.000Z', '2026-03-07T10:41:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3204-1', 'hist-ticket-128-3204', 'prod-americano', 1, 12000, 0, '2026-03-07T10:41:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3204-2', 'hist-ticket-128-3204', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T10:41:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3204', 'hist-ticket-128-3204', 'cash', 26500, 'completed', '2026-03-07T10:41:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3205', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-07T11:22:40.000Z', '2026-03-07T11:22:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3205-1', 'hist-ticket-128-3205', 'prod-americano', 1, 12000, 0, '2026-03-07T11:22:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3205-2', 'hist-ticket-128-3205', 'prod-latte', 1, 15000, 0, '2026-03-07T11:22:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3205-3', 'hist-ticket-128-3205', 'prod-latte', 1, 15000, 0, '2026-03-07T11:22:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3205-4', 'hist-ticket-128-3205', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T11:22:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3205', 'hist-ticket-128-3205', 'cash', 56500, 'completed', '2026-03-07T11:22:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3206', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-07T19:40:54.000Z', '2026-03-07T19:40:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3206-1', 'hist-ticket-128-3206', 'prod-mocha', 1, 16500, 0, '2026-03-07T19:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3206-2', 'hist-ticket-128-3206', 'prod-mocha', 1, 16500, 0, '2026-03-07T19:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3206-3', 'hist-ticket-128-3206', 'prod-latte', 1, 15000, 0, '2026-03-07T19:40:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3206-4', 'hist-ticket-128-3206', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T19:40:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3206', 'hist-ticket-128-3206', 'cash', 62500, 'completed', '2026-03-07T19:40:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3207', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-07T18:15:20.000Z', '2026-03-07T18:15:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3207-1', 'hist-ticket-128-3207', 'prod-americano', 1, 12000, 0, '2026-03-07T18:15:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3207', 'hist-ticket-128-3207', 'cash', 12000, 'completed', '2026-03-07T18:15:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3208', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-07T09:08:13.000Z', '2026-03-07T09:08:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3208-1', 'hist-ticket-128-3208', 'prod-latte', 1, 15000, 0, '2026-03-07T09:08:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3208-2', 'hist-ticket-128-3208', 'prod-americano', 1, 12000, 0, '2026-03-07T09:08:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3208', 'hist-ticket-128-3208', 'cash', 27000, 'completed', '2026-03-07T09:08:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3209', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-07T11:10:29.000Z', '2026-03-07T11:10:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3209-1', 'hist-ticket-128-3209', 'prod-mocha', 1, 16500, 0, '2026-03-07T11:10:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3209-2', 'hist-ticket-128-3209', 'prod-americano', 1, 12000, 0, '2026-03-07T11:10:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3209-3', 'hist-ticket-128-3209', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T11:10:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3209', 'hist-ticket-128-3209', 'cash', 43000, 'completed', '2026-03-07T11:10:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3210', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-07T13:49:12.000Z', '2026-03-07T13:49:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3210-1', 'hist-ticket-128-3210', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T13:49:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3210-2', 'hist-ticket-128-3210', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T13:49:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3210-3', 'hist-ticket-128-3210', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T13:49:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3210-4', 'hist-ticket-128-3210', 'prod-americano', 1, 12000, 0, '2026-03-07T13:49:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3210', 'hist-ticket-128-3210', 'cash', 55500, 'completed', '2026-03-07T13:49:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3211', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-07T18:30:56.000Z', '2026-03-07T18:30:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3211-1', 'hist-ticket-128-3211', 'prod-latte', 1, 15000, 0, '2026-03-07T18:30:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3211-2', 'hist-ticket-128-3211', 'prod-mocha', 1, 16500, 0, '2026-03-07T18:30:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3211-3', 'hist-ticket-128-3211', 'prod-americano', 1, 12000, 0, '2026-03-07T18:30:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3211', 'hist-ticket-128-3211', 'cash', 43500, 'completed', '2026-03-07T18:30:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3212', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-08T14:44:14.000Z', '2026-03-08T14:44:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3212-1', 'hist-ticket-129-3212', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T14:44:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3212-2', 'hist-ticket-129-3212', 'prod-latte', 1, 15000, 0, '2026-03-08T14:44:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3212-3', 'hist-ticket-129-3212', 'prod-americano', 1, 12000, 0, '2026-03-08T14:44:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3212', 'hist-ticket-129-3212', 'cash', 41500, 'completed', '2026-03-08T14:44:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3213', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-08T12:59:07.000Z', '2026-03-08T12:59:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3213-1', 'hist-ticket-129-3213', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T12:59:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3213', 'hist-ticket-129-3213', 'cash', 14500, 'completed', '2026-03-08T12:59:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3214', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-08T15:04:18.000Z', '2026-03-08T15:04:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3214-1', 'hist-ticket-129-3214', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T15:04:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3214', 'hist-ticket-129-3214', 'cash', 14500, 'completed', '2026-03-08T15:04:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3215', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-03-08T13:41:04.000Z', '2026-03-08T13:41:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3215-1', 'hist-ticket-129-3215', 'prod-americano', 1, 12000, 0, '2026-03-08T13:41:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3215-2', 'hist-ticket-129-3215', 'prod-americano', 1, 12000, 0, '2026-03-08T13:41:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3215-3', 'hist-ticket-129-3215', 'prod-americano', 1, 12000, 0, '2026-03-08T13:41:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3215', 'hist-ticket-129-3215', 'cash', 36000, 'completed', '2026-03-08T13:41:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3216', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-08T15:04:49.000Z', '2026-03-08T15:04:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3216-1', 'hist-ticket-129-3216', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T15:04:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3216-2', 'hist-ticket-129-3216', 'prod-americano', 1, 12000, 0, '2026-03-08T15:04:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3216-3', 'hist-ticket-129-3216', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T15:04:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3216-4', 'hist-ticket-129-3216', 'prod-latte', 1, 15000, 0, '2026-03-08T15:04:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3216', 'hist-ticket-129-3216', 'cash', 56000, 'completed', '2026-03-08T15:04:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3217', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-08T18:56:02.000Z', '2026-03-08T18:56:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3217-1', 'hist-ticket-129-3217', 'prod-latte', 1, 15000, 0, '2026-03-08T18:56:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3217-2', 'hist-ticket-129-3217', 'prod-mocha', 1, 16500, 0, '2026-03-08T18:56:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3217', 'hist-ticket-129-3217', 'cash', 31500, 'completed', '2026-03-08T18:56:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3218', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-08T17:18:36.000Z', '2026-03-08T17:18:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3218-1', 'hist-ticket-129-3218', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T17:18:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3218', 'hist-ticket-129-3218', 'cash', 14500, 'completed', '2026-03-08T17:18:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3219', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-08T12:04:38.000Z', '2026-03-08T12:04:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3219-1', 'hist-ticket-129-3219', 'prod-americano', 1, 12000, 0, '2026-03-08T12:04:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3219', 'hist-ticket-129-3219', 'cash', 12000, 'completed', '2026-03-08T12:04:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3220', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-08T15:21:01.000Z', '2026-03-08T15:21:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3220-1', 'hist-ticket-129-3220', 'prod-americano', 1, 12000, 0, '2026-03-08T15:21:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3220', 'hist-ticket-129-3220', 'cash', 12000, 'completed', '2026-03-08T15:21:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3221', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-08T10:38:03.000Z', '2026-03-08T10:38:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3221-1', 'hist-ticket-129-3221', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:38:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3221-2', 'hist-ticket-129-3221', 'prod-latte', 1, 15000, 0, '2026-03-08T10:38:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3221', 'hist-ticket-129-3221', 'cash', 29500, 'completed', '2026-03-08T10:38:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3222', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-08T13:48:19.000Z', '2026-03-08T13:48:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3222-1', 'hist-ticket-129-3222', 'prod-mocha', 1, 16500, 0, '2026-03-08T13:48:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3222-2', 'hist-ticket-129-3222', 'prod-americano', 1, 12000, 0, '2026-03-08T13:48:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3222-3', 'hist-ticket-129-3222', 'prod-americano', 1, 12000, 0, '2026-03-08T13:48:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3222-4', 'hist-ticket-129-3222', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:48:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3222', 'hist-ticket-129-3222', 'cash', 55000, 'completed', '2026-03-08T13:48:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3223', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-03-08T10:36:32.000Z', '2026-03-08T10:36:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3223-1', 'hist-ticket-129-3223', 'prod-mocha', 1, 16500, 0, '2026-03-08T10:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3223-2', 'hist-ticket-129-3223', 'prod-americano', 1, 12000, 0, '2026-03-08T10:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3223-3', 'hist-ticket-129-3223', 'prod-americano', 1, 12000, 0, '2026-03-08T10:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3223-4', 'hist-ticket-129-3223', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:36:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3223', 'hist-ticket-129-3223', 'cash', 55000, 'completed', '2026-03-08T10:36:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3224', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-03-08T19:58:18.000Z', '2026-03-08T19:58:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3224-1', 'hist-ticket-129-3224', 'prod-mocha', 1, 16500, 0, '2026-03-08T19:58:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3224-2', 'hist-ticket-129-3224', 'prod-mocha', 1, 16500, 0, '2026-03-08T19:58:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3224-3', 'hist-ticket-129-3224', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T19:58:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3224', 'hist-ticket-129-3224', 'cash', 47500, 'completed', '2026-03-08T19:58:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3225', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-08T17:08:05.000Z', '2026-03-08T17:08:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3225-1', 'hist-ticket-129-3225', 'prod-americano', 1, 12000, 0, '2026-03-08T17:08:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3225', 'hist-ticket-129-3225', 'cash', 12000, 'completed', '2026-03-08T17:08:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3226', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-08T10:02:15.000Z', '2026-03-08T10:02:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3226-1', 'hist-ticket-129-3226', 'prod-americano', 1, 12000, 0, '2026-03-08T10:02:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3226-2', 'hist-ticket-129-3226', 'prod-latte', 1, 15000, 0, '2026-03-08T10:02:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3226-3', 'hist-ticket-129-3226', 'prod-latte', 1, 15000, 0, '2026-03-08T10:02:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3226', 'hist-ticket-129-3226', 'cash', 42000, 'completed', '2026-03-08T10:02:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3227', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-08T08:50:25.000Z', '2026-03-08T08:50:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3227-1', 'hist-ticket-129-3227', 'prod-latte', 1, 15000, 0, '2026-03-08T08:50:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3227-2', 'hist-ticket-129-3227', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T08:50:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3227', 'hist-ticket-129-3227', 'cash', 29500, 'completed', '2026-03-08T08:50:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3228', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-08T10:30:38.000Z', '2026-03-08T10:30:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3228-1', 'hist-ticket-129-3228', 'prod-americano', 1, 12000, 0, '2026-03-08T10:30:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3228-2', 'hist-ticket-129-3228', 'prod-americano', 1, 12000, 0, '2026-03-08T10:30:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3228-3', 'hist-ticket-129-3228', 'prod-americano', 1, 12000, 0, '2026-03-08T10:30:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3228-4', 'hist-ticket-129-3228', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:30:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3228', 'hist-ticket-129-3228', 'cash', 50500, 'completed', '2026-03-08T10:30:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3229', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-08T17:06:34.000Z', '2026-03-08T17:06:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3229-1', 'hist-ticket-129-3229', 'prod-americano', 1, 12000, 0, '2026-03-08T17:06:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3229', 'hist-ticket-129-3229', 'cash', 12000, 'completed', '2026-03-08T17:06:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3230', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-08T13:06:56.000Z', '2026-03-08T13:06:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3230-1', 'hist-ticket-129-3230', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3230-2', 'hist-ticket-129-3230', 'prod-americano', 1, 12000, 0, '2026-03-08T13:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3230-3', 'hist-ticket-129-3230', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3230-4', 'hist-ticket-129-3230', 'prod-mocha', 1, 16500, 0, '2026-03-08T13:06:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3230', 'hist-ticket-129-3230', 'cash', 57500, 'completed', '2026-03-08T13:06:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3231', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-03-08T10:18:18.000Z', '2026-03-08T10:18:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3231-1', 'hist-ticket-129-3231', 'prod-americano', 1, 12000, 0, '2026-03-08T10:18:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3231-2', 'hist-ticket-129-3231', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:18:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3231', 'hist-ticket-129-3231', 'cash', 26500, 'completed', '2026-03-08T10:18:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3232', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-08T11:24:01.000Z', '2026-03-08T11:24:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3232-1', 'hist-ticket-129-3232', 'prod-mocha', 1, 16500, 0, '2026-03-08T11:24:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3232', 'hist-ticket-129-3232', 'cash', 16500, 'completed', '2026-03-08T11:24:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3233', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-08T08:50:55.000Z', '2026-03-08T08:50:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3233-1', 'hist-ticket-129-3233', 'prod-mocha', 1, 16500, 0, '2026-03-08T08:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3233-2', 'hist-ticket-129-3233', 'prod-latte', 1, 15000, 0, '2026-03-08T08:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3233-3', 'hist-ticket-129-3233', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T08:50:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3233-4', 'hist-ticket-129-3233', 'prod-mocha', 1, 16500, 0, '2026-03-08T08:50:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3233', 'hist-ticket-129-3233', 'cash', 62500, 'completed', '2026-03-08T08:50:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3234', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-08T12:26:37.000Z', '2026-03-08T12:26:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3234-1', 'hist-ticket-129-3234', 'prod-mocha', 1, 16500, 0, '2026-03-08T12:26:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3234-2', 'hist-ticket-129-3234', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T12:26:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3234', 'hist-ticket-129-3234', 'cash', 31000, 'completed', '2026-03-08T12:26:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3235', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-08T10:30:18.000Z', '2026-03-08T10:30:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3235-1', 'hist-ticket-129-3235', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3235-2', 'hist-ticket-129-3235', 'prod-americano', 1, 12000, 0, '2026-03-08T10:30:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3235-3', 'hist-ticket-129-3235', 'prod-americano', 1, 12000, 0, '2026-03-08T10:30:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3235', 'hist-ticket-129-3235', 'cash', 38500, 'completed', '2026-03-08T10:30:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3236', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-08T13:44:18.000Z', '2026-03-08T13:44:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3236-1', 'hist-ticket-129-3236', 'prod-latte', 1, 15000, 0, '2026-03-08T13:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3236-2', 'hist-ticket-129-3236', 'prod-americano', 1, 12000, 0, '2026-03-08T13:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3236-3', 'hist-ticket-129-3236', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:44:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3236', 'hist-ticket-129-3236', 'cash', 41500, 'completed', '2026-03-08T13:44:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3237', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-08T16:14:29.000Z', '2026-03-08T16:14:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3237-1', 'hist-ticket-129-3237', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T16:14:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3237-2', 'hist-ticket-129-3237', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T16:14:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3237', 'hist-ticket-129-3237', 'cash', 29000, 'completed', '2026-03-08T16:14:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3238', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-08T17:05:38.000Z', '2026-03-08T17:05:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3238-1', 'hist-ticket-129-3238', 'prod-latte', 1, 15000, 0, '2026-03-08T17:05:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3238-2', 'hist-ticket-129-3238', 'prod-latte', 1, 15000, 0, '2026-03-08T17:05:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3238-3', 'hist-ticket-129-3238', 'prod-mocha', 1, 16500, 0, '2026-03-08T17:05:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3238', 'hist-ticket-129-3238', 'cash', 46500, 'completed', '2026-03-08T17:05:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3239', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-03-08T12:35:57.000Z', '2026-03-08T12:35:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3239-1', 'hist-ticket-129-3239', 'prod-mocha', 1, 16500, 0, '2026-03-08T12:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3239-2', 'hist-ticket-129-3239', 'prod-americano', 1, 12000, 0, '2026-03-08T12:35:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3239', 'hist-ticket-129-3239', 'cash', 28500, 'completed', '2026-03-08T12:35:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3240', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-08T19:12:57.000Z', '2026-03-08T19:12:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3240-1', 'hist-ticket-129-3240', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T19:12:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3240-2', 'hist-ticket-129-3240', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T19:12:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3240-3', 'hist-ticket-129-3240', 'prod-latte', 1, 15000, 0, '2026-03-08T19:12:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3240-4', 'hist-ticket-129-3240', 'prod-latte', 1, 15000, 0, '2026-03-08T19:12:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3240', 'hist-ticket-129-3240', 'cash', 59000, 'completed', '2026-03-08T19:12:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3241', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-08T16:41:20.000Z', '2026-03-08T16:41:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3241-1', 'hist-ticket-129-3241', 'prod-mocha', 1, 16500, 0, '2026-03-08T16:41:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3241-2', 'hist-ticket-129-3241', 'prod-latte', 1, 15000, 0, '2026-03-08T16:41:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3241', 'hist-ticket-129-3241', 'cash', 31500, 'completed', '2026-03-08T16:41:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3242', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-08T10:40:20.000Z', '2026-03-08T10:40:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3242-1', 'hist-ticket-129-3242', 'prod-latte', 1, 15000, 0, '2026-03-08T10:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3242-2', 'hist-ticket-129-3242', 'prod-mocha', 1, 16500, 0, '2026-03-08T10:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3242-3', 'hist-ticket-129-3242', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3242-4', 'hist-ticket-129-3242', 'prod-americano', 1, 12000, 0, '2026-03-08T10:40:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3242', 'hist-ticket-129-3242', 'cash', 58000, 'completed', '2026-03-08T10:40:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3243', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-03-08T14:33:51.000Z', '2026-03-08T14:33:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3243-1', 'hist-ticket-129-3243', 'prod-americano', 1, 12000, 0, '2026-03-08T14:33:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3243-2', 'hist-ticket-129-3243', 'prod-mocha', 1, 16500, 0, '2026-03-08T14:33:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3243-3', 'hist-ticket-129-3243', 'prod-americano', 1, 12000, 0, '2026-03-08T14:33:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3243-4', 'hist-ticket-129-3243', 'prod-latte', 1, 15000, 0, '2026-03-08T14:33:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3243', 'hist-ticket-129-3243', 'cash', 55500, 'completed', '2026-03-08T14:33:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3244', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-03-08T15:16:17.000Z', '2026-03-08T15:16:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3244-1', 'hist-ticket-129-3244', 'prod-mocha', 1, 16500, 0, '2026-03-08T15:16:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3244', 'hist-ticket-129-3244', 'cash', 16500, 'completed', '2026-03-08T15:16:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3245', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-03-08T16:27:34.000Z', '2026-03-08T16:27:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3245-1', 'hist-ticket-129-3245', 'prod-americano', 1, 12000, 0, '2026-03-08T16:27:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3245-2', 'hist-ticket-129-3245', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T16:27:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3245', 'hist-ticket-129-3245', 'cash', 26500, 'completed', '2026-03-08T16:27:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3246', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-08T16:59:40.000Z', '2026-03-08T16:59:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3246-1', 'hist-ticket-129-3246', 'prod-americano', 1, 12000, 0, '2026-03-08T16:59:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3246-2', 'hist-ticket-129-3246', 'prod-mocha', 1, 16500, 0, '2026-03-08T16:59:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3246', 'hist-ticket-129-3246', 'cash', 28500, 'completed', '2026-03-08T16:59:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3247', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-08T13:18:32.000Z', '2026-03-08T13:18:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3247-1', 'hist-ticket-129-3247', 'prod-latte', 1, 15000, 0, '2026-03-08T13:18:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3247-2', 'hist-ticket-129-3247', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:18:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3247-3', 'hist-ticket-129-3247', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T13:18:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3247', 'hist-ticket-129-3247', 'cash', 44000, 'completed', '2026-03-08T13:18:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3248', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-08T10:47:41.000Z', '2026-03-08T10:47:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3248-1', 'hist-ticket-129-3248', 'prod-americano', 1, 12000, 0, '2026-03-08T10:47:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3248-2', 'hist-ticket-129-3248', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T10:47:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3248', 'hist-ticket-129-3248', 'cash', 26500, 'completed', '2026-03-08T10:47:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-129-3249', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-08T09:06:08.000Z', '2026-03-08T09:06:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3249-1', 'hist-ticket-129-3249', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T09:06:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3249-2', 'hist-ticket-129-3249', 'prod-latte', 1, 15000, 0, '2026-03-08T09:06:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3249-3', 'hist-ticket-129-3249', 'prod-cappuccino', 1, 14500, 0, '2026-03-08T09:06:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-129-3249-4', 'hist-ticket-129-3249', 'prod-latte', 1, 15000, 0, '2026-03-08T09:06:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-129-3249', 'hist-ticket-129-3249', 'cash', 59000, 'completed', '2026-03-08T09:06:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3250', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-09T17:28:22.000Z', '2026-03-09T17:28:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3250-1', 'hist-ticket-130-3250', 'prod-americano', 1, 12000, 0, '2026-03-09T17:28:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3250', 'hist-ticket-130-3250', 'cash', 12000, 'completed', '2026-03-09T17:28:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3251', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-09T16:10:20.000Z', '2026-03-09T16:10:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3251-1', 'hist-ticket-130-3251', 'prod-mocha', 1, 16500, 0, '2026-03-09T16:10:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3251', 'hist-ticket-130-3251', 'cash', 16500, 'completed', '2026-03-09T16:10:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3252', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-09T08:44:41.000Z', '2026-03-09T08:44:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3252-1', 'hist-ticket-130-3252', 'prod-mocha', 1, 16500, 0, '2026-03-09T08:44:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3252-2', 'hist-ticket-130-3252', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T08:44:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3252-3', 'hist-ticket-130-3252', 'prod-latte', 1, 15000, 0, '2026-03-09T08:44:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3252-4', 'hist-ticket-130-3252', 'prod-mocha', 1, 16500, 0, '2026-03-09T08:44:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3252', 'hist-ticket-130-3252', 'cash', 62500, 'completed', '2026-03-09T08:44:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3253', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-03-09T11:10:35.000Z', '2026-03-09T11:10:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3253-1', 'hist-ticket-130-3253', 'prod-mocha', 1, 16500, 0, '2026-03-09T11:10:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3253-2', 'hist-ticket-130-3253', 'prod-latte', 1, 15000, 0, '2026-03-09T11:10:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3253-3', 'hist-ticket-130-3253', 'prod-latte', 1, 15000, 0, '2026-03-09T11:10:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3253-4', 'hist-ticket-130-3253', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T11:10:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3253', 'hist-ticket-130-3253', 'cash', 61000, 'completed', '2026-03-09T11:10:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3254', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-09T12:33:00.000Z', '2026-03-09T12:33:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3254-1', 'hist-ticket-130-3254', 'prod-americano', 1, 12000, 0, '2026-03-09T12:33:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3254-2', 'hist-ticket-130-3254', 'prod-mocha', 1, 16500, 0, '2026-03-09T12:33:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3254-3', 'hist-ticket-130-3254', 'prod-americano', 1, 12000, 0, '2026-03-09T12:33:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3254-4', 'hist-ticket-130-3254', 'prod-latte', 1, 15000, 0, '2026-03-09T12:33:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3254', 'hist-ticket-130-3254', 'cash', 55500, 'completed', '2026-03-09T12:33:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3255', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-09T10:04:50.000Z', '2026-03-09T10:04:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3255-1', 'hist-ticket-130-3255', 'prod-mocha', 1, 16500, 0, '2026-03-09T10:04:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3255', 'hist-ticket-130-3255', 'cash', 16500, 'completed', '2026-03-09T10:04:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3256', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-09T19:24:17.000Z', '2026-03-09T19:24:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3256-1', 'hist-ticket-130-3256', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T19:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3256-2', 'hist-ticket-130-3256', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T19:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3256-3', 'hist-ticket-130-3256', 'prod-americano', 1, 12000, 0, '2026-03-09T19:24:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3256', 'hist-ticket-130-3256', 'cash', 41000, 'completed', '2026-03-09T19:24:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3257', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-09T14:12:25.000Z', '2026-03-09T14:12:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3257-1', 'hist-ticket-130-3257', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3257-2', 'hist-ticket-130-3257', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T14:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3257-3', 'hist-ticket-130-3257', 'prod-americano', 1, 12000, 0, '2026-03-09T14:12:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3257-4', 'hist-ticket-130-3257', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:12:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3257', 'hist-ticket-130-3257', 'cash', 59500, 'completed', '2026-03-09T14:12:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3258', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-09T17:08:22.000Z', '2026-03-09T17:08:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3258-1', 'hist-ticket-130-3258', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T17:08:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3258-2', 'hist-ticket-130-3258', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T17:08:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3258', 'hist-ticket-130-3258', 'cash', 29000, 'completed', '2026-03-09T17:08:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3259', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-09T16:45:27.000Z', '2026-03-09T16:45:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3259-1', 'hist-ticket-130-3259', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T16:45:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3259-2', 'hist-ticket-130-3259', 'prod-latte', 1, 15000, 0, '2026-03-09T16:45:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3259', 'hist-ticket-130-3259', 'cash', 29500, 'completed', '2026-03-09T16:45:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3260', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-09T13:18:04.000Z', '2026-03-09T13:18:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3260-1', 'hist-ticket-130-3260', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T13:18:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3260-2', 'hist-ticket-130-3260', 'prod-mocha', 1, 16500, 0, '2026-03-09T13:18:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3260', 'hist-ticket-130-3260', 'cash', 31000, 'completed', '2026-03-09T13:18:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3261', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-09T15:46:20.000Z', '2026-03-09T15:46:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3261-1', 'hist-ticket-130-3261', 'prod-latte', 1, 15000, 0, '2026-03-09T15:46:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3261-2', 'hist-ticket-130-3261', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T15:46:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3261-3', 'hist-ticket-130-3261', 'prod-americano', 1, 12000, 0, '2026-03-09T15:46:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3261-4', 'hist-ticket-130-3261', 'prod-americano', 1, 12000, 0, '2026-03-09T15:46:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3261', 'hist-ticket-130-3261', 'cash', 53500, 'completed', '2026-03-09T15:46:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3262', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-03-09T14:44:11.000Z', '2026-03-09T14:44:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3262-1', 'hist-ticket-130-3262', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T14:44:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3262-2', 'hist-ticket-130-3262', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:44:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3262-3', 'hist-ticket-130-3262', 'prod-americano', 1, 12000, 0, '2026-03-09T14:44:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3262', 'hist-ticket-130-3262', 'cash', 43000, 'completed', '2026-03-09T14:44:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3263', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-03-09T08:10:47.000Z', '2026-03-09T08:10:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3263-1', 'hist-ticket-130-3263', 'prod-americano', 1, 12000, 0, '2026-03-09T08:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3263-2', 'hist-ticket-130-3263', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T08:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3263-3', 'hist-ticket-130-3263', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T08:10:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3263-4', 'hist-ticket-130-3263', 'prod-mocha', 1, 16500, 0, '2026-03-09T08:10:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3263', 'hist-ticket-130-3263', 'cash', 57500, 'completed', '2026-03-09T08:10:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3264', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-09T08:33:27.000Z', '2026-03-09T08:33:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3264-1', 'hist-ticket-130-3264', 'prod-mocha', 1, 16500, 0, '2026-03-09T08:33:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3264-2', 'hist-ticket-130-3264', 'prod-americano', 1, 12000, 0, '2026-03-09T08:33:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3264', 'hist-ticket-130-3264', 'cash', 28500, 'completed', '2026-03-09T08:33:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3265', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-09T09:49:01.000Z', '2026-03-09T09:49:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3265-1', 'hist-ticket-130-3265', 'prod-mocha', 1, 16500, 0, '2026-03-09T09:49:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3265-2', 'hist-ticket-130-3265', 'prod-americano', 1, 12000, 0, '2026-03-09T09:49:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3265-3', 'hist-ticket-130-3265', 'prod-mocha', 1, 16500, 0, '2026-03-09T09:49:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3265', 'hist-ticket-130-3265', 'cash', 45000, 'completed', '2026-03-09T09:49:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3266', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-09T15:57:55.000Z', '2026-03-09T15:57:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3266-1', 'hist-ticket-130-3266', 'prod-mocha', 1, 16500, 0, '2026-03-09T15:57:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3266-2', 'hist-ticket-130-3266', 'prod-latte', 1, 15000, 0, '2026-03-09T15:57:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3266', 'hist-ticket-130-3266', 'cash', 31500, 'completed', '2026-03-09T15:57:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3267', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-09T09:57:39.000Z', '2026-03-09T09:57:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3267-1', 'hist-ticket-130-3267', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T09:57:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3267-2', 'hist-ticket-130-3267', 'prod-americano', 1, 12000, 0, '2026-03-09T09:57:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3267-3', 'hist-ticket-130-3267', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T09:57:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3267', 'hist-ticket-130-3267', 'cash', 41000, 'completed', '2026-03-09T09:57:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3268', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-09T10:03:47.000Z', '2026-03-09T10:03:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3268-1', 'hist-ticket-130-3268', 'prod-mocha', 1, 16500, 0, '2026-03-09T10:03:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3268', 'hist-ticket-130-3268', 'cash', 16500, 'completed', '2026-03-09T10:03:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3269', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-09T14:45:18.000Z', '2026-03-09T14:45:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3269-1', 'hist-ticket-130-3269', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3269-2', 'hist-ticket-130-3269', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T14:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3269-3', 'hist-ticket-130-3269', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3269-4', 'hist-ticket-130-3269', 'prod-mocha', 1, 16500, 0, '2026-03-09T14:45:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3269', 'hist-ticket-130-3269', 'cash', 64000, 'completed', '2026-03-09T14:45:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3270', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-03-09T17:19:56.000Z', '2026-03-09T17:19:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3270-1', 'hist-ticket-130-3270', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T17:19:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3270-2', 'hist-ticket-130-3270', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T17:19:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3270-3', 'hist-ticket-130-3270', 'prod-mocha', 1, 16500, 0, '2026-03-09T17:19:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3270-4', 'hist-ticket-130-3270', 'prod-americano', 1, 12000, 0, '2026-03-09T17:19:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3270', 'hist-ticket-130-3270', 'cash', 57500, 'completed', '2026-03-09T17:19:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-130-3271', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-09T18:02:06.000Z', '2026-03-09T18:02:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3271-1', 'hist-ticket-130-3271', 'prod-cappuccino', 1, 14500, 0, '2026-03-09T18:02:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3271-2', 'hist-ticket-130-3271', 'prod-latte', 1, 15000, 0, '2026-03-09T18:02:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-130-3271-3', 'hist-ticket-130-3271', 'prod-americano', 1, 12000, 0, '2026-03-09T18:02:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-130-3271', 'hist-ticket-130-3271', 'cash', 41500, 'completed', '2026-03-09T18:02:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3272', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-10T17:42:24.000Z', '2026-03-10T17:42:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3272-1', 'hist-ticket-131-3272', 'prod-mocha', 1, 16500, 0, '2026-03-10T17:42:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3272-2', 'hist-ticket-131-3272', 'prod-mocha', 1, 16500, 0, '2026-03-10T17:42:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3272-3', 'hist-ticket-131-3272', 'prod-latte', 1, 15000, 0, '2026-03-10T17:42:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3272-4', 'hist-ticket-131-3272', 'prod-mocha', 1, 16500, 0, '2026-03-10T17:42:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3272', 'hist-ticket-131-3272', 'cash', 64500, 'completed', '2026-03-10T17:42:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3273', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-10T16:53:12.000Z', '2026-03-10T16:53:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3273-1', 'hist-ticket-131-3273', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T16:53:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3273-2', 'hist-ticket-131-3273', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T16:53:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3273-3', 'hist-ticket-131-3273', 'prod-americano', 1, 12000, 0, '2026-03-10T16:53:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3273-4', 'hist-ticket-131-3273', 'prod-latte', 1, 15000, 0, '2026-03-10T16:53:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3273', 'hist-ticket-131-3273', 'cash', 56000, 'completed', '2026-03-10T16:53:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3274', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-03-10T09:34:06.000Z', '2026-03-10T09:34:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3274-1', 'hist-ticket-131-3274', 'prod-latte', 1, 15000, 0, '2026-03-10T09:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3274-2', 'hist-ticket-131-3274', 'prod-americano', 1, 12000, 0, '2026-03-10T09:34:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3274', 'hist-ticket-131-3274', 'cash', 27000, 'completed', '2026-03-10T09:34:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3275', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-10T19:04:28.000Z', '2026-03-10T19:04:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3275-1', 'hist-ticket-131-3275', 'prod-americano', 1, 12000, 0, '2026-03-10T19:04:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3275', 'hist-ticket-131-3275', 'cash', 12000, 'completed', '2026-03-10T19:04:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3276', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-10T16:57:11.000Z', '2026-03-10T16:57:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3276-1', 'hist-ticket-131-3276', 'prod-americano', 1, 12000, 0, '2026-03-10T16:57:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3276-2', 'hist-ticket-131-3276', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T16:57:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3276-3', 'hist-ticket-131-3276', 'prod-mocha', 1, 16500, 0, '2026-03-10T16:57:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3276', 'hist-ticket-131-3276', 'cash', 43000, 'completed', '2026-03-10T16:57:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3277', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-10T15:46:34.000Z', '2026-03-10T15:46:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3277-1', 'hist-ticket-131-3277', 'prod-mocha', 1, 16500, 0, '2026-03-10T15:46:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3277-2', 'hist-ticket-131-3277', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T15:46:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3277', 'hist-ticket-131-3277', 'cash', 31000, 'completed', '2026-03-10T15:46:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3278', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-10T15:56:42.000Z', '2026-03-10T15:56:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3278-1', 'hist-ticket-131-3278', 'prod-latte', 1, 15000, 0, '2026-03-10T15:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3278-2', 'hist-ticket-131-3278', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T15:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3278-3', 'hist-ticket-131-3278', 'prod-latte', 1, 15000, 0, '2026-03-10T15:56:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3278', 'hist-ticket-131-3278', 'cash', 44500, 'completed', '2026-03-10T15:56:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3279', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-10T09:38:21.000Z', '2026-03-10T09:38:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3279-1', 'hist-ticket-131-3279', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T09:38:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3279', 'hist-ticket-131-3279', 'cash', 14500, 'completed', '2026-03-10T09:38:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3280', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-03-10T13:22:55.000Z', '2026-03-10T13:22:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3280-1', 'hist-ticket-131-3280', 'prod-latte', 1, 15000, 0, '2026-03-10T13:22:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3280-2', 'hist-ticket-131-3280', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T13:22:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3280-3', 'hist-ticket-131-3280', 'prod-mocha', 1, 16500, 0, '2026-03-10T13:22:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3280', 'hist-ticket-131-3280', 'cash', 46000, 'completed', '2026-03-10T13:22:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3281', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-10T15:37:15.000Z', '2026-03-10T15:37:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3281-1', 'hist-ticket-131-3281', 'prod-latte', 1, 15000, 0, '2026-03-10T15:37:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3281-2', 'hist-ticket-131-3281', 'prod-latte', 1, 15000, 0, '2026-03-10T15:37:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3281-3', 'hist-ticket-131-3281', 'prod-mocha', 1, 16500, 0, '2026-03-10T15:37:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3281-4', 'hist-ticket-131-3281', 'prod-americano', 1, 12000, 0, '2026-03-10T15:37:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3281', 'hist-ticket-131-3281', 'cash', 58500, 'completed', '2026-03-10T15:37:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3282', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-10T11:46:22.000Z', '2026-03-10T11:46:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3282-1', 'hist-ticket-131-3282', 'prod-americano', 1, 12000, 0, '2026-03-10T11:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3282-2', 'hist-ticket-131-3282', 'prod-latte', 1, 15000, 0, '2026-03-10T11:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3282-3', 'hist-ticket-131-3282', 'prod-americano', 1, 12000, 0, '2026-03-10T11:46:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3282-4', 'hist-ticket-131-3282', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T11:46:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3282', 'hist-ticket-131-3282', 'cash', 53500, 'completed', '2026-03-10T11:46:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3283', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-10T15:45:48.000Z', '2026-03-10T15:45:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3283-1', 'hist-ticket-131-3283', 'prod-americano', 1, 12000, 0, '2026-03-10T15:45:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3283-2', 'hist-ticket-131-3283', 'prod-mocha', 1, 16500, 0, '2026-03-10T15:45:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3283', 'hist-ticket-131-3283', 'cash', 28500, 'completed', '2026-03-10T15:45:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3284', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-10T16:08:52.000Z', '2026-03-10T16:08:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3284-1', 'hist-ticket-131-3284', 'prod-latte', 1, 15000, 0, '2026-03-10T16:08:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3284-2', 'hist-ticket-131-3284', 'prod-latte', 1, 15000, 0, '2026-03-10T16:08:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3284-3', 'hist-ticket-131-3284', 'prod-americano', 1, 12000, 0, '2026-03-10T16:08:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3284-4', 'hist-ticket-131-3284', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T16:08:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3284', 'hist-ticket-131-3284', 'cash', 56500, 'completed', '2026-03-10T16:08:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3285', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-10T08:36:02.000Z', '2026-03-10T08:36:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3285-1', 'hist-ticket-131-3285', 'prod-americano', 1, 12000, 0, '2026-03-10T08:36:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3285-2', 'hist-ticket-131-3285', 'prod-mocha', 1, 16500, 0, '2026-03-10T08:36:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3285', 'hist-ticket-131-3285', 'cash', 28500, 'completed', '2026-03-10T08:36:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3286', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-10T16:13:48.000Z', '2026-03-10T16:13:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3286-1', 'hist-ticket-131-3286', 'prod-latte', 1, 15000, 0, '2026-03-10T16:13:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3286-2', 'hist-ticket-131-3286', 'prod-mocha', 1, 16500, 0, '2026-03-10T16:13:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3286', 'hist-ticket-131-3286', 'cash', 31500, 'completed', '2026-03-10T16:13:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3287', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-10T17:04:16.000Z', '2026-03-10T17:04:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3287-1', 'hist-ticket-131-3287', 'prod-latte', 1, 15000, 0, '2026-03-10T17:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3287-2', 'hist-ticket-131-3287', 'prod-latte', 1, 15000, 0, '2026-03-10T17:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3287-3', 'hist-ticket-131-3287', 'prod-americano', 1, 12000, 0, '2026-03-10T17:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3287-4', 'hist-ticket-131-3287', 'prod-mocha', 1, 16500, 0, '2026-03-10T17:04:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3287', 'hist-ticket-131-3287', 'cash', 58500, 'completed', '2026-03-10T17:04:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3288', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-10T15:20:55.000Z', '2026-03-10T15:20:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3288-1', 'hist-ticket-131-3288', 'prod-latte', 1, 15000, 0, '2026-03-10T15:20:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3288-2', 'hist-ticket-131-3288', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T15:20:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3288-3', 'hist-ticket-131-3288', 'prod-mocha', 1, 16500, 0, '2026-03-10T15:20:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3288-4', 'hist-ticket-131-3288', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T15:20:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3288', 'hist-ticket-131-3288', 'cash', 60500, 'completed', '2026-03-10T15:20:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3289', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-10T16:01:17.000Z', '2026-03-10T16:01:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3289-1', 'hist-ticket-131-3289', 'prod-americano', 1, 12000, 0, '2026-03-10T16:01:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3289-2', 'hist-ticket-131-3289', 'prod-cappuccino', 1, 14500, 0, '2026-03-10T16:01:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3289-3', 'hist-ticket-131-3289', 'prod-americano', 1, 12000, 0, '2026-03-10T16:01:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3289', 'hist-ticket-131-3289', 'cash', 38500, 'completed', '2026-03-10T16:01:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3290', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-10T15:24:17.000Z', '2026-03-10T15:24:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3290-1', 'hist-ticket-131-3290', 'prod-latte', 1, 15000, 0, '2026-03-10T15:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3290-2', 'hist-ticket-131-3290', 'prod-americano', 1, 12000, 0, '2026-03-10T15:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3290-3', 'hist-ticket-131-3290', 'prod-mocha', 1, 16500, 0, '2026-03-10T15:24:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3290', 'hist-ticket-131-3290', 'cash', 43500, 'completed', '2026-03-10T15:24:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-131-3291', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-03-10T16:27:20.000Z', '2026-03-10T16:27:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3291-1', 'hist-ticket-131-3291', 'prod-latte', 1, 15000, 0, '2026-03-10T16:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3291-2', 'hist-ticket-131-3291', 'prod-latte', 1, 15000, 0, '2026-03-10T16:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-131-3291-3', 'hist-ticket-131-3291', 'prod-latte', 1, 15000, 0, '2026-03-10T16:27:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-131-3291', 'hist-ticket-131-3291', 'cash', 45000, 'completed', '2026-03-10T16:27:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3292', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-11T15:37:51.000Z', '2026-03-11T15:37:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3292-1', 'hist-ticket-132-3292', 'prod-latte', 1, 15000, 0, '2026-03-11T15:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3292-2', 'hist-ticket-132-3292', 'prod-latte', 1, 15000, 0, '2026-03-11T15:37:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3292-3', 'hist-ticket-132-3292', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T15:37:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3292', 'hist-ticket-132-3292', 'cash', 44500, 'completed', '2026-03-11T15:37:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3293', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-11T11:11:11.000Z', '2026-03-11T11:11:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3293-1', 'hist-ticket-132-3293', 'prod-mocha', 1, 16500, 0, '2026-03-11T11:11:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3293-2', 'hist-ticket-132-3293', 'prod-latte', 1, 15000, 0, '2026-03-11T11:11:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3293-3', 'hist-ticket-132-3293', 'prod-mocha', 1, 16500, 0, '2026-03-11T11:11:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3293', 'hist-ticket-132-3293', 'cash', 48000, 'completed', '2026-03-11T11:11:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3294', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-11T10:47:29.000Z', '2026-03-11T10:47:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3294-1', 'hist-ticket-132-3294', 'prod-americano', 1, 12000, 0, '2026-03-11T10:47:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3294-2', 'hist-ticket-132-3294', 'prod-mocha', 1, 16500, 0, '2026-03-11T10:47:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3294-3', 'hist-ticket-132-3294', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T10:47:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3294', 'hist-ticket-132-3294', 'cash', 43000, 'completed', '2026-03-11T10:47:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3295', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-11T08:22:48.000Z', '2026-03-11T08:22:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3295-1', 'hist-ticket-132-3295', 'prod-latte', 1, 15000, 0, '2026-03-11T08:22:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3295-2', 'hist-ticket-132-3295', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T08:22:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3295', 'hist-ticket-132-3295', 'cash', 29500, 'completed', '2026-03-11T08:22:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3296', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-11T09:43:24.000Z', '2026-03-11T09:43:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3296-1', 'hist-ticket-132-3296', 'prod-mocha', 1, 16500, 0, '2026-03-11T09:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3296-2', 'hist-ticket-132-3296', 'prod-mocha', 1, 16500, 0, '2026-03-11T09:43:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3296', 'hist-ticket-132-3296', 'cash', 33000, 'completed', '2026-03-11T09:43:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3297', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-11T08:07:30.000Z', '2026-03-11T08:07:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3297-1', 'hist-ticket-132-3297', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T08:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3297-2', 'hist-ticket-132-3297', 'prod-americano', 1, 12000, 0, '2026-03-11T08:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3297-3', 'hist-ticket-132-3297', 'prod-latte', 1, 15000, 0, '2026-03-11T08:07:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3297-4', 'hist-ticket-132-3297', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T08:07:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3297', 'hist-ticket-132-3297', 'cash', 56000, 'completed', '2026-03-11T08:07:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3298', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-03-11T10:54:59.000Z', '2026-03-11T10:54:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3298-1', 'hist-ticket-132-3298', 'prod-mocha', 1, 16500, 0, '2026-03-11T10:54:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3298', 'hist-ticket-132-3298', 'cash', 16500, 'completed', '2026-03-11T10:54:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3299', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-11T10:56:13.000Z', '2026-03-11T10:56:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3299-1', 'hist-ticket-132-3299', 'prod-mocha', 1, 16500, 0, '2026-03-11T10:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3299-2', 'hist-ticket-132-3299', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T10:56:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3299-3', 'hist-ticket-132-3299', 'prod-latte', 1, 15000, 0, '2026-03-11T10:56:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3299', 'hist-ticket-132-3299', 'cash', 46000, 'completed', '2026-03-11T10:56:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3300', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-11T10:04:10.000Z', '2026-03-11T10:04:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3300-1', 'hist-ticket-132-3300', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T10:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3300-2', 'hist-ticket-132-3300', 'prod-americano', 1, 12000, 0, '2026-03-11T10:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3300-3', 'hist-ticket-132-3300', 'prod-mocha', 1, 16500, 0, '2026-03-11T10:04:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3300', 'hist-ticket-132-3300', 'cash', 43000, 'completed', '2026-03-11T10:04:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3301', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-11T17:30:03.000Z', '2026-03-11T17:30:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3301-1', 'hist-ticket-132-3301', 'prod-latte', 1, 15000, 0, '2026-03-11T17:30:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3301-2', 'hist-ticket-132-3301', 'prod-americano', 1, 12000, 0, '2026-03-11T17:30:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3301', 'hist-ticket-132-3301', 'cash', 27000, 'completed', '2026-03-11T17:30:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3302', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-11T17:55:25.000Z', '2026-03-11T17:55:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3302-1', 'hist-ticket-132-3302', 'prod-latte', 1, 15000, 0, '2026-03-11T17:55:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3302-2', 'hist-ticket-132-3302', 'prod-mocha', 1, 16500, 0, '2026-03-11T17:55:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3302-3', 'hist-ticket-132-3302', 'prod-americano', 1, 12000, 0, '2026-03-11T17:55:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3302-4', 'hist-ticket-132-3302', 'prod-latte', 1, 15000, 0, '2026-03-11T17:55:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3302', 'hist-ticket-132-3302', 'cash', 58500, 'completed', '2026-03-11T17:55:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3303', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-11T12:41:20.000Z', '2026-03-11T12:41:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3303-1', 'hist-ticket-132-3303', 'prod-americano', 1, 12000, 0, '2026-03-11T12:41:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3303-2', 'hist-ticket-132-3303', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T12:41:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3303-3', 'hist-ticket-132-3303', 'prod-mocha', 1, 16500, 0, '2026-03-11T12:41:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3303-4', 'hist-ticket-132-3303', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T12:41:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3303', 'hist-ticket-132-3303', 'cash', 57500, 'completed', '2026-03-11T12:41:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3304', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-11T19:01:13.000Z', '2026-03-11T19:01:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3304-1', 'hist-ticket-132-3304', 'prod-mocha', 1, 16500, 0, '2026-03-11T19:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3304-2', 'hist-ticket-132-3304', 'prod-mocha', 1, 16500, 0, '2026-03-11T19:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3304-3', 'hist-ticket-132-3304', 'prod-mocha', 1, 16500, 0, '2026-03-11T19:01:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3304', 'hist-ticket-132-3304', 'cash', 49500, 'completed', '2026-03-11T19:01:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3305', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-11T16:48:25.000Z', '2026-03-11T16:48:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3305-1', 'hist-ticket-132-3305', 'prod-latte', 1, 15000, 0, '2026-03-11T16:48:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3305-2', 'hist-ticket-132-3305', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T16:48:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3305-3', 'hist-ticket-132-3305', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T16:48:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3305-4', 'hist-ticket-132-3305', 'prod-americano', 1, 12000, 0, '2026-03-11T16:48:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3305', 'hist-ticket-132-3305', 'cash', 56000, 'completed', '2026-03-11T16:48:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3306', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-11T18:21:34.000Z', '2026-03-11T18:21:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3306-1', 'hist-ticket-132-3306', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T18:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3306-2', 'hist-ticket-132-3306', 'prod-americano', 1, 12000, 0, '2026-03-11T18:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3306-3', 'hist-ticket-132-3306', 'prod-latte', 1, 15000, 0, '2026-03-11T18:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3306-4', 'hist-ticket-132-3306', 'prod-americano', 1, 12000, 0, '2026-03-11T18:21:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3306', 'hist-ticket-132-3306', 'cash', 53500, 'completed', '2026-03-11T18:21:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3307', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-03-11T15:52:41.000Z', '2026-03-11T15:52:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3307-1', 'hist-ticket-132-3307', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T15:52:41.000Z');