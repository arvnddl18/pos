INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2870', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-22T17:37:06.000Z', '2026-02-22T17:37:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2870-1', 'hist-ticket-115-2870', 'prod-americano', 1, 12000, 0, '2026-02-22T17:37:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2870-2', 'hist-ticket-115-2870', 'prod-mocha', 1, 16500, 0, '2026-02-22T17:37:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2870-3', 'hist-ticket-115-2870', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T17:37:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2870-4', 'hist-ticket-115-2870', 'prod-latte', 1, 15000, 0, '2026-02-22T17:37:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2870', 'hist-ticket-115-2870', 'cash', 58000, 'completed', '2026-02-22T17:37:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2871', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-23T19:16:41.000Z', '2026-02-23T19:16:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2871-1', 'hist-ticket-116-2871', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T19:16:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2871-2', 'hist-ticket-116-2871', 'prod-americano', 1, 12000, 0, '2026-02-23T19:16:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2871', 'hist-ticket-116-2871', 'cash', 26500, 'completed', '2026-02-23T19:16:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2872', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-23T17:54:54.000Z', '2026-02-23T17:54:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2872-1', 'hist-ticket-116-2872', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2872-2', 'hist-ticket-116-2872', 'prod-americano', 1, 12000, 0, '2026-02-23T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2872-3', 'hist-ticket-116-2872', 'prod-americano', 1, 12000, 0, '2026-02-23T17:54:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2872-4', 'hist-ticket-116-2872', 'prod-mocha', 1, 16500, 0, '2026-02-23T17:54:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2872', 'hist-ticket-116-2872', 'cash', 55000, 'completed', '2026-02-23T17:54:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2873', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-23T08:12:02.000Z', '2026-02-23T08:12:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2873-1', 'hist-ticket-116-2873', 'prod-americano', 1, 12000, 0, '2026-02-23T08:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2873-2', 'hist-ticket-116-2873', 'prod-americano', 1, 12000, 0, '2026-02-23T08:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2873-3', 'hist-ticket-116-2873', 'prod-latte', 1, 15000, 0, '2026-02-23T08:12:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2873', 'hist-ticket-116-2873', 'cash', 39000, 'completed', '2026-02-23T08:12:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2874', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-23T12:08:42.000Z', '2026-02-23T12:08:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2874-1', 'hist-ticket-116-2874', 'prod-latte', 1, 15000, 0, '2026-02-23T12:08:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2874-2', 'hist-ticket-116-2874', 'prod-latte', 1, 15000, 0, '2026-02-23T12:08:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2874-3', 'hist-ticket-116-2874', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T12:08:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2874-4', 'hist-ticket-116-2874', 'prod-americano', 1, 12000, 0, '2026-02-23T12:08:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2874', 'hist-ticket-116-2874', 'cash', 56500, 'completed', '2026-02-23T12:08:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2875', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-23T18:53:48.000Z', '2026-02-23T18:53:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2875-1', 'hist-ticket-116-2875', 'prod-mocha', 1, 16500, 0, '2026-02-23T18:53:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2875', 'hist-ticket-116-2875', 'cash', 16500, 'completed', '2026-02-23T18:53:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2876', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-23T11:50:06.000Z', '2026-02-23T11:50:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2876-1', 'hist-ticket-116-2876', 'prod-americano', 1, 12000, 0, '2026-02-23T11:50:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2876', 'hist-ticket-116-2876', 'cash', 12000, 'completed', '2026-02-23T11:50:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2877', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-02-23T11:35:27.000Z', '2026-02-23T11:35:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2877-1', 'hist-ticket-116-2877', 'prod-mocha', 1, 16500, 0, '2026-02-23T11:35:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2877', 'hist-ticket-116-2877', 'cash', 16500, 'completed', '2026-02-23T11:35:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2878', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-02-23T17:16:06.000Z', '2026-02-23T17:16:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2878-1', 'hist-ticket-116-2878', 'prod-mocha', 1, 16500, 0, '2026-02-23T17:16:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2878', 'hist-ticket-116-2878', 'cash', 16500, 'completed', '2026-02-23T17:16:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2879', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-23T17:44:12.000Z', '2026-02-23T17:44:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2879-1', 'hist-ticket-116-2879', 'prod-latte', 1, 15000, 0, '2026-02-23T17:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2879-2', 'hist-ticket-116-2879', 'prod-latte', 1, 15000, 0, '2026-02-23T17:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2879-3', 'hist-ticket-116-2879', 'prod-mocha', 1, 16500, 0, '2026-02-23T17:44:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2879-4', 'hist-ticket-116-2879', 'prod-americano', 1, 12000, 0, '2026-02-23T17:44:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2879', 'hist-ticket-116-2879', 'cash', 58500, 'completed', '2026-02-23T17:44:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2880', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-02-23T15:44:39.000Z', '2026-02-23T15:44:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2880-1', 'hist-ticket-116-2880', 'prod-mocha', 1, 16500, 0, '2026-02-23T15:44:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2880', 'hist-ticket-116-2880', 'cash', 16500, 'completed', '2026-02-23T15:44:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2881', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-23T17:46:06.000Z', '2026-02-23T17:46:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2881-1', 'hist-ticket-116-2881', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T17:46:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2881', 'hist-ticket-116-2881', 'cash', 14500, 'completed', '2026-02-23T17:46:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2882', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-23T16:12:54.000Z', '2026-02-23T16:12:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2882-1', 'hist-ticket-116-2882', 'prod-mocha', 1, 16500, 0, '2026-02-23T16:12:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2882-2', 'hist-ticket-116-2882', 'prod-americano', 1, 12000, 0, '2026-02-23T16:12:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2882-3', 'hist-ticket-116-2882', 'prod-americano', 1, 12000, 0, '2026-02-23T16:12:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2882', 'hist-ticket-116-2882', 'cash', 40500, 'completed', '2026-02-23T16:12:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2883', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-02-23T10:45:13.000Z', '2026-02-23T10:45:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2883-1', 'hist-ticket-116-2883', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T10:45:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2883', 'hist-ticket-116-2883', 'cash', 14500, 'completed', '2026-02-23T10:45:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2884', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-23T19:37:10.000Z', '2026-02-23T19:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2884-1', 'hist-ticket-116-2884', 'prod-latte', 1, 15000, 0, '2026-02-23T19:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2884-2', 'hist-ticket-116-2884', 'prod-americano', 1, 12000, 0, '2026-02-23T19:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2884-3', 'hist-ticket-116-2884', 'prod-latte', 1, 15000, 0, '2026-02-23T19:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2884', 'hist-ticket-116-2884', 'cash', 42000, 'completed', '2026-02-23T19:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2885', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-23T15:22:20.000Z', '2026-02-23T15:22:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2885-1', 'hist-ticket-116-2885', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T15:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2885-2', 'hist-ticket-116-2885', 'prod-americano', 1, 12000, 0, '2026-02-23T15:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2885-3', 'hist-ticket-116-2885', 'prod-americano', 1, 12000, 0, '2026-02-23T15:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2885-4', 'hist-ticket-116-2885', 'prod-mocha', 1, 16500, 0, '2026-02-23T15:22:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2885', 'hist-ticket-116-2885', 'cash', 55000, 'completed', '2026-02-23T15:22:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2886', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-23T17:32:34.000Z', '2026-02-23T17:32:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2886-1', 'hist-ticket-116-2886', 'prod-americano', 1, 12000, 0, '2026-02-23T17:32:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2886-2', 'hist-ticket-116-2886', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T17:32:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2886', 'hist-ticket-116-2886', 'cash', 26500, 'completed', '2026-02-23T17:32:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2887', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-02-23T10:47:01.000Z', '2026-02-23T10:47:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2887-1', 'hist-ticket-116-2887', 'prod-latte', 1, 15000, 0, '2026-02-23T10:47:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2887-2', 'hist-ticket-116-2887', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T10:47:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2887-3', 'hist-ticket-116-2887', 'prod-latte', 1, 15000, 0, '2026-02-23T10:47:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2887', 'hist-ticket-116-2887', 'cash', 44500, 'completed', '2026-02-23T10:47:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2888', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-23T15:43:20.000Z', '2026-02-23T15:43:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2888-1', 'hist-ticket-116-2888', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T15:43:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2888', 'hist-ticket-116-2888', 'cash', 14500, 'completed', '2026-02-23T15:43:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2889', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-02-23T12:51:03.000Z', '2026-02-23T12:51:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2889-1', 'hist-ticket-116-2889', 'prod-americano', 1, 12000, 0, '2026-02-23T12:51:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2889', 'hist-ticket-116-2889', 'cash', 12000, 'completed', '2026-02-23T12:51:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2890', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-23T18:07:23.000Z', '2026-02-23T18:07:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2890-1', 'hist-ticket-116-2890', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T18:07:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2890-2', 'hist-ticket-116-2890', 'prod-mocha', 1, 16500, 0, '2026-02-23T18:07:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2890', 'hist-ticket-116-2890', 'cash', 31000, 'completed', '2026-02-23T18:07:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2891', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-23T18:04:45.000Z', '2026-02-23T18:04:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2891-1', 'hist-ticket-116-2891', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T18:04:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2891', 'hist-ticket-116-2891', 'cash', 14500, 'completed', '2026-02-23T18:04:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2892', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-23T15:41:22.000Z', '2026-02-23T15:41:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2892-1', 'hist-ticket-116-2892', 'prod-americano', 1, 12000, 0, '2026-02-23T15:41:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2892-2', 'hist-ticket-116-2892', 'prod-americano', 1, 12000, 0, '2026-02-23T15:41:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2892-3', 'hist-ticket-116-2892', 'prod-americano', 1, 12000, 0, '2026-02-23T15:41:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2892', 'hist-ticket-116-2892', 'cash', 36000, 'completed', '2026-02-23T15:41:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2893', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-23T12:07:10.000Z', '2026-02-23T12:07:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2893-1', 'hist-ticket-116-2893', 'prod-mocha', 1, 16500, 0, '2026-02-23T12:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2893-2', 'hist-ticket-116-2893', 'prod-mocha', 1, 16500, 0, '2026-02-23T12:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2893-3', 'hist-ticket-116-2893', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T12:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2893-4', 'hist-ticket-116-2893', 'prod-americano', 1, 12000, 0, '2026-02-23T12:07:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2893', 'hist-ticket-116-2893', 'cash', 59500, 'completed', '2026-02-23T12:07:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2894', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-23T18:40:19.000Z', '2026-02-23T18:40:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2894-1', 'hist-ticket-116-2894', 'prod-mocha', 1, 16500, 0, '2026-02-23T18:40:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2894', 'hist-ticket-116-2894', 'cash', 16500, 'completed', '2026-02-23T18:40:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-116-2895', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-02-23T15:34:50.000Z', '2026-02-23T15:34:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2895-1', 'hist-ticket-116-2895', 'prod-latte', 1, 15000, 0, '2026-02-23T15:34:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2895-2', 'hist-ticket-116-2895', 'prod-cappuccino', 1, 14500, 0, '2026-02-23T15:34:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-116-2895-3', 'hist-ticket-116-2895', 'prod-mocha', 1, 16500, 0, '2026-02-23T15:34:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-116-2895', 'hist-ticket-116-2895', 'cash', 46000, 'completed', '2026-02-23T15:34:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2896', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-24T18:28:44.000Z', '2026-02-24T18:28:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2896-1', 'hist-ticket-117-2896', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T18:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2896-2', 'hist-ticket-117-2896', 'prod-americano', 1, 12000, 0, '2026-02-24T18:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2896-3', 'hist-ticket-117-2896', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T18:28:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2896-4', 'hist-ticket-117-2896', 'prod-mocha', 1, 16500, 0, '2026-02-24T18:28:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2896', 'hist-ticket-117-2896', 'cash', 57500, 'completed', '2026-02-24T18:28:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2897', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-24T18:37:57.000Z', '2026-02-24T18:37:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2897-1', 'hist-ticket-117-2897', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T18:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2897-2', 'hist-ticket-117-2897', 'prod-americano', 1, 12000, 0, '2026-02-24T18:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2897-3', 'hist-ticket-117-2897', 'prod-latte', 1, 15000, 0, '2026-02-24T18:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2897-4', 'hist-ticket-117-2897', 'prod-americano', 1, 12000, 0, '2026-02-24T18:37:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2897', 'hist-ticket-117-2897', 'cash', 53500, 'completed', '2026-02-24T18:37:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2898', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-24T17:04:39.000Z', '2026-02-24T17:04:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2898-1', 'hist-ticket-117-2898', 'prod-mocha', 1, 16500, 0, '2026-02-24T17:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2898-2', 'hist-ticket-117-2898', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T17:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2898-3', 'hist-ticket-117-2898', 'prod-mocha', 1, 16500, 0, '2026-02-24T17:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2898-4', 'hist-ticket-117-2898', 'prod-mocha', 1, 16500, 0, '2026-02-24T17:04:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2898', 'hist-ticket-117-2898', 'cash', 64000, 'completed', '2026-02-24T17:04:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2899', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-24T10:06:40.000Z', '2026-02-24T10:06:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2899-1', 'hist-ticket-117-2899', 'prod-americano', 1, 12000, 0, '2026-02-24T10:06:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2899-2', 'hist-ticket-117-2899', 'prod-mocha', 1, 16500, 0, '2026-02-24T10:06:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2899-3', 'hist-ticket-117-2899', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T10:06:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2899', 'hist-ticket-117-2899', 'cash', 43000, 'completed', '2026-02-24T10:06:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2900', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-24T08:27:46.000Z', '2026-02-24T08:27:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2900-1', 'hist-ticket-117-2900', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T08:27:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2900', 'hist-ticket-117-2900', 'cash', 14500, 'completed', '2026-02-24T08:27:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2901', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-24T15:15:27.000Z', '2026-02-24T15:15:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2901-1', 'hist-ticket-117-2901', 'prod-americano', 1, 12000, 0, '2026-02-24T15:15:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2901-2', 'hist-ticket-117-2901', 'prod-americano', 1, 12000, 0, '2026-02-24T15:15:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2901-3', 'hist-ticket-117-2901', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T15:15:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2901-4', 'hist-ticket-117-2901', 'prod-mocha', 1, 16500, 0, '2026-02-24T15:15:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2901', 'hist-ticket-117-2901', 'cash', 55000, 'completed', '2026-02-24T15:15:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2902', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-24T12:48:42.000Z', '2026-02-24T12:48:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2902-1', 'hist-ticket-117-2902', 'prod-americano', 1, 12000, 0, '2026-02-24T12:48:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2902-2', 'hist-ticket-117-2902', 'prod-americano', 1, 12000, 0, '2026-02-24T12:48:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2902-3', 'hist-ticket-117-2902', 'prod-mocha', 1, 16500, 0, '2026-02-24T12:48:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2902', 'hist-ticket-117-2902', 'cash', 40500, 'completed', '2026-02-24T12:48:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2903', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-24T08:14:34.000Z', '2026-02-24T08:14:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2903-1', 'hist-ticket-117-2903', 'prod-mocha', 1, 16500, 0, '2026-02-24T08:14:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2903', 'hist-ticket-117-2903', 'cash', 16500, 'completed', '2026-02-24T08:14:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2904', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-24T12:20:51.000Z', '2026-02-24T12:20:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2904-1', 'hist-ticket-117-2904', 'prod-latte', 1, 15000, 0, '2026-02-24T12:20:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2904-2', 'hist-ticket-117-2904', 'prod-americano', 1, 12000, 0, '2026-02-24T12:20:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2904-3', 'hist-ticket-117-2904', 'prod-latte', 1, 15000, 0, '2026-02-24T12:20:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2904-4', 'hist-ticket-117-2904', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T12:20:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2904', 'hist-ticket-117-2904', 'cash', 56500, 'completed', '2026-02-24T12:20:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2905', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-24T16:48:30.000Z', '2026-02-24T16:48:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2905-1', 'hist-ticket-117-2905', 'prod-mocha', 1, 16500, 0, '2026-02-24T16:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2905-2', 'hist-ticket-117-2905', 'prod-latte', 1, 15000, 0, '2026-02-24T16:48:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2905-3', 'hist-ticket-117-2905', 'prod-mocha', 1, 16500, 0, '2026-02-24T16:48:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2905', 'hist-ticket-117-2905', 'cash', 48000, 'completed', '2026-02-24T16:48:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2906', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-02-24T13:14:10.000Z', '2026-02-24T13:14:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2906-1', 'hist-ticket-117-2906', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T13:14:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2906-2', 'hist-ticket-117-2906', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T13:14:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2906-3', 'hist-ticket-117-2906', 'prod-americano', 1, 12000, 0, '2026-02-24T13:14:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2906', 'hist-ticket-117-2906', 'cash', 41000, 'completed', '2026-02-24T13:14:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2907', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-24T12:39:04.000Z', '2026-02-24T12:39:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2907-1', 'hist-ticket-117-2907', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T12:39:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2907-2', 'hist-ticket-117-2907', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T12:39:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2907-3', 'hist-ticket-117-2907', 'prod-americano', 1, 12000, 0, '2026-02-24T12:39:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2907', 'hist-ticket-117-2907', 'cash', 41000, 'completed', '2026-02-24T12:39:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2908', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-24T16:28:13.000Z', '2026-02-24T16:28:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2908-1', 'hist-ticket-117-2908', 'prod-mocha', 1, 16500, 0, '2026-02-24T16:28:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2908-2', 'hist-ticket-117-2908', 'prod-americano', 1, 12000, 0, '2026-02-24T16:28:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2908', 'hist-ticket-117-2908', 'cash', 28500, 'completed', '2026-02-24T16:28:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2909', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-24T11:43:14.000Z', '2026-02-24T11:43:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2909-1', 'hist-ticket-117-2909', 'prod-mocha', 1, 16500, 0, '2026-02-24T11:43:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2909', 'hist-ticket-117-2909', 'cash', 16500, 'completed', '2026-02-24T11:43:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2910', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-24T13:41:50.000Z', '2026-02-24T13:41:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2910-1', 'hist-ticket-117-2910', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T13:41:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2910', 'hist-ticket-117-2910', 'cash', 14500, 'completed', '2026-02-24T13:41:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2911', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-24T19:51:05.000Z', '2026-02-24T19:51:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2911-1', 'hist-ticket-117-2911', 'prod-americano', 1, 12000, 0, '2026-02-24T19:51:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2911', 'hist-ticket-117-2911', 'cash', 12000, 'completed', '2026-02-24T19:51:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2912', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-02-24T12:22:16.000Z', '2026-02-24T12:22:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2912-1', 'hist-ticket-117-2912', 'prod-mocha', 1, 16500, 0, '2026-02-24T12:22:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2912-2', 'hist-ticket-117-2912', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T12:22:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2912-3', 'hist-ticket-117-2912', 'prod-mocha', 1, 16500, 0, '2026-02-24T12:22:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2912', 'hist-ticket-117-2912', 'cash', 47500, 'completed', '2026-02-24T12:22:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2913', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-24T13:01:34.000Z', '2026-02-24T13:01:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2913-1', 'hist-ticket-117-2913', 'prod-latte', 1, 15000, 0, '2026-02-24T13:01:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2913-2', 'hist-ticket-117-2913', 'prod-mocha', 1, 16500, 0, '2026-02-24T13:01:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2913-3', 'hist-ticket-117-2913', 'prod-latte', 1, 15000, 0, '2026-02-24T13:01:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2913', 'hist-ticket-117-2913', 'cash', 46500, 'completed', '2026-02-24T13:01:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2914', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-24T09:00:20.000Z', '2026-02-24T09:00:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2914-1', 'hist-ticket-117-2914', 'prod-latte', 1, 15000, 0, '2026-02-24T09:00:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2914-2', 'hist-ticket-117-2914', 'prod-americano', 1, 12000, 0, '2026-02-24T09:00:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2914-3', 'hist-ticket-117-2914', 'prod-mocha', 1, 16500, 0, '2026-02-24T09:00:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2914', 'hist-ticket-117-2914', 'cash', 43500, 'completed', '2026-02-24T09:00:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2915', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-24T10:46:32.000Z', '2026-02-24T10:46:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2915-1', 'hist-ticket-117-2915', 'prod-latte', 1, 15000, 0, '2026-02-24T10:46:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2915', 'hist-ticket-117-2915', 'cash', 15000, 'completed', '2026-02-24T10:46:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2916', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-24T15:42:20.000Z', '2026-02-24T15:42:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2916-1', 'hist-ticket-117-2916', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T15:42:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2916-2', 'hist-ticket-117-2916', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T15:42:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2916', 'hist-ticket-117-2916', 'cash', 29000, 'completed', '2026-02-24T15:42:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2917', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-24T14:48:09.000Z', '2026-02-24T14:48:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2917-1', 'hist-ticket-117-2917', 'prod-latte', 1, 15000, 0, '2026-02-24T14:48:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2917-2', 'hist-ticket-117-2917', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T14:48:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2917-3', 'hist-ticket-117-2917', 'prod-mocha', 1, 16500, 0, '2026-02-24T14:48:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2917', 'hist-ticket-117-2917', 'cash', 46000, 'completed', '2026-02-24T14:48:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2918', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-24T08:18:44.000Z', '2026-02-24T08:18:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2918-1', 'hist-ticket-117-2918', 'prod-mocha', 1, 16500, 0, '2026-02-24T08:18:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2918', 'hist-ticket-117-2918', 'cash', 16500, 'completed', '2026-02-24T08:18:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2919', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-24T13:32:10.000Z', '2026-02-24T13:32:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2919-1', 'hist-ticket-117-2919', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T13:32:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2919-2', 'hist-ticket-117-2919', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T13:32:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2919-3', 'hist-ticket-117-2919', 'prod-americano', 1, 12000, 0, '2026-02-24T13:32:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2919', 'hist-ticket-117-2919', 'cash', 41000, 'completed', '2026-02-24T13:32:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2920', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-24T17:21:54.000Z', '2026-02-24T17:21:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2920-1', 'hist-ticket-117-2920', 'prod-mocha', 1, 16500, 0, '2026-02-24T17:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2920-2', 'hist-ticket-117-2920', 'prod-americano', 1, 12000, 0, '2026-02-24T17:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2920-3', 'hist-ticket-117-2920', 'prod-cappuccino', 1, 14500, 0, '2026-02-24T17:21:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2920', 'hist-ticket-117-2920', 'cash', 43000, 'completed', '2026-02-24T17:21:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-117-2921', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-02-24T08:44:59.000Z', '2026-02-24T08:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2921-1', 'hist-ticket-117-2921', 'prod-americano', 1, 12000, 0, '2026-02-24T08:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2921-2', 'hist-ticket-117-2921', 'prod-mocha', 1, 16500, 0, '2026-02-24T08:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2921-3', 'hist-ticket-117-2921', 'prod-mocha', 1, 16500, 0, '2026-02-24T08:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-117-2921-4', 'hist-ticket-117-2921', 'prod-americano', 1, 12000, 0, '2026-02-24T08:44:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-117-2921', 'hist-ticket-117-2921', 'cash', 57000, 'completed', '2026-02-24T08:44:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2922', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-25T14:32:22.000Z', '2026-02-25T14:32:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2922-1', 'hist-ticket-118-2922', 'prod-latte', 1, 15000, 0, '2026-02-25T14:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2922-2', 'hist-ticket-118-2922', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T14:32:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2922-3', 'hist-ticket-118-2922', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T14:32:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2922', 'hist-ticket-118-2922', 'cash', 44000, 'completed', '2026-02-25T14:32:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2923', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-25T15:58:45.000Z', '2026-02-25T15:58:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2923-1', 'hist-ticket-118-2923', 'prod-americano', 1, 12000, 0, '2026-02-25T15:58:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2923-2', 'hist-ticket-118-2923', 'prod-latte', 1, 15000, 0, '2026-02-25T15:58:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2923-3', 'hist-ticket-118-2923', 'prod-latte', 1, 15000, 0, '2026-02-25T15:58:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2923-4', 'hist-ticket-118-2923', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T15:58:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2923', 'hist-ticket-118-2923', 'cash', 56500, 'completed', '2026-02-25T15:58:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2924', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-25T15:59:10.000Z', '2026-02-25T15:59:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2924-1', 'hist-ticket-118-2924', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T15:59:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2924-2', 'hist-ticket-118-2924', 'prod-latte', 1, 15000, 0, '2026-02-25T15:59:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2924-3', 'hist-ticket-118-2924', 'prod-americano', 1, 12000, 0, '2026-02-25T15:59:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2924', 'hist-ticket-118-2924', 'cash', 41500, 'completed', '2026-02-25T15:59:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2925', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-25T10:34:40.000Z', '2026-02-25T10:34:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2925-1', 'hist-ticket-118-2925', 'prod-americano', 1, 12000, 0, '2026-02-25T10:34:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2925-2', 'hist-ticket-118-2925', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T10:34:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2925', 'hist-ticket-118-2925', 'cash', 26500, 'completed', '2026-02-25T10:34:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2926', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-25T08:03:23.000Z', '2026-02-25T08:03:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2926-1', 'hist-ticket-118-2926', 'prod-mocha', 1, 16500, 0, '2026-02-25T08:03:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2926-2', 'hist-ticket-118-2926', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T08:03:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2926-3', 'hist-ticket-118-2926', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T08:03:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2926', 'hist-ticket-118-2926', 'cash', 45500, 'completed', '2026-02-25T08:03:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2927', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-25T11:42:55.000Z', '2026-02-25T11:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2927-1', 'hist-ticket-118-2927', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T11:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2927-2', 'hist-ticket-118-2927', 'prod-americano', 1, 12000, 0, '2026-02-25T11:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2927-3', 'hist-ticket-118-2927', 'prod-americano', 1, 12000, 0, '2026-02-25T11:42:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2927', 'hist-ticket-118-2927', 'cash', 38500, 'completed', '2026-02-25T11:42:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2928', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-25T11:27:31.000Z', '2026-02-25T11:27:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2928-1', 'hist-ticket-118-2928', 'prod-americano', 1, 12000, 0, '2026-02-25T11:27:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2928-2', 'hist-ticket-118-2928', 'prod-mocha', 1, 16500, 0, '2026-02-25T11:27:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2928-3', 'hist-ticket-118-2928', 'prod-latte', 1, 15000, 0, '2026-02-25T11:27:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2928-4', 'hist-ticket-118-2928', 'prod-latte', 1, 15000, 0, '2026-02-25T11:27:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2928', 'hist-ticket-118-2928', 'cash', 58500, 'completed', '2026-02-25T11:27:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2929', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-25T08:32:30.000Z', '2026-02-25T08:32:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2929-1', 'hist-ticket-118-2929', 'prod-americano', 1, 12000, 0, '2026-02-25T08:32:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2929-2', 'hist-ticket-118-2929', 'prod-americano', 1, 12000, 0, '2026-02-25T08:32:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2929', 'hist-ticket-118-2929', 'cash', 24000, 'completed', '2026-02-25T08:32:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2930', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-25T17:35:33.000Z', '2026-02-25T17:35:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2930-1', 'hist-ticket-118-2930', 'prod-latte', 1, 15000, 0, '2026-02-25T17:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2930-2', 'hist-ticket-118-2930', 'prod-latte', 1, 15000, 0, '2026-02-25T17:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2930-3', 'hist-ticket-118-2930', 'prod-latte', 1, 15000, 0, '2026-02-25T17:35:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2930', 'hist-ticket-118-2930', 'cash', 45000, 'completed', '2026-02-25T17:35:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2931', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-25T10:52:09.000Z', '2026-02-25T10:52:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2931-1', 'hist-ticket-118-2931', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T10:52:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2931', 'hist-ticket-118-2931', 'cash', 14500, 'completed', '2026-02-25T10:52:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2932', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-25T14:18:39.000Z', '2026-02-25T14:18:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2932-1', 'hist-ticket-118-2932', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T14:18:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2932-2', 'hist-ticket-118-2932', 'prod-americano', 1, 12000, 0, '2026-02-25T14:18:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2932', 'hist-ticket-118-2932', 'cash', 26500, 'completed', '2026-02-25T14:18:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2933', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-25T14:04:49.000Z', '2026-02-25T14:04:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2933-1', 'hist-ticket-118-2933', 'prod-mocha', 1, 16500, 0, '2026-02-25T14:04:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2933', 'hist-ticket-118-2933', 'cash', 16500, 'completed', '2026-02-25T14:04:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2934', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-25T09:06:53.000Z', '2026-02-25T09:06:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2934-1', 'hist-ticket-118-2934', 'prod-latte', 1, 15000, 0, '2026-02-25T09:06:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2934-2', 'hist-ticket-118-2934', 'prod-mocha', 1, 16500, 0, '2026-02-25T09:06:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2934', 'hist-ticket-118-2934', 'cash', 31500, 'completed', '2026-02-25T09:06:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2935', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-25T15:50:19.000Z', '2026-02-25T15:50:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2935-1', 'hist-ticket-118-2935', 'prod-latte', 1, 15000, 0, '2026-02-25T15:50:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2935', 'hist-ticket-118-2935', 'cash', 15000, 'completed', '2026-02-25T15:50:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2936', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-25T11:36:50.000Z', '2026-02-25T11:36:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2936-1', 'hist-ticket-118-2936', 'prod-mocha', 1, 16500, 0, '2026-02-25T11:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2936-2', 'hist-ticket-118-2936', 'prod-americano', 1, 12000, 0, '2026-02-25T11:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2936-3', 'hist-ticket-118-2936', 'prod-mocha', 1, 16500, 0, '2026-02-25T11:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2936-4', 'hist-ticket-118-2936', 'prod-americano', 1, 12000, 0, '2026-02-25T11:36:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2936', 'hist-ticket-118-2936', 'cash', 57000, 'completed', '2026-02-25T11:36:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2937', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-25T09:36:07.000Z', '2026-02-25T09:36:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2937-1', 'hist-ticket-118-2937', 'prod-latte', 1, 15000, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2937-2', 'hist-ticket-118-2937', 'prod-americano', 1, 12000, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2937-3', 'hist-ticket-118-2937', 'prod-americano', 1, 12000, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2937-4', 'hist-ticket-118-2937', 'prod-latte', 1, 15000, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2937', 'hist-ticket-118-2937', 'cash', 54000, 'completed', '2026-02-25T09:36:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2938', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-25T18:15:22.000Z', '2026-02-25T18:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2938-1', 'hist-ticket-118-2938', 'prod-latte', 1, 15000, 0, '2026-02-25T18:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2938-2', 'hist-ticket-118-2938', 'prod-mocha', 1, 16500, 0, '2026-02-25T18:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2938', 'hist-ticket-118-2938', 'cash', 31500, 'completed', '2026-02-25T18:15:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2939', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-25T16:00:59.000Z', '2026-02-25T16:00:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2939-1', 'hist-ticket-118-2939', 'prod-latte', 1, 15000, 0, '2026-02-25T16:00:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2939-2', 'hist-ticket-118-2939', 'prod-latte', 1, 15000, 0, '2026-02-25T16:00:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2939', 'hist-ticket-118-2939', 'cash', 30000, 'completed', '2026-02-25T16:00:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2940', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-25T09:36:07.000Z', '2026-02-25T09:36:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2940-1', 'hist-ticket-118-2940', 'prod-americano', 1, 12000, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2940-2', 'hist-ticket-118-2940', 'prod-mocha', 1, 16500, 0, '2026-02-25T09:36:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2940', 'hist-ticket-118-2940', 'cash', 28500, 'completed', '2026-02-25T09:36:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2941', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-25T18:38:28.000Z', '2026-02-25T18:38:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2941-1', 'hist-ticket-118-2941', 'prod-mocha', 1, 16500, 0, '2026-02-25T18:38:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2941', 'hist-ticket-118-2941', 'cash', 16500, 'completed', '2026-02-25T18:38:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2942', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-25T10:54:59.000Z', '2026-02-25T10:54:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2942-1', 'hist-ticket-118-2942', 'prod-americano', 1, 12000, 0, '2026-02-25T10:54:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2942-2', 'hist-ticket-118-2942', 'prod-cappuccino', 1, 14500, 0, '2026-02-25T10:54:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2942', 'hist-ticket-118-2942', 'cash', 26500, 'completed', '2026-02-25T10:54:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2943', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-25T17:04:25.000Z', '2026-02-25T17:04:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2943-1', 'hist-ticket-118-2943', 'prod-latte', 1, 15000, 0, '2026-02-25T17:04:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2943-2', 'hist-ticket-118-2943', 'prod-mocha', 1, 16500, 0, '2026-02-25T17:04:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2943', 'hist-ticket-118-2943', 'cash', 31500, 'completed', '2026-02-25T17:04:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2944', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-25T17:25:08.000Z', '2026-02-25T17:25:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2944-1', 'hist-ticket-118-2944', 'prod-latte', 1, 15000, 0, '2026-02-25T17:25:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2944', 'hist-ticket-118-2944', 'cash', 15000, 'completed', '2026-02-25T17:25:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2945', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-25T14:22:37.000Z', '2026-02-25T14:22:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2945-1', 'hist-ticket-118-2945', 'prod-americano', 1, 12000, 0, '2026-02-25T14:22:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2945-2', 'hist-ticket-118-2945', 'prod-latte', 1, 15000, 0, '2026-02-25T14:22:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2945-3', 'hist-ticket-118-2945', 'prod-mocha', 1, 16500, 0, '2026-02-25T14:22:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2945-4', 'hist-ticket-118-2945', 'prod-americano', 1, 12000, 0, '2026-02-25T14:22:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2945', 'hist-ticket-118-2945', 'cash', 55500, 'completed', '2026-02-25T14:22:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2946', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-25T18:21:32.000Z', '2026-02-25T18:21:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2946-1', 'hist-ticket-118-2946', 'prod-latte', 1, 15000, 0, '2026-02-25T18:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2946-2', 'hist-ticket-118-2946', 'prod-latte', 1, 15000, 0, '2026-02-25T18:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2946-3', 'hist-ticket-118-2946', 'prod-mocha', 1, 16500, 0, '2026-02-25T18:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2946-4', 'hist-ticket-118-2946', 'prod-mocha', 1, 16500, 0, '2026-02-25T18:21:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2946', 'hist-ticket-118-2946', 'cash', 63000, 'completed', '2026-02-25T18:21:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-118-2947', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-25T08:27:01.000Z', '2026-02-25T08:27:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2947-1', 'hist-ticket-118-2947', 'prod-latte', 1, 15000, 0, '2026-02-25T08:27:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-118-2947-2', 'hist-ticket-118-2947', 'prod-mocha', 1, 16500, 0, '2026-02-25T08:27:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-118-2947', 'hist-ticket-118-2947', 'cash', 31500, 'completed', '2026-02-25T08:27:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2948', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-26T17:42:02.000Z', '2026-02-26T17:42:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2948-1', 'hist-ticket-119-2948', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T17:42:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2948-2', 'hist-ticket-119-2948', 'prod-mocha', 1, 16500, 0, '2026-02-26T17:42:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2948-3', 'hist-ticket-119-2948', 'prod-mocha', 1, 16500, 0, '2026-02-26T17:42:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2948', 'hist-ticket-119-2948', 'cash', 47500, 'completed', '2026-02-26T17:42:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2949', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-02-26T14:50:17.000Z', '2026-02-26T14:50:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2949-1', 'hist-ticket-119-2949', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T14:50:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2949', 'hist-ticket-119-2949', 'cash', 14500, 'completed', '2026-02-26T14:50:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2950', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-26T13:31:04.000Z', '2026-02-26T13:31:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2950-1', 'hist-ticket-119-2950', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T13:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2950-2', 'hist-ticket-119-2950', 'prod-mocha', 1, 16500, 0, '2026-02-26T13:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2950-3', 'hist-ticket-119-2950', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T13:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2950-4', 'hist-ticket-119-2950', 'prod-latte', 1, 15000, 0, '2026-02-26T13:31:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2950', 'hist-ticket-119-2950', 'cash', 60500, 'completed', '2026-02-26T13:31:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2951', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-26T09:24:05.000Z', '2026-02-26T09:24:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2951-1', 'hist-ticket-119-2951', 'prod-latte', 1, 15000, 0, '2026-02-26T09:24:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2951-2', 'hist-ticket-119-2951', 'prod-mocha', 1, 16500, 0, '2026-02-26T09:24:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2951', 'hist-ticket-119-2951', 'cash', 31500, 'completed', '2026-02-26T09:24:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2952', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-26T08:58:52.000Z', '2026-02-26T08:58:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2952-1', 'hist-ticket-119-2952', 'prod-mocha', 1, 16500, 0, '2026-02-26T08:58:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2952-2', 'hist-ticket-119-2952', 'prod-mocha', 1, 16500, 0, '2026-02-26T08:58:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2952-3', 'hist-ticket-119-2952', 'prod-americano', 1, 12000, 0, '2026-02-26T08:58:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2952', 'hist-ticket-119-2952', 'cash', 45000, 'completed', '2026-02-26T08:58:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2953', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-02-26T18:29:09.000Z', '2026-02-26T18:29:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2953-1', 'hist-ticket-119-2953', 'prod-mocha', 1, 16500, 0, '2026-02-26T18:29:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2953-2', 'hist-ticket-119-2953', 'prod-mocha', 1, 16500, 0, '2026-02-26T18:29:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2953', 'hist-ticket-119-2953', 'cash', 33000, 'completed', '2026-02-26T18:29:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2954', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-26T13:31:33.000Z', '2026-02-26T13:31:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2954-1', 'hist-ticket-119-2954', 'prod-americano', 1, 12000, 0, '2026-02-26T13:31:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2954-2', 'hist-ticket-119-2954', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T13:31:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2954', 'hist-ticket-119-2954', 'cash', 26500, 'completed', '2026-02-26T13:31:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2955', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-26T15:43:43.000Z', '2026-02-26T15:43:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2955-1', 'hist-ticket-119-2955', 'prod-latte', 1, 15000, 0, '2026-02-26T15:43:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2955-2', 'hist-ticket-119-2955', 'prod-mocha', 1, 16500, 0, '2026-02-26T15:43:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2955-3', 'hist-ticket-119-2955', 'prod-mocha', 1, 16500, 0, '2026-02-26T15:43:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2955-4', 'hist-ticket-119-2955', 'prod-americano', 1, 12000, 0, '2026-02-26T15:43:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2955', 'hist-ticket-119-2955', 'cash', 60000, 'completed', '2026-02-26T15:43:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2956', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-26T09:46:48.000Z', '2026-02-26T09:46:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2956-1', 'hist-ticket-119-2956', 'prod-mocha', 1, 16500, 0, '2026-02-26T09:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2956-2', 'hist-ticket-119-2956', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T09:46:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2956', 'hist-ticket-119-2956', 'cash', 31000, 'completed', '2026-02-26T09:46:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2957', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-02-26T14:45:48.000Z', '2026-02-26T14:45:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2957-1', 'hist-ticket-119-2957', 'prod-americano', 1, 12000, 0, '2026-02-26T14:45:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2957-2', 'hist-ticket-119-2957', 'prod-mocha', 1, 16500, 0, '2026-02-26T14:45:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2957-3', 'hist-ticket-119-2957', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T14:45:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2957-4', 'hist-ticket-119-2957', 'prod-latte', 1, 15000, 0, '2026-02-26T14:45:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2957', 'hist-ticket-119-2957', 'cash', 58000, 'completed', '2026-02-26T14:45:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2958', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-26T12:57:45.000Z', '2026-02-26T12:57:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2958-1', 'hist-ticket-119-2958', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T12:57:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2958-2', 'hist-ticket-119-2958', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T12:57:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2958-3', 'hist-ticket-119-2958', 'prod-mocha', 1, 16500, 0, '2026-02-26T12:57:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2958-4', 'hist-ticket-119-2958', 'prod-americano', 1, 12000, 0, '2026-02-26T12:57:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2958', 'hist-ticket-119-2958', 'cash', 57500, 'completed', '2026-02-26T12:57:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2959', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-02-26T19:08:25.000Z', '2026-02-26T19:08:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2959-1', 'hist-ticket-119-2959', 'prod-americano', 1, 12000, 0, '2026-02-26T19:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2959-2', 'hist-ticket-119-2959', 'prod-americano', 1, 12000, 0, '2026-02-26T19:08:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2959', 'hist-ticket-119-2959', 'cash', 24000, 'completed', '2026-02-26T19:08:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2960', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-26T15:59:42.000Z', '2026-02-26T15:59:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2960-1', 'hist-ticket-119-2960', 'prod-americano', 1, 12000, 0, '2026-02-26T15:59:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2960', 'hist-ticket-119-2960', 'cash', 12000, 'completed', '2026-02-26T15:59:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2961', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-26T10:48:50.000Z', '2026-02-26T10:48:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2961-1', 'hist-ticket-119-2961', 'prod-mocha', 1, 16500, 0, '2026-02-26T10:48:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2961-2', 'hist-ticket-119-2961', 'prod-latte', 1, 15000, 0, '2026-02-26T10:48:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2961-3', 'hist-ticket-119-2961', 'prod-americano', 1, 12000, 0, '2026-02-26T10:48:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2961-4', 'hist-ticket-119-2961', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T10:48:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2961', 'hist-ticket-119-2961', 'cash', 58000, 'completed', '2026-02-26T10:48:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2962', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-26T15:29:00.000Z', '2026-02-26T15:29:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2962-1', 'hist-ticket-119-2962', 'prod-mocha', 1, 16500, 0, '2026-02-26T15:29:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2962-2', 'hist-ticket-119-2962', 'prod-americano', 1, 12000, 0, '2026-02-26T15:29:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2962-3', 'hist-ticket-119-2962', 'prod-mocha', 1, 16500, 0, '2026-02-26T15:29:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2962-4', 'hist-ticket-119-2962', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T15:29:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2962', 'hist-ticket-119-2962', 'cash', 59500, 'completed', '2026-02-26T15:29:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2963', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-26T12:05:06.000Z', '2026-02-26T12:05:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2963-1', 'hist-ticket-119-2963', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T12:05:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2963', 'hist-ticket-119-2963', 'cash', 14500, 'completed', '2026-02-26T12:05:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2964', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-26T08:04:35.000Z', '2026-02-26T08:04:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2964-1', 'hist-ticket-119-2964', 'prod-mocha', 1, 16500, 0, '2026-02-26T08:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2964-2', 'hist-ticket-119-2964', 'prod-mocha', 1, 16500, 0, '2026-02-26T08:04:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2964', 'hist-ticket-119-2964', 'cash', 33000, 'completed', '2026-02-26T08:04:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2965', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-26T08:41:49.000Z', '2026-02-26T08:41:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2965-1', 'hist-ticket-119-2965', 'prod-americano', 1, 12000, 0, '2026-02-26T08:41:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2965-2', 'hist-ticket-119-2965', 'prod-mocha', 1, 16500, 0, '2026-02-26T08:41:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2965', 'hist-ticket-119-2965', 'cash', 28500, 'completed', '2026-02-26T08:41:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-119-2966', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-26T14:04:07.000Z', '2026-02-26T14:04:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2966-1', 'hist-ticket-119-2966', 'prod-cappuccino', 1, 14500, 0, '2026-02-26T14:04:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2966-2', 'hist-ticket-119-2966', 'prod-latte', 1, 15000, 0, '2026-02-26T14:04:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-119-2966-3', 'hist-ticket-119-2966', 'prod-latte', 1, 15000, 0, '2026-02-26T14:04:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-119-2966', 'hist-ticket-119-2966', 'cash', 44500, 'completed', '2026-02-26T14:04:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2967', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-02-27T15:22:43.000Z', '2026-02-27T15:22:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2967-1', 'hist-ticket-120-2967', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T15:22:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2967-2', 'hist-ticket-120-2967', 'prod-mocha', 1, 16500, 0, '2026-02-27T15:22:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2967-3', 'hist-ticket-120-2967', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T15:22:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2967-4', 'hist-ticket-120-2967', 'prod-mocha', 1, 16500, 0, '2026-02-27T15:22:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2967', 'hist-ticket-120-2967', 'cash', 62000, 'completed', '2026-02-27T15:22:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2968', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-27T19:26:01.000Z', '2026-02-27T19:26:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2968-1', 'hist-ticket-120-2968', 'prod-americano', 1, 12000, 0, '2026-02-27T19:26:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2968-2', 'hist-ticket-120-2968', 'prod-americano', 1, 12000, 0, '2026-02-27T19:26:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2968-3', 'hist-ticket-120-2968', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T19:26:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2968', 'hist-ticket-120-2968', 'cash', 38500, 'completed', '2026-02-27T19:26:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2969', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-27T12:35:22.000Z', '2026-02-27T12:35:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2969-1', 'hist-ticket-120-2969', 'prod-latte', 1, 15000, 0, '2026-02-27T12:35:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2969-2', 'hist-ticket-120-2969', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:35:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2969-3', 'hist-ticket-120-2969', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:35:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2969-4', 'hist-ticket-120-2969', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:35:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2969', 'hist-ticket-120-2969', 'cash', 58500, 'completed', '2026-02-27T12:35:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2970', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-27T08:53:57.000Z', '2026-02-27T08:53:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2970-1', 'hist-ticket-120-2970', 'prod-mocha', 1, 16500, 0, '2026-02-27T08:53:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2970-2', 'hist-ticket-120-2970', 'prod-mocha', 1, 16500, 0, '2026-02-27T08:53:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2970-3', 'hist-ticket-120-2970', 'prod-mocha', 1, 16500, 0, '2026-02-27T08:53:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2970-4', 'hist-ticket-120-2970', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T08:53:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2970', 'hist-ticket-120-2970', 'cash', 64000, 'completed', '2026-02-27T08:53:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2971', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-27T15:21:18.000Z', '2026-02-27T15:21:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2971-1', 'hist-ticket-120-2971', 'prod-americano', 1, 12000, 0, '2026-02-27T15:21:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2971', 'hist-ticket-120-2971', 'cash', 12000, 'completed', '2026-02-27T15:21:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2972', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-27T13:05:58.000Z', '2026-02-27T13:05:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2972-1', 'hist-ticket-120-2972', 'prod-americano', 1, 12000, 0, '2026-02-27T13:05:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2972', 'hist-ticket-120-2972', 'cash', 12000, 'completed', '2026-02-27T13:05:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2973', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-02-27T14:12:24.000Z', '2026-02-27T14:12:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2973-1', 'hist-ticket-120-2973', 'prod-latte', 1, 15000, 0, '2026-02-27T14:12:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2973-2', 'hist-ticket-120-2973', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T14:12:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2973', 'hist-ticket-120-2973', 'cash', 29500, 'completed', '2026-02-27T14:12:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2974', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-27T17:38:16.000Z', '2026-02-27T17:38:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2974-1', 'hist-ticket-120-2974', 'prod-americano', 1, 12000, 0, '2026-02-27T17:38:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2974', 'hist-ticket-120-2974', 'cash', 12000, 'completed', '2026-02-27T17:38:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2975', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-27T11:30:42.000Z', '2026-02-27T11:30:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2975-1', 'hist-ticket-120-2975', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T11:30:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2975', 'hist-ticket-120-2975', 'cash', 14500, 'completed', '2026-02-27T11:30:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2976', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-27T10:17:42.000Z', '2026-02-27T10:17:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2976-1', 'hist-ticket-120-2976', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T10:17:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2976-2', 'hist-ticket-120-2976', 'prod-americano', 1, 12000, 0, '2026-02-27T10:17:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2976-3', 'hist-ticket-120-2976', 'prod-mocha', 1, 16500, 0, '2026-02-27T10:17:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2976-4', 'hist-ticket-120-2976', 'prod-latte', 1, 15000, 0, '2026-02-27T10:17:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2976', 'hist-ticket-120-2976', 'cash', 58000, 'completed', '2026-02-27T10:17:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2977', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-02-27T12:00:27.000Z', '2026-02-27T12:00:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2977-1', 'hist-ticket-120-2977', 'prod-mocha', 1, 16500, 0, '2026-02-27T12:00:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2977-2', 'hist-ticket-120-2977', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:00:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2977', 'hist-ticket-120-2977', 'cash', 31000, 'completed', '2026-02-27T12:00:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2978', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-27T12:35:47.000Z', '2026-02-27T12:35:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2978-1', 'hist-ticket-120-2978', 'prod-mocha', 1, 16500, 0, '2026-02-27T12:35:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2978-2', 'hist-ticket-120-2978', 'prod-americano', 1, 12000, 0, '2026-02-27T12:35:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2978-3', 'hist-ticket-120-2978', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:35:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2978-4', 'hist-ticket-120-2978', 'prod-cappuccino', 1, 14500, 0, '2026-02-27T12:35:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2978', 'hist-ticket-120-2978', 'cash', 57500, 'completed', '2026-02-27T12:35:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2979', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-27T09:29:35.000Z', '2026-02-27T09:29:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2979-1', 'hist-ticket-120-2979', 'prod-latte', 1, 15000, 0, '2026-02-27T09:29:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2979-2', 'hist-ticket-120-2979', 'prod-mocha', 1, 16500, 0, '2026-02-27T09:29:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2979-3', 'hist-ticket-120-2979', 'prod-americano', 1, 12000, 0, '2026-02-27T09:29:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2979-4', 'hist-ticket-120-2979', 'prod-latte', 1, 15000, 0, '2026-02-27T09:29:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2979', 'hist-ticket-120-2979', 'cash', 58500, 'completed', '2026-02-27T09:29:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2980', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-27T17:47:05.000Z', '2026-02-27T17:47:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-120-2980-1', 'hist-ticket-120-2980', 'prod-americano', 1, 12000, 0, '2026-02-27T17:47:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-120-2980', 'hist-ticket-120-2980', 'cash', 12000, 'completed', '2026-02-27T17:47:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-120-2981', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-27T17:43:48.000Z', '2026-02-27T17:43:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;