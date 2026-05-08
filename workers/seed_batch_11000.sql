INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2434-1', 'hist-ticket-100-2434', 'prod-americano', 1, 12000, 0, '2026-02-07T09:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2434-2', 'hist-ticket-100-2434', 'prod-americano', 1, 12000, 0, '2026-02-07T09:35:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2434-3', 'hist-ticket-100-2434', 'prod-latte', 1, 15000, 0, '2026-02-07T09:35:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2434', 'hist-ticket-100-2434', 'cash', 39000, 'completed', '2026-02-07T09:35:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2435', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-07T19:11:28.000Z', '2026-02-07T19:11:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2435-1', 'hist-ticket-100-2435', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T19:11:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2435-2', 'hist-ticket-100-2435', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:11:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2435-3', 'hist-ticket-100-2435', 'prod-latte', 1, 15000, 0, '2026-02-07T19:11:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2435-4', 'hist-ticket-100-2435', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:11:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2435', 'hist-ticket-100-2435', 'cash', 62500, 'completed', '2026-02-07T19:11:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2436', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-07T11:48:08.000Z', '2026-02-07T11:48:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2436-1', 'hist-ticket-100-2436', 'prod-americano', 1, 12000, 0, '2026-02-07T11:48:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2436', 'hist-ticket-100-2436', 'cash', 12000, 'completed', '2026-02-07T11:48:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2437', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-07T18:15:59.000Z', '2026-02-07T18:15:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2437-1', 'hist-ticket-100-2437', 'prod-americano', 1, 12000, 0, '2026-02-07T18:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2437-2', 'hist-ticket-100-2437', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T18:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2437-3', 'hist-ticket-100-2437', 'prod-latte', 1, 15000, 0, '2026-02-07T18:15:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2437', 'hist-ticket-100-2437', 'cash', 41500, 'completed', '2026-02-07T18:15:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2438', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-07T08:23:34.000Z', '2026-02-07T08:23:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2438-1', 'hist-ticket-100-2438', 'prod-mocha', 1, 16500, 0, '2026-02-07T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2438-2', 'hist-ticket-100-2438', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T08:23:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2438', 'hist-ticket-100-2438', 'cash', 31000, 'completed', '2026-02-07T08:23:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2439', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-07T19:15:46.000Z', '2026-02-07T19:15:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2439-1', 'hist-ticket-100-2439', 'prod-latte', 1, 15000, 0, '2026-02-07T19:15:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2439', 'hist-ticket-100-2439', 'cash', 15000, 'completed', '2026-02-07T19:15:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2440', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-07T19:22:13.000Z', '2026-02-07T19:22:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2440-1', 'hist-ticket-100-2440', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T19:22:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2440-2', 'hist-ticket-100-2440', 'prod-americano', 1, 12000, 0, '2026-02-07T19:22:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2440-3', 'hist-ticket-100-2440', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T19:22:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2440-4', 'hist-ticket-100-2440', 'prod-americano', 1, 12000, 0, '2026-02-07T19:22:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2440', 'hist-ticket-100-2440', 'cash', 53000, 'completed', '2026-02-07T19:22:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2441', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-02-07T19:02:21.000Z', '2026-02-07T19:02:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2441-1', 'hist-ticket-100-2441', 'prod-latte', 1, 15000, 0, '2026-02-07T19:02:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2441', 'hist-ticket-100-2441', 'cash', 15000, 'completed', '2026-02-07T19:02:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2442', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-07T08:43:58.000Z', '2026-02-07T08:43:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2442-1', 'hist-ticket-100-2442', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T08:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2442-2', 'hist-ticket-100-2442', 'prod-mocha', 1, 16500, 0, '2026-02-07T08:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2442-3', 'hist-ticket-100-2442', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T08:43:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2442', 'hist-ticket-100-2442', 'cash', 45500, 'completed', '2026-02-07T08:43:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2443', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-07T12:42:29.000Z', '2026-02-07T12:42:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2443-1', 'hist-ticket-100-2443', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T12:42:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2443-2', 'hist-ticket-100-2443', 'prod-americano', 1, 12000, 0, '2026-02-07T12:42:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2443', 'hist-ticket-100-2443', 'cash', 26500, 'completed', '2026-02-07T12:42:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2444', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-07T09:19:49.000Z', '2026-02-07T09:19:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2444-1', 'hist-ticket-100-2444', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T09:19:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2444', 'hist-ticket-100-2444', 'cash', 14500, 'completed', '2026-02-07T09:19:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2445', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-07T09:55:21.000Z', '2026-02-07T09:55:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2445-1', 'hist-ticket-100-2445', 'prod-americano', 1, 12000, 0, '2026-02-07T09:55:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2445-2', 'hist-ticket-100-2445', 'prod-mocha', 1, 16500, 0, '2026-02-07T09:55:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2445-3', 'hist-ticket-100-2445', 'prod-latte', 1, 15000, 0, '2026-02-07T09:55:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2445', 'hist-ticket-100-2445', 'cash', 43500, 'completed', '2026-02-07T09:55:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2446', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-07T12:49:15.000Z', '2026-02-07T12:49:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2446-1', 'hist-ticket-100-2446', 'prod-latte', 1, 15000, 0, '2026-02-07T12:49:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2446-2', 'hist-ticket-100-2446', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T12:49:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2446', 'hist-ticket-100-2446', 'cash', 29500, 'completed', '2026-02-07T12:49:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2447', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-07T12:45:56.000Z', '2026-02-07T12:45:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2447-1', 'hist-ticket-100-2447', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T12:45:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2447', 'hist-ticket-100-2447', 'cash', 14500, 'completed', '2026-02-07T12:45:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2448', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-07T08:48:30.000Z', '2026-02-07T08:48:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2448-1', 'hist-ticket-100-2448', 'prod-americano', 1, 12000, 0, '2026-02-07T08:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2448-2', 'hist-ticket-100-2448', 'prod-americano', 1, 12000, 0, '2026-02-07T08:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2448-3', 'hist-ticket-100-2448', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T08:48:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2448', 'hist-ticket-100-2448', 'cash', 38500, 'completed', '2026-02-07T08:48:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2449', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-02-07T12:05:18.000Z', '2026-02-07T12:05:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2449-1', 'hist-ticket-100-2449', 'prod-mocha', 1, 16500, 0, '2026-02-07T12:05:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2449-2', 'hist-ticket-100-2449', 'prod-latte', 1, 15000, 0, '2026-02-07T12:05:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2449', 'hist-ticket-100-2449', 'cash', 31500, 'completed', '2026-02-07T12:05:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2450', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-07T16:03:59.000Z', '2026-02-07T16:03:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2450-1', 'hist-ticket-100-2450', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T16:03:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2450', 'hist-ticket-100-2450', 'cash', 14500, 'completed', '2026-02-07T16:03:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2451', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-07T19:26:25.000Z', '2026-02-07T19:26:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2451-1', 'hist-ticket-100-2451', 'prod-americano', 1, 12000, 0, '2026-02-07T19:26:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2451-2', 'hist-ticket-100-2451', 'prod-americano', 1, 12000, 0, '2026-02-07T19:26:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2451', 'hist-ticket-100-2451', 'cash', 24000, 'completed', '2026-02-07T19:26:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2452', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-02-07T10:52:18.000Z', '2026-02-07T10:52:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2452-1', 'hist-ticket-100-2452', 'prod-mocha', 1, 16500, 0, '2026-02-07T10:52:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2452-2', 'hist-ticket-100-2452', 'prod-latte', 1, 15000, 0, '2026-02-07T10:52:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2452-3', 'hist-ticket-100-2452', 'prod-mocha', 1, 16500, 0, '2026-02-07T10:52:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2452-4', 'hist-ticket-100-2452', 'prod-mocha', 1, 16500, 0, '2026-02-07T10:52:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2452', 'hist-ticket-100-2452', 'cash', 64500, 'completed', '2026-02-07T10:52:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2453', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-07T17:37:50.000Z', '2026-02-07T17:37:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2453-1', 'hist-ticket-100-2453', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T17:37:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2453', 'hist-ticket-100-2453', 'cash', 14500, 'completed', '2026-02-07T17:37:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2454', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-07T10:19:39.000Z', '2026-02-07T10:19:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2454-1', 'hist-ticket-100-2454', 'prod-latte', 1, 15000, 0, '2026-02-07T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2454-2', 'hist-ticket-100-2454', 'prod-americano', 1, 12000, 0, '2026-02-07T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2454-3', 'hist-ticket-100-2454', 'prod-latte', 1, 15000, 0, '2026-02-07T10:19:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2454-4', 'hist-ticket-100-2454', 'prod-americano', 1, 12000, 0, '2026-02-07T10:19:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2454', 'hist-ticket-100-2454', 'cash', 54000, 'completed', '2026-02-07T10:19:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2455', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-07T10:04:43.000Z', '2026-02-07T10:04:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2455-1', 'hist-ticket-100-2455', 'prod-mocha', 1, 16500, 0, '2026-02-07T10:04:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2455-2', 'hist-ticket-100-2455', 'prod-latte', 1, 15000, 0, '2026-02-07T10:04:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2455-3', 'hist-ticket-100-2455', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T10:04:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2455', 'hist-ticket-100-2455', 'cash', 46000, 'completed', '2026-02-07T10:04:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2456', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-07T16:22:51.000Z', '2026-02-07T16:22:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2456-1', 'hist-ticket-100-2456', 'prod-americano', 1, 12000, 0, '2026-02-07T16:22:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2456-2', 'hist-ticket-100-2456', 'prod-mocha', 1, 16500, 0, '2026-02-07T16:22:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2456-3', 'hist-ticket-100-2456', 'prod-latte', 1, 15000, 0, '2026-02-07T16:22:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2456', 'hist-ticket-100-2456', 'cash', 43500, 'completed', '2026-02-07T16:22:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2457', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-07T17:41:14.000Z', '2026-02-07T17:41:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2457-1', 'hist-ticket-100-2457', 'prod-latte', 1, 15000, 0, '2026-02-07T17:41:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2457-2', 'hist-ticket-100-2457', 'prod-americano', 1, 12000, 0, '2026-02-07T17:41:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2457-3', 'hist-ticket-100-2457', 'prod-latte', 1, 15000, 0, '2026-02-07T17:41:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2457', 'hist-ticket-100-2457', 'cash', 42000, 'completed', '2026-02-07T17:41:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2458', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-02-07T11:38:32.000Z', '2026-02-07T11:38:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2458-1', 'hist-ticket-100-2458', 'prod-cappuccino', 1, 14500, 0, '2026-02-07T11:38:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2458-2', 'hist-ticket-100-2458', 'prod-mocha', 1, 16500, 0, '2026-02-07T11:38:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2458', 'hist-ticket-100-2458', 'cash', 31000, 'completed', '2026-02-07T11:38:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-100-2459', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-07T19:00:40.000Z', '2026-02-07T19:00:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2459-1', 'hist-ticket-100-2459', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:00:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2459-2', 'hist-ticket-100-2459', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:00:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2459-3', 'hist-ticket-100-2459', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:00:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-100-2459-4', 'hist-ticket-100-2459', 'prod-mocha', 1, 16500, 0, '2026-02-07T19:00:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-100-2459', 'hist-ticket-100-2459', 'cash', 66000, 'completed', '2026-02-07T19:00:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2460', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-08T15:44:18.000Z', '2026-02-08T15:44:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2460-1', 'hist-ticket-101-2460', 'prod-latte', 1, 15000, 0, '2026-02-08T15:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2460-2', 'hist-ticket-101-2460', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T15:44:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2460', 'hist-ticket-101-2460', 'cash', 29500, 'completed', '2026-02-08T15:44:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2461', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-08T17:30:31.000Z', '2026-02-08T17:30:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2461-1', 'hist-ticket-101-2461', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T17:30:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2461', 'hist-ticket-101-2461', 'cash', 14500, 'completed', '2026-02-08T17:30:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2462', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-08T09:22:39.000Z', '2026-02-08T09:22:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2462-1', 'hist-ticket-101-2462', 'prod-mocha', 1, 16500, 0, '2026-02-08T09:22:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2462-2', 'hist-ticket-101-2462', 'prod-mocha', 1, 16500, 0, '2026-02-08T09:22:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2462-3', 'hist-ticket-101-2462', 'prod-americano', 1, 12000, 0, '2026-02-08T09:22:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2462-4', 'hist-ticket-101-2462', 'prod-americano', 1, 12000, 0, '2026-02-08T09:22:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2462', 'hist-ticket-101-2462', 'cash', 57000, 'completed', '2026-02-08T09:22:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2463', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-08T08:29:46.000Z', '2026-02-08T08:29:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2463-1', 'hist-ticket-101-2463', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T08:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2463-2', 'hist-ticket-101-2463', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T08:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2463-3', 'hist-ticket-101-2463', 'prod-latte', 1, 15000, 0, '2026-02-08T08:29:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2463-4', 'hist-ticket-101-2463', 'prod-mocha', 1, 16500, 0, '2026-02-08T08:29:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2463', 'hist-ticket-101-2463', 'cash', 60500, 'completed', '2026-02-08T08:29:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2464', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-08T08:52:07.000Z', '2026-02-08T08:52:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2464-1', 'hist-ticket-101-2464', 'prod-mocha', 1, 16500, 0, '2026-02-08T08:52:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2464-2', 'hist-ticket-101-2464', 'prod-latte', 1, 15000, 0, '2026-02-08T08:52:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2464-3', 'hist-ticket-101-2464', 'prod-americano', 1, 12000, 0, '2026-02-08T08:52:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2464', 'hist-ticket-101-2464', 'cash', 43500, 'completed', '2026-02-08T08:52:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2465', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-08T12:53:09.000Z', '2026-02-08T12:53:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2465-1', 'hist-ticket-101-2465', 'prod-latte', 1, 15000, 0, '2026-02-08T12:53:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2465', 'hist-ticket-101-2465', 'cash', 15000, 'completed', '2026-02-08T12:53:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2466', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-02-08T13:58:44.000Z', '2026-02-08T13:58:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2466-1', 'hist-ticket-101-2466', 'prod-latte', 1, 15000, 0, '2026-02-08T13:58:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2466', 'hist-ticket-101-2466', 'cash', 15000, 'completed', '2026-02-08T13:58:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2467', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-08T09:12:46.000Z', '2026-02-08T09:12:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2467-1', 'hist-ticket-101-2467', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T09:12:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2467-2', 'hist-ticket-101-2467', 'prod-mocha', 1, 16500, 0, '2026-02-08T09:12:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2467-3', 'hist-ticket-101-2467', 'prod-latte', 1, 15000, 0, '2026-02-08T09:12:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2467-4', 'hist-ticket-101-2467', 'prod-americano', 1, 12000, 0, '2026-02-08T09:12:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2467', 'hist-ticket-101-2467', 'cash', 58000, 'completed', '2026-02-08T09:12:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2468', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-08T18:17:18.000Z', '2026-02-08T18:17:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2468-1', 'hist-ticket-101-2468', 'prod-mocha', 1, 16500, 0, '2026-02-08T18:17:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2468-2', 'hist-ticket-101-2468', 'prod-latte', 1, 15000, 0, '2026-02-08T18:17:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2468', 'hist-ticket-101-2468', 'cash', 31500, 'completed', '2026-02-08T18:17:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2469', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-08T16:47:05.000Z', '2026-02-08T16:47:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2469-1', 'hist-ticket-101-2469', 'prod-americano', 1, 12000, 0, '2026-02-08T16:47:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2469-2', 'hist-ticket-101-2469', 'prod-mocha', 1, 16500, 0, '2026-02-08T16:47:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2469-3', 'hist-ticket-101-2469', 'prod-mocha', 1, 16500, 0, '2026-02-08T16:47:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2469', 'hist-ticket-101-2469', 'cash', 45000, 'completed', '2026-02-08T16:47:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2470', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-08T10:52:30.000Z', '2026-02-08T10:52:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2470-1', 'hist-ticket-101-2470', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T10:52:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2470', 'hist-ticket-101-2470', 'cash', 14500, 'completed', '2026-02-08T10:52:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2471', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-08T09:58:30.000Z', '2026-02-08T09:58:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2471-1', 'hist-ticket-101-2471', 'prod-americano', 1, 12000, 0, '2026-02-08T09:58:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2471-2', 'hist-ticket-101-2471', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T09:58:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2471-3', 'hist-ticket-101-2471', 'prod-mocha', 1, 16500, 0, '2026-02-08T09:58:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2471', 'hist-ticket-101-2471', 'cash', 43000, 'completed', '2026-02-08T09:58:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2472', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-08T19:56:55.000Z', '2026-02-08T19:56:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2472-1', 'hist-ticket-101-2472', 'prod-mocha', 1, 16500, 0, '2026-02-08T19:56:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2472', 'hist-ticket-101-2472', 'cash', 16500, 'completed', '2026-02-08T19:56:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2473', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-08T09:04:58.000Z', '2026-02-08T09:04:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2473-1', 'hist-ticket-101-2473', 'prod-mocha', 1, 16500, 0, '2026-02-08T09:04:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2473-2', 'hist-ticket-101-2473', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T09:04:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2473', 'hist-ticket-101-2473', 'cash', 31000, 'completed', '2026-02-08T09:04:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2474', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-08T17:02:00.000Z', '2026-02-08T17:02:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2474-1', 'hist-ticket-101-2474', 'prod-mocha', 1, 16500, 0, '2026-02-08T17:02:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2474-2', 'hist-ticket-101-2474', 'prod-americano', 1, 12000, 0, '2026-02-08T17:02:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2474', 'hist-ticket-101-2474', 'cash', 28500, 'completed', '2026-02-08T17:02:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2475', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-02-08T16:34:01.000Z', '2026-02-08T16:34:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2475-1', 'hist-ticket-101-2475', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T16:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2475-2', 'hist-ticket-101-2475', 'prod-latte', 1, 15000, 0, '2026-02-08T16:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2475-3', 'hist-ticket-101-2475', 'prod-americano', 1, 12000, 0, '2026-02-08T16:34:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2475-4', 'hist-ticket-101-2475', 'prod-americano', 1, 12000, 0, '2026-02-08T16:34:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2475', 'hist-ticket-101-2475', 'cash', 53500, 'completed', '2026-02-08T16:34:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2476', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-08T10:54:11.000Z', '2026-02-08T10:54:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2476-1', 'hist-ticket-101-2476', 'prod-americano', 1, 12000, 0, '2026-02-08T10:54:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2476-2', 'hist-ticket-101-2476', 'prod-mocha', 1, 16500, 0, '2026-02-08T10:54:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2476-3', 'hist-ticket-101-2476', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T10:54:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2476', 'hist-ticket-101-2476', 'cash', 43000, 'completed', '2026-02-08T10:54:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2477', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-08T15:43:13.000Z', '2026-02-08T15:43:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2477-1', 'hist-ticket-101-2477', 'prod-americano', 1, 12000, 0, '2026-02-08T15:43:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2477', 'hist-ticket-101-2477', 'cash', 12000, 'completed', '2026-02-08T15:43:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2478', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-08T12:30:16.000Z', '2026-02-08T12:30:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2478-1', 'hist-ticket-101-2478', 'prod-mocha', 1, 16500, 0, '2026-02-08T12:30:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2478', 'hist-ticket-101-2478', 'cash', 16500, 'completed', '2026-02-08T12:30:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2479', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-08T19:48:08.000Z', '2026-02-08T19:48:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2479-1', 'hist-ticket-101-2479', 'prod-latte', 1, 15000, 0, '2026-02-08T19:48:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2479-2', 'hist-ticket-101-2479', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T19:48:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2479', 'hist-ticket-101-2479', 'cash', 29500, 'completed', '2026-02-08T19:48:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2480', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-08T19:11:46.000Z', '2026-02-08T19:11:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2480-1', 'hist-ticket-101-2480', 'prod-americano', 1, 12000, 0, '2026-02-08T19:11:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2480-2', 'hist-ticket-101-2480', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T19:11:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2480-3', 'hist-ticket-101-2480', 'prod-americano', 1, 12000, 0, '2026-02-08T19:11:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2480-4', 'hist-ticket-101-2480', 'prod-americano', 1, 12000, 0, '2026-02-08T19:11:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2480', 'hist-ticket-101-2480', 'cash', 50500, 'completed', '2026-02-08T19:11:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2481', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-02-08T12:47:56.000Z', '2026-02-08T12:47:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2481-1', 'hist-ticket-101-2481', 'prod-americano', 1, 12000, 0, '2026-02-08T12:47:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2481-2', 'hist-ticket-101-2481', 'prod-americano', 1, 12000, 0, '2026-02-08T12:47:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2481-3', 'hist-ticket-101-2481', 'prod-mocha', 1, 16500, 0, '2026-02-08T12:47:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2481-4', 'hist-ticket-101-2481', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T12:47:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2481', 'hist-ticket-101-2481', 'cash', 55000, 'completed', '2026-02-08T12:47:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2482', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-08T11:47:06.000Z', '2026-02-08T11:47:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2482-1', 'hist-ticket-101-2482', 'prod-americano', 1, 12000, 0, '2026-02-08T11:47:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2482-2', 'hist-ticket-101-2482', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T11:47:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2482-3', 'hist-ticket-101-2482', 'prod-latte', 1, 15000, 0, '2026-02-08T11:47:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2482-4', 'hist-ticket-101-2482', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T11:47:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2482', 'hist-ticket-101-2482', 'cash', 56000, 'completed', '2026-02-08T11:47:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2483', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-08T18:12:09.000Z', '2026-02-08T18:12:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2483-1', 'hist-ticket-101-2483', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T18:12:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2483-2', 'hist-ticket-101-2483', 'prod-latte', 1, 15000, 0, '2026-02-08T18:12:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2483-3', 'hist-ticket-101-2483', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T18:12:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2483', 'hist-ticket-101-2483', 'cash', 44000, 'completed', '2026-02-08T18:12:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2484', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-08T15:25:28.000Z', '2026-02-08T15:25:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2484-1', 'hist-ticket-101-2484', 'prod-latte', 1, 15000, 0, '2026-02-08T15:25:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2484-2', 'hist-ticket-101-2484', 'prod-latte', 1, 15000, 0, '2026-02-08T15:25:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2484', 'hist-ticket-101-2484', 'cash', 30000, 'completed', '2026-02-08T15:25:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2485', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-08T12:19:09.000Z', '2026-02-08T12:19:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2485-1', 'hist-ticket-101-2485', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T12:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2485-2', 'hist-ticket-101-2485', 'prod-americano', 1, 12000, 0, '2026-02-08T12:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2485-3', 'hist-ticket-101-2485', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T12:19:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2485', 'hist-ticket-101-2485', 'cash', 41000, 'completed', '2026-02-08T12:19:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2486', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-08T17:40:46.000Z', '2026-02-08T17:40:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2486-1', 'hist-ticket-101-2486', 'prod-mocha', 1, 16500, 0, '2026-02-08T17:40:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2486', 'hist-ticket-101-2486', 'cash', 16500, 'completed', '2026-02-08T17:40:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2487', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-08T15:21:54.000Z', '2026-02-08T15:21:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2487-1', 'hist-ticket-101-2487', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T15:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2487-2', 'hist-ticket-101-2487', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T15:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2487-3', 'hist-ticket-101-2487', 'prod-mocha', 1, 16500, 0, '2026-02-08T15:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2487-4', 'hist-ticket-101-2487', 'prod-americano', 1, 12000, 0, '2026-02-08T15:21:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2487', 'hist-ticket-101-2487', 'cash', 57500, 'completed', '2026-02-08T15:21:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2488', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-08T10:39:33.000Z', '2026-02-08T10:39:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2488-1', 'hist-ticket-101-2488', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T10:39:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2488-2', 'hist-ticket-101-2488', 'prod-latte', 1, 15000, 0, '2026-02-08T10:39:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2488-3', 'hist-ticket-101-2488', 'prod-latte', 1, 15000, 0, '2026-02-08T10:39:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2488-4', 'hist-ticket-101-2488', 'prod-latte', 1, 15000, 0, '2026-02-08T10:39:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2488', 'hist-ticket-101-2488', 'cash', 59500, 'completed', '2026-02-08T10:39:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2489', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-02-08T18:18:45.000Z', '2026-02-08T18:18:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2489-1', 'hist-ticket-101-2489', 'prod-americano', 1, 12000, 0, '2026-02-08T18:18:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2489-2', 'hist-ticket-101-2489', 'prod-americano', 1, 12000, 0, '2026-02-08T18:18:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2489-3', 'hist-ticket-101-2489', 'prod-americano', 1, 12000, 0, '2026-02-08T18:18:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2489-4', 'hist-ticket-101-2489', 'prod-latte', 1, 15000, 0, '2026-02-08T18:18:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2489', 'hist-ticket-101-2489', 'cash', 51000, 'completed', '2026-02-08T18:18:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2490', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-08T11:01:07.000Z', '2026-02-08T11:01:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2490-1', 'hist-ticket-101-2490', 'prod-mocha', 1, 16500, 0, '2026-02-08T11:01:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2490', 'hist-ticket-101-2490', 'cash', 16500, 'completed', '2026-02-08T11:01:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2491', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-08T13:16:48.000Z', '2026-02-08T13:16:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2491-1', 'hist-ticket-101-2491', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T13:16:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2491-2', 'hist-ticket-101-2491', 'prod-latte', 1, 15000, 0, '2026-02-08T13:16:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2491-3', 'hist-ticket-101-2491', 'prod-mocha', 1, 16500, 0, '2026-02-08T13:16:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2491-4', 'hist-ticket-101-2491', 'prod-cappuccino', 1, 14500, 0, '2026-02-08T13:16:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2491', 'hist-ticket-101-2491', 'cash', 60500, 'completed', '2026-02-08T13:16:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-101-2492', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-08T12:08:18.000Z', '2026-02-08T12:08:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2492-1', 'hist-ticket-101-2492', 'prod-latte', 1, 15000, 0, '2026-02-08T12:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2492-2', 'hist-ticket-101-2492', 'prod-latte', 1, 15000, 0, '2026-02-08T12:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-101-2492-3', 'hist-ticket-101-2492', 'prod-latte', 1, 15000, 0, '2026-02-08T12:08:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-101-2492', 'hist-ticket-101-2492', 'cash', 45000, 'completed', '2026-02-08T12:08:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2493', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-09T18:38:41.000Z', '2026-02-09T18:38:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2493-1', 'hist-ticket-102-2493', 'prod-mocha', 1, 16500, 0, '2026-02-09T18:38:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2493', 'hist-ticket-102-2493', 'cash', 16500, 'completed', '2026-02-09T18:38:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2494', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-09T11:35:37.000Z', '2026-02-09T11:35:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2494-1', 'hist-ticket-102-2494', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T11:35:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2494', 'hist-ticket-102-2494', 'cash', 14500, 'completed', '2026-02-09T11:35:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2495', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-09T08:36:57.000Z', '2026-02-09T08:36:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2495-1', 'hist-ticket-102-2495', 'prod-latte', 1, 15000, 0, '2026-02-09T08:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2495-2', 'hist-ticket-102-2495', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T08:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2495-3', 'hist-ticket-102-2495', 'prod-latte', 1, 15000, 0, '2026-02-09T08:36:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2495', 'hist-ticket-102-2495', 'cash', 44500, 'completed', '2026-02-09T08:36:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2496', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-09T11:41:58.000Z', '2026-02-09T11:41:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2496-1', 'hist-ticket-102-2496', 'prod-latte', 1, 15000, 0, '2026-02-09T11:41:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2496-2', 'hist-ticket-102-2496', 'prod-mocha', 1, 16500, 0, '2026-02-09T11:41:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2496', 'hist-ticket-102-2496', 'cash', 31500, 'completed', '2026-02-09T11:41:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2497', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-02-09T12:33:10.000Z', '2026-02-09T12:33:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2497-1', 'hist-ticket-102-2497', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T12:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2497-2', 'hist-ticket-102-2497', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2497-3', 'hist-ticket-102-2497', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:33:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2497-4', 'hist-ticket-102-2497', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T12:33:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2497', 'hist-ticket-102-2497', 'cash', 62000, 'completed', '2026-02-09T12:33:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2498', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-09T18:35:34.000Z', '2026-02-09T18:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2498-1', 'hist-ticket-102-2498', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T18:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2498-2', 'hist-ticket-102-2498', 'prod-mocha', 1, 16500, 0, '2026-02-09T18:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2498-3', 'hist-ticket-102-2498', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T18:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2498', 'hist-ticket-102-2498', 'cash', 45500, 'completed', '2026-02-09T18:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2499', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-09T16:18:24.000Z', '2026-02-09T16:18:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2499-1', 'hist-ticket-102-2499', 'prod-mocha', 1, 16500, 0, '2026-02-09T16:18:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2499', 'hist-ticket-102-2499', 'cash', 16500, 'completed', '2026-02-09T16:18:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2500', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-09T17:28:25.000Z', '2026-02-09T17:28:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2500-1', 'hist-ticket-102-2500', 'prod-americano', 1, 12000, 0, '2026-02-09T17:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2500-2', 'hist-ticket-102-2500', 'prod-latte', 1, 15000, 0, '2026-02-09T17:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2500-3', 'hist-ticket-102-2500', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T17:28:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2500', 'hist-ticket-102-2500', 'cash', 41500, 'completed', '2026-02-09T17:28:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2501', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-09T12:20:52.000Z', '2026-02-09T12:20:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2501-1', 'hist-ticket-102-2501', 'prod-latte', 1, 15000, 0, '2026-02-09T12:20:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2501-2', 'hist-ticket-102-2501', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:20:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2501-3', 'hist-ticket-102-2501', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T12:20:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2501-4', 'hist-ticket-102-2501', 'prod-latte', 1, 15000, 0, '2026-02-09T12:20:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2501', 'hist-ticket-102-2501', 'cash', 61000, 'completed', '2026-02-09T12:20:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2502', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-09T10:39:35.000Z', '2026-02-09T10:39:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2502-1', 'hist-ticket-102-2502', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T10:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2502-2', 'hist-ticket-102-2502', 'prod-mocha', 1, 16500, 0, '2026-02-09T10:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2502-3', 'hist-ticket-102-2502', 'prod-americano', 1, 12000, 0, '2026-02-09T10:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2502-4', 'hist-ticket-102-2502', 'prod-mocha', 1, 16500, 0, '2026-02-09T10:39:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2502', 'hist-ticket-102-2502', 'cash', 59500, 'completed', '2026-02-09T10:39:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2503', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-02-09T09:12:17.000Z', '2026-02-09T09:12:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2503-1', 'hist-ticket-102-2503', 'prod-mocha', 1, 16500, 0, '2026-02-09T09:12:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2503-2', 'hist-ticket-102-2503', 'prod-latte', 1, 15000, 0, '2026-02-09T09:12:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2503-3', 'hist-ticket-102-2503', 'prod-mocha', 1, 16500, 0, '2026-02-09T09:12:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2503', 'hist-ticket-102-2503', 'cash', 48000, 'completed', '2026-02-09T09:12:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2504', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-09T12:20:33.000Z', '2026-02-09T12:20:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2504-1', 'hist-ticket-102-2504', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T12:20:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2504', 'hist-ticket-102-2504', 'cash', 14500, 'completed', '2026-02-09T12:20:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2505', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-09T12:59:11.000Z', '2026-02-09T12:59:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2505-1', 'hist-ticket-102-2505', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T12:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2505-2', 'hist-ticket-102-2505', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2505-3', 'hist-ticket-102-2505', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:59:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2505-4', 'hist-ticket-102-2505', 'prod-mocha', 1, 16500, 0, '2026-02-09T12:59:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2505', 'hist-ticket-102-2505', 'cash', 64000, 'completed', '2026-02-09T12:59:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2506', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-09T15:46:45.000Z', '2026-02-09T15:46:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2506-1', 'hist-ticket-102-2506', 'prod-mocha', 1, 16500, 0, '2026-02-09T15:46:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2506-2', 'hist-ticket-102-2506', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T15:46:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2506-3', 'hist-ticket-102-2506', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T15:46:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2506-4', 'hist-ticket-102-2506', 'prod-americano', 1, 12000, 0, '2026-02-09T15:46:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2506', 'hist-ticket-102-2506', 'cash', 57500, 'completed', '2026-02-09T15:46:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2507', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-02-09T18:39:06.000Z', '2026-02-09T18:39:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2507-1', 'hist-ticket-102-2507', 'prod-americano', 1, 12000, 0, '2026-02-09T18:39:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2507-2', 'hist-ticket-102-2507', 'prod-mocha', 1, 16500, 0, '2026-02-09T18:39:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2507-3', 'hist-ticket-102-2507', 'prod-americano', 1, 12000, 0, '2026-02-09T18:39:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2507-4', 'hist-ticket-102-2507', 'prod-latte', 1, 15000, 0, '2026-02-09T18:39:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2507', 'hist-ticket-102-2507', 'cash', 55500, 'completed', '2026-02-09T18:39:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2508', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-09T17:21:22.000Z', '2026-02-09T17:21:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2508-1', 'hist-ticket-102-2508', 'prod-americano', 1, 12000, 0, '2026-02-09T17:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2508-2', 'hist-ticket-102-2508', 'prod-americano', 1, 12000, 0, '2026-02-09T17:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2508-3', 'hist-ticket-102-2508', 'prod-latte', 1, 15000, 0, '2026-02-09T17:21:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2508', 'hist-ticket-102-2508', 'cash', 39000, 'completed', '2026-02-09T17:21:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2509', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-09T18:19:14.000Z', '2026-02-09T18:19:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2509-1', 'hist-ticket-102-2509', 'prod-mocha', 1, 16500, 0, '2026-02-09T18:19:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2509-2', 'hist-ticket-102-2509', 'prod-americano', 1, 12000, 0, '2026-02-09T18:19:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2509-3', 'hist-ticket-102-2509', 'prod-latte', 1, 15000, 0, '2026-02-09T18:19:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2509-4', 'hist-ticket-102-2509', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T18:19:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2509', 'hist-ticket-102-2509', 'cash', 58000, 'completed', '2026-02-09T18:19:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-102-2510', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-09T13:34:18.000Z', '2026-02-09T13:34:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2510-1', 'hist-ticket-102-2510', 'prod-cappuccino', 1, 14500, 0, '2026-02-09T13:34:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2510-2', 'hist-ticket-102-2510', 'prod-americano', 1, 12000, 0, '2026-02-09T13:34:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-102-2510-3', 'hist-ticket-102-2510', 'prod-mocha', 1, 16500, 0, '2026-02-09T13:34:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-102-2510', 'hist-ticket-102-2510', 'cash', 43000, 'completed', '2026-02-09T13:34:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2511', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-10T13:40:57.000Z', '2026-02-10T13:40:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2511-1', 'hist-ticket-103-2511', 'prod-mocha', 1, 16500, 0, '2026-02-10T13:40:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2511-2', 'hist-ticket-103-2511', 'prod-mocha', 1, 16500, 0, '2026-02-10T13:40:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2511-3', 'hist-ticket-103-2511', 'prod-latte', 1, 15000, 0, '2026-02-10T13:40:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2511', 'hist-ticket-103-2511', 'cash', 48000, 'completed', '2026-02-10T13:40:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2512', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-10T12:54:48.000Z', '2026-02-10T12:54:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2512-1', 'hist-ticket-103-2512', 'prod-mocha', 1, 16500, 0, '2026-02-10T12:54:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2512-2', 'hist-ticket-103-2512', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T12:54:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2512-3', 'hist-ticket-103-2512', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T12:54:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2512-4', 'hist-ticket-103-2512', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T12:54:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2512', 'hist-ticket-103-2512', 'cash', 60000, 'completed', '2026-02-10T12:54:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2513', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-10T14:55:16.000Z', '2026-02-10T14:55:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2513-1', 'hist-ticket-103-2513', 'prod-mocha', 1, 16500, 0, '2026-02-10T14:55:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2513-2', 'hist-ticket-103-2513', 'prod-americano', 1, 12000, 0, '2026-02-10T14:55:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2513-3', 'hist-ticket-103-2513', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T14:55:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2513', 'hist-ticket-103-2513', 'cash', 43000, 'completed', '2026-02-10T14:55:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2514', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-10T12:38:48.000Z', '2026-02-10T12:38:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2514-1', 'hist-ticket-103-2514', 'prod-latte', 1, 15000, 0, '2026-02-10T12:38:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2514', 'hist-ticket-103-2514', 'cash', 15000, 'completed', '2026-02-10T12:38:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2515', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-10T18:40:06.000Z', '2026-02-10T18:40:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2515-1', 'hist-ticket-103-2515', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T18:40:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2515-2', 'hist-ticket-103-2515', 'prod-americano', 1, 12000, 0, '2026-02-10T18:40:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2515', 'hist-ticket-103-2515', 'cash', 26500, 'completed', '2026-02-10T18:40:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2516', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-10T18:07:15.000Z', '2026-02-10T18:07:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2516-1', 'hist-ticket-103-2516', 'prod-mocha', 1, 16500, 0, '2026-02-10T18:07:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2516-2', 'hist-ticket-103-2516', 'prod-americano', 1, 12000, 0, '2026-02-10T18:07:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2516-3', 'hist-ticket-103-2516', 'prod-americano', 1, 12000, 0, '2026-02-10T18:07:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2516', 'hist-ticket-103-2516', 'cash', 40500, 'completed', '2026-02-10T18:07:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2517', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-02-10T15:24:54.000Z', '2026-02-10T15:24:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2517-1', 'hist-ticket-103-2517', 'prod-mocha', 1, 16500, 0, '2026-02-10T15:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2517-2', 'hist-ticket-103-2517', 'prod-latte', 1, 15000, 0, '2026-02-10T15:24:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2517', 'hist-ticket-103-2517', 'cash', 31500, 'completed', '2026-02-10T15:24:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2518', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-10T16:51:32.000Z', '2026-02-10T16:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2518-1', 'hist-ticket-103-2518', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T16:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2518-2', 'hist-ticket-103-2518', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T16:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2518-3', 'hist-ticket-103-2518', 'prod-americano', 1, 12000, 0, '2026-02-10T16:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2518', 'hist-ticket-103-2518', 'cash', 41000, 'completed', '2026-02-10T16:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2519', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-10T11:15:44.000Z', '2026-02-10T11:15:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2519-1', 'hist-ticket-103-2519', 'prod-latte', 1, 15000, 0, '2026-02-10T11:15:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2519', 'hist-ticket-103-2519', 'cash', 15000, 'completed', '2026-02-10T11:15:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2520', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-02-10T16:48:58.000Z', '2026-02-10T16:48:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2520-1', 'hist-ticket-103-2520', 'prod-mocha', 1, 16500, 0, '2026-02-10T16:48:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2520-2', 'hist-ticket-103-2520', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T16:48:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2520-3', 'hist-ticket-103-2520', 'prod-americano', 1, 12000, 0, '2026-02-10T16:48:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2520', 'hist-ticket-103-2520', 'cash', 43000, 'completed', '2026-02-10T16:48:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2521', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-10T16:30:19.000Z', '2026-02-10T16:30:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2521-1', 'hist-ticket-103-2521', 'prod-americano', 1, 12000, 0, '2026-02-10T16:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2521-2', 'hist-ticket-103-2521', 'prod-americano', 1, 12000, 0, '2026-02-10T16:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2521-3', 'hist-ticket-103-2521', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T16:30:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2521-4', 'hist-ticket-103-2521', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T16:30:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2521', 'hist-ticket-103-2521', 'cash', 53000, 'completed', '2026-02-10T16:30:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2522', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-10T08:15:08.000Z', '2026-02-10T08:15:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2522-1', 'hist-ticket-103-2522', 'prod-mocha', 1, 16500, 0, '2026-02-10T08:15:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2522', 'hist-ticket-103-2522', 'cash', 16500, 'completed', '2026-02-10T08:15:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2523', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-10T14:28:48.000Z', '2026-02-10T14:28:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2523-1', 'hist-ticket-103-2523', 'prod-latte', 1, 15000, 0, '2026-02-10T14:28:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2523-2', 'hist-ticket-103-2523', 'prod-mocha', 1, 16500, 0, '2026-02-10T14:28:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2523-3', 'hist-ticket-103-2523', 'prod-mocha', 1, 16500, 0, '2026-02-10T14:28:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2523', 'hist-ticket-103-2523', 'cash', 48000, 'completed', '2026-02-10T14:28:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2524', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-10T10:49:00.000Z', '2026-02-10T10:49:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2524-1', 'hist-ticket-103-2524', 'prod-americano', 1, 12000, 0, '2026-02-10T10:49:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2524-2', 'hist-ticket-103-2524', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T10:49:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2524', 'hist-ticket-103-2524', 'cash', 26500, 'completed', '2026-02-10T10:49:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2525', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-10T15:40:59.000Z', '2026-02-10T15:40:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2525-1', 'hist-ticket-103-2525', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T15:40:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2525-2', 'hist-ticket-103-2525', 'prod-latte', 1, 15000, 0, '2026-02-10T15:40:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2525', 'hist-ticket-103-2525', 'cash', 29500, 'completed', '2026-02-10T15:40:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2526', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-10T19:08:19.000Z', '2026-02-10T19:08:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2526-1', 'hist-ticket-103-2526', 'prod-latte', 1, 15000, 0, '2026-02-10T19:08:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2526-2', 'hist-ticket-103-2526', 'prod-latte', 1, 15000, 0, '2026-02-10T19:08:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2526-3', 'hist-ticket-103-2526', 'prod-americano', 1, 12000, 0, '2026-02-10T19:08:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2526', 'hist-ticket-103-2526', 'cash', 42000, 'completed', '2026-02-10T19:08:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2527', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-02-10T13:27:10.000Z', '2026-02-10T13:27:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2527-1', 'hist-ticket-103-2527', 'prod-mocha', 1, 16500, 0, '2026-02-10T13:27:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2527-2', 'hist-ticket-103-2527', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T13:27:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2527', 'hist-ticket-103-2527', 'cash', 31000, 'completed', '2026-02-10T13:27:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2528', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-02-10T14:50:29.000Z', '2026-02-10T14:50:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2528-1', 'hist-ticket-103-2528', 'prod-mocha', 1, 16500, 0, '2026-02-10T14:50:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2528-2', 'hist-ticket-103-2528', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T14:50:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2528-3', 'hist-ticket-103-2528', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T14:50:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2528', 'hist-ticket-103-2528', 'cash', 45500, 'completed', '2026-02-10T14:50:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2529', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-10T10:46:49.000Z', '2026-02-10T10:46:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2529-1', 'hist-ticket-103-2529', 'prod-americano', 1, 12000, 0, '2026-02-10T10:46:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2529-2', 'hist-ticket-103-2529', 'prod-americano', 1, 12000, 0, '2026-02-10T10:46:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2529', 'hist-ticket-103-2529', 'cash', 24000, 'completed', '2026-02-10T10:46:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2530', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-10T10:22:06.000Z', '2026-02-10T10:22:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2530-1', 'hist-ticket-103-2530', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T10:22:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2530', 'hist-ticket-103-2530', 'cash', 14500, 'completed', '2026-02-10T10:22:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2531', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-10T13:41:58.000Z', '2026-02-10T13:41:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2531-1', 'hist-ticket-103-2531', 'prod-latte', 1, 15000, 0, '2026-02-10T13:41:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2531', 'hist-ticket-103-2531', 'cash', 15000, 'completed', '2026-02-10T13:41:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2532', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-10T14:11:35.000Z', '2026-02-10T14:11:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2532-1', 'hist-ticket-103-2532', 'prod-latte', 1, 15000, 0, '2026-02-10T14:11:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2532-2', 'hist-ticket-103-2532', 'prod-americano', 1, 12000, 0, '2026-02-10T14:11:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2532-3', 'hist-ticket-103-2532', 'prod-mocha', 1, 16500, 0, '2026-02-10T14:11:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2532-4', 'hist-ticket-103-2532', 'prod-americano', 1, 12000, 0, '2026-02-10T14:11:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2532', 'hist-ticket-103-2532', 'cash', 55500, 'completed', '2026-02-10T14:11:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2533', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-02-10T12:35:34.000Z', '2026-02-10T12:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2533-1', 'hist-ticket-103-2533', 'prod-mocha', 1, 16500, 0, '2026-02-10T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2533-2', 'hist-ticket-103-2533', 'prod-latte', 1, 15000, 0, '2026-02-10T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2533-3', 'hist-ticket-103-2533', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2533-4', 'hist-ticket-103-2533', 'prod-mocha', 1, 16500, 0, '2026-02-10T12:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2533', 'hist-ticket-103-2533', 'cash', 62500, 'completed', '2026-02-10T12:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-103-2534', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-10T09:06:15.000Z', '2026-02-10T09:06:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2534-1', 'hist-ticket-103-2534', 'prod-cappuccino', 1, 14500, 0, '2026-02-10T09:06:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2534-2', 'hist-ticket-103-2534', 'prod-mocha', 1, 16500, 0, '2026-02-10T09:06:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-103-2534-3', 'hist-ticket-103-2534', 'prod-latte', 1, 15000, 0, '2026-02-10T09:06:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-103-2534', 'hist-ticket-103-2534', 'cash', 46000, 'completed', '2026-02-10T09:06:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2535', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-11T19:51:26.000Z', '2026-02-11T19:51:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2535-1', 'hist-ticket-104-2535', 'prod-latte', 1, 15000, 0, '2026-02-11T19:51:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2535-2', 'hist-ticket-104-2535', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T19:51:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2535', 'hist-ticket-104-2535', 'cash', 29500, 'completed', '2026-02-11T19:51:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2536', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-11T09:06:58.000Z', '2026-02-11T09:06:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2536-1', 'hist-ticket-104-2536', 'prod-mocha', 1, 16500, 0, '2026-02-11T09:06:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2536-2', 'hist-ticket-104-2536', 'prod-latte', 1, 15000, 0, '2026-02-11T09:06:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2536-3', 'hist-ticket-104-2536', 'prod-latte', 1, 15000, 0, '2026-02-11T09:06:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2536-4', 'hist-ticket-104-2536', 'prod-mocha', 1, 16500, 0, '2026-02-11T09:06:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2536', 'hist-ticket-104-2536', 'cash', 63000, 'completed', '2026-02-11T09:06:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2537', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-11T10:44:22.000Z', '2026-02-11T10:44:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2537-1', 'hist-ticket-104-2537', 'prod-americano', 1, 12000, 0, '2026-02-11T10:44:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2537-2', 'hist-ticket-104-2537', 'prod-americano', 1, 12000, 0, '2026-02-11T10:44:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2537', 'hist-ticket-104-2537', 'cash', 24000, 'completed', '2026-02-11T10:44:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2538', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-02-11T11:49:52.000Z', '2026-02-11T11:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2538-1', 'hist-ticket-104-2538', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T11:49:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2538', 'hist-ticket-104-2538', 'cash', 14500, 'completed', '2026-02-11T11:49:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2539', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-11T14:29:16.000Z', '2026-02-11T14:29:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2539-1', 'hist-ticket-104-2539', 'prod-americano', 1, 12000, 0, '2026-02-11T14:29:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2539', 'hist-ticket-104-2539', 'cash', 12000, 'completed', '2026-02-11T14:29:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2540', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-11T12:05:09.000Z', '2026-02-11T12:05:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2540-1', 'hist-ticket-104-2540', 'prod-latte', 1, 15000, 0, '2026-02-11T12:05:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2540-2', 'hist-ticket-104-2540', 'prod-americano', 1, 12000, 0, '2026-02-11T12:05:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2540-3', 'hist-ticket-104-2540', 'prod-mocha', 1, 16500, 0, '2026-02-11T12:05:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2540-4', 'hist-ticket-104-2540', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T12:05:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2540', 'hist-ticket-104-2540', 'cash', 58000, 'completed', '2026-02-11T12:05:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2541', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-02-11T14:28:11.000Z', '2026-02-11T14:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2541-1', 'hist-ticket-104-2541', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T14:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2541-2', 'hist-ticket-104-2541', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T14:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2541-3', 'hist-ticket-104-2541', 'prod-mocha', 1, 16500, 0, '2026-02-11T14:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2541-4', 'hist-ticket-104-2541', 'prod-americano', 1, 12000, 0, '2026-02-11T14:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2541', 'hist-ticket-104-2541', 'cash', 57500, 'completed', '2026-02-11T14:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2542', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-02-11T10:31:44.000Z', '2026-02-11T10:31:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2542-1', 'hist-ticket-104-2542', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T10:31:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2542-2', 'hist-ticket-104-2542', 'prod-mocha', 1, 16500, 0, '2026-02-11T10:31:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2542-3', 'hist-ticket-104-2542', 'prod-latte', 1, 15000, 0, '2026-02-11T10:31:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2542-4', 'hist-ticket-104-2542', 'prod-americano', 1, 12000, 0, '2026-02-11T10:31:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2542', 'hist-ticket-104-2542', 'cash', 58000, 'completed', '2026-02-11T10:31:44.000Z');