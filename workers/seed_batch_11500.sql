INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2543', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-11T15:02:11.000Z', '2026-02-11T15:02:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2543-1', 'hist-ticket-104-2543', 'prod-mocha', 1, 16500, 0, '2026-02-11T15:02:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2543-2', 'hist-ticket-104-2543', 'prod-latte', 1, 15000, 0, '2026-02-11T15:02:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2543', 'hist-ticket-104-2543', 'cash', 31500, 'completed', '2026-02-11T15:02:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2544', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-11T17:39:54.000Z', '2026-02-11T17:39:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2544-1', 'hist-ticket-104-2544', 'prod-mocha', 1, 16500, 0, '2026-02-11T17:39:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2544-2', 'hist-ticket-104-2544', 'prod-latte', 1, 15000, 0, '2026-02-11T17:39:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2544', 'hist-ticket-104-2544', 'cash', 31500, 'completed', '2026-02-11T17:39:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2545', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-11T14:10:07.000Z', '2026-02-11T14:10:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2545-1', 'hist-ticket-104-2545', 'prod-mocha', 1, 16500, 0, '2026-02-11T14:10:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2545', 'hist-ticket-104-2545', 'cash', 16500, 'completed', '2026-02-11T14:10:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2546', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-02-11T14:14:12.000Z', '2026-02-11T14:14:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2546-1', 'hist-ticket-104-2546', 'prod-mocha', 1, 16500, 0, '2026-02-11T14:14:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2546', 'hist-ticket-104-2546', 'cash', 16500, 'completed', '2026-02-11T14:14:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2547', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-02-11T08:46:34.000Z', '2026-02-11T08:46:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2547-1', 'hist-ticket-104-2547', 'prod-mocha', 1, 16500, 0, '2026-02-11T08:46:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2547-2', 'hist-ticket-104-2547', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T08:46:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2547-3', 'hist-ticket-104-2547', 'prod-latte', 1, 15000, 0, '2026-02-11T08:46:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2547-4', 'hist-ticket-104-2547', 'prod-americano', 1, 12000, 0, '2026-02-11T08:46:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2547', 'hist-ticket-104-2547', 'cash', 58000, 'completed', '2026-02-11T08:46:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2548', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-02-11T09:23:36.000Z', '2026-02-11T09:23:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2548-1', 'hist-ticket-104-2548', 'prod-americano', 1, 12000, 0, '2026-02-11T09:23:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2548-2', 'hist-ticket-104-2548', 'prod-mocha', 1, 16500, 0, '2026-02-11T09:23:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2548', 'hist-ticket-104-2548', 'cash', 28500, 'completed', '2026-02-11T09:23:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2549', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-02-11T11:13:03.000Z', '2026-02-11T11:13:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2549-1', 'hist-ticket-104-2549', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T11:13:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2549', 'hist-ticket-104-2549', 'cash', 14500, 'completed', '2026-02-11T11:13:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2550', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-11T18:45:33.000Z', '2026-02-11T18:45:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2550-1', 'hist-ticket-104-2550', 'prod-latte', 1, 15000, 0, '2026-02-11T18:45:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2550-2', 'hist-ticket-104-2550', 'prod-latte', 1, 15000, 0, '2026-02-11T18:45:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2550-3', 'hist-ticket-104-2550', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T18:45:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2550', 'hist-ticket-104-2550', 'cash', 44500, 'completed', '2026-02-11T18:45:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2551', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-11T15:55:12.000Z', '2026-02-11T15:55:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2551-1', 'hist-ticket-104-2551', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T15:55:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2551', 'hist-ticket-104-2551', 'cash', 14500, 'completed', '2026-02-11T15:55:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2552', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-02-11T18:50:20.000Z', '2026-02-11T18:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2552-1', 'hist-ticket-104-2552', 'prod-latte', 1, 15000, 0, '2026-02-11T18:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2552-2', 'hist-ticket-104-2552', 'prod-americano', 1, 12000, 0, '2026-02-11T18:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2552', 'hist-ticket-104-2552', 'cash', 27000, 'completed', '2026-02-11T18:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2553', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-11T11:50:51.000Z', '2026-02-11T11:50:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2553-1', 'hist-ticket-104-2553', 'prod-latte', 1, 15000, 0, '2026-02-11T11:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2553-2', 'hist-ticket-104-2553', 'prod-latte', 1, 15000, 0, '2026-02-11T11:50:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2553-3', 'hist-ticket-104-2553', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T11:50:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2553', 'hist-ticket-104-2553', 'cash', 44500, 'completed', '2026-02-11T11:50:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2554', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-11T12:27:00.000Z', '2026-02-11T12:27:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2554-1', 'hist-ticket-104-2554', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T12:27:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2554-2', 'hist-ticket-104-2554', 'prod-mocha', 1, 16500, 0, '2026-02-11T12:27:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2554', 'hist-ticket-104-2554', 'cash', 31000, 'completed', '2026-02-11T12:27:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2555', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-11T13:38:23.000Z', '2026-02-11T13:38:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2555-1', 'hist-ticket-104-2555', 'prod-mocha', 1, 16500, 0, '2026-02-11T13:38:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2555', 'hist-ticket-104-2555', 'cash', 16500, 'completed', '2026-02-11T13:38:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2556', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-11T14:38:50.000Z', '2026-02-11T14:38:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2556-1', 'hist-ticket-104-2556', 'prod-americano', 1, 12000, 0, '2026-02-11T14:38:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2556-2', 'hist-ticket-104-2556', 'prod-americano', 1, 12000, 0, '2026-02-11T14:38:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2556', 'hist-ticket-104-2556', 'cash', 24000, 'completed', '2026-02-11T14:38:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2557', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-02-11T17:03:53.000Z', '2026-02-11T17:03:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2557-1', 'hist-ticket-104-2557', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T17:03:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2557-2', 'hist-ticket-104-2557', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T17:03:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2557-3', 'hist-ticket-104-2557', 'prod-mocha', 1, 16500, 0, '2026-02-11T17:03:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2557', 'hist-ticket-104-2557', 'cash', 45500, 'completed', '2026-02-11T17:03:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2558', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-02-11T11:50:00.000Z', '2026-02-11T11:50:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2558-1', 'hist-ticket-104-2558', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T11:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2558-2', 'hist-ticket-104-2558', 'prod-americano', 1, 12000, 0, '2026-02-11T11:50:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2558', 'hist-ticket-104-2558', 'cash', 26500, 'completed', '2026-02-11T11:50:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2559', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-11T17:03:42.000Z', '2026-02-11T17:03:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2559-1', 'hist-ticket-104-2559', 'prod-americano', 1, 12000, 0, '2026-02-11T17:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2559-2', 'hist-ticket-104-2559', 'prod-mocha', 1, 16500, 0, '2026-02-11T17:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2559-3', 'hist-ticket-104-2559', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T17:03:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2559', 'hist-ticket-104-2559', 'cash', 43000, 'completed', '2026-02-11T17:03:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2560', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-11T10:39:04.000Z', '2026-02-11T10:39:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2560-1', 'hist-ticket-104-2560', 'prod-latte', 1, 15000, 0, '2026-02-11T10:39:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2560-2', 'hist-ticket-104-2560', 'prod-americano', 1, 12000, 0, '2026-02-11T10:39:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2560-3', 'hist-ticket-104-2560', 'prod-mocha', 1, 16500, 0, '2026-02-11T10:39:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2560', 'hist-ticket-104-2560', 'cash', 43500, 'completed', '2026-02-11T10:39:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2561', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-11T16:17:37.000Z', '2026-02-11T16:17:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2561-1', 'hist-ticket-104-2561', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T16:17:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2561-2', 'hist-ticket-104-2561', 'prod-cappuccino', 1, 14500, 0, '2026-02-11T16:17:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2561', 'hist-ticket-104-2561', 'cash', 29000, 'completed', '2026-02-11T16:17:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-104-2562', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-11T17:33:12.000Z', '2026-02-11T17:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2562-1', 'hist-ticket-104-2562', 'prod-latte', 1, 15000, 0, '2026-02-11T17:33:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-104-2562-2', 'hist-ticket-104-2562', 'prod-mocha', 1, 16500, 0, '2026-02-11T17:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-104-2562', 'hist-ticket-104-2562', 'cash', 31500, 'completed', '2026-02-11T17:33:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2563', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-12T19:34:00.000Z', '2026-02-12T19:34:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2563-1', 'hist-ticket-105-2563', 'prod-mocha', 1, 16500, 0, '2026-02-12T19:34:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2563', 'hist-ticket-105-2563', 'cash', 16500, 'completed', '2026-02-12T19:34:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2564', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-02-12T13:29:06.000Z', '2026-02-12T13:29:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2564-1', 'hist-ticket-105-2564', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T13:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2564-2', 'hist-ticket-105-2564', 'prod-americano', 1, 12000, 0, '2026-02-12T13:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2564-3', 'hist-ticket-105-2564', 'prod-mocha', 1, 16500, 0, '2026-02-12T13:29:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2564-4', 'hist-ticket-105-2564', 'prod-americano', 1, 12000, 0, '2026-02-12T13:29:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2564', 'hist-ticket-105-2564', 'cash', 55000, 'completed', '2026-02-12T13:29:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2565', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-12T13:28:49.000Z', '2026-02-12T13:28:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2565-1', 'hist-ticket-105-2565', 'prod-mocha', 1, 16500, 0, '2026-02-12T13:28:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2565', 'hist-ticket-105-2565', 'cash', 16500, 'completed', '2026-02-12T13:28:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2566', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-12T18:20:02.000Z', '2026-02-12T18:20:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2566-1', 'hist-ticket-105-2566', 'prod-latte', 1, 15000, 0, '2026-02-12T18:20:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2566-2', 'hist-ticket-105-2566', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T18:20:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2566-3', 'hist-ticket-105-2566', 'prod-latte', 1, 15000, 0, '2026-02-12T18:20:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2566', 'hist-ticket-105-2566', 'cash', 44500, 'completed', '2026-02-12T18:20:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2567', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-12T10:04:09.000Z', '2026-02-12T10:04:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2567-1', 'hist-ticket-105-2567', 'prod-latte', 1, 15000, 0, '2026-02-12T10:04:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2567-2', 'hist-ticket-105-2567', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T10:04:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2567-3', 'hist-ticket-105-2567', 'prod-latte', 1, 15000, 0, '2026-02-12T10:04:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2567-4', 'hist-ticket-105-2567', 'prod-americano', 1, 12000, 0, '2026-02-12T10:04:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2567', 'hist-ticket-105-2567', 'cash', 56500, 'completed', '2026-02-12T10:04:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2568', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-12T15:53:50.000Z', '2026-02-12T15:53:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2568-1', 'hist-ticket-105-2568', 'prod-americano', 1, 12000, 0, '2026-02-12T15:53:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2568', 'hist-ticket-105-2568', 'cash', 12000, 'completed', '2026-02-12T15:53:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2569', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-02-12T17:57:37.000Z', '2026-02-12T17:57:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2569-1', 'hist-ticket-105-2569', 'prod-latte', 1, 15000, 0, '2026-02-12T17:57:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2569', 'hist-ticket-105-2569', 'cash', 15000, 'completed', '2026-02-12T17:57:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2570', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-12T18:27:02.000Z', '2026-02-12T18:27:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2570-1', 'hist-ticket-105-2570', 'prod-americano', 1, 12000, 0, '2026-02-12T18:27:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2570-2', 'hist-ticket-105-2570', 'prod-americano', 1, 12000, 0, '2026-02-12T18:27:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2570', 'hist-ticket-105-2570', 'cash', 24000, 'completed', '2026-02-12T18:27:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2571', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-12T13:48:21.000Z', '2026-02-12T13:48:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2571-1', 'hist-ticket-105-2571', 'prod-americano', 1, 12000, 0, '2026-02-12T13:48:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2571-2', 'hist-ticket-105-2571', 'prod-mocha', 1, 16500, 0, '2026-02-12T13:48:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2571-3', 'hist-ticket-105-2571', 'prod-americano', 1, 12000, 0, '2026-02-12T13:48:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2571-4', 'hist-ticket-105-2571', 'prod-latte', 1, 15000, 0, '2026-02-12T13:48:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2571', 'hist-ticket-105-2571', 'cash', 55500, 'completed', '2026-02-12T13:48:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2572', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-12T15:40:15.000Z', '2026-02-12T15:40:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2572-1', 'hist-ticket-105-2572', 'prod-mocha', 1, 16500, 0, '2026-02-12T15:40:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2572-2', 'hist-ticket-105-2572', 'prod-mocha', 1, 16500, 0, '2026-02-12T15:40:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2572', 'hist-ticket-105-2572', 'cash', 33000, 'completed', '2026-02-12T15:40:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2573', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-12T11:21:19.000Z', '2026-02-12T11:21:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2573-1', 'hist-ticket-105-2573', 'prod-latte', 1, 15000, 0, '2026-02-12T11:21:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2573-2', 'hist-ticket-105-2573', 'prod-latte', 1, 15000, 0, '2026-02-12T11:21:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2573-3', 'hist-ticket-105-2573', 'prod-mocha', 1, 16500, 0, '2026-02-12T11:21:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2573', 'hist-ticket-105-2573', 'cash', 46500, 'completed', '2026-02-12T11:21:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2574', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-02-12T13:50:02.000Z', '2026-02-12T13:50:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2574-1', 'hist-ticket-105-2574', 'prod-mocha', 1, 16500, 0, '2026-02-12T13:50:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2574-2', 'hist-ticket-105-2574', 'prod-americano', 1, 12000, 0, '2026-02-12T13:50:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2574', 'hist-ticket-105-2574', 'cash', 28500, 'completed', '2026-02-12T13:50:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2575', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-12T13:17:55.000Z', '2026-02-12T13:17:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2575-1', 'hist-ticket-105-2575', 'prod-americano', 1, 12000, 0, '2026-02-12T13:17:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2575-2', 'hist-ticket-105-2575', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T13:17:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2575-3', 'hist-ticket-105-2575', 'prod-americano', 1, 12000, 0, '2026-02-12T13:17:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2575', 'hist-ticket-105-2575', 'cash', 38500, 'completed', '2026-02-12T13:17:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2576', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-12T18:09:40.000Z', '2026-02-12T18:09:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2576-1', 'hist-ticket-105-2576', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T18:09:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2576', 'hist-ticket-105-2576', 'cash', 14500, 'completed', '2026-02-12T18:09:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2577', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-12T19:45:02.000Z', '2026-02-12T19:45:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2577-1', 'hist-ticket-105-2577', 'prod-americano', 1, 12000, 0, '2026-02-12T19:45:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2577-2', 'hist-ticket-105-2577', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T19:45:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2577', 'hist-ticket-105-2577', 'cash', 26500, 'completed', '2026-02-12T19:45:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2578', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-12T08:37:28.000Z', '2026-02-12T08:37:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2578-1', 'hist-ticket-105-2578', 'prod-americano', 1, 12000, 0, '2026-02-12T08:37:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2578-2', 'hist-ticket-105-2578', 'prod-americano', 1, 12000, 0, '2026-02-12T08:37:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2578-3', 'hist-ticket-105-2578', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T08:37:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2578-4', 'hist-ticket-105-2578', 'prod-mocha', 1, 16500, 0, '2026-02-12T08:37:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2578', 'hist-ticket-105-2578', 'cash', 55000, 'completed', '2026-02-12T08:37:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2579', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-12T19:36:37.000Z', '2026-02-12T19:36:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2579-1', 'hist-ticket-105-2579', 'prod-americano', 1, 12000, 0, '2026-02-12T19:36:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2579-2', 'hist-ticket-105-2579', 'prod-americano', 1, 12000, 0, '2026-02-12T19:36:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2579-3', 'hist-ticket-105-2579', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T19:36:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2579-4', 'hist-ticket-105-2579', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T19:36:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2579', 'hist-ticket-105-2579', 'cash', 53000, 'completed', '2026-02-12T19:36:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2580', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-12T19:28:44.000Z', '2026-02-12T19:28:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2580-1', 'hist-ticket-105-2580', 'prod-mocha', 1, 16500, 0, '2026-02-12T19:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2580-2', 'hist-ticket-105-2580', 'prod-latte', 1, 15000, 0, '2026-02-12T19:28:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2580', 'hist-ticket-105-2580', 'cash', 31500, 'completed', '2026-02-12T19:28:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2581', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-12T17:41:49.000Z', '2026-02-12T17:41:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2581-1', 'hist-ticket-105-2581', 'prod-latte', 1, 15000, 0, '2026-02-12T17:41:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2581-2', 'hist-ticket-105-2581', 'prod-latte', 1, 15000, 0, '2026-02-12T17:41:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2581-3', 'hist-ticket-105-2581', 'prod-latte', 1, 15000, 0, '2026-02-12T17:41:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2581-4', 'hist-ticket-105-2581', 'prod-americano', 1, 12000, 0, '2026-02-12T17:41:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2581', 'hist-ticket-105-2581', 'cash', 57000, 'completed', '2026-02-12T17:41:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2582', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-12T17:25:37.000Z', '2026-02-12T17:25:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2582-1', 'hist-ticket-105-2582', 'prod-americano', 1, 12000, 0, '2026-02-12T17:25:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2582-2', 'hist-ticket-105-2582', 'prod-americano', 1, 12000, 0, '2026-02-12T17:25:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2582-3', 'hist-ticket-105-2582', 'prod-mocha', 1, 16500, 0, '2026-02-12T17:25:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2582-4', 'hist-ticket-105-2582', 'prod-cappuccino', 1, 14500, 0, '2026-02-12T17:25:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2582', 'hist-ticket-105-2582', 'cash', 55000, 'completed', '2026-02-12T17:25:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-105-2583', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-12T09:54:21.000Z', '2026-02-12T09:54:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2583-1', 'hist-ticket-105-2583', 'prod-latte', 1, 15000, 0, '2026-02-12T09:54:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2583-2', 'hist-ticket-105-2583', 'prod-americano', 1, 12000, 0, '2026-02-12T09:54:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2583-3', 'hist-ticket-105-2583', 'prod-latte', 1, 15000, 0, '2026-02-12T09:54:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-105-2583-4', 'hist-ticket-105-2583', 'prod-mocha', 1, 16500, 0, '2026-02-12T09:54:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-105-2583', 'hist-ticket-105-2583', 'cash', 58500, 'completed', '2026-02-12T09:54:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2584', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-13T12:21:21.000Z', '2026-02-13T12:21:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2584-1', 'hist-ticket-106-2584', 'prod-americano', 1, 12000, 0, '2026-02-13T12:21:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2584', 'hist-ticket-106-2584', 'cash', 12000, 'completed', '2026-02-13T12:21:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2585', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-02-13T11:38:07.000Z', '2026-02-13T11:38:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2585-1', 'hist-ticket-106-2585', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T11:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2585-2', 'hist-ticket-106-2585', 'prod-latte', 1, 15000, 0, '2026-02-13T11:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2585-3', 'hist-ticket-106-2585', 'prod-mocha', 1, 16500, 0, '2026-02-13T11:38:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2585-4', 'hist-ticket-106-2585', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T11:38:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2585', 'hist-ticket-106-2585', 'cash', 60500, 'completed', '2026-02-13T11:38:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2586', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-13T18:50:44.000Z', '2026-02-13T18:50:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2586-1', 'hist-ticket-106-2586', 'prod-americano', 1, 12000, 0, '2026-02-13T18:50:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2586-2', 'hist-ticket-106-2586', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T18:50:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2586', 'hist-ticket-106-2586', 'cash', 26500, 'completed', '2026-02-13T18:50:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2587', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-13T16:01:32.000Z', '2026-02-13T16:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2587-1', 'hist-ticket-106-2587', 'prod-latte', 1, 15000, 0, '2026-02-13T16:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2587-2', 'hist-ticket-106-2587', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T16:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2587-3', 'hist-ticket-106-2587', 'prod-americano', 1, 12000, 0, '2026-02-13T16:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2587-4', 'hist-ticket-106-2587', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T16:01:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2587', 'hist-ticket-106-2587', 'cash', 56000, 'completed', '2026-02-13T16:01:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2588', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-13T18:59:38.000Z', '2026-02-13T18:59:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2588-1', 'hist-ticket-106-2588', 'prod-latte', 1, 15000, 0, '2026-02-13T18:59:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2588', 'hist-ticket-106-2588', 'cash', 15000, 'completed', '2026-02-13T18:59:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2589', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-13T14:26:27.000Z', '2026-02-13T14:26:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2589-1', 'hist-ticket-106-2589', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T14:26:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2589', 'hist-ticket-106-2589', 'cash', 14500, 'completed', '2026-02-13T14:26:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2590', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-13T11:31:33.000Z', '2026-02-13T11:31:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2590-1', 'hist-ticket-106-2590', 'prod-mocha', 1, 16500, 0, '2026-02-13T11:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2590-2', 'hist-ticket-106-2590', 'prod-latte', 1, 15000, 0, '2026-02-13T11:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2590-3', 'hist-ticket-106-2590', 'prod-latte', 1, 15000, 0, '2026-02-13T11:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2590-4', 'hist-ticket-106-2590', 'prod-americano', 1, 12000, 0, '2026-02-13T11:31:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2590', 'hist-ticket-106-2590', 'cash', 58500, 'completed', '2026-02-13T11:31:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2591', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-02-13T09:30:37.000Z', '2026-02-13T09:30:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2591-1', 'hist-ticket-106-2591', 'prod-latte', 1, 15000, 0, '2026-02-13T09:30:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2591', 'hist-ticket-106-2591', 'cash', 15000, 'completed', '2026-02-13T09:30:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2592', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-13T14:00:54.000Z', '2026-02-13T14:00:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2592-1', 'hist-ticket-106-2592', 'prod-americano', 1, 12000, 0, '2026-02-13T14:00:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2592-2', 'hist-ticket-106-2592', 'prod-latte', 1, 15000, 0, '2026-02-13T14:00:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2592', 'hist-ticket-106-2592', 'cash', 27000, 'completed', '2026-02-13T14:00:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2593', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-13T14:14:33.000Z', '2026-02-13T14:14:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2593-1', 'hist-ticket-106-2593', 'prod-latte', 1, 15000, 0, '2026-02-13T14:14:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2593-2', 'hist-ticket-106-2593', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T14:14:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2593-3', 'hist-ticket-106-2593', 'prod-latte', 1, 15000, 0, '2026-02-13T14:14:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2593', 'hist-ticket-106-2593', 'cash', 44500, 'completed', '2026-02-13T14:14:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2594', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-02-13T13:59:51.000Z', '2026-02-13T13:59:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2594-1', 'hist-ticket-106-2594', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T13:59:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2594-2', 'hist-ticket-106-2594', 'prod-mocha', 1, 16500, 0, '2026-02-13T13:59:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2594-3', 'hist-ticket-106-2594', 'prod-mocha', 1, 16500, 0, '2026-02-13T13:59:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2594', 'hist-ticket-106-2594', 'cash', 47500, 'completed', '2026-02-13T13:59:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2595', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-13T10:44:12.000Z', '2026-02-13T10:44:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2595-1', 'hist-ticket-106-2595', 'prod-americano', 1, 12000, 0, '2026-02-13T10:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2595-2', 'hist-ticket-106-2595', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T10:44:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2595', 'hist-ticket-106-2595', 'cash', 26500, 'completed', '2026-02-13T10:44:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2596', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-13T13:04:35.000Z', '2026-02-13T13:04:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2596-1', 'hist-ticket-106-2596', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T13:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2596-2', 'hist-ticket-106-2596', 'prod-americano', 1, 12000, 0, '2026-02-13T13:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2596-3', 'hist-ticket-106-2596', 'prod-americano', 1, 12000, 0, '2026-02-13T13:04:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2596', 'hist-ticket-106-2596', 'cash', 38500, 'completed', '2026-02-13T13:04:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2597', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-13T11:45:19.000Z', '2026-02-13T11:45:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2597-1', 'hist-ticket-106-2597', 'prod-mocha', 1, 16500, 0, '2026-02-13T11:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2597-2', 'hist-ticket-106-2597', 'prod-latte', 1, 15000, 0, '2026-02-13T11:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2597-3', 'hist-ticket-106-2597', 'prod-americano', 1, 12000, 0, '2026-02-13T11:45:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2597-4', 'hist-ticket-106-2597', 'prod-latte', 1, 15000, 0, '2026-02-13T11:45:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2597', 'hist-ticket-106-2597', 'cash', 58500, 'completed', '2026-02-13T11:45:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2598', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-13T14:39:23.000Z', '2026-02-13T14:39:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2598-1', 'hist-ticket-106-2598', 'prod-latte', 1, 15000, 0, '2026-02-13T14:39:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2598-2', 'hist-ticket-106-2598', 'prod-mocha', 1, 16500, 0, '2026-02-13T14:39:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2598', 'hist-ticket-106-2598', 'cash', 31500, 'completed', '2026-02-13T14:39:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2599', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-13T18:16:16.000Z', '2026-02-13T18:16:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2599-1', 'hist-ticket-106-2599', 'prod-mocha', 1, 16500, 0, '2026-02-13T18:16:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2599', 'hist-ticket-106-2599', 'cash', 16500, 'completed', '2026-02-13T18:16:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2600', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-13T16:10:57.000Z', '2026-02-13T16:10:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2600-1', 'hist-ticket-106-2600', 'prod-latte', 1, 15000, 0, '2026-02-13T16:10:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2600-2', 'hist-ticket-106-2600', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T16:10:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2600-3', 'hist-ticket-106-2600', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T16:10:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2600', 'hist-ticket-106-2600', 'cash', 44000, 'completed', '2026-02-13T16:10:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2601', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-13T10:05:35.000Z', '2026-02-13T10:05:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2601-1', 'hist-ticket-106-2601', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T10:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2601-2', 'hist-ticket-106-2601', 'prod-latte', 1, 15000, 0, '2026-02-13T10:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2601-3', 'hist-ticket-106-2601', 'prod-mocha', 1, 16500, 0, '2026-02-13T10:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2601-4', 'hist-ticket-106-2601', 'prod-latte', 1, 15000, 0, '2026-02-13T10:05:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2601', 'hist-ticket-106-2601', 'cash', 61000, 'completed', '2026-02-13T10:05:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2602', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-13T19:48:55.000Z', '2026-02-13T19:48:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2602-1', 'hist-ticket-106-2602', 'prod-latte', 1, 15000, 0, '2026-02-13T19:48:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2602-2', 'hist-ticket-106-2602', 'prod-mocha', 1, 16500, 0, '2026-02-13T19:48:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2602-3', 'hist-ticket-106-2602', 'prod-cappuccino', 1, 14500, 0, '2026-02-13T19:48:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2602', 'hist-ticket-106-2602', 'cash', 46000, 'completed', '2026-02-13T19:48:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-106-2603', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-13T13:36:07.000Z', '2026-02-13T13:36:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2603-1', 'hist-ticket-106-2603', 'prod-americano', 1, 12000, 0, '2026-02-13T13:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2603-2', 'hist-ticket-106-2603', 'prod-mocha', 1, 16500, 0, '2026-02-13T13:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2603-3', 'hist-ticket-106-2603', 'prod-latte', 1, 15000, 0, '2026-02-13T13:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-106-2603-4', 'hist-ticket-106-2603', 'prod-mocha', 1, 16500, 0, '2026-02-13T13:36:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-106-2603', 'hist-ticket-106-2603', 'cash', 60000, 'completed', '2026-02-13T13:36:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2604', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-14T11:08:48.000Z', '2026-02-14T11:08:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2604-1', 'hist-ticket-107-2604', 'prod-mocha', 1, 16500, 0, '2026-02-14T11:08:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2604', 'hist-ticket-107-2604', 'cash', 16500, 'completed', '2026-02-14T11:08:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2605', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-14T13:29:52.000Z', '2026-02-14T13:29:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2605-1', 'hist-ticket-107-2605', 'prod-americano', 1, 12000, 0, '2026-02-14T13:29:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2605-2', 'hist-ticket-107-2605', 'prod-americano', 1, 12000, 0, '2026-02-14T13:29:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2605', 'hist-ticket-107-2605', 'cash', 24000, 'completed', '2026-02-14T13:29:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2606', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-14T13:18:01.000Z', '2026-02-14T13:18:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2606-1', 'hist-ticket-107-2606', 'prod-latte', 1, 15000, 0, '2026-02-14T13:18:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2606-2', 'hist-ticket-107-2606', 'prod-americano', 1, 12000, 0, '2026-02-14T13:18:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2606-3', 'hist-ticket-107-2606', 'prod-americano', 1, 12000, 0, '2026-02-14T13:18:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2606', 'hist-ticket-107-2606', 'cash', 39000, 'completed', '2026-02-14T13:18:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2607', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-14T13:18:30.000Z', '2026-02-14T13:18:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2607-1', 'hist-ticket-107-2607', 'prod-latte', 1, 15000, 0, '2026-02-14T13:18:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2607-2', 'hist-ticket-107-2607', 'prod-latte', 1, 15000, 0, '2026-02-14T13:18:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2607', 'hist-ticket-107-2607', 'cash', 30000, 'completed', '2026-02-14T13:18:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2608', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-14T10:11:02.000Z', '2026-02-14T10:11:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2608-1', 'hist-ticket-107-2608', 'prod-latte', 1, 15000, 0, '2026-02-14T10:11:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2608', 'hist-ticket-107-2608', 'cash', 15000, 'completed', '2026-02-14T10:11:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2609', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-14T16:46:14.000Z', '2026-02-14T16:46:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2609-1', 'hist-ticket-107-2609', 'prod-latte', 1, 15000, 0, '2026-02-14T16:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2609-2', 'hist-ticket-107-2609', 'prod-latte', 1, 15000, 0, '2026-02-14T16:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2609-3', 'hist-ticket-107-2609', 'prod-latte', 1, 15000, 0, '2026-02-14T16:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2609-4', 'hist-ticket-107-2609', 'prod-latte', 1, 15000, 0, '2026-02-14T16:46:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2609', 'hist-ticket-107-2609', 'cash', 60000, 'completed', '2026-02-14T16:46:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2610', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-14T10:32:17.000Z', '2026-02-14T10:32:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2610-1', 'hist-ticket-107-2610', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T10:32:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2610-2', 'hist-ticket-107-2610', 'prod-mocha', 1, 16500, 0, '2026-02-14T10:32:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2610-3', 'hist-ticket-107-2610', 'prod-mocha', 1, 16500, 0, '2026-02-14T10:32:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2610-4', 'hist-ticket-107-2610', 'prod-mocha', 1, 16500, 0, '2026-02-14T10:32:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2610', 'hist-ticket-107-2610', 'cash', 64000, 'completed', '2026-02-14T10:32:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2611', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-14T12:32:39.000Z', '2026-02-14T12:32:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2611-1', 'hist-ticket-107-2611', 'prod-latte', 1, 15000, 0, '2026-02-14T12:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2611-2', 'hist-ticket-107-2611', 'prod-mocha', 1, 16500, 0, '2026-02-14T12:32:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2611-3', 'hist-ticket-107-2611', 'prod-latte', 1, 15000, 0, '2026-02-14T12:32:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2611', 'hist-ticket-107-2611', 'cash', 46500, 'completed', '2026-02-14T12:32:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2612', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-14T18:58:33.000Z', '2026-02-14T18:58:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2612-1', 'hist-ticket-107-2612', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T18:58:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2612-2', 'hist-ticket-107-2612', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T18:58:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2612-3', 'hist-ticket-107-2612', 'prod-americano', 1, 12000, 0, '2026-02-14T18:58:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2612-4', 'hist-ticket-107-2612', 'prod-latte', 1, 15000, 0, '2026-02-14T18:58:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2612', 'hist-ticket-107-2612', 'cash', 56000, 'completed', '2026-02-14T18:58:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2613', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-14T09:54:58.000Z', '2026-02-14T09:54:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2613-1', 'hist-ticket-107-2613', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T09:54:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2613-2', 'hist-ticket-107-2613', 'prod-mocha', 1, 16500, 0, '2026-02-14T09:54:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2613', 'hist-ticket-107-2613', 'cash', 31000, 'completed', '2026-02-14T09:54:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2614', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-14T14:30:51.000Z', '2026-02-14T14:30:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2614-1', 'hist-ticket-107-2614', 'prod-americano', 1, 12000, 0, '2026-02-14T14:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2614-2', 'hist-ticket-107-2614', 'prod-americano', 1, 12000, 0, '2026-02-14T14:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2614-3', 'hist-ticket-107-2614', 'prod-latte', 1, 15000, 0, '2026-02-14T14:30:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2614', 'hist-ticket-107-2614', 'cash', 39000, 'completed', '2026-02-14T14:30:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2615', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-14T09:10:58.000Z', '2026-02-14T09:10:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2615-1', 'hist-ticket-107-2615', 'prod-latte', 1, 15000, 0, '2026-02-14T09:10:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2615-2', 'hist-ticket-107-2615', 'prod-latte', 1, 15000, 0, '2026-02-14T09:10:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2615-3', 'hist-ticket-107-2615', 'prod-americano', 1, 12000, 0, '2026-02-14T09:10:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2615-4', 'hist-ticket-107-2615', 'prod-mocha', 1, 16500, 0, '2026-02-14T09:10:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2615', 'hist-ticket-107-2615', 'cash', 58500, 'completed', '2026-02-14T09:10:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2616', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-14T16:18:00.000Z', '2026-02-14T16:18:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2616-1', 'hist-ticket-107-2616', 'prod-mocha', 1, 16500, 0, '2026-02-14T16:18:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2616-2', 'hist-ticket-107-2616', 'prod-latte', 1, 15000, 0, '2026-02-14T16:18:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2616-3', 'hist-ticket-107-2616', 'prod-americano', 1, 12000, 0, '2026-02-14T16:18:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2616', 'hist-ticket-107-2616', 'cash', 43500, 'completed', '2026-02-14T16:18:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2617', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-14T10:39:50.000Z', '2026-02-14T10:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2617-1', 'hist-ticket-107-2617', 'prod-latte', 1, 15000, 0, '2026-02-14T10:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2617-2', 'hist-ticket-107-2617', 'prod-latte', 1, 15000, 0, '2026-02-14T10:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2617-3', 'hist-ticket-107-2617', 'prod-mocha', 1, 16500, 0, '2026-02-14T10:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2617', 'hist-ticket-107-2617', 'cash', 46500, 'completed', '2026-02-14T10:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2618', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-14T08:40:39.000Z', '2026-02-14T08:40:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2618-1', 'hist-ticket-107-2618', 'prod-mocha', 1, 16500, 0, '2026-02-14T08:40:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2618-2', 'hist-ticket-107-2618', 'prod-mocha', 1, 16500, 0, '2026-02-14T08:40:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2618-3', 'hist-ticket-107-2618', 'prod-latte', 1, 15000, 0, '2026-02-14T08:40:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2618-4', 'hist-ticket-107-2618', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T08:40:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2618', 'hist-ticket-107-2618', 'cash', 62500, 'completed', '2026-02-14T08:40:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2619', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-14T14:31:28.000Z', '2026-02-14T14:31:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2619-1', 'hist-ticket-107-2619', 'prod-americano', 1, 12000, 0, '2026-02-14T14:31:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2619', 'hist-ticket-107-2619', 'cash', 12000, 'completed', '2026-02-14T14:31:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2620', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-14T08:03:58.000Z', '2026-02-14T08:03:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2620-1', 'hist-ticket-107-2620', 'prod-americano', 1, 12000, 0, '2026-02-14T08:03:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2620-2', 'hist-ticket-107-2620', 'prod-americano', 1, 12000, 0, '2026-02-14T08:03:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2620-3', 'hist-ticket-107-2620', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T08:03:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2620-4', 'hist-ticket-107-2620', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T08:03:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2620', 'hist-ticket-107-2620', 'cash', 53000, 'completed', '2026-02-14T08:03:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2621', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-14T12:09:35.000Z', '2026-02-14T12:09:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2621-1', 'hist-ticket-107-2621', 'prod-americano', 1, 12000, 0, '2026-02-14T12:09:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2621-2', 'hist-ticket-107-2621', 'prod-latte', 1, 15000, 0, '2026-02-14T12:09:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2621', 'hist-ticket-107-2621', 'cash', 27000, 'completed', '2026-02-14T12:09:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2622', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-14T11:52:27.000Z', '2026-02-14T11:52:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2622-1', 'hist-ticket-107-2622', 'prod-americano', 1, 12000, 0, '2026-02-14T11:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2622-2', 'hist-ticket-107-2622', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T11:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2622-3', 'hist-ticket-107-2622', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T11:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2622-4', 'hist-ticket-107-2622', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T11:52:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2622', 'hist-ticket-107-2622', 'cash', 55500, 'completed', '2026-02-14T11:52:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2623', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-14T11:18:22.000Z', '2026-02-14T11:18:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2623-1', 'hist-ticket-107-2623', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T11:18:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2623-2', 'hist-ticket-107-2623', 'prod-latte', 1, 15000, 0, '2026-02-14T11:18:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2623', 'hist-ticket-107-2623', 'cash', 29500, 'completed', '2026-02-14T11:18:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2624', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-02-14T13:55:57.000Z', '2026-02-14T13:55:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2624-1', 'hist-ticket-107-2624', 'prod-latte', 1, 15000, 0, '2026-02-14T13:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2624-2', 'hist-ticket-107-2624', 'prod-mocha', 1, 16500, 0, '2026-02-14T13:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2624-3', 'hist-ticket-107-2624', 'prod-latte', 1, 15000, 0, '2026-02-14T13:55:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2624-4', 'hist-ticket-107-2624', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T13:55:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2624', 'hist-ticket-107-2624', 'cash', 61000, 'completed', '2026-02-14T13:55:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2625', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-14T14:33:35.000Z', '2026-02-14T14:33:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2625-1', 'hist-ticket-107-2625', 'prod-mocha', 1, 16500, 0, '2026-02-14T14:33:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2625', 'hist-ticket-107-2625', 'cash', 16500, 'completed', '2026-02-14T14:33:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2626', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-14T10:36:30.000Z', '2026-02-14T10:36:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2626-1', 'hist-ticket-107-2626', 'prod-latte', 1, 15000, 0, '2026-02-14T10:36:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2626-2', 'hist-ticket-107-2626', 'prod-americano', 1, 12000, 0, '2026-02-14T10:36:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2626-3', 'hist-ticket-107-2626', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T10:36:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2626', 'hist-ticket-107-2626', 'cash', 41500, 'completed', '2026-02-14T10:36:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2627', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-02-14T12:25:31.000Z', '2026-02-14T12:25:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2627-1', 'hist-ticket-107-2627', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T12:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2627-2', 'hist-ticket-107-2627', 'prod-americano', 1, 12000, 0, '2026-02-14T12:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2627-3', 'hist-ticket-107-2627', 'prod-mocha', 1, 16500, 0, '2026-02-14T12:25:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2627-4', 'hist-ticket-107-2627', 'prod-mocha', 1, 16500, 0, '2026-02-14T12:25:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2627', 'hist-ticket-107-2627', 'cash', 59500, 'completed', '2026-02-14T12:25:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2628', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-14T13:47:51.000Z', '2026-02-14T13:47:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2628-1', 'hist-ticket-107-2628', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T13:47:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2628-2', 'hist-ticket-107-2628', 'prod-mocha', 1, 16500, 0, '2026-02-14T13:47:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2628-3', 'hist-ticket-107-2628', 'prod-mocha', 1, 16500, 0, '2026-02-14T13:47:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2628-4', 'hist-ticket-107-2628', 'prod-latte', 1, 15000, 0, '2026-02-14T13:47:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2628', 'hist-ticket-107-2628', 'cash', 62500, 'completed', '2026-02-14T13:47:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2629', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-14T09:52:22.000Z', '2026-02-14T09:52:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2629-1', 'hist-ticket-107-2629', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T09:52:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2629-2', 'hist-ticket-107-2629', 'prod-americano', 1, 12000, 0, '2026-02-14T09:52:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2629-3', 'hist-ticket-107-2629', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T09:52:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2629-4', 'hist-ticket-107-2629', 'prod-latte', 1, 15000, 0, '2026-02-14T09:52:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2629', 'hist-ticket-107-2629', 'cash', 56000, 'completed', '2026-02-14T09:52:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2630', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-14T15:44:38.000Z', '2026-02-14T15:44:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2630-1', 'hist-ticket-107-2630', 'prod-americano', 1, 12000, 0, '2026-02-14T15:44:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2630-2', 'hist-ticket-107-2630', 'prod-americano', 1, 12000, 0, '2026-02-14T15:44:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2630-3', 'hist-ticket-107-2630', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T15:44:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2630-4', 'hist-ticket-107-2630', 'prod-mocha', 1, 16500, 0, '2026-02-14T15:44:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2630', 'hist-ticket-107-2630', 'cash', 55000, 'completed', '2026-02-14T15:44:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2631', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-02-14T11:55:07.000Z', '2026-02-14T11:55:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2631-1', 'hist-ticket-107-2631', 'prod-mocha', 1, 16500, 0, '2026-02-14T11:55:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2631-2', 'hist-ticket-107-2631', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T11:55:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2631-3', 'hist-ticket-107-2631', 'prod-latte', 1, 15000, 0, '2026-02-14T11:55:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2631', 'hist-ticket-107-2631', 'cash', 46000, 'completed', '2026-02-14T11:55:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2632', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-14T18:58:46.000Z', '2026-02-14T18:58:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2632-1', 'hist-ticket-107-2632', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T18:58:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2632-2', 'hist-ticket-107-2632', 'prod-mocha', 1, 16500, 0, '2026-02-14T18:58:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2632', 'hist-ticket-107-2632', 'cash', 31000, 'completed', '2026-02-14T18:58:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2633', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-14T15:42:32.000Z', '2026-02-14T15:42:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2633-1', 'hist-ticket-107-2633', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T15:42:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2633-2', 'hist-ticket-107-2633', 'prod-latte', 1, 15000, 0, '2026-02-14T15:42:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2633', 'hist-ticket-107-2633', 'cash', 29500, 'completed', '2026-02-14T15:42:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2634', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-14T18:27:33.000Z', '2026-02-14T18:27:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2634-1', 'hist-ticket-107-2634', 'prod-mocha', 1, 16500, 0, '2026-02-14T18:27:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2634', 'hist-ticket-107-2634', 'cash', 16500, 'completed', '2026-02-14T18:27:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2635', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-14T08:36:58.000Z', '2026-02-14T08:36:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2635-1', 'hist-ticket-107-2635', 'prod-cappuccino', 1, 14500, 0, '2026-02-14T08:36:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2635', 'hist-ticket-107-2635', 'cash', 14500, 'completed', '2026-02-14T08:36:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2636', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-14T19:16:30.000Z', '2026-02-14T19:16:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2636-1', 'hist-ticket-107-2636', 'prod-mocha', 1, 16500, 0, '2026-02-14T19:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2636-2', 'hist-ticket-107-2636', 'prod-mocha', 1, 16500, 0, '2026-02-14T19:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2636-3', 'hist-ticket-107-2636', 'prod-mocha', 1, 16500, 0, '2026-02-14T19:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2636-4', 'hist-ticket-107-2636', 'prod-americano', 1, 12000, 0, '2026-02-14T19:16:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2636', 'hist-ticket-107-2636', 'cash', 61500, 'completed', '2026-02-14T19:16:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-107-2637', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-02-14T08:14:08.000Z', '2026-02-14T08:14:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2637-1', 'hist-ticket-107-2637', 'prod-americano', 1, 12000, 0, '2026-02-14T08:14:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2637-2', 'hist-ticket-107-2637', 'prod-mocha', 1, 16500, 0, '2026-02-14T08:14:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-107-2637-3', 'hist-ticket-107-2637', 'prod-latte', 1, 15000, 0, '2026-02-14T08:14:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-107-2637', 'hist-ticket-107-2637', 'cash', 43500, 'completed', '2026-02-14T08:14:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2638', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-15T17:34:50.000Z', '2026-02-15T17:34:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2638-1', 'hist-ticket-108-2638', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T17:34:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2638-2', 'hist-ticket-108-2638', 'prod-latte', 1, 15000, 0, '2026-02-15T17:34:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2638', 'hist-ticket-108-2638', 'cash', 29500, 'completed', '2026-02-15T17:34:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2639', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-15T17:26:28.000Z', '2026-02-15T17:26:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2639-1', 'hist-ticket-108-2639', 'prod-mocha', 1, 16500, 0, '2026-02-15T17:26:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2639-2', 'hist-ticket-108-2639', 'prod-mocha', 1, 16500, 0, '2026-02-15T17:26:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2639-3', 'hist-ticket-108-2639', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T17:26:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2639-4', 'hist-ticket-108-2639', 'prod-americano', 1, 12000, 0, '2026-02-15T17:26:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2639', 'hist-ticket-108-2639', 'cash', 59500, 'completed', '2026-02-15T17:26:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2640', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-15T08:11:46.000Z', '2026-02-15T08:11:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2640-1', 'hist-ticket-108-2640', 'prod-americano', 1, 12000, 0, '2026-02-15T08:11:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2640', 'hist-ticket-108-2640', 'cash', 12000, 'completed', '2026-02-15T08:11:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2641', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-15T14:44:50.000Z', '2026-02-15T14:44:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2641-1', 'hist-ticket-108-2641', 'prod-americano', 1, 12000, 0, '2026-02-15T14:44:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2641', 'hist-ticket-108-2641', 'cash', 12000, 'completed', '2026-02-15T14:44:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2642', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-15T16:31:12.000Z', '2026-02-15T16:31:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2642-1', 'hist-ticket-108-2642', 'prod-latte', 1, 15000, 0, '2026-02-15T16:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2642-2', 'hist-ticket-108-2642', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T16:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2642-3', 'hist-ticket-108-2642', 'prod-latte', 1, 15000, 0, '2026-02-15T16:31:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2642-4', 'hist-ticket-108-2642', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T16:31:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2642', 'hist-ticket-108-2642', 'cash', 59000, 'completed', '2026-02-15T16:31:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2643', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-15T11:24:28.000Z', '2026-02-15T11:24:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2643-1', 'hist-ticket-108-2643', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T11:24:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2643-2', 'hist-ticket-108-2643', 'prod-latte', 1, 15000, 0, '2026-02-15T11:24:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2643-3', 'hist-ticket-108-2643', 'prod-latte', 1, 15000, 0, '2026-02-15T11:24:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2643', 'hist-ticket-108-2643', 'cash', 44500, 'completed', '2026-02-15T11:24:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2644', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-15T08:50:29.000Z', '2026-02-15T08:50:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2644-1', 'hist-ticket-108-2644', 'prod-mocha', 1, 16500, 0, '2026-02-15T08:50:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2644-2', 'hist-ticket-108-2644', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T08:50:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2644-3', 'hist-ticket-108-2644', 'prod-latte', 1, 15000, 0, '2026-02-15T08:50:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2644', 'hist-ticket-108-2644', 'cash', 46000, 'completed', '2026-02-15T08:50:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2645', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-15T12:47:36.000Z', '2026-02-15T12:47:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2645-1', 'hist-ticket-108-2645', 'prod-latte', 1, 15000, 0, '2026-02-15T12:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2645-2', 'hist-ticket-108-2645', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T12:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2645-3', 'hist-ticket-108-2645', 'prod-latte', 1, 15000, 0, '2026-02-15T12:47:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2645-4', 'hist-ticket-108-2645', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T12:47:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2645', 'hist-ticket-108-2645', 'cash', 59000, 'completed', '2026-02-15T12:47:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2646', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-15T14:48:02.000Z', '2026-02-15T14:48:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2646-1', 'hist-ticket-108-2646', 'prod-mocha', 1, 16500, 0, '2026-02-15T14:48:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2646', 'hist-ticket-108-2646', 'cash', 16500, 'completed', '2026-02-15T14:48:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2647', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-15T15:29:45.000Z', '2026-02-15T15:29:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2647-1', 'hist-ticket-108-2647', 'prod-americano', 1, 12000, 0, '2026-02-15T15:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2647-2', 'hist-ticket-108-2647', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T15:29:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2647', 'hist-ticket-108-2647', 'cash', 26500, 'completed', '2026-02-15T15:29:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2648', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-15T17:49:13.000Z', '2026-02-15T17:49:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2648-1', 'hist-ticket-108-2648', 'prod-latte', 1, 15000, 0, '2026-02-15T17:49:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2648-2', 'hist-ticket-108-2648', 'prod-americano', 1, 12000, 0, '2026-02-15T17:49:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2648', 'hist-ticket-108-2648', 'cash', 27000, 'completed', '2026-02-15T17:49:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2649', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-15T19:39:14.000Z', '2026-02-15T19:39:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2649-1', 'hist-ticket-108-2649', 'prod-americano', 1, 12000, 0, '2026-02-15T19:39:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2649-2', 'hist-ticket-108-2649', 'prod-americano', 1, 12000, 0, '2026-02-15T19:39:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2649-3', 'hist-ticket-108-2649', 'prod-latte', 1, 15000, 0, '2026-02-15T19:39:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2649-4', 'hist-ticket-108-2649', 'prod-americano', 1, 12000, 0, '2026-02-15T19:39:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2649', 'hist-ticket-108-2649', 'cash', 51000, 'completed', '2026-02-15T19:39:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2650', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-15T12:24:01.000Z', '2026-02-15T12:24:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2650-1', 'hist-ticket-108-2650', 'prod-americano', 1, 12000, 0, '2026-02-15T12:24:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2650-2', 'hist-ticket-108-2650', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T12:24:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2650-3', 'hist-ticket-108-2650', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T12:24:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2650', 'hist-ticket-108-2650', 'cash', 41000, 'completed', '2026-02-15T12:24:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2651', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-15T09:49:10.000Z', '2026-02-15T09:49:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2651-1', 'hist-ticket-108-2651', 'prod-mocha', 1, 16500, 0, '2026-02-15T09:49:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2651-2', 'hist-ticket-108-2651', 'prod-latte', 1, 15000, 0, '2026-02-15T09:49:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2651-3', 'hist-ticket-108-2651', 'prod-mocha', 1, 16500, 0, '2026-02-15T09:49:10.000Z');