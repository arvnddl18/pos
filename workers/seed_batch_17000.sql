INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3751-1', 'hist-ticket-149-3751', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T12:13:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3751', 'hist-ticket-149-3751', 'cash', 14500, 'completed', '2026-03-28T12:13:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3752', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-28T10:31:25.000Z', '2026-03-28T10:31:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3752-1', 'hist-ticket-149-3752', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T10:31:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3752-2', 'hist-ticket-149-3752', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T10:31:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3752-3', 'hist-ticket-149-3752', 'prod-mocha', 1, 16500, 0, '2026-03-28T10:31:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3752', 'hist-ticket-149-3752', 'cash', 45500, 'completed', '2026-03-28T10:31:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3753', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-28T12:15:29.000Z', '2026-03-28T12:15:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3753-1', 'hist-ticket-149-3753', 'prod-latte', 1, 15000, 0, '2026-03-28T12:15:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3753-2', 'hist-ticket-149-3753', 'prod-mocha', 1, 16500, 0, '2026-03-28T12:15:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3753', 'hist-ticket-149-3753', 'cash', 31500, 'completed', '2026-03-28T12:15:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3754', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-28T19:46:02.000Z', '2026-03-28T19:46:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3754-1', 'hist-ticket-149-3754', 'prod-mocha', 1, 16500, 0, '2026-03-28T19:46:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3754-2', 'hist-ticket-149-3754', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T19:46:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3754-3', 'hist-ticket-149-3754', 'prod-mocha', 1, 16500, 0, '2026-03-28T19:46:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3754', 'hist-ticket-149-3754', 'cash', 47500, 'completed', '2026-03-28T19:46:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3755', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-28T12:58:37.000Z', '2026-03-28T12:58:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3755-1', 'hist-ticket-149-3755', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T12:58:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3755-2', 'hist-ticket-149-3755', 'prod-mocha', 1, 16500, 0, '2026-03-28T12:58:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3755', 'hist-ticket-149-3755', 'cash', 31000, 'completed', '2026-03-28T12:58:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3756', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-28T18:35:04.000Z', '2026-03-28T18:35:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3756-1', 'hist-ticket-149-3756', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T18:35:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3756', 'hist-ticket-149-3756', 'cash', 14500, 'completed', '2026-03-28T18:35:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3757', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-28T16:04:17.000Z', '2026-03-28T16:04:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3757-1', 'hist-ticket-149-3757', 'prod-latte', 1, 15000, 0, '2026-03-28T16:04:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3757-2', 'hist-ticket-149-3757', 'prod-americano', 1, 12000, 0, '2026-03-28T16:04:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3757-3', 'hist-ticket-149-3757', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T16:04:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3757', 'hist-ticket-149-3757', 'cash', 41500, 'completed', '2026-03-28T16:04:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3758', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-28T17:20:14.000Z', '2026-03-28T17:20:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3758-1', 'hist-ticket-149-3758', 'prod-mocha', 1, 16500, 0, '2026-03-28T17:20:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3758-2', 'hist-ticket-149-3758', 'prod-americano', 1, 12000, 0, '2026-03-28T17:20:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3758-3', 'hist-ticket-149-3758', 'prod-americano', 1, 12000, 0, '2026-03-28T17:20:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3758-4', 'hist-ticket-149-3758', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T17:20:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3758', 'hist-ticket-149-3758', 'cash', 55000, 'completed', '2026-03-28T17:20:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3759', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-28T19:13:52.000Z', '2026-03-28T19:13:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3759-1', 'hist-ticket-149-3759', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T19:13:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3759-2', 'hist-ticket-149-3759', 'prod-americano', 1, 12000, 0, '2026-03-28T19:13:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3759-3', 'hist-ticket-149-3759', 'prod-mocha', 1, 16500, 0, '2026-03-28T19:13:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3759', 'hist-ticket-149-3759', 'cash', 43000, 'completed', '2026-03-28T19:13:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3760', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-28T11:07:10.000Z', '2026-03-28T11:07:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3760-1', 'hist-ticket-149-3760', 'prod-latte', 1, 15000, 0, '2026-03-28T11:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3760-2', 'hist-ticket-149-3760', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T11:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3760-3', 'hist-ticket-149-3760', 'prod-mocha', 1, 16500, 0, '2026-03-28T11:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3760-4', 'hist-ticket-149-3760', 'prod-mocha', 1, 16500, 0, '2026-03-28T11:07:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3760', 'hist-ticket-149-3760', 'cash', 62500, 'completed', '2026-03-28T11:07:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3761', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-28T08:32:23.000Z', '2026-03-28T08:32:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3761-1', 'hist-ticket-149-3761', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:32:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3761', 'hist-ticket-149-3761', 'cash', 16500, 'completed', '2026-03-28T08:32:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3762', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-28T16:59:11.000Z', '2026-03-28T16:59:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3762-1', 'hist-ticket-149-3762', 'prod-americano', 1, 12000, 0, '2026-03-28T16:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3762-2', 'hist-ticket-149-3762', 'prod-mocha', 1, 16500, 0, '2026-03-28T16:59:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3762', 'hist-ticket-149-3762', 'cash', 28500, 'completed', '2026-03-28T16:59:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3763', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-28T13:21:36.000Z', '2026-03-28T13:21:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3763-1', 'hist-ticket-149-3763', 'prod-americano', 1, 12000, 0, '2026-03-28T13:21:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3763', 'hist-ticket-149-3763', 'cash', 12000, 'completed', '2026-03-28T13:21:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3764', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-28T14:08:57.000Z', '2026-03-28T14:08:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3764-1', 'hist-ticket-149-3764', 'prod-americano', 1, 12000, 0, '2026-03-28T14:08:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3764-2', 'hist-ticket-149-3764', 'prod-latte', 1, 15000, 0, '2026-03-28T14:08:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3764-3', 'hist-ticket-149-3764', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:08:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3764', 'hist-ticket-149-3764', 'cash', 43500, 'completed', '2026-03-28T14:08:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3765', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-03-28T18:56:47.000Z', '2026-03-28T18:56:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3765-1', 'hist-ticket-149-3765', 'prod-americano', 1, 12000, 0, '2026-03-28T18:56:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3765', 'hist-ticket-149-3765', 'cash', 12000, 'completed', '2026-03-28T18:56:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3766', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-28T08:02:44.000Z', '2026-03-28T08:02:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3766-1', 'hist-ticket-149-3766', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T08:02:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3766-2', 'hist-ticket-149-3766', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T08:02:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3766-3', 'hist-ticket-149-3766', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:02:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3766', 'hist-ticket-149-3766', 'cash', 45500, 'completed', '2026-03-28T08:02:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3767', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-28T13:20:18.000Z', '2026-03-28T13:20:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3767-1', 'hist-ticket-149-3767', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T13:20:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3767-2', 'hist-ticket-149-3767', 'prod-latte', 1, 15000, 0, '2026-03-28T13:20:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3767-3', 'hist-ticket-149-3767', 'prod-latte', 1, 15000, 0, '2026-03-28T13:20:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3767-4', 'hist-ticket-149-3767', 'prod-americano', 1, 12000, 0, '2026-03-28T13:20:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3767', 'hist-ticket-149-3767', 'cash', 56500, 'completed', '2026-03-28T13:20:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3768', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-28T14:31:12.000Z', '2026-03-28T14:31:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3768-1', 'hist-ticket-149-3768', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T14:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3768-2', 'hist-ticket-149-3768', 'prod-latte', 1, 15000, 0, '2026-03-28T14:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3768-3', 'hist-ticket-149-3768', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:31:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3768', 'hist-ticket-149-3768', 'cash', 46000, 'completed', '2026-03-28T14:31:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3769', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-28T14:03:43.000Z', '2026-03-28T14:03:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3769-1', 'hist-ticket-149-3769', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:03:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3769-2', 'hist-ticket-149-3769', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T14:03:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3769', 'hist-ticket-149-3769', 'cash', 31000, 'completed', '2026-03-28T14:03:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3770', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-03-28T08:35:45.000Z', '2026-03-28T08:35:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3770-1', 'hist-ticket-149-3770', 'prod-americano', 1, 12000, 0, '2026-03-28T08:35:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3770-2', 'hist-ticket-149-3770', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T08:35:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3770', 'hist-ticket-149-3770', 'cash', 26500, 'completed', '2026-03-28T08:35:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3771', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-28T14:06:18.000Z', '2026-03-28T14:06:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3771-1', 'hist-ticket-149-3771', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3771-2', 'hist-ticket-149-3771', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3771-3', 'hist-ticket-149-3771', 'prod-americano', 1, 12000, 0, '2026-03-28T14:06:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3771-4', 'hist-ticket-149-3771', 'prod-latte', 1, 15000, 0, '2026-03-28T14:06:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3771', 'hist-ticket-149-3771', 'cash', 60000, 'completed', '2026-03-28T14:06:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3772', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-28T09:53:10.000Z', '2026-03-28T09:53:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3772-1', 'hist-ticket-149-3772', 'prod-americano', 1, 12000, 0, '2026-03-28T09:53:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3772', 'hist-ticket-149-3772', 'cash', 12000, 'completed', '2026-03-28T09:53:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3773', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-28T12:10:09.000Z', '2026-03-28T12:10:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3773-1', 'hist-ticket-149-3773', 'prod-mocha', 1, 16500, 0, '2026-03-28T12:10:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3773', 'hist-ticket-149-3773', 'cash', 16500, 'completed', '2026-03-28T12:10:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3774', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-28T08:55:11.000Z', '2026-03-28T08:55:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3774-1', 'hist-ticket-149-3774', 'prod-latte', 1, 15000, 0, '2026-03-28T08:55:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3774-2', 'hist-ticket-149-3774', 'prod-latte', 1, 15000, 0, '2026-03-28T08:55:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3774-3', 'hist-ticket-149-3774', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:55:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3774-4', 'hist-ticket-149-3774', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T08:55:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3774', 'hist-ticket-149-3774', 'cash', 61000, 'completed', '2026-03-28T08:55:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3775', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-03-28T09:26:19.000Z', '2026-03-28T09:26:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3775-1', 'hist-ticket-149-3775', 'prod-latte', 1, 15000, 0, '2026-03-28T09:26:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3775', 'hist-ticket-149-3775', 'cash', 15000, 'completed', '2026-03-28T09:26:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3776', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-28T14:08:46.000Z', '2026-03-28T14:08:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3776-1', 'hist-ticket-149-3776', 'prod-mocha', 1, 16500, 0, '2026-03-28T14:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3776-2', 'hist-ticket-149-3776', 'prod-latte', 1, 15000, 0, '2026-03-28T14:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3776-3', 'hist-ticket-149-3776', 'prod-americano', 1, 12000, 0, '2026-03-28T14:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3776-4', 'hist-ticket-149-3776', 'prod-americano', 1, 12000, 0, '2026-03-28T14:08:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3776', 'hist-ticket-149-3776', 'cash', 55500, 'completed', '2026-03-28T14:08:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3777', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-03-28T08:01:30.000Z', '2026-03-28T08:01:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3777-1', 'hist-ticket-149-3777', 'prod-mocha', 1, 16500, 0, '2026-03-28T08:01:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3777', 'hist-ticket-149-3777', 'cash', 16500, 'completed', '2026-03-28T08:01:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3778', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-28T16:38:46.000Z', '2026-03-28T16:38:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3778-1', 'hist-ticket-149-3778', 'prod-latte', 1, 15000, 0, '2026-03-28T16:38:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3778-2', 'hist-ticket-149-3778', 'prod-americano', 1, 12000, 0, '2026-03-28T16:38:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3778-3', 'hist-ticket-149-3778', 'prod-americano', 1, 12000, 0, '2026-03-28T16:38:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3778-4', 'hist-ticket-149-3778', 'prod-latte', 1, 15000, 0, '2026-03-28T16:38:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3778', 'hist-ticket-149-3778', 'cash', 54000, 'completed', '2026-03-28T16:38:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3779', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-28T13:29:34.000Z', '2026-03-28T13:29:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3779-1', 'hist-ticket-149-3779', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T13:29:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3779-2', 'hist-ticket-149-3779', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T13:29:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3779-3', 'hist-ticket-149-3779', 'prod-mocha', 1, 16500, 0, '2026-03-28T13:29:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3779-4', 'hist-ticket-149-3779', 'prod-cappuccino', 1, 14500, 0, '2026-03-28T13:29:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3779', 'hist-ticket-149-3779', 'cash', 60000, 'completed', '2026-03-28T13:29:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3780', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-28T16:54:56.000Z', '2026-03-28T16:54:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3780-1', 'hist-ticket-149-3780', 'prod-mocha', 1, 16500, 0, '2026-03-28T16:54:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3780-2', 'hist-ticket-149-3780', 'prod-latte', 1, 15000, 0, '2026-03-28T16:54:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3780', 'hist-ticket-149-3780', 'cash', 31500, 'completed', '2026-03-28T16:54:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-149-3781', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-28T19:43:51.000Z', '2026-03-28T19:43:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3781-1', 'hist-ticket-149-3781', 'prod-latte', 1, 15000, 0, '2026-03-28T19:43:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-149-3781-2', 'hist-ticket-149-3781', 'prod-latte', 1, 15000, 0, '2026-03-28T19:43:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-149-3781', 'hist-ticket-149-3781', 'cash', 30000, 'completed', '2026-03-28T19:43:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3782', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-29T15:42:32.000Z', '2026-03-29T15:42:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3782-1', 'hist-ticket-150-3782', 'prod-latte', 1, 15000, 0, '2026-03-29T15:42:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3782-2', 'hist-ticket-150-3782', 'prod-americano', 1, 12000, 0, '2026-03-29T15:42:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3782-3', 'hist-ticket-150-3782', 'prod-mocha', 1, 16500, 0, '2026-03-29T15:42:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3782', 'hist-ticket-150-3782', 'cash', 43500, 'completed', '2026-03-29T15:42:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3783', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-03-29T11:56:29.000Z', '2026-03-29T11:56:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3783-1', 'hist-ticket-150-3783', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:56:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3783', 'hist-ticket-150-3783', 'cash', 14500, 'completed', '2026-03-29T11:56:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3784', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-29T11:30:37.000Z', '2026-03-29T11:30:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3784-1', 'hist-ticket-150-3784', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3784-2', 'hist-ticket-150-3784', 'prod-latte', 1, 15000, 0, '2026-03-29T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3784-3', 'hist-ticket-150-3784', 'prod-americano', 1, 12000, 0, '2026-03-29T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3784-4', 'hist-ticket-150-3784', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:30:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3784', 'hist-ticket-150-3784', 'cash', 56000, 'completed', '2026-03-29T11:30:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3785', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-29T10:51:28.000Z', '2026-03-29T10:51:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3785-1', 'hist-ticket-150-3785', 'prod-mocha', 1, 16500, 0, '2026-03-29T10:51:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3785-2', 'hist-ticket-150-3785', 'prod-mocha', 1, 16500, 0, '2026-03-29T10:51:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3785-3', 'hist-ticket-150-3785', 'prod-mocha', 1, 16500, 0, '2026-03-29T10:51:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3785-4', 'hist-ticket-150-3785', 'prod-latte', 1, 15000, 0, '2026-03-29T10:51:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3785', 'hist-ticket-150-3785', 'cash', 64500, 'completed', '2026-03-29T10:51:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3786', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-29T17:43:33.000Z', '2026-03-29T17:43:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3786-1', 'hist-ticket-150-3786', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:43:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3786', 'hist-ticket-150-3786', 'cash', 14500, 'completed', '2026-03-29T17:43:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3787', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-03-29T19:02:48.000Z', '2026-03-29T19:02:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3787-1', 'hist-ticket-150-3787', 'prod-mocha', 1, 16500, 0, '2026-03-29T19:02:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3787-2', 'hist-ticket-150-3787', 'prod-americano', 1, 12000, 0, '2026-03-29T19:02:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3787', 'hist-ticket-150-3787', 'cash', 28500, 'completed', '2026-03-29T19:02:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3788', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T17:16:55.000Z', '2026-03-29T17:16:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3788-1', 'hist-ticket-150-3788', 'prod-americano', 1, 12000, 0, '2026-03-29T17:16:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3788-2', 'hist-ticket-150-3788', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:16:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3788-3', 'hist-ticket-150-3788', 'prod-latte', 1, 15000, 0, '2026-03-29T17:16:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3788', 'hist-ticket-150-3788', 'cash', 41500, 'completed', '2026-03-29T17:16:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3789', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-29T16:45:01.000Z', '2026-03-29T16:45:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3789-1', 'hist-ticket-150-3789', 'prod-latte', 1, 15000, 0, '2026-03-29T16:45:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3789-2', 'hist-ticket-150-3789', 'prod-mocha', 1, 16500, 0, '2026-03-29T16:45:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3789-3', 'hist-ticket-150-3789', 'prod-americano', 1, 12000, 0, '2026-03-29T16:45:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3789', 'hist-ticket-150-3789', 'cash', 43500, 'completed', '2026-03-29T16:45:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3790', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-29T13:28:52.000Z', '2026-03-29T13:28:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3790-1', 'hist-ticket-150-3790', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:28:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3790-2', 'hist-ticket-150-3790', 'prod-latte', 1, 15000, 0, '2026-03-29T13:28:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3790-3', 'hist-ticket-150-3790', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:28:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3790', 'hist-ticket-150-3790', 'cash', 48000, 'completed', '2026-03-29T13:28:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3791', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-29T17:46:29.000Z', '2026-03-29T17:46:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3791-1', 'hist-ticket-150-3791', 'prod-americano', 1, 12000, 0, '2026-03-29T17:46:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3791-2', 'hist-ticket-150-3791', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:46:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3791-3', 'hist-ticket-150-3791', 'prod-mocha', 1, 16500, 0, '2026-03-29T17:46:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3791-4', 'hist-ticket-150-3791', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:46:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3791', 'hist-ticket-150-3791', 'cash', 57500, 'completed', '2026-03-29T17:46:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3792', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-29T15:28:24.000Z', '2026-03-29T15:28:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3792-1', 'hist-ticket-150-3792', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T15:28:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3792-2', 'hist-ticket-150-3792', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T15:28:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3792-3', 'hist-ticket-150-3792', 'prod-latte', 1, 15000, 0, '2026-03-29T15:28:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3792', 'hist-ticket-150-3792', 'cash', 44000, 'completed', '2026-03-29T15:28:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3793', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-29T12:37:12.000Z', '2026-03-29T12:37:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3793-1', 'hist-ticket-150-3793', 'prod-americano', 1, 12000, 0, '2026-03-29T12:37:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3793-2', 'hist-ticket-150-3793', 'prod-americano', 1, 12000, 0, '2026-03-29T12:37:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3793', 'hist-ticket-150-3793', 'cash', 24000, 'completed', '2026-03-29T12:37:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3794', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T13:07:22.000Z', '2026-03-29T13:07:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3794-1', 'hist-ticket-150-3794', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:07:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3794-2', 'hist-ticket-150-3794', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T13:07:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3794-3', 'hist-ticket-150-3794', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:07:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3794-4', 'hist-ticket-150-3794', 'prod-americano', 1, 12000, 0, '2026-03-29T13:07:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3794', 'hist-ticket-150-3794', 'cash', 59500, 'completed', '2026-03-29T13:07:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3795', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-03-29T10:10:32.000Z', '2026-03-29T10:10:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3795-1', 'hist-ticket-150-3795', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T10:10:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3795-2', 'hist-ticket-150-3795', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T10:10:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3795', 'hist-ticket-150-3795', 'cash', 29000, 'completed', '2026-03-29T10:10:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3796', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-29T17:29:06.000Z', '2026-03-29T17:29:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3796-1', 'hist-ticket-150-3796', 'prod-mocha', 1, 16500, 0, '2026-03-29T17:29:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3796', 'hist-ticket-150-3796', 'cash', 16500, 'completed', '2026-03-29T17:29:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3797', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-03-29T11:31:08.000Z', '2026-03-29T11:31:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3797-1', 'hist-ticket-150-3797', 'prod-mocha', 1, 16500, 0, '2026-03-29T11:31:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3797-2', 'hist-ticket-150-3797', 'prod-mocha', 1, 16500, 0, '2026-03-29T11:31:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3797-3', 'hist-ticket-150-3797', 'prod-americano', 1, 12000, 0, '2026-03-29T11:31:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3797-4', 'hist-ticket-150-3797', 'prod-latte', 1, 15000, 0, '2026-03-29T11:31:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3797', 'hist-ticket-150-3797', 'cash', 60000, 'completed', '2026-03-29T11:31:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3798', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-29T11:22:59.000Z', '2026-03-29T11:22:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3798-1', 'hist-ticket-150-3798', 'prod-latte', 1, 15000, 0, '2026-03-29T11:22:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3798', 'hist-ticket-150-3798', 'cash', 15000, 'completed', '2026-03-29T11:22:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3799', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T16:09:26.000Z', '2026-03-29T16:09:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3799-1', 'hist-ticket-150-3799', 'prod-latte', 1, 15000, 0, '2026-03-29T16:09:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3799', 'hist-ticket-150-3799', 'cash', 15000, 'completed', '2026-03-29T16:09:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3800', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-29T12:19:51.000Z', '2026-03-29T12:19:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3800-1', 'hist-ticket-150-3800', 'prod-mocha', 1, 16500, 0, '2026-03-29T12:19:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3800-2', 'hist-ticket-150-3800', 'prod-mocha', 1, 16500, 0, '2026-03-29T12:19:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3800-3', 'hist-ticket-150-3800', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T12:19:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3800-4', 'hist-ticket-150-3800', 'prod-mocha', 1, 16500, 0, '2026-03-29T12:19:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3800', 'hist-ticket-150-3800', 'cash', 64000, 'completed', '2026-03-29T12:19:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3801', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T13:40:56.000Z', '2026-03-29T13:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3801-1', 'hist-ticket-150-3801', 'prod-latte', 1, 15000, 0, '2026-03-29T13:40:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3801', 'hist-ticket-150-3801', 'cash', 15000, 'completed', '2026-03-29T13:40:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3802', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T09:26:48.000Z', '2026-03-29T09:26:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3802-1', 'hist-ticket-150-3802', 'prod-mocha', 1, 16500, 0, '2026-03-29T09:26:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3802-2', 'hist-ticket-150-3802', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T09:26:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3802', 'hist-ticket-150-3802', 'cash', 31000, 'completed', '2026-03-29T09:26:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3803', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-29T11:45:09.000Z', '2026-03-29T11:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3803-1', 'hist-ticket-150-3803', 'prod-latte', 1, 15000, 0, '2026-03-29T11:45:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3803', 'hist-ticket-150-3803', 'cash', 15000, 'completed', '2026-03-29T11:45:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3804', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-29T14:28:23.000Z', '2026-03-29T14:28:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3804-1', 'hist-ticket-150-3804', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T14:28:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3804', 'hist-ticket-150-3804', 'cash', 14500, 'completed', '2026-03-29T14:28:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3805', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-29T16:52:48.000Z', '2026-03-29T16:52:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3805-1', 'hist-ticket-150-3805', 'prod-mocha', 1, 16500, 0, '2026-03-29T16:52:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3805-2', 'hist-ticket-150-3805', 'prod-latte', 1, 15000, 0, '2026-03-29T16:52:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3805', 'hist-ticket-150-3805', 'cash', 31500, 'completed', '2026-03-29T16:52:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3806', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-29T11:44:16.000Z', '2026-03-29T11:44:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3806-1', 'hist-ticket-150-3806', 'prod-americano', 1, 12000, 0, '2026-03-29T11:44:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3806-2', 'hist-ticket-150-3806', 'prod-americano', 1, 12000, 0, '2026-03-29T11:44:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3806', 'hist-ticket-150-3806', 'cash', 24000, 'completed', '2026-03-29T11:44:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3807', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-29T19:34:37.000Z', '2026-03-29T19:34:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3807-1', 'hist-ticket-150-3807', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T19:34:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3807', 'hist-ticket-150-3807', 'cash', 14500, 'completed', '2026-03-29T19:34:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3808', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T13:23:30.000Z', '2026-03-29T13:23:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3808-1', 'hist-ticket-150-3808', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T13:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3808-2', 'hist-ticket-150-3808', 'prod-latte', 1, 15000, 0, '2026-03-29T13:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3808-3', 'hist-ticket-150-3808', 'prod-latte', 1, 15000, 0, '2026-03-29T13:23:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3808', 'hist-ticket-150-3808', 'cash', 44500, 'completed', '2026-03-29T13:23:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3809', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-29T16:53:13.000Z', '2026-03-29T16:53:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3809-1', 'hist-ticket-150-3809', 'prod-mocha', 1, 16500, 0, '2026-03-29T16:53:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3809', 'hist-ticket-150-3809', 'cash', 16500, 'completed', '2026-03-29T16:53:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3810', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-29T11:21:25.000Z', '2026-03-29T11:21:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3810-1', 'hist-ticket-150-3810', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:21:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3810-2', 'hist-ticket-150-3810', 'prod-latte', 1, 15000, 0, '2026-03-29T11:21:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3810', 'hist-ticket-150-3810', 'cash', 29500, 'completed', '2026-03-29T11:21:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3811', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-29T19:30:09.000Z', '2026-03-29T19:30:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3811-1', 'hist-ticket-150-3811', 'prod-americano', 1, 12000, 0, '2026-03-29T19:30:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3811-2', 'hist-ticket-150-3811', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T19:30:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3811-3', 'hist-ticket-150-3811', 'prod-mocha', 1, 16500, 0, '2026-03-29T19:30:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3811', 'hist-ticket-150-3811', 'cash', 43000, 'completed', '2026-03-29T19:30:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3812', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-29T13:44:49.000Z', '2026-03-29T13:44:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3812-1', 'hist-ticket-150-3812', 'prod-americano', 1, 12000, 0, '2026-03-29T13:44:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3812-2', 'hist-ticket-150-3812', 'prod-americano', 1, 12000, 0, '2026-03-29T13:44:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3812', 'hist-ticket-150-3812', 'cash', 24000, 'completed', '2026-03-29T13:44:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3813', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-29T11:29:06.000Z', '2026-03-29T11:29:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3813-1', 'hist-ticket-150-3813', 'prod-mocha', 1, 16500, 0, '2026-03-29T11:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3813-2', 'hist-ticket-150-3813', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3813-3', 'hist-ticket-150-3813', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T11:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3813-4', 'hist-ticket-150-3813', 'prod-mocha', 1, 16500, 0, '2026-03-29T11:29:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3813', 'hist-ticket-150-3813', 'cash', 62000, 'completed', '2026-03-29T11:29:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3814', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-29T19:47:42.000Z', '2026-03-29T19:47:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3814-1', 'hist-ticket-150-3814', 'prod-latte', 1, 15000, 0, '2026-03-29T19:47:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3814-2', 'hist-ticket-150-3814', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T19:47:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3814-3', 'hist-ticket-150-3814', 'prod-mocha', 1, 16500, 0, '2026-03-29T19:47:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3814-4', 'hist-ticket-150-3814', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T19:47:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3814', 'hist-ticket-150-3814', 'cash', 60500, 'completed', '2026-03-29T19:47:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3815', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-29T19:28:13.000Z', '2026-03-29T19:28:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3815-1', 'hist-ticket-150-3815', 'prod-americano', 1, 12000, 0, '2026-03-29T19:28:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3815', 'hist-ticket-150-3815', 'cash', 12000, 'completed', '2026-03-29T19:28:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3816', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-29T12:26:20.000Z', '2026-03-29T12:26:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3816-1', 'hist-ticket-150-3816', 'prod-americano', 1, 12000, 0, '2026-03-29T12:26:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3816-2', 'hist-ticket-150-3816', 'prod-mocha', 1, 16500, 0, '2026-03-29T12:26:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3816', 'hist-ticket-150-3816', 'cash', 28500, 'completed', '2026-03-29T12:26:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3817', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-29T09:08:32.000Z', '2026-03-29T09:08:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3817-1', 'hist-ticket-150-3817', 'prod-latte', 1, 15000, 0, '2026-03-29T09:08:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3817', 'hist-ticket-150-3817', 'cash', 15000, 'completed', '2026-03-29T09:08:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3818', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T15:51:57.000Z', '2026-03-29T15:51:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3818-1', 'hist-ticket-150-3818', 'prod-latte', 1, 15000, 0, '2026-03-29T15:51:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3818-2', 'hist-ticket-150-3818', 'prod-latte', 1, 15000, 0, '2026-03-29T15:51:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3818', 'hist-ticket-150-3818', 'cash', 30000, 'completed', '2026-03-29T15:51:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3819', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-29T13:10:35.000Z', '2026-03-29T13:10:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3819-1', 'hist-ticket-150-3819', 'prod-latte', 1, 15000, 0, '2026-03-29T13:10:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3819-2', 'hist-ticket-150-3819', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:10:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3819', 'hist-ticket-150-3819', 'cash', 31500, 'completed', '2026-03-29T13:10:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3820', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-03-29T08:13:03.000Z', '2026-03-29T08:13:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3820-1', 'hist-ticket-150-3820', 'prod-latte', 1, 15000, 0, '2026-03-29T08:13:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3820-2', 'hist-ticket-150-3820', 'prod-americano', 1, 12000, 0, '2026-03-29T08:13:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3820-3', 'hist-ticket-150-3820', 'prod-americano', 1, 12000, 0, '2026-03-29T08:13:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3820', 'hist-ticket-150-3820', 'cash', 39000, 'completed', '2026-03-29T08:13:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3821', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-29T12:04:59.000Z', '2026-03-29T12:04:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3821-1', 'hist-ticket-150-3821', 'prod-americano', 1, 12000, 0, '2026-03-29T12:04:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3821-2', 'hist-ticket-150-3821', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T12:04:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3821-3', 'hist-ticket-150-3821', 'prod-latte', 1, 15000, 0, '2026-03-29T12:04:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3821', 'hist-ticket-150-3821', 'cash', 41500, 'completed', '2026-03-29T12:04:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3822', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-29T17:18:03.000Z', '2026-03-29T17:18:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3822-1', 'hist-ticket-150-3822', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:18:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3822-2', 'hist-ticket-150-3822', 'prod-latte', 1, 15000, 0, '2026-03-29T17:18:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3822-3', 'hist-ticket-150-3822', 'prod-latte', 1, 15000, 0, '2026-03-29T17:18:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3822-4', 'hist-ticket-150-3822', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T17:18:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3822', 'hist-ticket-150-3822', 'cash', 59000, 'completed', '2026-03-29T17:18:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3823', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-29T13:36:37.000Z', '2026-03-29T13:36:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3823-1', 'hist-ticket-150-3823', 'prod-latte', 1, 15000, 0, '2026-03-29T13:36:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3823-2', 'hist-ticket-150-3823', 'prod-mocha', 1, 16500, 0, '2026-03-29T13:36:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3823', 'hist-ticket-150-3823', 'cash', 31500, 'completed', '2026-03-29T13:36:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3824', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-29T12:57:09.000Z', '2026-03-29T12:57:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3824-1', 'hist-ticket-150-3824', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T12:57:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3824-2', 'hist-ticket-150-3824', 'prod-mocha', 1, 16500, 0, '2026-03-29T12:57:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3824', 'hist-ticket-150-3824', 'cash', 31000, 'completed', '2026-03-29T12:57:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3825', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-29T14:03:56.000Z', '2026-03-29T14:03:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3825-1', 'hist-ticket-150-3825', 'prod-mocha', 1, 16500, 0, '2026-03-29T14:03:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3825-2', 'hist-ticket-150-3825', 'prod-mocha', 1, 16500, 0, '2026-03-29T14:03:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3825-3', 'hist-ticket-150-3825', 'prod-americano', 1, 12000, 0, '2026-03-29T14:03:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3825', 'hist-ticket-150-3825', 'cash', 45000, 'completed', '2026-03-29T14:03:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-150-3826', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-29T09:56:40.000Z', '2026-03-29T09:56:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3826-1', 'hist-ticket-150-3826', 'prod-cappuccino', 1, 14500, 0, '2026-03-29T09:56:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3826-2', 'hist-ticket-150-3826', 'prod-latte', 1, 15000, 0, '2026-03-29T09:56:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3826-3', 'hist-ticket-150-3826', 'prod-americano', 1, 12000, 0, '2026-03-29T09:56:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-150-3826-4', 'hist-ticket-150-3826', 'prod-americano', 1, 12000, 0, '2026-03-29T09:56:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-150-3826', 'hist-ticket-150-3826', 'cash', 53500, 'completed', '2026-03-29T09:56:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3827', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-30T12:56:56.000Z', '2026-03-30T12:56:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3827-1', 'hist-ticket-151-3827', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T12:56:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3827-2', 'hist-ticket-151-3827', 'prod-latte', 1, 15000, 0, '2026-03-30T12:56:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3827-3', 'hist-ticket-151-3827', 'prod-mocha', 1, 16500, 0, '2026-03-30T12:56:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3827-4', 'hist-ticket-151-3827', 'prod-latte', 1, 15000, 0, '2026-03-30T12:56:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3827', 'hist-ticket-151-3827', 'cash', 61000, 'completed', '2026-03-30T12:56:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3828', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-30T18:23:02.000Z', '2026-03-30T18:23:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3828-1', 'hist-ticket-151-3828', 'prod-americano', 1, 12000, 0, '2026-03-30T18:23:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3828', 'hist-ticket-151-3828', 'cash', 12000, 'completed', '2026-03-30T18:23:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3829', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-30T12:25:58.000Z', '2026-03-30T12:25:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3829-1', 'hist-ticket-151-3829', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T12:25:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3829-2', 'hist-ticket-151-3829', 'prod-mocha', 1, 16500, 0, '2026-03-30T12:25:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3829-3', 'hist-ticket-151-3829', 'prod-americano', 1, 12000, 0, '2026-03-30T12:25:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3829-4', 'hist-ticket-151-3829', 'prod-latte', 1, 15000, 0, '2026-03-30T12:25:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3829', 'hist-ticket-151-3829', 'cash', 58000, 'completed', '2026-03-30T12:25:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3830', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-30T12:15:08.000Z', '2026-03-30T12:15:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3830-1', 'hist-ticket-151-3830', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T12:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3830-2', 'hist-ticket-151-3830', 'prod-latte', 1, 15000, 0, '2026-03-30T12:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3830-3', 'hist-ticket-151-3830', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T12:15:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3830-4', 'hist-ticket-151-3830', 'prod-americano', 1, 12000, 0, '2026-03-30T12:15:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3830', 'hist-ticket-151-3830', 'cash', 56000, 'completed', '2026-03-30T12:15:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3831', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-30T13:19:21.000Z', '2026-03-30T13:19:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3831-1', 'hist-ticket-151-3831', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T13:19:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3831-2', 'hist-ticket-151-3831', 'prod-americano', 1, 12000, 0, '2026-03-30T13:19:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3831', 'hist-ticket-151-3831', 'cash', 26500, 'completed', '2026-03-30T13:19:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3832', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-30T17:29:51.000Z', '2026-03-30T17:29:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3832-1', 'hist-ticket-151-3832', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T17:29:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3832-2', 'hist-ticket-151-3832', 'prod-americano', 1, 12000, 0, '2026-03-30T17:29:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3832', 'hist-ticket-151-3832', 'cash', 26500, 'completed', '2026-03-30T17:29:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3833', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-30T15:07:43.000Z', '2026-03-30T15:07:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3833-1', 'hist-ticket-151-3833', 'prod-americano', 1, 12000, 0, '2026-03-30T15:07:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3833', 'hist-ticket-151-3833', 'cash', 12000, 'completed', '2026-03-30T15:07:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3834', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-30T19:34:35.000Z', '2026-03-30T19:34:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3834-1', 'hist-ticket-151-3834', 'prod-latte', 1, 15000, 0, '2026-03-30T19:34:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3834', 'hist-ticket-151-3834', 'cash', 15000, 'completed', '2026-03-30T19:34:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3835', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-30T08:59:21.000Z', '2026-03-30T08:59:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3835-1', 'hist-ticket-151-3835', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T08:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3835-2', 'hist-ticket-151-3835', 'prod-mocha', 1, 16500, 0, '2026-03-30T08:59:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3835', 'hist-ticket-151-3835', 'cash', 31000, 'completed', '2026-03-30T08:59:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3836', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-30T18:31:22.000Z', '2026-03-30T18:31:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3836-1', 'hist-ticket-151-3836', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T18:31:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3836', 'hist-ticket-151-3836', 'cash', 14500, 'completed', '2026-03-30T18:31:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3837', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-30T18:32:39.000Z', '2026-03-30T18:32:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3837-1', 'hist-ticket-151-3837', 'prod-latte', 1, 15000, 0, '2026-03-30T18:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3837-2', 'hist-ticket-151-3837', 'prod-americano', 1, 12000, 0, '2026-03-30T18:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3837-3', 'hist-ticket-151-3837', 'prod-americano', 1, 12000, 0, '2026-03-30T18:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3837-4', 'hist-ticket-151-3837', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T18:32:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3837', 'hist-ticket-151-3837', 'cash', 53500, 'completed', '2026-03-30T18:32:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3838', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-30T15:55:13.000Z', '2026-03-30T15:55:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3838-1', 'hist-ticket-151-3838', 'prod-americano', 1, 12000, 0, '2026-03-30T15:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3838-2', 'hist-ticket-151-3838', 'prod-latte', 1, 15000, 0, '2026-03-30T15:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3838-3', 'hist-ticket-151-3838', 'prod-latte', 1, 15000, 0, '2026-03-30T15:55:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3838', 'hist-ticket-151-3838', 'cash', 42000, 'completed', '2026-03-30T15:55:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3839', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-30T14:59:09.000Z', '2026-03-30T14:59:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3839-1', 'hist-ticket-151-3839', 'prod-americano', 1, 12000, 0, '2026-03-30T14:59:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3839-2', 'hist-ticket-151-3839', 'prod-americano', 1, 12000, 0, '2026-03-30T14:59:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3839', 'hist-ticket-151-3839', 'cash', 24000, 'completed', '2026-03-30T14:59:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3840', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-30T10:41:00.000Z', '2026-03-30T10:41:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3840-1', 'hist-ticket-151-3840', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T10:41:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3840-2', 'hist-ticket-151-3840', 'prod-mocha', 1, 16500, 0, '2026-03-30T10:41:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3840-3', 'hist-ticket-151-3840', 'prod-latte', 1, 15000, 0, '2026-03-30T10:41:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3840-4', 'hist-ticket-151-3840', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T10:41:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3840', 'hist-ticket-151-3840', 'cash', 60500, 'completed', '2026-03-30T10:41:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3841', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-30T09:45:02.000Z', '2026-03-30T09:45:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3841-1', 'hist-ticket-151-3841', 'prod-latte', 1, 15000, 0, '2026-03-30T09:45:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3841-2', 'hist-ticket-151-3841', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T09:45:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3841-3', 'hist-ticket-151-3841', 'prod-mocha', 1, 16500, 0, '2026-03-30T09:45:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3841-4', 'hist-ticket-151-3841', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T09:45:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3841', 'hist-ticket-151-3841', 'cash', 60500, 'completed', '2026-03-30T09:45:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3842', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-30T12:35:50.000Z', '2026-03-30T12:35:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3842-1', 'hist-ticket-151-3842', 'prod-latte', 1, 15000, 0, '2026-03-30T12:35:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3842-2', 'hist-ticket-151-3842', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T12:35:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3842', 'hist-ticket-151-3842', 'cash', 29500, 'completed', '2026-03-30T12:35:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3843', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-30T14:15:46.000Z', '2026-03-30T14:15:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3843-1', 'hist-ticket-151-3843', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T14:15:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3843-2', 'hist-ticket-151-3843', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T14:15:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3843', 'hist-ticket-151-3843', 'cash', 29000, 'completed', '2026-03-30T14:15:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3844', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-30T11:04:15.000Z', '2026-03-30T11:04:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3844-1', 'hist-ticket-151-3844', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T11:04:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3844', 'hist-ticket-151-3844', 'cash', 14500, 'completed', '2026-03-30T11:04:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3845', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-03-30T16:55:40.000Z', '2026-03-30T16:55:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3845-1', 'hist-ticket-151-3845', 'prod-americano', 1, 12000, 0, '2026-03-30T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3845-2', 'hist-ticket-151-3845', 'prod-americano', 1, 12000, 0, '2026-03-30T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3845-3', 'hist-ticket-151-3845', 'prod-latte', 1, 15000, 0, '2026-03-30T16:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3845-4', 'hist-ticket-151-3845', 'prod-mocha', 1, 16500, 0, '2026-03-30T16:55:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3845', 'hist-ticket-151-3845', 'cash', 55500, 'completed', '2026-03-30T16:55:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3846', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-30T15:50:25.000Z', '2026-03-30T15:50:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3846-1', 'hist-ticket-151-3846', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T15:50:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3846-2', 'hist-ticket-151-3846', 'prod-latte', 1, 15000, 0, '2026-03-30T15:50:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3846-3', 'hist-ticket-151-3846', 'prod-americano', 1, 12000, 0, '2026-03-30T15:50:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3846', 'hist-ticket-151-3846', 'cash', 41500, 'completed', '2026-03-30T15:50:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3847', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-03-30T13:12:37.000Z', '2026-03-30T13:12:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3847-1', 'hist-ticket-151-3847', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T13:12:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3847-2', 'hist-ticket-151-3847', 'prod-latte', 1, 15000, 0, '2026-03-30T13:12:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3847-3', 'hist-ticket-151-3847', 'prod-mocha', 1, 16500, 0, '2026-03-30T13:12:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3847', 'hist-ticket-151-3847', 'cash', 46000, 'completed', '2026-03-30T13:12:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3848', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-30T11:56:04.000Z', '2026-03-30T11:56:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3848-1', 'hist-ticket-151-3848', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T11:56:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3848', 'hist-ticket-151-3848', 'cash', 14500, 'completed', '2026-03-30T11:56:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-151-3849', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-30T16:38:07.000Z', '2026-03-30T16:38:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3849-1', 'hist-ticket-151-3849', 'prod-americano', 1, 12000, 0, '2026-03-30T16:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3849-2', 'hist-ticket-151-3849', 'prod-cappuccino', 1, 14500, 0, '2026-03-30T16:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3849-3', 'hist-ticket-151-3849', 'prod-mocha', 1, 16500, 0, '2026-03-30T16:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-151-3849-4', 'hist-ticket-151-3849', 'prod-mocha', 1, 16500, 0, '2026-03-30T16:38:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-151-3849', 'hist-ticket-151-3849', 'cash', 59500, 'completed', '2026-03-30T16:38:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3850', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-31T11:15:29.000Z', '2026-03-31T11:15:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3850-1', 'hist-ticket-152-3850', 'prod-mocha', 1, 16500, 0, '2026-03-31T11:15:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3850-2', 'hist-ticket-152-3850', 'prod-mocha', 1, 16500, 0, '2026-03-31T11:15:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3850-3', 'hist-ticket-152-3850', 'prod-mocha', 1, 16500, 0, '2026-03-31T11:15:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3850', 'hist-ticket-152-3850', 'cash', 49500, 'completed', '2026-03-31T11:15:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3851', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-31T15:53:37.000Z', '2026-03-31T15:53:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3851-1', 'hist-ticket-152-3851', 'prod-mocha', 1, 16500, 0, '2026-03-31T15:53:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3851-2', 'hist-ticket-152-3851', 'prod-americano', 1, 12000, 0, '2026-03-31T15:53:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3851-3', 'hist-ticket-152-3851', 'prod-latte', 1, 15000, 0, '2026-03-31T15:53:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3851-4', 'hist-ticket-152-3851', 'prod-mocha', 1, 16500, 0, '2026-03-31T15:53:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3851', 'hist-ticket-152-3851', 'cash', 60000, 'completed', '2026-03-31T15:53:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3852', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-31T11:41:05.000Z', '2026-03-31T11:41:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3852-1', 'hist-ticket-152-3852', 'prod-mocha', 1, 16500, 0, '2026-03-31T11:41:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3852', 'hist-ticket-152-3852', 'cash', 16500, 'completed', '2026-03-31T11:41:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3853', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-31T15:47:10.000Z', '2026-03-31T15:47:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3853-1', 'hist-ticket-152-3853', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T15:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3853-2', 'hist-ticket-152-3853', 'prod-latte', 1, 15000, 0, '2026-03-31T15:47:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3853-3', 'hist-ticket-152-3853', 'prod-latte', 1, 15000, 0, '2026-03-31T15:47:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3853', 'hist-ticket-152-3853', 'cash', 44500, 'completed', '2026-03-31T15:47:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3854', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-31T15:16:36.000Z', '2026-03-31T15:16:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3854-1', 'hist-ticket-152-3854', 'prod-latte', 1, 15000, 0, '2026-03-31T15:16:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3854', 'hist-ticket-152-3854', 'cash', 15000, 'completed', '2026-03-31T15:16:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3855', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-31T19:55:21.000Z', '2026-03-31T19:55:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3855-1', 'hist-ticket-152-3855', 'prod-latte', 1, 15000, 0, '2026-03-31T19:55:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3855-2', 'hist-ticket-152-3855', 'prod-mocha', 1, 16500, 0, '2026-03-31T19:55:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3855', 'hist-ticket-152-3855', 'cash', 31500, 'completed', '2026-03-31T19:55:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3856', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-31T18:08:08.000Z', '2026-03-31T18:08:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3856-1', 'hist-ticket-152-3856', 'prod-latte', 1, 15000, 0, '2026-03-31T18:08:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3856-2', 'hist-ticket-152-3856', 'prod-mocha', 1, 16500, 0, '2026-03-31T18:08:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3856-3', 'hist-ticket-152-3856', 'prod-latte', 1, 15000, 0, '2026-03-31T18:08:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3856-4', 'hist-ticket-152-3856', 'prod-americano', 1, 12000, 0, '2026-03-31T18:08:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3856', 'hist-ticket-152-3856', 'cash', 58500, 'completed', '2026-03-31T18:08:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3857', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-03-31T15:58:28.000Z', '2026-03-31T15:58:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3857-1', 'hist-ticket-152-3857', 'prod-mocha', 1, 16500, 0, '2026-03-31T15:58:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3857-2', 'hist-ticket-152-3857', 'prod-mocha', 1, 16500, 0, '2026-03-31T15:58:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3857-3', 'hist-ticket-152-3857', 'prod-mocha', 1, 16500, 0, '2026-03-31T15:58:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3857', 'hist-ticket-152-3857', 'cash', 49500, 'completed', '2026-03-31T15:58:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3858', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-31T09:34:41.000Z', '2026-03-31T09:34:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3858-1', 'hist-ticket-152-3858', 'prod-mocha', 1, 16500, 0, '2026-03-31T09:34:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3858-2', 'hist-ticket-152-3858', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T09:34:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3858', 'hist-ticket-152-3858', 'cash', 31000, 'completed', '2026-03-31T09:34:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3859', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-03-31T09:58:57.000Z', '2026-03-31T09:58:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3859-1', 'hist-ticket-152-3859', 'prod-americano', 1, 12000, 0, '2026-03-31T09:58:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3859-2', 'hist-ticket-152-3859', 'prod-latte', 1, 15000, 0, '2026-03-31T09:58:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3859-3', 'hist-ticket-152-3859', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T09:58:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3859-4', 'hist-ticket-152-3859', 'prod-mocha', 1, 16500, 0, '2026-03-31T09:58:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3859', 'hist-ticket-152-3859', 'cash', 58000, 'completed', '2026-03-31T09:58:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3860', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-31T09:25:36.000Z', '2026-03-31T09:25:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3860-1', 'hist-ticket-152-3860', 'prod-mocha', 1, 16500, 0, '2026-03-31T09:25:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3860-2', 'hist-ticket-152-3860', 'prod-latte', 1, 15000, 0, '2026-03-31T09:25:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3860-3', 'hist-ticket-152-3860', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T09:25:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3860', 'hist-ticket-152-3860', 'cash', 46000, 'completed', '2026-03-31T09:25:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3861', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-31T13:13:16.000Z', '2026-03-31T13:13:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3861-1', 'hist-ticket-152-3861', 'prod-mocha', 1, 16500, 0, '2026-03-31T13:13:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3861-2', 'hist-ticket-152-3861', 'prod-mocha', 1, 16500, 0, '2026-03-31T13:13:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3861-3', 'hist-ticket-152-3861', 'prod-americano', 1, 12000, 0, '2026-03-31T13:13:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3861', 'hist-ticket-152-3861', 'cash', 45000, 'completed', '2026-03-31T13:13:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3862', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-03-31T11:31:55.000Z', '2026-03-31T11:31:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3862-1', 'hist-ticket-152-3862', 'prod-americano', 1, 12000, 0, '2026-03-31T11:31:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3862-2', 'hist-ticket-152-3862', 'prod-mocha', 1, 16500, 0, '2026-03-31T11:31:55.000Z');