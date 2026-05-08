INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2651', 'hist-ticket-108-2651', 'cash', 48000, 'completed', '2026-02-15T09:49:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2652', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-15T15:04:37.000Z', '2026-02-15T15:04:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2652-1', 'hist-ticket-108-2652', 'prod-latte', 1, 15000, 0, '2026-02-15T15:04:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2652-2', 'hist-ticket-108-2652', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T15:04:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2652-3', 'hist-ticket-108-2652', 'prod-latte', 1, 15000, 0, '2026-02-15T15:04:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2652-4', 'hist-ticket-108-2652', 'prod-americano', 1, 12000, 0, '2026-02-15T15:04:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2652', 'hist-ticket-108-2652', 'cash', 56500, 'completed', '2026-02-15T15:04:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2653', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-15T15:41:35.000Z', '2026-02-15T15:41:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2653-1', 'hist-ticket-108-2653', 'prod-americano', 1, 12000, 0, '2026-02-15T15:41:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2653-2', 'hist-ticket-108-2653', 'prod-mocha', 1, 16500, 0, '2026-02-15T15:41:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2653-3', 'hist-ticket-108-2653', 'prod-americano', 1, 12000, 0, '2026-02-15T15:41:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2653-4', 'hist-ticket-108-2653', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T15:41:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2653', 'hist-ticket-108-2653', 'cash', 55000, 'completed', '2026-02-15T15:41:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2654', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-15T16:44:46.000Z', '2026-02-15T16:44:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2654-1', 'hist-ticket-108-2654', 'prod-mocha', 1, 16500, 0, '2026-02-15T16:44:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2654-2', 'hist-ticket-108-2654', 'prod-americano', 1, 12000, 0, '2026-02-15T16:44:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2654-3', 'hist-ticket-108-2654', 'prod-mocha', 1, 16500, 0, '2026-02-15T16:44:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2654', 'hist-ticket-108-2654', 'cash', 45000, 'completed', '2026-02-15T16:44:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2655', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-15T17:32:08.000Z', '2026-02-15T17:32:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2655-1', 'hist-ticket-108-2655', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T17:32:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2655-2', 'hist-ticket-108-2655', 'prod-latte', 1, 15000, 0, '2026-02-15T17:32:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2655-3', 'hist-ticket-108-2655', 'prod-americano', 1, 12000, 0, '2026-02-15T17:32:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2655', 'hist-ticket-108-2655', 'cash', 41500, 'completed', '2026-02-15T17:32:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2656', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-15T14:59:16.000Z', '2026-02-15T14:59:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2656-1', 'hist-ticket-108-2656', 'prod-mocha', 1, 16500, 0, '2026-02-15T14:59:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2656-2', 'hist-ticket-108-2656', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T14:59:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2656', 'hist-ticket-108-2656', 'cash', 31000, 'completed', '2026-02-15T14:59:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2657', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-15T16:28:58.000Z', '2026-02-15T16:28:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2657-1', 'hist-ticket-108-2657', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T16:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2657-2', 'hist-ticket-108-2657', 'prod-americano', 1, 12000, 0, '2026-02-15T16:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2657-3', 'hist-ticket-108-2657', 'prod-mocha', 1, 16500, 0, '2026-02-15T16:28:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2657', 'hist-ticket-108-2657', 'cash', 43000, 'completed', '2026-02-15T16:28:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2658', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-15T17:45:10.000Z', '2026-02-15T17:45:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2658-1', 'hist-ticket-108-2658', 'prod-americano', 1, 12000, 0, '2026-02-15T17:45:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2658-2', 'hist-ticket-108-2658', 'prod-latte', 1, 15000, 0, '2026-02-15T17:45:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2658', 'hist-ticket-108-2658', 'cash', 27000, 'completed', '2026-02-15T17:45:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2659', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-15T16:11:57.000Z', '2026-02-15T16:11:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2659-1', 'hist-ticket-108-2659', 'prod-americano', 1, 12000, 0, '2026-02-15T16:11:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2659-2', 'hist-ticket-108-2659', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T16:11:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2659', 'hist-ticket-108-2659', 'cash', 26500, 'completed', '2026-02-15T16:11:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2660', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-15T09:15:57.000Z', '2026-02-15T09:15:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2660-1', 'hist-ticket-108-2660', 'prod-latte', 1, 15000, 0, '2026-02-15T09:15:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2660', 'hist-ticket-108-2660', 'cash', 15000, 'completed', '2026-02-15T09:15:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2661', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-15T09:06:52.000Z', '2026-02-15T09:06:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2661-1', 'hist-ticket-108-2661', 'prod-latte', 1, 15000, 0, '2026-02-15T09:06:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2661-2', 'hist-ticket-108-2661', 'prod-americano', 1, 12000, 0, '2026-02-15T09:06:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2661-3', 'hist-ticket-108-2661', 'prod-americano', 1, 12000, 0, '2026-02-15T09:06:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2661-4', 'hist-ticket-108-2661', 'prod-mocha', 1, 16500, 0, '2026-02-15T09:06:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2661', 'hist-ticket-108-2661', 'cash', 55500, 'completed', '2026-02-15T09:06:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2662', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-15T08:28:09.000Z', '2026-02-15T08:28:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2662-1', 'hist-ticket-108-2662', 'prod-mocha', 1, 16500, 0, '2026-02-15T08:28:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2662-2', 'hist-ticket-108-2662', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T08:28:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2662-3', 'hist-ticket-108-2662', 'prod-americano', 1, 12000, 0, '2026-02-15T08:28:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2662', 'hist-ticket-108-2662', 'cash', 43000, 'completed', '2026-02-15T08:28:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2663', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-02-15T11:43:46.000Z', '2026-02-15T11:43:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2663-1', 'hist-ticket-108-2663', 'prod-americano', 1, 12000, 0, '2026-02-15T11:43:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2663', 'hist-ticket-108-2663', 'cash', 12000, 'completed', '2026-02-15T11:43:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2664', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-15T14:11:43.000Z', '2026-02-15T14:11:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2664-1', 'hist-ticket-108-2664', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T14:11:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2664-2', 'hist-ticket-108-2664', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T14:11:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2664', 'hist-ticket-108-2664', 'cash', 29000, 'completed', '2026-02-15T14:11:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2665', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-15T08:24:45.000Z', '2026-02-15T08:24:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2665-1', 'hist-ticket-108-2665', 'prod-latte', 1, 15000, 0, '2026-02-15T08:24:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2665-2', 'hist-ticket-108-2665', 'prod-latte', 1, 15000, 0, '2026-02-15T08:24:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2665', 'hist-ticket-108-2665', 'cash', 30000, 'completed', '2026-02-15T08:24:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2666', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-15T19:19:00.000Z', '2026-02-15T19:19:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2666-1', 'hist-ticket-108-2666', 'prod-latte', 1, 15000, 0, '2026-02-15T19:19:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2666-2', 'hist-ticket-108-2666', 'prod-americano', 1, 12000, 0, '2026-02-15T19:19:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2666', 'hist-ticket-108-2666', 'cash', 27000, 'completed', '2026-02-15T19:19:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2667', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-15T09:21:01.000Z', '2026-02-15T09:21:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2667-1', 'hist-ticket-108-2667', 'prod-latte', 1, 15000, 0, '2026-02-15T09:21:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2667', 'hist-ticket-108-2667', 'cash', 15000, 'completed', '2026-02-15T09:21:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2668', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-02-15T11:19:40.000Z', '2026-02-15T11:19:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2668-1', 'hist-ticket-108-2668', 'prod-mocha', 1, 16500, 0, '2026-02-15T11:19:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2668-2', 'hist-ticket-108-2668', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T11:19:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2668-3', 'hist-ticket-108-2668', 'prod-latte', 1, 15000, 0, '2026-02-15T11:19:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2668', 'hist-ticket-108-2668', 'cash', 46000, 'completed', '2026-02-15T11:19:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2669', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-15T19:30:14.000Z', '2026-02-15T19:30:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2669-1', 'hist-ticket-108-2669', 'prod-americano', 1, 12000, 0, '2026-02-15T19:30:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2669-2', 'hist-ticket-108-2669', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T19:30:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2669-3', 'hist-ticket-108-2669', 'prod-mocha', 1, 16500, 0, '2026-02-15T19:30:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2669-4', 'hist-ticket-108-2669', 'prod-americano', 1, 12000, 0, '2026-02-15T19:30:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2669', 'hist-ticket-108-2669', 'cash', 55000, 'completed', '2026-02-15T19:30:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2670', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-02-15T10:46:28.000Z', '2026-02-15T10:46:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2670-1', 'hist-ticket-108-2670', 'prod-mocha', 1, 16500, 0, '2026-02-15T10:46:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2670-2', 'hist-ticket-108-2670', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T10:46:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2670-3', 'hist-ticket-108-2670', 'prod-mocha', 1, 16500, 0, '2026-02-15T10:46:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2670-4', 'hist-ticket-108-2670', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T10:46:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2670', 'hist-ticket-108-2670', 'cash', 62000, 'completed', '2026-02-15T10:46:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-108-2671', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-02-15T13:30:48.000Z', '2026-02-15T13:30:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2671-1', 'hist-ticket-108-2671', 'prod-cappuccino', 1, 14500, 0, '2026-02-15T13:30:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2671-2', 'hist-ticket-108-2671', 'prod-mocha', 1, 16500, 0, '2026-02-15T13:30:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2671-3', 'hist-ticket-108-2671', 'prod-latte', 1, 15000, 0, '2026-02-15T13:30:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-108-2671-4', 'hist-ticket-108-2671', 'prod-americano', 1, 12000, 0, '2026-02-15T13:30:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-108-2671', 'hist-ticket-108-2671', 'cash', 58000, 'completed', '2026-02-15T13:30:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2672', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-16T09:55:50.000Z', '2026-02-16T09:55:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2672-1', 'hist-ticket-109-2672', 'prod-mocha', 1, 16500, 0, '2026-02-16T09:55:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2672-2', 'hist-ticket-109-2672', 'prod-mocha', 1, 16500, 0, '2026-02-16T09:55:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2672-3', 'hist-ticket-109-2672', 'prod-mocha', 1, 16500, 0, '2026-02-16T09:55:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2672-4', 'hist-ticket-109-2672', 'prod-mocha', 1, 16500, 0, '2026-02-16T09:55:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2672', 'hist-ticket-109-2672', 'cash', 66000, 'completed', '2026-02-16T09:55:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2673', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-16T14:50:09.000Z', '2026-02-16T14:50:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2673-1', 'hist-ticket-109-2673', 'prod-latte', 1, 15000, 0, '2026-02-16T14:50:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2673-2', 'hist-ticket-109-2673', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T14:50:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2673', 'hist-ticket-109-2673', 'cash', 29500, 'completed', '2026-02-16T14:50:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2674', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-16T19:07:33.000Z', '2026-02-16T19:07:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2674-1', 'hist-ticket-109-2674', 'prod-americano', 1, 12000, 0, '2026-02-16T19:07:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2674-2', 'hist-ticket-109-2674', 'prod-americano', 1, 12000, 0, '2026-02-16T19:07:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2674', 'hist-ticket-109-2674', 'cash', 24000, 'completed', '2026-02-16T19:07:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2675', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-16T09:36:12.000Z', '2026-02-16T09:36:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2675-1', 'hist-ticket-109-2675', 'prod-latte', 1, 15000, 0, '2026-02-16T09:36:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2675-2', 'hist-ticket-109-2675', 'prod-americano', 1, 12000, 0, '2026-02-16T09:36:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2675', 'hist-ticket-109-2675', 'cash', 27000, 'completed', '2026-02-16T09:36:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2676', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-16T10:26:27.000Z', '2026-02-16T10:26:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2676-1', 'hist-ticket-109-2676', 'prod-americano', 1, 12000, 0, '2026-02-16T10:26:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2676-2', 'hist-ticket-109-2676', 'prod-latte', 1, 15000, 0, '2026-02-16T10:26:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2676', 'hist-ticket-109-2676', 'cash', 27000, 'completed', '2026-02-16T10:26:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2677', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-02-16T19:45:58.000Z', '2026-02-16T19:45:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2677-1', 'hist-ticket-109-2677', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T19:45:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2677-2', 'hist-ticket-109-2677', 'prod-mocha', 1, 16500, 0, '2026-02-16T19:45:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2677', 'hist-ticket-109-2677', 'cash', 31000, 'completed', '2026-02-16T19:45:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2678', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-16T19:46:23.000Z', '2026-02-16T19:46:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2678-1', 'hist-ticket-109-2678', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T19:46:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2678-2', 'hist-ticket-109-2678', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T19:46:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2678-3', 'hist-ticket-109-2678', 'prod-americano', 1, 12000, 0, '2026-02-16T19:46:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2678-4', 'hist-ticket-109-2678', 'prod-americano', 1, 12000, 0, '2026-02-16T19:46:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2678', 'hist-ticket-109-2678', 'cash', 53000, 'completed', '2026-02-16T19:46:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2679', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-02-16T09:08:23.000Z', '2026-02-16T09:08:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2679-1', 'hist-ticket-109-2679', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T09:08:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2679-2', 'hist-ticket-109-2679', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T09:08:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2679-3', 'hist-ticket-109-2679', 'prod-americano', 1, 12000, 0, '2026-02-16T09:08:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2679-4', 'hist-ticket-109-2679', 'prod-latte', 1, 15000, 0, '2026-02-16T09:08:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2679', 'hist-ticket-109-2679', 'cash', 56000, 'completed', '2026-02-16T09:08:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2680', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-16T19:15:14.000Z', '2026-02-16T19:15:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2680-1', 'hist-ticket-109-2680', 'prod-americano', 1, 12000, 0, '2026-02-16T19:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2680-2', 'hist-ticket-109-2680', 'prod-americano', 1, 12000, 0, '2026-02-16T19:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2680-3', 'hist-ticket-109-2680', 'prod-mocha', 1, 16500, 0, '2026-02-16T19:15:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2680-4', 'hist-ticket-109-2680', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T19:15:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2680', 'hist-ticket-109-2680', 'cash', 55000, 'completed', '2026-02-16T19:15:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2681', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-16T19:23:34.000Z', '2026-02-16T19:23:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2681-1', 'hist-ticket-109-2681', 'prod-latte', 1, 15000, 0, '2026-02-16T19:23:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2681', 'hist-ticket-109-2681', 'cash', 15000, 'completed', '2026-02-16T19:23:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2682', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-16T17:32:41.000Z', '2026-02-16T17:32:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2682-1', 'hist-ticket-109-2682', 'prod-americano', 1, 12000, 0, '2026-02-16T17:32:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2682-2', 'hist-ticket-109-2682', 'prod-americano', 1, 12000, 0, '2026-02-16T17:32:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2682', 'hist-ticket-109-2682', 'cash', 24000, 'completed', '2026-02-16T17:32:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2683', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-16T14:59:45.000Z', '2026-02-16T14:59:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2683-1', 'hist-ticket-109-2683', 'prod-mocha', 1, 16500, 0, '2026-02-16T14:59:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2683-2', 'hist-ticket-109-2683', 'prod-mocha', 1, 16500, 0, '2026-02-16T14:59:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2683-3', 'hist-ticket-109-2683', 'prod-americano', 1, 12000, 0, '2026-02-16T14:59:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2683', 'hist-ticket-109-2683', 'cash', 45000, 'completed', '2026-02-16T14:59:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2684', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-16T15:10:39.000Z', '2026-02-16T15:10:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2684-1', 'hist-ticket-109-2684', 'prod-mocha', 1, 16500, 0, '2026-02-16T15:10:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2684-2', 'hist-ticket-109-2684', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T15:10:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2684', 'hist-ticket-109-2684', 'cash', 31000, 'completed', '2026-02-16T15:10:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2685', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-16T16:53:49.000Z', '2026-02-16T16:53:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2685-1', 'hist-ticket-109-2685', 'prod-mocha', 1, 16500, 0, '2026-02-16T16:53:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2685', 'hist-ticket-109-2685', 'cash', 16500, 'completed', '2026-02-16T16:53:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2686', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-16T17:18:56.000Z', '2026-02-16T17:18:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2686-1', 'hist-ticket-109-2686', 'prod-latte', 1, 15000, 0, '2026-02-16T17:18:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2686', 'hist-ticket-109-2686', 'cash', 15000, 'completed', '2026-02-16T17:18:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2687', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-16T10:51:01.000Z', '2026-02-16T10:51:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2687-1', 'hist-ticket-109-2687', 'prod-latte', 1, 15000, 0, '2026-02-16T10:51:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2687', 'hist-ticket-109-2687', 'cash', 15000, 'completed', '2026-02-16T10:51:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2688', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-16T13:17:02.000Z', '2026-02-16T13:17:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2688-1', 'hist-ticket-109-2688', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T13:17:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2688', 'hist-ticket-109-2688', 'cash', 14500, 'completed', '2026-02-16T13:17:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2689', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-02-16T12:16:56.000Z', '2026-02-16T12:16:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2689-1', 'hist-ticket-109-2689', 'prod-americano', 1, 12000, 0, '2026-02-16T12:16:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2689', 'hist-ticket-109-2689', 'cash', 12000, 'completed', '2026-02-16T12:16:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2690', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-16T11:05:03.000Z', '2026-02-16T11:05:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2690-1', 'hist-ticket-109-2690', 'prod-latte', 1, 15000, 0, '2026-02-16T11:05:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2690-2', 'hist-ticket-109-2690', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T11:05:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2690', 'hist-ticket-109-2690', 'cash', 29500, 'completed', '2026-02-16T11:05:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2691', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-16T17:30:12.000Z', '2026-02-16T17:30:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2691-1', 'hist-ticket-109-2691', 'prod-latte', 1, 15000, 0, '2026-02-16T17:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2691-2', 'hist-ticket-109-2691', 'prod-americano', 1, 12000, 0, '2026-02-16T17:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2691-3', 'hist-ticket-109-2691', 'prod-americano', 1, 12000, 0, '2026-02-16T17:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2691-4', 'hist-ticket-109-2691', 'prod-mocha', 1, 16500, 0, '2026-02-16T17:30:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2691', 'hist-ticket-109-2691', 'cash', 55500, 'completed', '2026-02-16T17:30:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2692', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-16T13:43:34.000Z', '2026-02-16T13:43:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2692-1', 'hist-ticket-109-2692', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T13:43:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2692-2', 'hist-ticket-109-2692', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T13:43:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2692', 'hist-ticket-109-2692', 'cash', 29000, 'completed', '2026-02-16T13:43:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2693', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-16T14:45:06.000Z', '2026-02-16T14:45:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2693-1', 'hist-ticket-109-2693', 'prod-latte', 1, 15000, 0, '2026-02-16T14:45:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2693-2', 'hist-ticket-109-2693', 'prod-mocha', 1, 16500, 0, '2026-02-16T14:45:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2693', 'hist-ticket-109-2693', 'cash', 31500, 'completed', '2026-02-16T14:45:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2694', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-16T10:12:42.000Z', '2026-02-16T10:12:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2694-1', 'hist-ticket-109-2694', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T10:12:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2694-2', 'hist-ticket-109-2694', 'prod-latte', 1, 15000, 0, '2026-02-16T10:12:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2694-3', 'hist-ticket-109-2694', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T10:12:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2694-4', 'hist-ticket-109-2694', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T10:12:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2694', 'hist-ticket-109-2694', 'cash', 58500, 'completed', '2026-02-16T10:12:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-109-2695', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-16T13:42:30.000Z', '2026-02-16T13:42:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2695-1', 'hist-ticket-109-2695', 'prod-americano', 1, 12000, 0, '2026-02-16T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2695-2', 'hist-ticket-109-2695', 'prod-mocha', 1, 16500, 0, '2026-02-16T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2695-3', 'hist-ticket-109-2695', 'prod-cappuccino', 1, 14500, 0, '2026-02-16T13:42:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-109-2695-4', 'hist-ticket-109-2695', 'prod-latte', 1, 15000, 0, '2026-02-16T13:42:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-109-2695', 'hist-ticket-109-2695', 'cash', 58000, 'completed', '2026-02-16T13:42:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2696', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-17T18:06:12.000Z', '2026-02-17T18:06:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2696-1', 'hist-ticket-110-2696', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T18:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2696-2', 'hist-ticket-110-2696', 'prod-latte', 1, 15000, 0, '2026-02-17T18:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2696-3', 'hist-ticket-110-2696', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T18:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2696-4', 'hist-ticket-110-2696', 'prod-americano', 1, 12000, 0, '2026-02-17T18:06:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2696', 'hist-ticket-110-2696', 'cash', 56000, 'completed', '2026-02-17T18:06:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2697', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-17T11:08:10.000Z', '2026-02-17T11:08:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2697-1', 'hist-ticket-110-2697', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T11:08:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2697', 'hist-ticket-110-2697', 'cash', 14500, 'completed', '2026-02-17T11:08:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2698', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-17T16:53:17.000Z', '2026-02-17T16:53:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2698-1', 'hist-ticket-110-2698', 'prod-americano', 1, 12000, 0, '2026-02-17T16:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2698-2', 'hist-ticket-110-2698', 'prod-americano', 1, 12000, 0, '2026-02-17T16:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2698-3', 'hist-ticket-110-2698', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T16:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2698-4', 'hist-ticket-110-2698', 'prod-americano', 1, 12000, 0, '2026-02-17T16:53:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2698', 'hist-ticket-110-2698', 'cash', 50500, 'completed', '2026-02-17T16:53:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2699', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-17T17:45:22.000Z', '2026-02-17T17:45:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2699-1', 'hist-ticket-110-2699', 'prod-latte', 1, 15000, 0, '2026-02-17T17:45:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2699-2', 'hist-ticket-110-2699', 'prod-latte', 1, 15000, 0, '2026-02-17T17:45:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2699-3', 'hist-ticket-110-2699', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T17:45:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2699', 'hist-ticket-110-2699', 'cash', 44500, 'completed', '2026-02-17T17:45:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2700', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-17T10:10:50.000Z', '2026-02-17T10:10:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2700-1', 'hist-ticket-110-2700', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T10:10:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2700-2', 'hist-ticket-110-2700', 'prod-mocha', 1, 16500, 0, '2026-02-17T10:10:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2700-3', 'hist-ticket-110-2700', 'prod-americano', 1, 12000, 0, '2026-02-17T10:10:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2700-4', 'hist-ticket-110-2700', 'prod-latte', 1, 15000, 0, '2026-02-17T10:10:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2700', 'hist-ticket-110-2700', 'cash', 58000, 'completed', '2026-02-17T10:10:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2701', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-17T18:42:07.000Z', '2026-02-17T18:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2701-1', 'hist-ticket-110-2701', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T18:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2701-2', 'hist-ticket-110-2701', 'prod-latte', 1, 15000, 0, '2026-02-17T18:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2701-3', 'hist-ticket-110-2701', 'prod-mocha', 1, 16500, 0, '2026-02-17T18:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2701', 'hist-ticket-110-2701', 'cash', 46000, 'completed', '2026-02-17T18:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2702', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-17T10:29:54.000Z', '2026-02-17T10:29:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2702-1', 'hist-ticket-110-2702', 'prod-americano', 1, 12000, 0, '2026-02-17T10:29:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2702-2', 'hist-ticket-110-2702', 'prod-mocha', 1, 16500, 0, '2026-02-17T10:29:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2702-3', 'hist-ticket-110-2702', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T10:29:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2702', 'hist-ticket-110-2702', 'cash', 43000, 'completed', '2026-02-17T10:29:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2703', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-17T08:06:32.000Z', '2026-02-17T08:06:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2703-1', 'hist-ticket-110-2703', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T08:06:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2703-2', 'hist-ticket-110-2703', 'prod-latte', 1, 15000, 0, '2026-02-17T08:06:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2703-3', 'hist-ticket-110-2703', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T08:06:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2703-4', 'hist-ticket-110-2703', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T08:06:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2703', 'hist-ticket-110-2703', 'cash', 58500, 'completed', '2026-02-17T08:06:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2704', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-17T15:08:46.000Z', '2026-02-17T15:08:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2704-1', 'hist-ticket-110-2704', 'prod-americano', 1, 12000, 0, '2026-02-17T15:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2704-2', 'hist-ticket-110-2704', 'prod-mocha', 1, 16500, 0, '2026-02-17T15:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2704-3', 'hist-ticket-110-2704', 'prod-americano', 1, 12000, 0, '2026-02-17T15:08:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2704-4', 'hist-ticket-110-2704', 'prod-mocha', 1, 16500, 0, '2026-02-17T15:08:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2704', 'hist-ticket-110-2704', 'cash', 57000, 'completed', '2026-02-17T15:08:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2705', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-17T18:39:58.000Z', '2026-02-17T18:39:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2705-1', 'hist-ticket-110-2705', 'prod-americano', 1, 12000, 0, '2026-02-17T18:39:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2705-2', 'hist-ticket-110-2705', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T18:39:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2705', 'hist-ticket-110-2705', 'cash', 26500, 'completed', '2026-02-17T18:39:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2706', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-17T11:51:23.000Z', '2026-02-17T11:51:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2706-1', 'hist-ticket-110-2706', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T11:51:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2706-2', 'hist-ticket-110-2706', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T11:51:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2706', 'hist-ticket-110-2706', 'cash', 29000, 'completed', '2026-02-17T11:51:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2707', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-17T19:37:30.000Z', '2026-02-17T19:37:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2707-1', 'hist-ticket-110-2707', 'prod-americano', 1, 12000, 0, '2026-02-17T19:37:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2707-2', 'hist-ticket-110-2707', 'prod-americano', 1, 12000, 0, '2026-02-17T19:37:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2707-3', 'hist-ticket-110-2707', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T19:37:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2707-4', 'hist-ticket-110-2707', 'prod-americano', 1, 12000, 0, '2026-02-17T19:37:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2707', 'hist-ticket-110-2707', 'cash', 50500, 'completed', '2026-02-17T19:37:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2708', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-02-17T09:04:08.000Z', '2026-02-17T09:04:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2708-1', 'hist-ticket-110-2708', 'prod-latte', 1, 15000, 0, '2026-02-17T09:04:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2708-2', 'hist-ticket-110-2708', 'prod-latte', 1, 15000, 0, '2026-02-17T09:04:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2708', 'hist-ticket-110-2708', 'cash', 30000, 'completed', '2026-02-17T09:04:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2709', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-17T16:31:44.000Z', '2026-02-17T16:31:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2709-1', 'hist-ticket-110-2709', 'prod-latte', 1, 15000, 0, '2026-02-17T16:31:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2709-2', 'hist-ticket-110-2709', 'prod-americano', 1, 12000, 0, '2026-02-17T16:31:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2709-3', 'hist-ticket-110-2709', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T16:31:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2709', 'hist-ticket-110-2709', 'cash', 41500, 'completed', '2026-02-17T16:31:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2710', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-17T12:50:19.000Z', '2026-02-17T12:50:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2710-1', 'hist-ticket-110-2710', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T12:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2710-2', 'hist-ticket-110-2710', 'prod-mocha', 1, 16500, 0, '2026-02-17T12:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2710-3', 'hist-ticket-110-2710', 'prod-latte', 1, 15000, 0, '2026-02-17T12:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2710-4', 'hist-ticket-110-2710', 'prod-americano', 1, 12000, 0, '2026-02-17T12:50:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2710', 'hist-ticket-110-2710', 'cash', 58000, 'completed', '2026-02-17T12:50:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2711', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-02-17T09:50:31.000Z', '2026-02-17T09:50:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2711-1', 'hist-ticket-110-2711', 'prod-americano', 1, 12000, 0, '2026-02-17T09:50:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2711-2', 'hist-ticket-110-2711', 'prod-latte', 1, 15000, 0, '2026-02-17T09:50:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2711', 'hist-ticket-110-2711', 'cash', 27000, 'completed', '2026-02-17T09:50:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2712', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-17T12:49:57.000Z', '2026-02-17T12:49:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2712-1', 'hist-ticket-110-2712', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T12:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2712-2', 'hist-ticket-110-2712', 'prod-americano', 1, 12000, 0, '2026-02-17T12:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2712-3', 'hist-ticket-110-2712', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T12:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2712-4', 'hist-ticket-110-2712', 'prod-americano', 1, 12000, 0, '2026-02-17T12:49:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2712', 'hist-ticket-110-2712', 'cash', 53000, 'completed', '2026-02-17T12:49:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2713', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-17T19:59:01.000Z', '2026-02-17T19:59:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2713-1', 'hist-ticket-110-2713', 'prod-mocha', 1, 16500, 0, '2026-02-17T19:59:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2713-2', 'hist-ticket-110-2713', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T19:59:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2713-3', 'hist-ticket-110-2713', 'prod-mocha', 1, 16500, 0, '2026-02-17T19:59:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2713-4', 'hist-ticket-110-2713', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T19:59:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2713', 'hist-ticket-110-2713', 'cash', 62000, 'completed', '2026-02-17T19:59:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2714', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-17T17:52:52.000Z', '2026-02-17T17:52:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2714-1', 'hist-ticket-110-2714', 'prod-mocha', 1, 16500, 0, '2026-02-17T17:52:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2714', 'hist-ticket-110-2714', 'cash', 16500, 'completed', '2026-02-17T17:52:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-110-2715', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-17T08:23:34.000Z', '2026-02-17T08:23:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2715-1', 'hist-ticket-110-2715', 'prod-americano', 1, 12000, 0, '2026-02-17T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2715-2', 'hist-ticket-110-2715', 'prod-mocha', 1, 16500, 0, '2026-02-17T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2715-3', 'hist-ticket-110-2715', 'prod-cappuccino', 1, 14500, 0, '2026-02-17T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-110-2715-4', 'hist-ticket-110-2715', 'prod-americano', 1, 12000, 0, '2026-02-17T08:23:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-110-2715', 'hist-ticket-110-2715', 'cash', 55000, 'completed', '2026-02-17T08:23:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2716', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-02-18T15:54:30.000Z', '2026-02-18T15:54:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2716-1', 'hist-ticket-111-2716', 'prod-americano', 1, 12000, 0, '2026-02-18T15:54:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2716-2', 'hist-ticket-111-2716', 'prod-mocha', 1, 16500, 0, '2026-02-18T15:54:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2716-3', 'hist-ticket-111-2716', 'prod-americano', 1, 12000, 0, '2026-02-18T15:54:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2716', 'hist-ticket-111-2716', 'cash', 40500, 'completed', '2026-02-18T15:54:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2717', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-18T15:46:43.000Z', '2026-02-18T15:46:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2717-1', 'hist-ticket-111-2717', 'prod-americano', 1, 12000, 0, '2026-02-18T15:46:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2717-2', 'hist-ticket-111-2717', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T15:46:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2717-3', 'hist-ticket-111-2717', 'prod-mocha', 1, 16500, 0, '2026-02-18T15:46:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2717-4', 'hist-ticket-111-2717', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T15:46:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2717', 'hist-ticket-111-2717', 'cash', 57500, 'completed', '2026-02-18T15:46:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2718', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-18T18:13:54.000Z', '2026-02-18T18:13:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2718-1', 'hist-ticket-111-2718', 'prod-mocha', 1, 16500, 0, '2026-02-18T18:13:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2718-2', 'hist-ticket-111-2718', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T18:13:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2718', 'hist-ticket-111-2718', 'cash', 31000, 'completed', '2026-02-18T18:13:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2719', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-18T09:02:40.000Z', '2026-02-18T09:02:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2719-1', 'hist-ticket-111-2719', 'prod-mocha', 1, 16500, 0, '2026-02-18T09:02:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2719-2', 'hist-ticket-111-2719', 'prod-americano', 1, 12000, 0, '2026-02-18T09:02:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2719', 'hist-ticket-111-2719', 'cash', 28500, 'completed', '2026-02-18T09:02:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2720', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-18T19:10:08.000Z', '2026-02-18T19:10:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2720-1', 'hist-ticket-111-2720', 'prod-mocha', 1, 16500, 0, '2026-02-18T19:10:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2720-2', 'hist-ticket-111-2720', 'prod-mocha', 1, 16500, 0, '2026-02-18T19:10:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2720', 'hist-ticket-111-2720', 'cash', 33000, 'completed', '2026-02-18T19:10:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2721', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-18T15:26:43.000Z', '2026-02-18T15:26:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2721-1', 'hist-ticket-111-2721', 'prod-latte', 1, 15000, 0, '2026-02-18T15:26:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2721-2', 'hist-ticket-111-2721', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T15:26:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2721', 'hist-ticket-111-2721', 'cash', 29500, 'completed', '2026-02-18T15:26:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2722', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-18T09:23:25.000Z', '2026-02-18T09:23:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2722-1', 'hist-ticket-111-2722', 'prod-latte', 1, 15000, 0, '2026-02-18T09:23:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2722-2', 'hist-ticket-111-2722', 'prod-latte', 1, 15000, 0, '2026-02-18T09:23:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2722-3', 'hist-ticket-111-2722', 'prod-mocha', 1, 16500, 0, '2026-02-18T09:23:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2722-4', 'hist-ticket-111-2722', 'prod-latte', 1, 15000, 0, '2026-02-18T09:23:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2722', 'hist-ticket-111-2722', 'cash', 61500, 'completed', '2026-02-18T09:23:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2723', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-18T18:55:51.000Z', '2026-02-18T18:55:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2723-1', 'hist-ticket-111-2723', 'prod-mocha', 1, 16500, 0, '2026-02-18T18:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2723-2', 'hist-ticket-111-2723', 'prod-latte', 1, 15000, 0, '2026-02-18T18:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2723-3', 'hist-ticket-111-2723', 'prod-mocha', 1, 16500, 0, '2026-02-18T18:55:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2723', 'hist-ticket-111-2723', 'cash', 48000, 'completed', '2026-02-18T18:55:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2724', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-18T13:54:13.000Z', '2026-02-18T13:54:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2724-1', 'hist-ticket-111-2724', 'prod-mocha', 1, 16500, 0, '2026-02-18T13:54:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2724-2', 'hist-ticket-111-2724', 'prod-americano', 1, 12000, 0, '2026-02-18T13:54:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2724', 'hist-ticket-111-2724', 'cash', 28500, 'completed', '2026-02-18T13:54:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2725', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-18T14:35:16.000Z', '2026-02-18T14:35:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2725-1', 'hist-ticket-111-2725', 'prod-americano', 1, 12000, 0, '2026-02-18T14:35:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2725-2', 'hist-ticket-111-2725', 'prod-mocha', 1, 16500, 0, '2026-02-18T14:35:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2725-3', 'hist-ticket-111-2725', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T14:35:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2725-4', 'hist-ticket-111-2725', 'prod-latte', 1, 15000, 0, '2026-02-18T14:35:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2725', 'hist-ticket-111-2725', 'cash', 58000, 'completed', '2026-02-18T14:35:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2726', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-18T16:43:06.000Z', '2026-02-18T16:43:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2726-1', 'hist-ticket-111-2726', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:43:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2726-2', 'hist-ticket-111-2726', 'prod-mocha', 1, 16500, 0, '2026-02-18T16:43:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2726-3', 'hist-ticket-111-2726', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:43:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2726-4', 'hist-ticket-111-2726', 'prod-latte', 1, 15000, 0, '2026-02-18T16:43:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2726', 'hist-ticket-111-2726', 'cash', 60500, 'completed', '2026-02-18T16:43:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2727', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-18T15:16:50.000Z', '2026-02-18T15:16:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2727-1', 'hist-ticket-111-2727', 'prod-mocha', 1, 16500, 0, '2026-02-18T15:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2727-2', 'hist-ticket-111-2727', 'prod-latte', 1, 15000, 0, '2026-02-18T15:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2727-3', 'hist-ticket-111-2727', 'prod-americano', 1, 12000, 0, '2026-02-18T15:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2727-4', 'hist-ticket-111-2727', 'prod-latte', 1, 15000, 0, '2026-02-18T15:16:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2727', 'hist-ticket-111-2727', 'cash', 58500, 'completed', '2026-02-18T15:16:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2728', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-18T19:38:27.000Z', '2026-02-18T19:38:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2728-1', 'hist-ticket-111-2728', 'prod-americano', 1, 12000, 0, '2026-02-18T19:38:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2728-2', 'hist-ticket-111-2728', 'prod-mocha', 1, 16500, 0, '2026-02-18T19:38:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2728', 'hist-ticket-111-2728', 'cash', 28500, 'completed', '2026-02-18T19:38:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2729', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-02-18T19:14:13.000Z', '2026-02-18T19:14:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2729-1', 'hist-ticket-111-2729', 'prod-latte', 1, 15000, 0, '2026-02-18T19:14:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2729-2', 'hist-ticket-111-2729', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T19:14:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2729', 'hist-ticket-111-2729', 'cash', 29500, 'completed', '2026-02-18T19:14:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2730', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-18T16:58:03.000Z', '2026-02-18T16:58:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2730-1', 'hist-ticket-111-2730', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:58:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2730', 'hist-ticket-111-2730', 'cash', 14500, 'completed', '2026-02-18T16:58:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2731', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-18T17:06:53.000Z', '2026-02-18T17:06:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2731-1', 'hist-ticket-111-2731', 'prod-latte', 1, 15000, 0, '2026-02-18T17:06:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2731-2', 'hist-ticket-111-2731', 'prod-latte', 1, 15000, 0, '2026-02-18T17:06:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2731-3', 'hist-ticket-111-2731', 'prod-latte', 1, 15000, 0, '2026-02-18T17:06:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2731-4', 'hist-ticket-111-2731', 'prod-mocha', 1, 16500, 0, '2026-02-18T17:06:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2731', 'hist-ticket-111-2731', 'cash', 61500, 'completed', '2026-02-18T17:06:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2732', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-18T10:01:45.000Z', '2026-02-18T10:01:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2732-1', 'hist-ticket-111-2732', 'prod-mocha', 1, 16500, 0, '2026-02-18T10:01:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2732', 'hist-ticket-111-2732', 'cash', 16500, 'completed', '2026-02-18T10:01:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2733', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-18T12:20:34.000Z', '2026-02-18T12:20:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2733-1', 'hist-ticket-111-2733', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T12:20:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2733-2', 'hist-ticket-111-2733', 'prod-latte', 1, 15000, 0, '2026-02-18T12:20:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2733', 'hist-ticket-111-2733', 'cash', 29500, 'completed', '2026-02-18T12:20:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2734', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-18T11:55:13.000Z', '2026-02-18T11:55:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2734-1', 'hist-ticket-111-2734', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T11:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2734-2', 'hist-ticket-111-2734', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T11:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2734-3', 'hist-ticket-111-2734', 'prod-americano', 1, 12000, 0, '2026-02-18T11:55:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2734-4', 'hist-ticket-111-2734', 'prod-latte', 1, 15000, 0, '2026-02-18T11:55:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2734', 'hist-ticket-111-2734', 'cash', 56000, 'completed', '2026-02-18T11:55:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2735', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-02-18T08:36:57.000Z', '2026-02-18T08:36:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2735-1', 'hist-ticket-111-2735', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T08:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2735-2', 'hist-ticket-111-2735', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T08:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2735-3', 'hist-ticket-111-2735', 'prod-americano', 1, 12000, 0, '2026-02-18T08:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2735-4', 'hist-ticket-111-2735', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T08:36:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2735', 'hist-ticket-111-2735', 'cash', 55500, 'completed', '2026-02-18T08:36:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2736', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-18T16:45:26.000Z', '2026-02-18T16:45:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2736-1', 'hist-ticket-111-2736', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:45:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2736-2', 'hist-ticket-111-2736', 'prod-mocha', 1, 16500, 0, '2026-02-18T16:45:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2736-3', 'hist-ticket-111-2736', 'prod-americano', 1, 12000, 0, '2026-02-18T16:45:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2736-4', 'hist-ticket-111-2736', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:45:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2736', 'hist-ticket-111-2736', 'cash', 57500, 'completed', '2026-02-18T16:45:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2737', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-18T16:03:42.000Z', '2026-02-18T16:03:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2737-1', 'hist-ticket-111-2737', 'prod-latte', 1, 15000, 0, '2026-02-18T16:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2737-2', 'hist-ticket-111-2737', 'prod-latte', 1, 15000, 0, '2026-02-18T16:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2737-3', 'hist-ticket-111-2737', 'prod-cappuccino', 1, 14500, 0, '2026-02-18T16:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2737-4', 'hist-ticket-111-2737', 'prod-mocha', 1, 16500, 0, '2026-02-18T16:03:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2737', 'hist-ticket-111-2737', 'cash', 61000, 'completed', '2026-02-18T16:03:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2738', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-18T10:57:00.000Z', '2026-02-18T10:57:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2738-1', 'hist-ticket-111-2738', 'prod-americano', 1, 12000, 0, '2026-02-18T10:57:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2738-2', 'hist-ticket-111-2738', 'prod-americano', 1, 12000, 0, '2026-02-18T10:57:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2738', 'hist-ticket-111-2738', 'cash', 24000, 'completed', '2026-02-18T10:57:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2739', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-18T12:31:16.000Z', '2026-02-18T12:31:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2739-1', 'hist-ticket-111-2739', 'prod-americano', 1, 12000, 0, '2026-02-18T12:31:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2739', 'hist-ticket-111-2739', 'cash', 12000, 'completed', '2026-02-18T12:31:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-111-2740', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-18T15:22:49.000Z', '2026-02-18T15:22:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2740-1', 'hist-ticket-111-2740', 'prod-latte', 1, 15000, 0, '2026-02-18T15:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2740-2', 'hist-ticket-111-2740', 'prod-mocha', 1, 16500, 0, '2026-02-18T15:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2740-3', 'hist-ticket-111-2740', 'prod-americano', 1, 12000, 0, '2026-02-18T15:22:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-111-2740-4', 'hist-ticket-111-2740', 'prod-mocha', 1, 16500, 0, '2026-02-18T15:22:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-111-2740', 'hist-ticket-111-2740', 'cash', 60000, 'completed', '2026-02-18T15:22:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2741', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-02-19T10:10:26.000Z', '2026-02-19T10:10:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2741-1', 'hist-ticket-112-2741', 'prod-latte', 1, 15000, 0, '2026-02-19T10:10:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2741', 'hist-ticket-112-2741', 'cash', 15000, 'completed', '2026-02-19T10:10:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2742', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-19T15:20:00.000Z', '2026-02-19T15:20:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2742-1', 'hist-ticket-112-2742', 'prod-mocha', 1, 16500, 0, '2026-02-19T15:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2742-2', 'hist-ticket-112-2742', 'prod-mocha', 1, 16500, 0, '2026-02-19T15:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2742-3', 'hist-ticket-112-2742', 'prod-mocha', 1, 16500, 0, '2026-02-19T15:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2742-4', 'hist-ticket-112-2742', 'prod-latte', 1, 15000, 0, '2026-02-19T15:20:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2742', 'hist-ticket-112-2742', 'cash', 64500, 'completed', '2026-02-19T15:20:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2743', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-19T18:11:36.000Z', '2026-02-19T18:11:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2743-1', 'hist-ticket-112-2743', 'prod-mocha', 1, 16500, 0, '2026-02-19T18:11:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2743-2', 'hist-ticket-112-2743', 'prod-latte', 1, 15000, 0, '2026-02-19T18:11:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2743-3', 'hist-ticket-112-2743', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T18:11:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2743', 'hist-ticket-112-2743', 'cash', 46000, 'completed', '2026-02-19T18:11:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2744', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-19T09:57:00.000Z', '2026-02-19T09:57:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2744-1', 'hist-ticket-112-2744', 'prod-americano', 1, 12000, 0, '2026-02-19T09:57:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2744-2', 'hist-ticket-112-2744', 'prod-latte', 1, 15000, 0, '2026-02-19T09:57:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2744-3', 'hist-ticket-112-2744', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T09:57:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2744', 'hist-ticket-112-2744', 'cash', 41500, 'completed', '2026-02-19T09:57:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2745', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-19T17:56:44.000Z', '2026-02-19T17:56:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2745-1', 'hist-ticket-112-2745', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T17:56:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2745-2', 'hist-ticket-112-2745', 'prod-americano', 1, 12000, 0, '2026-02-19T17:56:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2745', 'hist-ticket-112-2745', 'cash', 26500, 'completed', '2026-02-19T17:56:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2746', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-19T17:29:50.000Z', '2026-02-19T17:29:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2746-1', 'hist-ticket-112-2746', 'prod-latte', 1, 15000, 0, '2026-02-19T17:29:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2746-2', 'hist-ticket-112-2746', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T17:29:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2746', 'hist-ticket-112-2746', 'cash', 29500, 'completed', '2026-02-19T17:29:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2747', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-19T14:36:56.000Z', '2026-02-19T14:36:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2747-1', 'hist-ticket-112-2747', 'prod-americano', 1, 12000, 0, '2026-02-19T14:36:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2747-2', 'hist-ticket-112-2747', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T14:36:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2747', 'hist-ticket-112-2747', 'cash', 26500, 'completed', '2026-02-19T14:36:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2748', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-19T18:49:09.000Z', '2026-02-19T18:49:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2748-1', 'hist-ticket-112-2748', 'prod-americano', 1, 12000, 0, '2026-02-19T18:49:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2748-2', 'hist-ticket-112-2748', 'prod-americano', 1, 12000, 0, '2026-02-19T18:49:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2748-3', 'hist-ticket-112-2748', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T18:49:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2748', 'hist-ticket-112-2748', 'cash', 38500, 'completed', '2026-02-19T18:49:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2749', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-19T16:13:37.000Z', '2026-02-19T16:13:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2749-1', 'hist-ticket-112-2749', 'prod-americano', 1, 12000, 0, '2026-02-19T16:13:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2749-2', 'hist-ticket-112-2749', 'prod-mocha', 1, 16500, 0, '2026-02-19T16:13:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2749-3', 'hist-ticket-112-2749', 'prod-mocha', 1, 16500, 0, '2026-02-19T16:13:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2749', 'hist-ticket-112-2749', 'cash', 45000, 'completed', '2026-02-19T16:13:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2750', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-19T19:57:02.000Z', '2026-02-19T19:57:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2750-1', 'hist-ticket-112-2750', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T19:57:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2750-2', 'hist-ticket-112-2750', 'prod-americano', 1, 12000, 0, '2026-02-19T19:57:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2750', 'hist-ticket-112-2750', 'cash', 26500, 'completed', '2026-02-19T19:57:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2751', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-19T11:04:17.000Z', '2026-02-19T11:04:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2751-1', 'hist-ticket-112-2751', 'prod-americano', 1, 12000, 0, '2026-02-19T11:04:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2751-2', 'hist-ticket-112-2751', 'prod-americano', 1, 12000, 0, '2026-02-19T11:04:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2751-3', 'hist-ticket-112-2751', 'prod-latte', 1, 15000, 0, '2026-02-19T11:04:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2751', 'hist-ticket-112-2751', 'cash', 39000, 'completed', '2026-02-19T11:04:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2752', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-19T15:26:21.000Z', '2026-02-19T15:26:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2752-1', 'hist-ticket-112-2752', 'prod-latte', 1, 15000, 0, '2026-02-19T15:26:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2752-2', 'hist-ticket-112-2752', 'prod-mocha', 1, 16500, 0, '2026-02-19T15:26:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2752-3', 'hist-ticket-112-2752', 'prod-americano', 1, 12000, 0, '2026-02-19T15:26:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2752-4', 'hist-ticket-112-2752', 'prod-mocha', 1, 16500, 0, '2026-02-19T15:26:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2752', 'hist-ticket-112-2752', 'cash', 60000, 'completed', '2026-02-19T15:26:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2753', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-19T11:07:03.000Z', '2026-02-19T11:07:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2753-1', 'hist-ticket-112-2753', 'prod-latte', 1, 15000, 0, '2026-02-19T11:07:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2753', 'hist-ticket-112-2753', 'cash', 15000, 'completed', '2026-02-19T11:07:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2754', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-19T10:27:53.000Z', '2026-02-19T10:27:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2754-1', 'hist-ticket-112-2754', 'prod-latte', 1, 15000, 0, '2026-02-19T10:27:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2754', 'hist-ticket-112-2754', 'cash', 15000, 'completed', '2026-02-19T10:27:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2755', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-02-19T09:49:51.000Z', '2026-02-19T09:49:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2755-1', 'hist-ticket-112-2755', 'prod-mocha', 1, 16500, 0, '2026-02-19T09:49:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2755-2', 'hist-ticket-112-2755', 'prod-mocha', 1, 16500, 0, '2026-02-19T09:49:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2755-3', 'hist-ticket-112-2755', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T09:49:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2755', 'hist-ticket-112-2755', 'cash', 47500, 'completed', '2026-02-19T09:49:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2756', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-19T17:09:33.000Z', '2026-02-19T17:09:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2756-1', 'hist-ticket-112-2756', 'prod-mocha', 1, 16500, 0, '2026-02-19T17:09:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2756-2', 'hist-ticket-112-2756', 'prod-americano', 1, 12000, 0, '2026-02-19T17:09:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2756-3', 'hist-ticket-112-2756', 'prod-americano', 1, 12000, 0, '2026-02-19T17:09:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2756-4', 'hist-ticket-112-2756', 'prod-americano', 1, 12000, 0, '2026-02-19T17:09:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2756', 'hist-ticket-112-2756', 'cash', 52500, 'completed', '2026-02-19T17:09:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2757', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-02-19T08:42:08.000Z', '2026-02-19T08:42:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2757-1', 'hist-ticket-112-2757', 'prod-americano', 1, 12000, 0, '2026-02-19T08:42:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2757-2', 'hist-ticket-112-2757', 'prod-americano', 1, 12000, 0, '2026-02-19T08:42:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2757-3', 'hist-ticket-112-2757', 'prod-latte', 1, 15000, 0, '2026-02-19T08:42:08.000Z');