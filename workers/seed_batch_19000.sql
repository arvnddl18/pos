INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4197', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T14:11:20.000Z', '2026-04-12T14:11:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4197-1', 'hist-ticket-164-4197', 'prod-latte', 1, 15000, 0, '2026-04-12T14:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4197-2', 'hist-ticket-164-4197', 'prod-americano', 1, 12000, 0, '2026-04-12T14:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4197-3', 'hist-ticket-164-4197', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T14:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4197-4', 'hist-ticket-164-4197', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T14:11:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4197', 'hist-ticket-164-4197', 'cash', 56000, 'completed', '2026-04-12T14:11:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4198', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-12T08:25:08.000Z', '2026-04-12T08:25:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4198-1', 'hist-ticket-164-4198', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4198-2', 'hist-ticket-164-4198', 'prod-latte', 1, 15000, 0, '2026-04-12T08:25:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4198-3', 'hist-ticket-164-4198', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:25:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4198', 'hist-ticket-164-4198', 'cash', 48000, 'completed', '2026-04-12T08:25:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4199', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-12T18:56:54.000Z', '2026-04-12T18:56:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4199-1', 'hist-ticket-164-4199', 'prod-mocha', 1, 16500, 0, '2026-04-12T18:56:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4199-2', 'hist-ticket-164-4199', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T18:56:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4199', 'hist-ticket-164-4199', 'cash', 31000, 'completed', '2026-04-12T18:56:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4200', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-12T09:11:20.000Z', '2026-04-12T09:11:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4200-1', 'hist-ticket-164-4200', 'prod-mocha', 1, 16500, 0, '2026-04-12T09:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4200-2', 'hist-ticket-164-4200', 'prod-americano', 1, 12000, 0, '2026-04-12T09:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4200-3', 'hist-ticket-164-4200', 'prod-latte', 1, 15000, 0, '2026-04-12T09:11:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4200-4', 'hist-ticket-164-4200', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:11:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4200', 'hist-ticket-164-4200', 'cash', 58000, 'completed', '2026-04-12T09:11:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4201', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-12T17:32:01.000Z', '2026-04-12T17:32:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4201-1', 'hist-ticket-164-4201', 'prod-americano', 1, 12000, 0, '2026-04-12T17:32:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4201-2', 'hist-ticket-164-4201', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T17:32:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4201-3', 'hist-ticket-164-4201', 'prod-americano', 1, 12000, 0, '2026-04-12T17:32:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4201-4', 'hist-ticket-164-4201', 'prod-latte', 1, 15000, 0, '2026-04-12T17:32:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4201', 'hist-ticket-164-4201', 'cash', 53500, 'completed', '2026-04-12T17:32:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4202', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-12T13:14:46.000Z', '2026-04-12T13:14:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4202-1', 'hist-ticket-164-4202', 'prod-mocha', 1, 16500, 0, '2026-04-12T13:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4202-2', 'hist-ticket-164-4202', 'prod-mocha', 1, 16500, 0, '2026-04-12T13:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4202-3', 'hist-ticket-164-4202', 'prod-americano', 1, 12000, 0, '2026-04-12T13:14:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4202', 'hist-ticket-164-4202', 'cash', 45000, 'completed', '2026-04-12T13:14:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4203', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-04-12T11:46:50.000Z', '2026-04-12T11:46:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4203-1', 'hist-ticket-164-4203', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T11:46:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4203-2', 'hist-ticket-164-4203', 'prod-americano', 1, 12000, 0, '2026-04-12T11:46:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4203-3', 'hist-ticket-164-4203', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T11:46:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4203', 'hist-ticket-164-4203', 'cash', 41000, 'completed', '2026-04-12T11:46:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4204', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T10:43:24.000Z', '2026-04-12T10:43:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4204-1', 'hist-ticket-164-4204', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4204-2', 'hist-ticket-164-4204', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4204-3', 'hist-ticket-164-4204', 'prod-mocha', 1, 16500, 0, '2026-04-12T10:43:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4204', 'hist-ticket-164-4204', 'cash', 45500, 'completed', '2026-04-12T10:43:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4205', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-12T11:14:46.000Z', '2026-04-12T11:14:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4205-1', 'hist-ticket-164-4205', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T11:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4205-2', 'hist-ticket-164-4205', 'prod-americano', 1, 12000, 0, '2026-04-12T11:14:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4205-3', 'hist-ticket-164-4205', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T11:14:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4205', 'hist-ticket-164-4205', 'cash', 41000, 'completed', '2026-04-12T11:14:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4206', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-12T10:10:32.000Z', '2026-04-12T10:10:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4206-1', 'hist-ticket-164-4206', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:10:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4206', 'hist-ticket-164-4206', 'cash', 14500, 'completed', '2026-04-12T10:10:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4207', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-12T19:11:16.000Z', '2026-04-12T19:11:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4207-1', 'hist-ticket-164-4207', 'prod-latte', 1, 15000, 0, '2026-04-12T19:11:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4207-2', 'hist-ticket-164-4207', 'prod-americano', 1, 12000, 0, '2026-04-12T19:11:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4207-3', 'hist-ticket-164-4207', 'prod-americano', 1, 12000, 0, '2026-04-12T19:11:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4207-4', 'hist-ticket-164-4207', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T19:11:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4207', 'hist-ticket-164-4207', 'cash', 53500, 'completed', '2026-04-12T19:11:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4208', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-12T16:51:26.000Z', '2026-04-12T16:51:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4208-1', 'hist-ticket-164-4208', 'prod-latte', 1, 15000, 0, '2026-04-12T16:51:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4208', 'hist-ticket-164-4208', 'cash', 15000, 'completed', '2026-04-12T16:51:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4209', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-12T09:25:42.000Z', '2026-04-12T09:25:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4209-1', 'hist-ticket-164-4209', 'prod-latte', 1, 15000, 0, '2026-04-12T09:25:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4209-2', 'hist-ticket-164-4209', 'prod-americano', 1, 12000, 0, '2026-04-12T09:25:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4209', 'hist-ticket-164-4209', 'cash', 27000, 'completed', '2026-04-12T09:25:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4210', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-12T17:56:12.000Z', '2026-04-12T17:56:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4210-1', 'hist-ticket-164-4210', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T17:56:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4210', 'hist-ticket-164-4210', 'cash', 14500, 'completed', '2026-04-12T17:56:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4211', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T16:04:28.000Z', '2026-04-12T16:04:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4211-1', 'hist-ticket-164-4211', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4211-2', 'hist-ticket-164-4211', 'prod-mocha', 1, 16500, 0, '2026-04-12T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4211-3', 'hist-ticket-164-4211', 'prod-latte', 1, 15000, 0, '2026-04-12T16:04:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4211-4', 'hist-ticket-164-4211', 'prod-latte', 1, 15000, 0, '2026-04-12T16:04:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4211', 'hist-ticket-164-4211', 'cash', 61000, 'completed', '2026-04-12T16:04:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4212', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-12T15:28:36.000Z', '2026-04-12T15:28:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4212-1', 'hist-ticket-164-4212', 'prod-mocha', 1, 16500, 0, '2026-04-12T15:28:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4212-2', 'hist-ticket-164-4212', 'prod-americano', 1, 12000, 0, '2026-04-12T15:28:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4212-3', 'hist-ticket-164-4212', 'prod-mocha', 1, 16500, 0, '2026-04-12T15:28:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4212-4', 'hist-ticket-164-4212', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:28:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4212', 'hist-ticket-164-4212', 'cash', 59500, 'completed', '2026-04-12T15:28:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4213', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T19:41:43.000Z', '2026-04-12T19:41:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4213-1', 'hist-ticket-164-4213', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T19:41:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4213-2', 'hist-ticket-164-4213', 'prod-americano', 1, 12000, 0, '2026-04-12T19:41:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4213-3', 'hist-ticket-164-4213', 'prod-mocha', 1, 16500, 0, '2026-04-12T19:41:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4213', 'hist-ticket-164-4213', 'cash', 43000, 'completed', '2026-04-12T19:41:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4214', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-12T16:18:36.000Z', '2026-04-12T16:18:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4214-1', 'hist-ticket-164-4214', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T16:18:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4214-2', 'hist-ticket-164-4214', 'prod-americano', 1, 12000, 0, '2026-04-12T16:18:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4214', 'hist-ticket-164-4214', 'cash', 26500, 'completed', '2026-04-12T16:18:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4215', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-04-12T15:11:04.000Z', '2026-04-12T15:11:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4215-1', 'hist-ticket-164-4215', 'prod-americano', 1, 12000, 0, '2026-04-12T15:11:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4215-2', 'hist-ticket-164-4215', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:11:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4215', 'hist-ticket-164-4215', 'cash', 26500, 'completed', '2026-04-12T15:11:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4216', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T17:14:40.000Z', '2026-04-12T17:14:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4216-1', 'hist-ticket-164-4216', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T17:14:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4216-2', 'hist-ticket-164-4216', 'prod-americano', 1, 12000, 0, '2026-04-12T17:14:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4216', 'hist-ticket-164-4216', 'cash', 26500, 'completed', '2026-04-12T17:14:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4217', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-12T09:31:48.000Z', '2026-04-12T09:31:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4217-1', 'hist-ticket-164-4217', 'prod-mocha', 1, 16500, 0, '2026-04-12T09:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4217-2', 'hist-ticket-164-4217', 'prod-mocha', 1, 16500, 0, '2026-04-12T09:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4217-3', 'hist-ticket-164-4217', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4217-4', 'hist-ticket-164-4217', 'prod-americano', 1, 12000, 0, '2026-04-12T09:31:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4217', 'hist-ticket-164-4217', 'cash', 59500, 'completed', '2026-04-12T09:31:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4218', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-13T14:20:08.000Z', '2026-04-13T14:20:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4218-1', 'hist-ticket-165-4218', 'prod-mocha', 1, 16500, 0, '2026-04-13T14:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4218-2', 'hist-ticket-165-4218', 'prod-americano', 1, 12000, 0, '2026-04-13T14:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4218-3', 'hist-ticket-165-4218', 'prod-americano', 1, 12000, 0, '2026-04-13T14:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4218-4', 'hist-ticket-165-4218', 'prod-latte', 1, 15000, 0, '2026-04-13T14:20:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4218', 'hist-ticket-165-4218', 'cash', 55500, 'completed', '2026-04-13T14:20:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4219', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-13T13:20:52.000Z', '2026-04-13T13:20:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4219-1', 'hist-ticket-165-4219', 'prod-latte', 1, 15000, 0, '2026-04-13T13:20:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4219-2', 'hist-ticket-165-4219', 'prod-latte', 1, 15000, 0, '2026-04-13T13:20:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4219', 'hist-ticket-165-4219', 'cash', 30000, 'completed', '2026-04-13T13:20:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4220', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-13T13:18:27.000Z', '2026-04-13T13:18:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4220-1', 'hist-ticket-165-4220', 'prod-mocha', 1, 16500, 0, '2026-04-13T13:18:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4220-2', 'hist-ticket-165-4220', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:18:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4220', 'hist-ticket-165-4220', 'cash', 31000, 'completed', '2026-04-13T13:18:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4221', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-13T12:34:59.000Z', '2026-04-13T12:34:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4221-1', 'hist-ticket-165-4221', 'prod-mocha', 1, 16500, 0, '2026-04-13T12:34:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4221-2', 'hist-ticket-165-4221', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T12:34:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4221-3', 'hist-ticket-165-4221', 'prod-mocha', 1, 16500, 0, '2026-04-13T12:34:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4221-4', 'hist-ticket-165-4221', 'prod-latte', 1, 15000, 0, '2026-04-13T12:34:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4221', 'hist-ticket-165-4221', 'cash', 62500, 'completed', '2026-04-13T12:34:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4222', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-13T12:50:20.000Z', '2026-04-13T12:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4222-1', 'hist-ticket-165-4222', 'prod-americano', 1, 12000, 0, '2026-04-13T12:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4222-2', 'hist-ticket-165-4222', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T12:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4222-3', 'hist-ticket-165-4222', 'prod-mocha', 1, 16500, 0, '2026-04-13T12:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4222-4', 'hist-ticket-165-4222', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T12:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4222', 'hist-ticket-165-4222', 'cash', 57500, 'completed', '2026-04-13T12:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4223', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-04-13T13:38:20.000Z', '2026-04-13T13:38:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4223-1', 'hist-ticket-165-4223', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:38:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4223-2', 'hist-ticket-165-4223', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:38:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4223-3', 'hist-ticket-165-4223', 'prod-americano', 1, 12000, 0, '2026-04-13T13:38:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4223-4', 'hist-ticket-165-4223', 'prod-mocha', 1, 16500, 0, '2026-04-13T13:38:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4223', 'hist-ticket-165-4223', 'cash', 57500, 'completed', '2026-04-13T13:38:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4224', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-13T18:20:19.000Z', '2026-04-13T18:20:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4224-1', 'hist-ticket-165-4224', 'prod-americano', 1, 12000, 0, '2026-04-13T18:20:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4224-2', 'hist-ticket-165-4224', 'prod-mocha', 1, 16500, 0, '2026-04-13T18:20:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4224-3', 'hist-ticket-165-4224', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T18:20:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4224-4', 'hist-ticket-165-4224', 'prod-mocha', 1, 16500, 0, '2026-04-13T18:20:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4224', 'hist-ticket-165-4224', 'cash', 59500, 'completed', '2026-04-13T18:20:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4225', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-13T10:44:41.000Z', '2026-04-13T10:44:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4225-1', 'hist-ticket-165-4225', 'prod-americano', 1, 12000, 0, '2026-04-13T10:44:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4225-2', 'hist-ticket-165-4225', 'prod-latte', 1, 15000, 0, '2026-04-13T10:44:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4225', 'hist-ticket-165-4225', 'cash', 27000, 'completed', '2026-04-13T10:44:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4226', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-04-13T18:19:24.000Z', '2026-04-13T18:19:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4226-1', 'hist-ticket-165-4226', 'prod-mocha', 1, 16500, 0, '2026-04-13T18:19:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4226', 'hist-ticket-165-4226', 'cash', 16500, 'completed', '2026-04-13T18:19:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4227', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-04-13T10:56:06.000Z', '2026-04-13T10:56:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4227-1', 'hist-ticket-165-4227', 'prod-mocha', 1, 16500, 0, '2026-04-13T10:56:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4227-2', 'hist-ticket-165-4227', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T10:56:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4227-3', 'hist-ticket-165-4227', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T10:56:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4227', 'hist-ticket-165-4227', 'cash', 45500, 'completed', '2026-04-13T10:56:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4228', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-04-13T11:42:38.000Z', '2026-04-13T11:42:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4228-1', 'hist-ticket-165-4228', 'prod-mocha', 1, 16500, 0, '2026-04-13T11:42:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4228-2', 'hist-ticket-165-4228', 'prod-mocha', 1, 16500, 0, '2026-04-13T11:42:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4228', 'hist-ticket-165-4228', 'cash', 33000, 'completed', '2026-04-13T11:42:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4229', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-13T14:13:06.000Z', '2026-04-13T14:13:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4229-1', 'hist-ticket-165-4229', 'prod-mocha', 1, 16500, 0, '2026-04-13T14:13:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4229-2', 'hist-ticket-165-4229', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T14:13:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4229-3', 'hist-ticket-165-4229', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T14:13:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4229', 'hist-ticket-165-4229', 'cash', 45500, 'completed', '2026-04-13T14:13:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4230', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-13T10:16:11.000Z', '2026-04-13T10:16:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4230-1', 'hist-ticket-165-4230', 'prod-latte', 1, 15000, 0, '2026-04-13T10:16:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4230', 'hist-ticket-165-4230', 'cash', 15000, 'completed', '2026-04-13T10:16:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4231', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-13T17:42:55.000Z', '2026-04-13T17:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4231-1', 'hist-ticket-165-4231', 'prod-mocha', 1, 16500, 0, '2026-04-13T17:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4231-2', 'hist-ticket-165-4231', 'prod-latte', 1, 15000, 0, '2026-04-13T17:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4231-3', 'hist-ticket-165-4231', 'prod-mocha', 1, 16500, 0, '2026-04-13T17:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4231-4', 'hist-ticket-165-4231', 'prod-latte', 1, 15000, 0, '2026-04-13T17:42:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4231', 'hist-ticket-165-4231', 'cash', 63000, 'completed', '2026-04-13T17:42:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4232', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-04-13T09:56:21.000Z', '2026-04-13T09:56:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4232-1', 'hist-ticket-165-4232', 'prod-mocha', 1, 16500, 0, '2026-04-13T09:56:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4232-2', 'hist-ticket-165-4232', 'prod-latte', 1, 15000, 0, '2026-04-13T09:56:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4232-3', 'hist-ticket-165-4232', 'prod-latte', 1, 15000, 0, '2026-04-13T09:56:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4232', 'hist-ticket-165-4232', 'cash', 46500, 'completed', '2026-04-13T09:56:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4233', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-13T08:08:25.000Z', '2026-04-13T08:08:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4233-1', 'hist-ticket-165-4233', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T08:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4233-2', 'hist-ticket-165-4233', 'prod-mocha', 1, 16500, 0, '2026-04-13T08:08:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4233', 'hist-ticket-165-4233', 'cash', 31000, 'completed', '2026-04-13T08:08:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4234', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-13T14:47:52.000Z', '2026-04-13T14:47:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4234-1', 'hist-ticket-165-4234', 'prod-americano', 1, 12000, 0, '2026-04-13T14:47:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4234', 'hist-ticket-165-4234', 'cash', 12000, 'completed', '2026-04-13T14:47:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4235', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-13T15:06:39.000Z', '2026-04-13T15:06:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4235-1', 'hist-ticket-165-4235', 'prod-americano', 1, 12000, 0, '2026-04-13T15:06:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4235-2', 'hist-ticket-165-4235', 'prod-latte', 1, 15000, 0, '2026-04-13T15:06:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4235', 'hist-ticket-165-4235', 'cash', 27000, 'completed', '2026-04-13T15:06:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4236', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-13T17:54:54.000Z', '2026-04-13T17:54:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4236-1', 'hist-ticket-165-4236', 'prod-americano', 1, 12000, 0, '2026-04-13T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4236-2', 'hist-ticket-165-4236', 'prod-americano', 1, 12000, 0, '2026-04-13T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4236-3', 'hist-ticket-165-4236', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4236-4', 'hist-ticket-165-4236', 'prod-americano', 1, 12000, 0, '2026-04-13T17:54:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4236', 'hist-ticket-165-4236', 'cash', 50500, 'completed', '2026-04-13T17:54:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4237', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-04-13T19:21:59.000Z', '2026-04-13T19:21:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4237-1', 'hist-ticket-165-4237', 'prod-latte', 1, 15000, 0, '2026-04-13T19:21:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4237-2', 'hist-ticket-165-4237', 'prod-mocha', 1, 16500, 0, '2026-04-13T19:21:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4237', 'hist-ticket-165-4237', 'cash', 31500, 'completed', '2026-04-13T19:21:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4238', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-13T13:14:53.000Z', '2026-04-13T13:14:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4238-1', 'hist-ticket-165-4238', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:14:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4238-2', 'hist-ticket-165-4238', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:14:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4238-3', 'hist-ticket-165-4238', 'prod-americano', 1, 12000, 0, '2026-04-13T13:14:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4238', 'hist-ticket-165-4238', 'cash', 41000, 'completed', '2026-04-13T13:14:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4239', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-13T08:24:39.000Z', '2026-04-13T08:24:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4239-1', 'hist-ticket-165-4239', 'prod-americano', 1, 12000, 0, '2026-04-13T08:24:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4239-2', 'hist-ticket-165-4239', 'prod-americano', 1, 12000, 0, '2026-04-13T08:24:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4239', 'hist-ticket-165-4239', 'cash', 24000, 'completed', '2026-04-13T08:24:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4240', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-13T08:54:03.000Z', '2026-04-13T08:54:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4240-1', 'hist-ticket-165-4240', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T08:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4240-2', 'hist-ticket-165-4240', 'prod-latte', 1, 15000, 0, '2026-04-13T08:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4240-3', 'hist-ticket-165-4240', 'prod-latte', 1, 15000, 0, '2026-04-13T08:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4240-4', 'hist-ticket-165-4240', 'prod-americano', 1, 12000, 0, '2026-04-13T08:54:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4240', 'hist-ticket-165-4240', 'cash', 56500, 'completed', '2026-04-13T08:54:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4241', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-13T09:28:15.000Z', '2026-04-13T09:28:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4241-1', 'hist-ticket-165-4241', 'prod-mocha', 1, 16500, 0, '2026-04-13T09:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4241-2', 'hist-ticket-165-4241', 'prod-americano', 1, 12000, 0, '2026-04-13T09:28:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4241-3', 'hist-ticket-165-4241', 'prod-latte', 1, 15000, 0, '2026-04-13T09:28:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4241', 'hist-ticket-165-4241', 'cash', 43500, 'completed', '2026-04-13T09:28:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4242', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-13T11:33:12.000Z', '2026-04-13T11:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4242-1', 'hist-ticket-165-4242', 'prod-mocha', 1, 16500, 0, '2026-04-13T11:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4242-2', 'hist-ticket-165-4242', 'prod-mocha', 1, 16500, 0, '2026-04-13T11:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4242-3', 'hist-ticket-165-4242', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T11:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4242', 'hist-ticket-165-4242', 'cash', 47500, 'completed', '2026-04-13T11:33:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4243', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-13T09:23:43.000Z', '2026-04-13T09:23:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4243-1', 'hist-ticket-165-4243', 'prod-americano', 1, 12000, 0, '2026-04-13T09:23:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4243-2', 'hist-ticket-165-4243', 'prod-americano', 1, 12000, 0, '2026-04-13T09:23:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4243', 'hist-ticket-165-4243', 'cash', 24000, 'completed', '2026-04-13T09:23:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4244', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-13T16:39:16.000Z', '2026-04-13T16:39:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4244-1', 'hist-ticket-165-4244', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T16:39:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4244', 'hist-ticket-165-4244', 'cash', 14500, 'completed', '2026-04-13T16:39:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-165-4245', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-13T13:36:12.000Z', '2026-04-13T13:36:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4245-1', 'hist-ticket-165-4245', 'prod-mocha', 1, 16500, 0, '2026-04-13T13:36:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4245-2', 'hist-ticket-165-4245', 'prod-latte', 1, 15000, 0, '2026-04-13T13:36:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4245-3', 'hist-ticket-165-4245', 'prod-americano', 1, 12000, 0, '2026-04-13T13:36:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-165-4245-4', 'hist-ticket-165-4245', 'prod-cappuccino', 1, 14500, 0, '2026-04-13T13:36:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-165-4245', 'hist-ticket-165-4245', 'cash', 58000, 'completed', '2026-04-13T13:36:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4246', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-14T13:25:42.000Z', '2026-04-14T13:25:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4246-1', 'hist-ticket-166-4246', 'prod-mocha', 1, 16500, 0, '2026-04-14T13:25:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4246', 'hist-ticket-166-4246', 'cash', 16500, 'completed', '2026-04-14T13:25:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4247', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-14T14:46:41.000Z', '2026-04-14T14:46:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4247-1', 'hist-ticket-166-4247', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T14:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4247-2', 'hist-ticket-166-4247', 'prod-americano', 1, 12000, 0, '2026-04-14T14:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4247-3', 'hist-ticket-166-4247', 'prod-americano', 1, 12000, 0, '2026-04-14T14:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4247-4', 'hist-ticket-166-4247', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T14:46:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4247', 'hist-ticket-166-4247', 'cash', 53000, 'completed', '2026-04-14T14:46:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4248', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-14T11:32:57.000Z', '2026-04-14T11:32:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4248-1', 'hist-ticket-166-4248', 'prod-mocha', 1, 16500, 0, '2026-04-14T11:32:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4248', 'hist-ticket-166-4248', 'cash', 16500, 'completed', '2026-04-14T11:32:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4249', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-14T12:21:46.000Z', '2026-04-14T12:21:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4249-1', 'hist-ticket-166-4249', 'prod-americano', 1, 12000, 0, '2026-04-14T12:21:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4249-2', 'hist-ticket-166-4249', 'prod-americano', 1, 12000, 0, '2026-04-14T12:21:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4249', 'hist-ticket-166-4249', 'cash', 24000, 'completed', '2026-04-14T12:21:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4250', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-14T15:19:43.000Z', '2026-04-14T15:19:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4250-1', 'hist-ticket-166-4250', 'prod-latte', 1, 15000, 0, '2026-04-14T15:19:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4250-2', 'hist-ticket-166-4250', 'prod-mocha', 1, 16500, 0, '2026-04-14T15:19:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4250', 'hist-ticket-166-4250', 'cash', 31500, 'completed', '2026-04-14T15:19:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4251', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-04-14T17:13:52.000Z', '2026-04-14T17:13:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4251-1', 'hist-ticket-166-4251', 'prod-mocha', 1, 16500, 0, '2026-04-14T17:13:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4251-2', 'hist-ticket-166-4251', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T17:13:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4251-3', 'hist-ticket-166-4251', 'prod-latte', 1, 15000, 0, '2026-04-14T17:13:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4251-4', 'hist-ticket-166-4251', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T17:13:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4251', 'hist-ticket-166-4251', 'cash', 60500, 'completed', '2026-04-14T17:13:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4252', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-14T18:09:31.000Z', '2026-04-14T18:09:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4252-1', 'hist-ticket-166-4252', 'prod-mocha', 1, 16500, 0, '2026-04-14T18:09:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4252', 'hist-ticket-166-4252', 'cash', 16500, 'completed', '2026-04-14T18:09:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4253', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-14T14:42:00.000Z', '2026-04-14T14:42:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4253-1', 'hist-ticket-166-4253', 'prod-mocha', 1, 16500, 0, '2026-04-14T14:42:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4253-2', 'hist-ticket-166-4253', 'prod-americano', 1, 12000, 0, '2026-04-14T14:42:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4253-3', 'hist-ticket-166-4253', 'prod-latte', 1, 15000, 0, '2026-04-14T14:42:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4253', 'hist-ticket-166-4253', 'cash', 43500, 'completed', '2026-04-14T14:42:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4254', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-14T09:56:09.000Z', '2026-04-14T09:56:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4254-1', 'hist-ticket-166-4254', 'prod-latte', 1, 15000, 0, '2026-04-14T09:56:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4254-2', 'hist-ticket-166-4254', 'prod-mocha', 1, 16500, 0, '2026-04-14T09:56:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4254-3', 'hist-ticket-166-4254', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:56:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4254-4', 'hist-ticket-166-4254', 'prod-americano', 1, 12000, 0, '2026-04-14T09:56:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4254', 'hist-ticket-166-4254', 'cash', 58000, 'completed', '2026-04-14T09:56:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4255', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-14T19:23:52.000Z', '2026-04-14T19:23:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4255-1', 'hist-ticket-166-4255', 'prod-latte', 1, 15000, 0, '2026-04-14T19:23:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4255', 'hist-ticket-166-4255', 'cash', 15000, 'completed', '2026-04-14T19:23:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4256', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-14T08:43:11.000Z', '2026-04-14T08:43:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4256-1', 'hist-ticket-166-4256', 'prod-americano', 1, 12000, 0, '2026-04-14T08:43:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4256-2', 'hist-ticket-166-4256', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:43:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4256-3', 'hist-ticket-166-4256', 'prod-americano', 1, 12000, 0, '2026-04-14T08:43:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4256-4', 'hist-ticket-166-4256', 'prod-latte', 1, 15000, 0, '2026-04-14T08:43:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4256', 'hist-ticket-166-4256', 'cash', 55500, 'completed', '2026-04-14T08:43:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4257', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-14T08:59:24.000Z', '2026-04-14T08:59:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4257-1', 'hist-ticket-166-4257', 'prod-mocha', 1, 16500, 0, '2026-04-14T08:59:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4257-2', 'hist-ticket-166-4257', 'prod-latte', 1, 15000, 0, '2026-04-14T08:59:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4257-3', 'hist-ticket-166-4257', 'prod-latte', 1, 15000, 0, '2026-04-14T08:59:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4257', 'hist-ticket-166-4257', 'cash', 46500, 'completed', '2026-04-14T08:59:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4258', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-14T11:49:49.000Z', '2026-04-14T11:49:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4258-1', 'hist-ticket-166-4258', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T11:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4258-2', 'hist-ticket-166-4258', 'prod-mocha', 1, 16500, 0, '2026-04-14T11:49:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4258-3', 'hist-ticket-166-4258', 'prod-latte', 1, 15000, 0, '2026-04-14T11:49:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4258', 'hist-ticket-166-4258', 'cash', 46000, 'completed', '2026-04-14T11:49:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4259', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-14T14:11:13.000Z', '2026-04-14T14:11:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4259-1', 'hist-ticket-166-4259', 'prod-mocha', 1, 16500, 0, '2026-04-14T14:11:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4259', 'hist-ticket-166-4259', 'cash', 16500, 'completed', '2026-04-14T14:11:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4260', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-14T09:47:17.000Z', '2026-04-14T09:47:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4260-1', 'hist-ticket-166-4260', 'prod-americano', 1, 12000, 0, '2026-04-14T09:47:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4260-2', 'hist-ticket-166-4260', 'prod-mocha', 1, 16500, 0, '2026-04-14T09:47:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4260-3', 'hist-ticket-166-4260', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:47:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4260-4', 'hist-ticket-166-4260', 'prod-americano', 1, 12000, 0, '2026-04-14T09:47:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4260', 'hist-ticket-166-4260', 'cash', 55000, 'completed', '2026-04-14T09:47:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4261', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-14T15:56:17.000Z', '2026-04-14T15:56:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4261-1', 'hist-ticket-166-4261', 'prod-americano', 1, 12000, 0, '2026-04-14T15:56:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4261-2', 'hist-ticket-166-4261', 'prod-mocha', 1, 16500, 0, '2026-04-14T15:56:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4261-3', 'hist-ticket-166-4261', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T15:56:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4261-4', 'hist-ticket-166-4261', 'prod-americano', 1, 12000, 0, '2026-04-14T15:56:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4261', 'hist-ticket-166-4261', 'cash', 55000, 'completed', '2026-04-14T15:56:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4262', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-14T19:58:33.000Z', '2026-04-14T19:58:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4262-1', 'hist-ticket-166-4262', 'prod-latte', 1, 15000, 0, '2026-04-14T19:58:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4262', 'hist-ticket-166-4262', 'cash', 15000, 'completed', '2026-04-14T19:58:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4263', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-14T10:35:22.000Z', '2026-04-14T10:35:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4263-1', 'hist-ticket-166-4263', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T10:35:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4263-2', 'hist-ticket-166-4263', 'prod-latte', 1, 15000, 0, '2026-04-14T10:35:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4263', 'hist-ticket-166-4263', 'cash', 29500, 'completed', '2026-04-14T10:35:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4264', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-14T09:55:05.000Z', '2026-04-14T09:55:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4264-1', 'hist-ticket-166-4264', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:55:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4264-2', 'hist-ticket-166-4264', 'prod-latte', 1, 15000, 0, '2026-04-14T09:55:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4264-3', 'hist-ticket-166-4264', 'prod-mocha', 1, 16500, 0, '2026-04-14T09:55:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4264', 'hist-ticket-166-4264', 'cash', 46000, 'completed', '2026-04-14T09:55:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4265', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-14T13:15:24.000Z', '2026-04-14T13:15:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4265-1', 'hist-ticket-166-4265', 'prod-americano', 1, 12000, 0, '2026-04-14T13:15:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4265', 'hist-ticket-166-4265', 'cash', 12000, 'completed', '2026-04-14T13:15:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4266', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-14T18:21:14.000Z', '2026-04-14T18:21:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4266-1', 'hist-ticket-166-4266', 'prod-latte', 1, 15000, 0, '2026-04-14T18:21:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4266-2', 'hist-ticket-166-4266', 'prod-mocha', 1, 16500, 0, '2026-04-14T18:21:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4266-3', 'hist-ticket-166-4266', 'prod-latte', 1, 15000, 0, '2026-04-14T18:21:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4266', 'hist-ticket-166-4266', 'cash', 46500, 'completed', '2026-04-14T18:21:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4267', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-14T09:45:09.000Z', '2026-04-14T09:45:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4267-1', 'hist-ticket-166-4267', 'prod-americano', 1, 12000, 0, '2026-04-14T09:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4267-2', 'hist-ticket-166-4267', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T09:45:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4267-3', 'hist-ticket-166-4267', 'prod-latte', 1, 15000, 0, '2026-04-14T09:45:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4267', 'hist-ticket-166-4267', 'cash', 41500, 'completed', '2026-04-14T09:45:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4268', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-14T11:39:02.000Z', '2026-04-14T11:39:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4268-1', 'hist-ticket-166-4268', 'prod-mocha', 1, 16500, 0, '2026-04-14T11:39:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4268-2', 'hist-ticket-166-4268', 'prod-mocha', 1, 16500, 0, '2026-04-14T11:39:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4268-3', 'hist-ticket-166-4268', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T11:39:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4268-4', 'hist-ticket-166-4268', 'prod-cappuccino', 1, 14500, 0, '2026-04-14T11:39:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4268', 'hist-ticket-166-4268', 'cash', 62000, 'completed', '2026-04-14T11:39:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-166-4269', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-14T18:52:37.000Z', '2026-04-14T18:52:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4269-1', 'hist-ticket-166-4269', 'prod-americano', 1, 12000, 0, '2026-04-14T18:52:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4269-2', 'hist-ticket-166-4269', 'prod-latte', 1, 15000, 0, '2026-04-14T18:52:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-166-4269-3', 'hist-ticket-166-4269', 'prod-mocha', 1, 16500, 0, '2026-04-14T18:52:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-166-4269', 'hist-ticket-166-4269', 'cash', 43500, 'completed', '2026-04-14T18:52:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4270', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-15T19:29:32.000Z', '2026-04-15T19:29:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4270-1', 'hist-ticket-167-4270', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T19:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4270-2', 'hist-ticket-167-4270', 'prod-latte', 1, 15000, 0, '2026-04-15T19:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4270-3', 'hist-ticket-167-4270', 'prod-mocha', 1, 16500, 0, '2026-04-15T19:29:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4270-4', 'hist-ticket-167-4270', 'prod-americano', 1, 12000, 0, '2026-04-15T19:29:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4270', 'hist-ticket-167-4270', 'cash', 58000, 'completed', '2026-04-15T19:29:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4271', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-15T12:32:42.000Z', '2026-04-15T12:32:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4271-1', 'hist-ticket-167-4271', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T12:32:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4271-2', 'hist-ticket-167-4271', 'prod-latte', 1, 15000, 0, '2026-04-15T12:32:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4271-3', 'hist-ticket-167-4271', 'prod-mocha', 1, 16500, 0, '2026-04-15T12:32:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4271-4', 'hist-ticket-167-4271', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T12:32:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4271', 'hist-ticket-167-4271', 'cash', 60500, 'completed', '2026-04-15T12:32:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4272', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-15T12:02:33.000Z', '2026-04-15T12:02:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4272-1', 'hist-ticket-167-4272', 'prod-mocha', 1, 16500, 0, '2026-04-15T12:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4272-2', 'hist-ticket-167-4272', 'prod-mocha', 1, 16500, 0, '2026-04-15T12:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4272-3', 'hist-ticket-167-4272', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T12:02:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4272-4', 'hist-ticket-167-4272', 'prod-latte', 1, 15000, 0, '2026-04-15T12:02:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4272', 'hist-ticket-167-4272', 'cash', 62500, 'completed', '2026-04-15T12:02:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4273', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-15T14:29:50.000Z', '2026-04-15T14:29:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4273-1', 'hist-ticket-167-4273', 'prod-mocha', 1, 16500, 0, '2026-04-15T14:29:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4273-2', 'hist-ticket-167-4273', 'prod-mocha', 1, 16500, 0, '2026-04-15T14:29:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4273', 'hist-ticket-167-4273', 'cash', 33000, 'completed', '2026-04-15T14:29:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4274', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-15T13:00:50.000Z', '2026-04-15T13:00:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4274-1', 'hist-ticket-167-4274', 'prod-latte', 1, 15000, 0, '2026-04-15T13:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4274-2', 'hist-ticket-167-4274', 'prod-mocha', 1, 16500, 0, '2026-04-15T13:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4274-3', 'hist-ticket-167-4274', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T13:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4274-4', 'hist-ticket-167-4274', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T13:00:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4274', 'hist-ticket-167-4274', 'cash', 60500, 'completed', '2026-04-15T13:00:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4275', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-15T12:53:41.000Z', '2026-04-15T12:53:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4275-1', 'hist-ticket-167-4275', 'prod-mocha', 1, 16500, 0, '2026-04-15T12:53:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4275-2', 'hist-ticket-167-4275', 'prod-americano', 1, 12000, 0, '2026-04-15T12:53:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4275', 'hist-ticket-167-4275', 'cash', 28500, 'completed', '2026-04-15T12:53:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4276', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-15T17:09:43.000Z', '2026-04-15T17:09:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4276-1', 'hist-ticket-167-4276', 'prod-americano', 1, 12000, 0, '2026-04-15T17:09:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4276-2', 'hist-ticket-167-4276', 'prod-mocha', 1, 16500, 0, '2026-04-15T17:09:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4276', 'hist-ticket-167-4276', 'cash', 28500, 'completed', '2026-04-15T17:09:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4277', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T09:24:45.000Z', '2026-04-15T09:24:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4277-1', 'hist-ticket-167-4277', 'prod-latte', 1, 15000, 0, '2026-04-15T09:24:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4277', 'hist-ticket-167-4277', 'cash', 15000, 'completed', '2026-04-15T09:24:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4278', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-15T14:55:51.000Z', '2026-04-15T14:55:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4278-1', 'hist-ticket-167-4278', 'prod-mocha', 1, 16500, 0, '2026-04-15T14:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4278-2', 'hist-ticket-167-4278', 'prod-americano', 1, 12000, 0, '2026-04-15T14:55:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4278', 'hist-ticket-167-4278', 'cash', 28500, 'completed', '2026-04-15T14:55:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4279', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-15T15:41:35.000Z', '2026-04-15T15:41:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4279-1', 'hist-ticket-167-4279', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T15:41:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4279', 'hist-ticket-167-4279', 'cash', 14500, 'completed', '2026-04-15T15:41:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4280', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-15T16:20:47.000Z', '2026-04-15T16:20:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4280-1', 'hist-ticket-167-4280', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T16:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4280-2', 'hist-ticket-167-4280', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T16:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4280-3', 'hist-ticket-167-4280', 'prod-americano', 1, 12000, 0, '2026-04-15T16:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4280-4', 'hist-ticket-167-4280', 'prod-americano', 1, 12000, 0, '2026-04-15T16:20:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4280', 'hist-ticket-167-4280', 'cash', 53000, 'completed', '2026-04-15T16:20:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4281', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T18:20:47.000Z', '2026-04-15T18:20:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4281-1', 'hist-ticket-167-4281', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4281-2', 'hist-ticket-167-4281', 'prod-latte', 1, 15000, 0, '2026-04-15T18:20:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4281-3', 'hist-ticket-167-4281', 'prod-latte', 1, 15000, 0, '2026-04-15T18:20:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4281', 'hist-ticket-167-4281', 'cash', 46500, 'completed', '2026-04-15T18:20:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4282', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-15T19:52:54.000Z', '2026-04-15T19:52:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4282-1', 'hist-ticket-167-4282', 'prod-latte', 1, 15000, 0, '2026-04-15T19:52:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4282', 'hist-ticket-167-4282', 'cash', 15000, 'completed', '2026-04-15T19:52:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4283', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-04-15T13:27:53.000Z', '2026-04-15T13:27:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4283-1', 'hist-ticket-167-4283', 'prod-americano', 1, 12000, 0, '2026-04-15T13:27:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4283-2', 'hist-ticket-167-4283', 'prod-latte', 1, 15000, 0, '2026-04-15T13:27:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4283', 'hist-ticket-167-4283', 'cash', 27000, 'completed', '2026-04-15T13:27:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4284', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-15T18:03:11.000Z', '2026-04-15T18:03:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4284-1', 'hist-ticket-167-4284', 'prod-latte', 1, 15000, 0, '2026-04-15T18:03:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4284', 'hist-ticket-167-4284', 'cash', 15000, 'completed', '2026-04-15T18:03:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4285', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-15T17:01:49.000Z', '2026-04-15T17:01:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4285-1', 'hist-ticket-167-4285', 'prod-latte', 1, 15000, 0, '2026-04-15T17:01:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4285-2', 'hist-ticket-167-4285', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T17:01:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4285', 'hist-ticket-167-4285', 'cash', 29500, 'completed', '2026-04-15T17:01:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4286', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T19:40:08.000Z', '2026-04-15T19:40:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4286-1', 'hist-ticket-167-4286', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T19:40:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4286-2', 'hist-ticket-167-4286', 'prod-americano', 1, 12000, 0, '2026-04-15T19:40:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4286-3', 'hist-ticket-167-4286', 'prod-americano', 1, 12000, 0, '2026-04-15T19:40:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4286-4', 'hist-ticket-167-4286', 'prod-mocha', 1, 16500, 0, '2026-04-15T19:40:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4286', 'hist-ticket-167-4286', 'cash', 55000, 'completed', '2026-04-15T19:40:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4287', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T18:57:14.000Z', '2026-04-15T18:57:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4287-1', 'hist-ticket-167-4287', 'prod-latte', 1, 15000, 0, '2026-04-15T18:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4287-2', 'hist-ticket-167-4287', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4287-3', 'hist-ticket-167-4287', 'prod-americano', 1, 12000, 0, '2026-04-15T18:57:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4287-4', 'hist-ticket-167-4287', 'prod-americano', 1, 12000, 0, '2026-04-15T18:57:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4287', 'hist-ticket-167-4287', 'cash', 55500, 'completed', '2026-04-15T18:57:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4288', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-15T09:29:46.000Z', '2026-04-15T09:29:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4288-1', 'hist-ticket-167-4288', 'prod-mocha', 1, 16500, 0, '2026-04-15T09:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4288-2', 'hist-ticket-167-4288', 'prod-americano', 1, 12000, 0, '2026-04-15T09:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4288-3', 'hist-ticket-167-4288', 'prod-americano', 1, 12000, 0, '2026-04-15T09:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4288-4', 'hist-ticket-167-4288', 'prod-mocha', 1, 16500, 0, '2026-04-15T09:29:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4288', 'hist-ticket-167-4288', 'cash', 57000, 'completed', '2026-04-15T09:29:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4289', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T10:39:23.000Z', '2026-04-15T10:39:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4289-1', 'hist-ticket-167-4289', 'prod-americano', 1, 12000, 0, '2026-04-15T10:39:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4289', 'hist-ticket-167-4289', 'cash', 12000, 'completed', '2026-04-15T10:39:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4290', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-15T16:46:01.000Z', '2026-04-15T16:46:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4290-1', 'hist-ticket-167-4290', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T16:46:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4290', 'hist-ticket-167-4290', 'cash', 14500, 'completed', '2026-04-15T16:46:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4291', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-15T15:00:06.000Z', '2026-04-15T15:00:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4291-1', 'hist-ticket-167-4291', 'prod-americano', 1, 12000, 0, '2026-04-15T15:00:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4291', 'hist-ticket-167-4291', 'cash', 12000, 'completed', '2026-04-15T15:00:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4292', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-15T12:58:30.000Z', '2026-04-15T12:58:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4292-1', 'hist-ticket-167-4292', 'prod-mocha', 1, 16500, 0, '2026-04-15T12:58:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4292-2', 'hist-ticket-167-4292', 'prod-latte', 1, 15000, 0, '2026-04-15T12:58:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4292', 'hist-ticket-167-4292', 'cash', 31500, 'completed', '2026-04-15T12:58:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4293', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-15T15:36:58.000Z', '2026-04-15T15:36:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4293-1', 'hist-ticket-167-4293', 'prod-latte', 1, 15000, 0, '2026-04-15T15:36:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4293-2', 'hist-ticket-167-4293', 'prod-latte', 1, 15000, 0, '2026-04-15T15:36:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4293', 'hist-ticket-167-4293', 'cash', 30000, 'completed', '2026-04-15T15:36:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4294', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-15T08:41:38.000Z', '2026-04-15T08:41:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4294-1', 'hist-ticket-167-4294', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T08:41:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4294-2', 'hist-ticket-167-4294', 'prod-americano', 1, 12000, 0, '2026-04-15T08:41:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4294-3', 'hist-ticket-167-4294', 'prod-latte', 1, 15000, 0, '2026-04-15T08:41:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4294-4', 'hist-ticket-167-4294', 'prod-mocha', 1, 16500, 0, '2026-04-15T08:41:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4294', 'hist-ticket-167-4294', 'cash', 58000, 'completed', '2026-04-15T08:41:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4295', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-15T18:09:09.000Z', '2026-04-15T18:09:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4295-1', 'hist-ticket-167-4295', 'prod-mocha', 1, 16500, 0, '2026-04-15T18:09:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4295-2', 'hist-ticket-167-4295', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T18:09:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4295', 'hist-ticket-167-4295', 'cash', 31000, 'completed', '2026-04-15T18:09:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4296', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-15T16:34:55.000Z', '2026-04-15T16:34:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4296-1', 'hist-ticket-167-4296', 'prod-americano', 1, 12000, 0, '2026-04-15T16:34:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4296-2', 'hist-ticket-167-4296', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T16:34:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4296-3', 'hist-ticket-167-4296', 'prod-latte', 1, 15000, 0, '2026-04-15T16:34:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4296', 'hist-ticket-167-4296', 'cash', 41500, 'completed', '2026-04-15T16:34:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4297', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-15T10:50:52.000Z', '2026-04-15T10:50:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4297-1', 'hist-ticket-167-4297', 'prod-mocha', 1, 16500, 0, '2026-04-15T10:50:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4297-2', 'hist-ticket-167-4297', 'prod-americano', 1, 12000, 0, '2026-04-15T10:50:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4297-3', 'hist-ticket-167-4297', 'prod-latte', 1, 15000, 0, '2026-04-15T10:50:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4297-4', 'hist-ticket-167-4297', 'prod-americano', 1, 12000, 0, '2026-04-15T10:50:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4297', 'hist-ticket-167-4297', 'cash', 55500, 'completed', '2026-04-15T10:50:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-167-4298', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-15T17:17:20.000Z', '2026-04-15T17:17:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4298-1', 'hist-ticket-167-4298', 'prod-cappuccino', 1, 14500, 0, '2026-04-15T17:17:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4298-2', 'hist-ticket-167-4298', 'prod-mocha', 1, 16500, 0, '2026-04-15T17:17:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4298-3', 'hist-ticket-167-4298', 'prod-americano', 1, 12000, 0, '2026-04-15T17:17:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-167-4298-4', 'hist-ticket-167-4298', 'prod-americano', 1, 12000, 0, '2026-04-15T17:17:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-167-4298', 'hist-ticket-167-4298', 'cash', 55000, 'completed', '2026-04-15T17:17:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4299', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-16T11:54:38.000Z', '2026-04-16T11:54:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4299-1', 'hist-ticket-168-4299', 'prod-mocha', 1, 16500, 0, '2026-04-16T11:54:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4299-2', 'hist-ticket-168-4299', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:54:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4299-3', 'hist-ticket-168-4299', 'prod-latte', 1, 15000, 0, '2026-04-16T11:54:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4299-4', 'hist-ticket-168-4299', 'prod-mocha', 1, 16500, 0, '2026-04-16T11:54:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4299', 'hist-ticket-168-4299', 'cash', 62500, 'completed', '2026-04-16T11:54:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4300', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T17:50:30.000Z', '2026-04-16T17:50:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4300-1', 'hist-ticket-168-4300', 'prod-americano', 1, 12000, 0, '2026-04-16T17:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4300-2', 'hist-ticket-168-4300', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T17:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4300-3', 'hist-ticket-168-4300', 'prod-mocha', 1, 16500, 0, '2026-04-16T17:50:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4300-4', 'hist-ticket-168-4300', 'prod-latte', 1, 15000, 0, '2026-04-16T17:50:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4300', 'hist-ticket-168-4300', 'cash', 58000, 'completed', '2026-04-16T17:50:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4301', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-16T18:18:32.000Z', '2026-04-16T18:18:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4301-1', 'hist-ticket-168-4301', 'prod-mocha', 1, 16500, 0, '2026-04-16T18:18:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4301-2', 'hist-ticket-168-4301', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T18:18:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4301', 'hist-ticket-168-4301', 'cash', 31000, 'completed', '2026-04-16T18:18:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4302', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-16T18:03:29.000Z', '2026-04-16T18:03:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4302-1', 'hist-ticket-168-4302', 'prod-americano', 1, 12000, 0, '2026-04-16T18:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4302-2', 'hist-ticket-168-4302', 'prod-latte', 1, 15000, 0, '2026-04-16T18:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4302-3', 'hist-ticket-168-4302', 'prod-americano', 1, 12000, 0, '2026-04-16T18:03:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4302', 'hist-ticket-168-4302', 'cash', 39000, 'completed', '2026-04-16T18:03:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4303', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T08:45:28.000Z', '2026-04-16T08:45:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4303-1', 'hist-ticket-168-4303', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T08:45:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4303', 'hist-ticket-168-4303', 'cash', 14500, 'completed', '2026-04-16T08:45:28.000Z');