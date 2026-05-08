INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3088', 'hist-ticket-124-3088', 'cash', 28500, 'completed', '2026-03-03T09:44:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3089', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-03T11:42:37.000Z', '2026-03-03T11:42:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3089-1', 'hist-ticket-124-3089', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3089-2', 'hist-ticket-124-3089', 'prod-americano', 1, 12000, 0, '2026-03-03T11:42:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3089-3', 'hist-ticket-124-3089', 'prod-mocha', 1, 16500, 0, '2026-03-03T11:42:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3089', 'hist-ticket-124-3089', 'cash', 43000, 'completed', '2026-03-03T11:42:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3090', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-03T11:59:41.000Z', '2026-03-03T11:59:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3090-1', 'hist-ticket-124-3090', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:59:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3090', 'hist-ticket-124-3090', 'cash', 14500, 'completed', '2026-03-03T11:59:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3091', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-03T14:08:48.000Z', '2026-03-03T14:08:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3091-1', 'hist-ticket-124-3091', 'prod-latte', 1, 15000, 0, '2026-03-03T14:08:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3091-2', 'hist-ticket-124-3091', 'prod-mocha', 1, 16500, 0, '2026-03-03T14:08:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3091-3', 'hist-ticket-124-3091', 'prod-americano', 1, 12000, 0, '2026-03-03T14:08:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3091-4', 'hist-ticket-124-3091', 'prod-americano', 1, 12000, 0, '2026-03-03T14:08:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3091', 'hist-ticket-124-3091', 'cash', 55500, 'completed', '2026-03-03T14:08:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3092', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-03T14:36:25.000Z', '2026-03-03T14:36:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3092-1', 'hist-ticket-124-3092', 'prod-latte', 1, 15000, 0, '2026-03-03T14:36:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3092-2', 'hist-ticket-124-3092', 'prod-latte', 1, 15000, 0, '2026-03-03T14:36:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3092', 'hist-ticket-124-3092', 'cash', 30000, 'completed', '2026-03-03T14:36:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3093', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-03T16:06:57.000Z', '2026-03-03T16:06:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3093-1', 'hist-ticket-124-3093', 'prod-mocha', 1, 16500, 0, '2026-03-03T16:06:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3093', 'hist-ticket-124-3093', 'cash', 16500, 'completed', '2026-03-03T16:06:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3094', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-03T13:18:58.000Z', '2026-03-03T13:18:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3094-1', 'hist-ticket-124-3094', 'prod-latte', 1, 15000, 0, '2026-03-03T13:18:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3094-2', 'hist-ticket-124-3094', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:18:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3094', 'hist-ticket-124-3094', 'cash', 31500, 'completed', '2026-03-03T13:18:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3095', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-03T13:54:21.000Z', '2026-03-03T13:54:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3095-1', 'hist-ticket-124-3095', 'prod-mocha', 1, 16500, 0, '2026-03-03T13:54:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3095-2', 'hist-ticket-124-3095', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T13:54:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3095-3', 'hist-ticket-124-3095', 'prod-latte', 1, 15000, 0, '2026-03-03T13:54:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3095', 'hist-ticket-124-3095', 'cash', 46000, 'completed', '2026-03-03T13:54:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3096', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-03-03T15:46:06.000Z', '2026-03-03T15:46:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3096-1', 'hist-ticket-124-3096', 'prod-americano', 1, 12000, 0, '2026-03-03T15:46:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3096-2', 'hist-ticket-124-3096', 'prod-latte', 1, 15000, 0, '2026-03-03T15:46:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3096-3', 'hist-ticket-124-3096', 'prod-mocha', 1, 16500, 0, '2026-03-03T15:46:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3096', 'hist-ticket-124-3096', 'cash', 43500, 'completed', '2026-03-03T15:46:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3097', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-03T15:44:55.000Z', '2026-03-03T15:44:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3097-1', 'hist-ticket-124-3097', 'prod-latte', 1, 15000, 0, '2026-03-03T15:44:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3097', 'hist-ticket-124-3097', 'cash', 15000, 'completed', '2026-03-03T15:44:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3098', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-03T18:33:23.000Z', '2026-03-03T18:33:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3098-1', 'hist-ticket-124-3098', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T18:33:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3098', 'hist-ticket-124-3098', 'cash', 14500, 'completed', '2026-03-03T18:33:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3099', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-03T12:00:55.000Z', '2026-03-03T12:00:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3099-1', 'hist-ticket-124-3099', 'prod-latte', 1, 15000, 0, '2026-03-03T12:00:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3099', 'hist-ticket-124-3099', 'cash', 15000, 'completed', '2026-03-03T12:00:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3100', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-03T13:15:16.000Z', '2026-03-03T13:15:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3100-1', 'hist-ticket-124-3100', 'prod-latte', 1, 15000, 0, '2026-03-03T13:15:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3100', 'hist-ticket-124-3100', 'cash', 15000, 'completed', '2026-03-03T13:15:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3101', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-03T10:32:51.000Z', '2026-03-03T10:32:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3101-1', 'hist-ticket-124-3101', 'prod-latte', 1, 15000, 0, '2026-03-03T10:32:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3101-2', 'hist-ticket-124-3101', 'prod-latte', 1, 15000, 0, '2026-03-03T10:32:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3101-3', 'hist-ticket-124-3101', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T10:32:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3101', 'hist-ticket-124-3101', 'cash', 44500, 'completed', '2026-03-03T10:32:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3102', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-03T18:34:30.000Z', '2026-03-03T18:34:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3102-1', 'hist-ticket-124-3102', 'prod-americano', 1, 12000, 0, '2026-03-03T18:34:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3102-2', 'hist-ticket-124-3102', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T18:34:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3102', 'hist-ticket-124-3102', 'cash', 26500, 'completed', '2026-03-03T18:34:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3103', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-03T11:01:32.000Z', '2026-03-03T11:01:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3103-1', 'hist-ticket-124-3103', 'prod-latte', 1, 15000, 0, '2026-03-03T11:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3103-2', 'hist-ticket-124-3103', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:01:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3103-3', 'hist-ticket-124-3103', 'prod-cappuccino', 1, 14500, 0, '2026-03-03T11:01:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3103', 'hist-ticket-124-3103', 'cash', 44000, 'completed', '2026-03-03T11:01:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-124-3104', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-03T08:48:28.000Z', '2026-03-03T08:48:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3104-1', 'hist-ticket-124-3104', 'prod-americano', 1, 12000, 0, '2026-03-03T08:48:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3104-2', 'hist-ticket-124-3104', 'prod-americano', 1, 12000, 0, '2026-03-03T08:48:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-124-3104-3', 'hist-ticket-124-3104', 'prod-mocha', 1, 16500, 0, '2026-03-03T08:48:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-124-3104', 'hist-ticket-124-3104', 'cash', 40500, 'completed', '2026-03-03T08:48:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3105', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-04T18:43:03.000Z', '2026-03-04T18:43:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3105-1', 'hist-ticket-125-3105', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:43:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3105-2', 'hist-ticket-125-3105', 'prod-mocha', 1, 16500, 0, '2026-03-04T18:43:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3105-3', 'hist-ticket-125-3105', 'prod-latte', 1, 15000, 0, '2026-03-04T18:43:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3105', 'hist-ticket-125-3105', 'cash', 46000, 'completed', '2026-03-04T18:43:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3106', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-04T08:38:26.000Z', '2026-03-04T08:38:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3106-1', 'hist-ticket-125-3106', 'prod-latte', 1, 15000, 0, '2026-03-04T08:38:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3106-2', 'hist-ticket-125-3106', 'prod-mocha', 1, 16500, 0, '2026-03-04T08:38:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3106-3', 'hist-ticket-125-3106', 'prod-latte', 1, 15000, 0, '2026-03-04T08:38:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3106', 'hist-ticket-125-3106', 'cash', 46500, 'completed', '2026-03-04T08:38:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3107', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-04T09:27:20.000Z', '2026-03-04T09:27:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3107-1', 'hist-ticket-125-3107', 'prod-mocha', 1, 16500, 0, '2026-03-04T09:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3107-2', 'hist-ticket-125-3107', 'prod-americano', 1, 12000, 0, '2026-03-04T09:27:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3107', 'hist-ticket-125-3107', 'cash', 28500, 'completed', '2026-03-04T09:27:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3108', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-04T14:47:38.000Z', '2026-03-04T14:47:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3108-1', 'hist-ticket-125-3108', 'prod-americano', 1, 12000, 0, '2026-03-04T14:47:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3108', 'hist-ticket-125-3108', 'cash', 12000, 'completed', '2026-03-04T14:47:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3109', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-03-04T18:56:04.000Z', '2026-03-04T18:56:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3109-1', 'hist-ticket-125-3109', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:56:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3109-2', 'hist-ticket-125-3109', 'prod-americano', 1, 12000, 0, '2026-03-04T18:56:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3109-3', 'hist-ticket-125-3109', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:56:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3109-4', 'hist-ticket-125-3109', 'prod-mocha', 1, 16500, 0, '2026-03-04T18:56:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3109', 'hist-ticket-125-3109', 'cash', 57500, 'completed', '2026-03-04T18:56:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3110', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-04T18:58:11.000Z', '2026-03-04T18:58:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3110-1', 'hist-ticket-125-3110', 'prod-americano', 1, 12000, 0, '2026-03-04T18:58:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3110-2', 'hist-ticket-125-3110', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:58:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3110-3', 'hist-ticket-125-3110', 'prod-americano', 1, 12000, 0, '2026-03-04T18:58:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3110', 'hist-ticket-125-3110', 'cash', 38500, 'completed', '2026-03-04T18:58:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3111', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-04T19:11:31.000Z', '2026-03-04T19:11:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3111-1', 'hist-ticket-125-3111', 'prod-americano', 1, 12000, 0, '2026-03-04T19:11:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3111', 'hist-ticket-125-3111', 'cash', 12000, 'completed', '2026-03-04T19:11:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3112', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-04T12:48:39.000Z', '2026-03-04T12:48:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3112-1', 'hist-ticket-125-3112', 'prod-mocha', 1, 16500, 0, '2026-03-04T12:48:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3112', 'hist-ticket-125-3112', 'cash', 16500, 'completed', '2026-03-04T12:48:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3113', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-04T14:54:29.000Z', '2026-03-04T14:54:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3113-1', 'hist-ticket-125-3113', 'prod-latte', 1, 15000, 0, '2026-03-04T14:54:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3113-2', 'hist-ticket-125-3113', 'prod-americano', 1, 12000, 0, '2026-03-04T14:54:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3113-3', 'hist-ticket-125-3113', 'prod-mocha', 1, 16500, 0, '2026-03-04T14:54:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3113', 'hist-ticket-125-3113', 'cash', 43500, 'completed', '2026-03-04T14:54:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3114', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-04T18:51:32.000Z', '2026-03-04T18:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3114-1', 'hist-ticket-125-3114', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3114', 'hist-ticket-125-3114', 'cash', 14500, 'completed', '2026-03-04T18:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3115', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-04T17:42:40.000Z', '2026-03-04T17:42:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3115-1', 'hist-ticket-125-3115', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T17:42:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3115-2', 'hist-ticket-125-3115', 'prod-latte', 1, 15000, 0, '2026-03-04T17:42:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3115', 'hist-ticket-125-3115', 'cash', 29500, 'completed', '2026-03-04T17:42:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3116', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-04T17:40:46.000Z', '2026-03-04T17:40:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3116-1', 'hist-ticket-125-3116', 'prod-latte', 1, 15000, 0, '2026-03-04T17:40:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3116-2', 'hist-ticket-125-3116', 'prod-latte', 1, 15000, 0, '2026-03-04T17:40:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3116', 'hist-ticket-125-3116', 'cash', 30000, 'completed', '2026-03-04T17:40:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3117', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-04T08:34:50.000Z', '2026-03-04T08:34:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3117-1', 'hist-ticket-125-3117', 'prod-americano', 1, 12000, 0, '2026-03-04T08:34:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3117', 'hist-ticket-125-3117', 'cash', 12000, 'completed', '2026-03-04T08:34:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3118', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-04T14:14:09.000Z', '2026-03-04T14:14:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3118-1', 'hist-ticket-125-3118', 'prod-mocha', 1, 16500, 0, '2026-03-04T14:14:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3118', 'hist-ticket-125-3118', 'cash', 16500, 'completed', '2026-03-04T14:14:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3119', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-04T08:53:44.000Z', '2026-03-04T08:53:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3119-1', 'hist-ticket-125-3119', 'prod-mocha', 1, 16500, 0, '2026-03-04T08:53:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3119', 'hist-ticket-125-3119', 'cash', 16500, 'completed', '2026-03-04T08:53:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3120', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-04T16:33:30.000Z', '2026-03-04T16:33:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3120-1', 'hist-ticket-125-3120', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T16:33:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3120-2', 'hist-ticket-125-3120', 'prod-latte', 1, 15000, 0, '2026-03-04T16:33:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3120', 'hist-ticket-125-3120', 'cash', 29500, 'completed', '2026-03-04T16:33:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3121', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-04T18:56:08.000Z', '2026-03-04T18:56:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3121-1', 'hist-ticket-125-3121', 'prod-latte', 1, 15000, 0, '2026-03-04T18:56:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3121-2', 'hist-ticket-125-3121', 'prod-americano', 1, 12000, 0, '2026-03-04T18:56:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3121-3', 'hist-ticket-125-3121', 'prod-latte', 1, 15000, 0, '2026-03-04T18:56:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3121', 'hist-ticket-125-3121', 'cash', 42000, 'completed', '2026-03-04T18:56:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3122', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-04T18:43:23.000Z', '2026-03-04T18:43:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3122-1', 'hist-ticket-125-3122', 'prod-americano', 1, 12000, 0, '2026-03-04T18:43:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3122-2', 'hist-ticket-125-3122', 'prod-americano', 1, 12000, 0, '2026-03-04T18:43:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3122-3', 'hist-ticket-125-3122', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:43:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3122-4', 'hist-ticket-125-3122', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T18:43:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3122', 'hist-ticket-125-3122', 'cash', 53000, 'completed', '2026-03-04T18:43:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3123', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-04T16:35:04.000Z', '2026-03-04T16:35:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3123-1', 'hist-ticket-125-3123', 'prod-latte', 1, 15000, 0, '2026-03-04T16:35:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3123-2', 'hist-ticket-125-3123', 'prod-latte', 1, 15000, 0, '2026-03-04T16:35:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3123-3', 'hist-ticket-125-3123', 'prod-mocha', 1, 16500, 0, '2026-03-04T16:35:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3123-4', 'hist-ticket-125-3123', 'prod-mocha', 1, 16500, 0, '2026-03-04T16:35:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3123', 'hist-ticket-125-3123', 'cash', 63000, 'completed', '2026-03-04T16:35:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3124', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-04T12:02:28.000Z', '2026-03-04T12:02:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3124-1', 'hist-ticket-125-3124', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T12:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3124-2', 'hist-ticket-125-3124', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T12:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3124-3', 'hist-ticket-125-3124', 'prod-mocha', 1, 16500, 0, '2026-03-04T12:02:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3124-4', 'hist-ticket-125-3124', 'prod-cappuccino', 1, 14500, 0, '2026-03-04T12:02:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3124', 'hist-ticket-125-3124', 'cash', 60000, 'completed', '2026-03-04T12:02:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-125-3125', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-04T16:26:05.000Z', '2026-03-04T16:26:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3125-1', 'hist-ticket-125-3125', 'prod-mocha', 1, 16500, 0, '2026-03-04T16:26:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-125-3125-2', 'hist-ticket-125-3125', 'prod-latte', 1, 15000, 0, '2026-03-04T16:26:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-125-3125', 'hist-ticket-125-3125', 'cash', 31500, 'completed', '2026-03-04T16:26:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3126', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-05T08:12:35.000Z', '2026-03-05T08:12:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3126-1', 'hist-ticket-126-3126', 'prod-mocha', 1, 16500, 0, '2026-03-05T08:12:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3126', 'hist-ticket-126-3126', 'cash', 16500, 'completed', '2026-03-05T08:12:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3127', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-05T10:36:24.000Z', '2026-03-05T10:36:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3127-1', 'hist-ticket-126-3127', 'prod-americano', 1, 12000, 0, '2026-03-05T10:36:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3127', 'hist-ticket-126-3127', 'cash', 12000, 'completed', '2026-03-05T10:36:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3128', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-03-05T16:04:13.000Z', '2026-03-05T16:04:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3128-1', 'hist-ticket-126-3128', 'prod-latte', 1, 15000, 0, '2026-03-05T16:04:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3128', 'hist-ticket-126-3128', 'cash', 15000, 'completed', '2026-03-05T16:04:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3129', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-05T17:10:13.000Z', '2026-03-05T17:10:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3129-1', 'hist-ticket-126-3129', 'prod-latte', 1, 15000, 0, '2026-03-05T17:10:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3129', 'hist-ticket-126-3129', 'cash', 15000, 'completed', '2026-03-05T17:10:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3130', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-05T16:29:30.000Z', '2026-03-05T16:29:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3130-1', 'hist-ticket-126-3130', 'prod-mocha', 1, 16500, 0, '2026-03-05T16:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3130-2', 'hist-ticket-126-3130', 'prod-latte', 1, 15000, 0, '2026-03-05T16:29:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3130-3', 'hist-ticket-126-3130', 'prod-americano', 1, 12000, 0, '2026-03-05T16:29:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3130', 'hist-ticket-126-3130', 'cash', 43500, 'completed', '2026-03-05T16:29:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3131', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-05T09:33:35.000Z', '2026-03-05T09:33:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3131-1', 'hist-ticket-126-3131', 'prod-latte', 1, 15000, 0, '2026-03-05T09:33:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3131-2', 'hist-ticket-126-3131', 'prod-mocha', 1, 16500, 0, '2026-03-05T09:33:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3131-3', 'hist-ticket-126-3131', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T09:33:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3131', 'hist-ticket-126-3131', 'cash', 46000, 'completed', '2026-03-05T09:33:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3132', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-05T17:24:58.000Z', '2026-03-05T17:24:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3132-1', 'hist-ticket-126-3132', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T17:24:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3132-2', 'hist-ticket-126-3132', 'prod-americano', 1, 12000, 0, '2026-03-05T17:24:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3132-3', 'hist-ticket-126-3132', 'prod-mocha', 1, 16500, 0, '2026-03-05T17:24:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3132', 'hist-ticket-126-3132', 'cash', 43000, 'completed', '2026-03-05T17:24:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3133', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-05T09:50:08.000Z', '2026-03-05T09:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3133-1', 'hist-ticket-126-3133', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T09:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3133', 'hist-ticket-126-3133', 'cash', 14500, 'completed', '2026-03-05T09:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3134', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-05T14:32:52.000Z', '2026-03-05T14:32:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3134-1', 'hist-ticket-126-3134', 'prod-latte', 1, 15000, 0, '2026-03-05T14:32:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3134-2', 'hist-ticket-126-3134', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T14:32:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3134', 'hist-ticket-126-3134', 'cash', 29500, 'completed', '2026-03-05T14:32:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3135', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-05T17:11:00.000Z', '2026-03-05T17:11:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3135-1', 'hist-ticket-126-3135', 'prod-americano', 1, 12000, 0, '2026-03-05T17:11:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3135-2', 'hist-ticket-126-3135', 'prod-americano', 1, 12000, 0, '2026-03-05T17:11:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3135', 'hist-ticket-126-3135', 'cash', 24000, 'completed', '2026-03-05T17:11:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3136', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-05T18:43:00.000Z', '2026-03-05T18:43:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3136-1', 'hist-ticket-126-3136', 'prod-latte', 1, 15000, 0, '2026-03-05T18:43:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3136-2', 'hist-ticket-126-3136', 'prod-americano', 1, 12000, 0, '2026-03-05T18:43:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3136-3', 'hist-ticket-126-3136', 'prod-mocha', 1, 16500, 0, '2026-03-05T18:43:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3136-4', 'hist-ticket-126-3136', 'prod-latte', 1, 15000, 0, '2026-03-05T18:43:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3136', 'hist-ticket-126-3136', 'cash', 58500, 'completed', '2026-03-05T18:43:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3137', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-03-05T12:42:47.000Z', '2026-03-05T12:42:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3137-1', 'hist-ticket-126-3137', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T12:42:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3137-2', 'hist-ticket-126-3137', 'prod-americano', 1, 12000, 0, '2026-03-05T12:42:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3137-3', 'hist-ticket-126-3137', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T12:42:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3137-4', 'hist-ticket-126-3137', 'prod-mocha', 1, 16500, 0, '2026-03-05T12:42:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3137', 'hist-ticket-126-3137', 'cash', 57500, 'completed', '2026-03-05T12:42:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3138', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-05T10:54:08.000Z', '2026-03-05T10:54:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3138-1', 'hist-ticket-126-3138', 'prod-mocha', 1, 16500, 0, '2026-03-05T10:54:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3138-2', 'hist-ticket-126-3138', 'prod-americano', 1, 12000, 0, '2026-03-05T10:54:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3138-3', 'hist-ticket-126-3138', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T10:54:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3138-4', 'hist-ticket-126-3138', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T10:54:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3138', 'hist-ticket-126-3138', 'cash', 57500, 'completed', '2026-03-05T10:54:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3139', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-05T10:38:36.000Z', '2026-03-05T10:38:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3139-1', 'hist-ticket-126-3139', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T10:38:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3139-2', 'hist-ticket-126-3139', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T10:38:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3139-3', 'hist-ticket-126-3139', 'prod-latte', 1, 15000, 0, '2026-03-05T10:38:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3139-4', 'hist-ticket-126-3139', 'prod-americano', 1, 12000, 0, '2026-03-05T10:38:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3139', 'hist-ticket-126-3139', 'cash', 56000, 'completed', '2026-03-05T10:38:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3140', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-05T18:23:11.000Z', '2026-03-05T18:23:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3140-1', 'hist-ticket-126-3140', 'prod-latte', 1, 15000, 0, '2026-03-05T18:23:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3140', 'hist-ticket-126-3140', 'cash', 15000, 'completed', '2026-03-05T18:23:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3141', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-05T08:54:05.000Z', '2026-03-05T08:54:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3141-1', 'hist-ticket-126-3141', 'prod-latte', 1, 15000, 0, '2026-03-05T08:54:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3141-2', 'hist-ticket-126-3141', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T08:54:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3141', 'hist-ticket-126-3141', 'cash', 29500, 'completed', '2026-03-05T08:54:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3142', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-05T19:55:55.000Z', '2026-03-05T19:55:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3142-1', 'hist-ticket-126-3142', 'prod-latte', 1, 15000, 0, '2026-03-05T19:55:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3142', 'hist-ticket-126-3142', 'cash', 15000, 'completed', '2026-03-05T19:55:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3143', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-05T08:58:52.000Z', '2026-03-05T08:58:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3143-1', 'hist-ticket-126-3143', 'prod-americano', 1, 12000, 0, '2026-03-05T08:58:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3143-2', 'hist-ticket-126-3143', 'prod-mocha', 1, 16500, 0, '2026-03-05T08:58:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3143-3', 'hist-ticket-126-3143', 'prod-mocha', 1, 16500, 0, '2026-03-05T08:58:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3143', 'hist-ticket-126-3143', 'cash', 45000, 'completed', '2026-03-05T08:58:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3144', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-03-05T12:08:07.000Z', '2026-03-05T12:08:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3144-1', 'hist-ticket-126-3144', 'prod-latte', 1, 15000, 0, '2026-03-05T12:08:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3144', 'hist-ticket-126-3144', 'cash', 15000, 'completed', '2026-03-05T12:08:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3145', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-05T09:07:40.000Z', '2026-03-05T09:07:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3145-1', 'hist-ticket-126-3145', 'prod-mocha', 1, 16500, 0, '2026-03-05T09:07:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3145', 'hist-ticket-126-3145', 'cash', 16500, 'completed', '2026-03-05T09:07:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3146', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-05T18:11:24.000Z', '2026-03-05T18:11:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3146-1', 'hist-ticket-126-3146', 'prod-latte', 1, 15000, 0, '2026-03-05T18:11:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3146', 'hist-ticket-126-3146', 'cash', 15000, 'completed', '2026-03-05T18:11:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3147', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-05T12:51:50.000Z', '2026-03-05T12:51:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3147-1', 'hist-ticket-126-3147', 'prod-americano', 1, 12000, 0, '2026-03-05T12:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3147-2', 'hist-ticket-126-3147', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T12:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3147-3', 'hist-ticket-126-3147', 'prod-mocha', 1, 16500, 0, '2026-03-05T12:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3147-4', 'hist-ticket-126-3147', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T12:51:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3147', 'hist-ticket-126-3147', 'cash', 57500, 'completed', '2026-03-05T12:51:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3148', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-03-05T16:41:45.000Z', '2026-03-05T16:41:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3148-1', 'hist-ticket-126-3148', 'prod-cappuccino', 1, 14500, 0, '2026-03-05T16:41:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3148-2', 'hist-ticket-126-3148', 'prod-latte', 1, 15000, 0, '2026-03-05T16:41:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3148', 'hist-ticket-126-3148', 'cash', 29500, 'completed', '2026-03-05T16:41:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3149', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-05T17:21:20.000Z', '2026-03-05T17:21:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3149-1', 'hist-ticket-126-3149', 'prod-mocha', 1, 16500, 0, '2026-03-05T17:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3149-2', 'hist-ticket-126-3149', 'prod-mocha', 1, 16500, 0, '2026-03-05T17:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3149-3', 'hist-ticket-126-3149', 'prod-latte', 1, 15000, 0, '2026-03-05T17:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3149-4', 'hist-ticket-126-3149', 'prod-americano', 1, 12000, 0, '2026-03-05T17:21:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3149', 'hist-ticket-126-3149', 'cash', 60000, 'completed', '2026-03-05T17:21:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3150', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-05T19:49:56.000Z', '2026-03-05T19:49:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3150-1', 'hist-ticket-126-3150', 'prod-latte', 1, 15000, 0, '2026-03-05T19:49:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3150-2', 'hist-ticket-126-3150', 'prod-americano', 1, 12000, 0, '2026-03-05T19:49:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3150', 'hist-ticket-126-3150', 'cash', 27000, 'completed', '2026-03-05T19:49:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3151', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-05T11:52:23.000Z', '2026-03-05T11:52:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3151-1', 'hist-ticket-126-3151', 'prod-latte', 1, 15000, 0, '2026-03-05T11:52:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3151-2', 'hist-ticket-126-3151', 'prod-latte', 1, 15000, 0, '2026-03-05T11:52:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3151-3', 'hist-ticket-126-3151', 'prod-mocha', 1, 16500, 0, '2026-03-05T11:52:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3151', 'hist-ticket-126-3151', 'cash', 46500, 'completed', '2026-03-05T11:52:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-126-3152', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-03-05T11:50:45.000Z', '2026-03-05T11:50:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3152-1', 'hist-ticket-126-3152', 'prod-americano', 1, 12000, 0, '2026-03-05T11:50:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-126-3152-2', 'hist-ticket-126-3152', 'prod-mocha', 1, 16500, 0, '2026-03-05T11:50:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-126-3152', 'hist-ticket-126-3152', 'cash', 28500, 'completed', '2026-03-05T11:50:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3153', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-06T16:42:53.000Z', '2026-03-06T16:42:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3153-1', 'hist-ticket-127-3153', 'prod-americano', 1, 12000, 0, '2026-03-06T16:42:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3153-2', 'hist-ticket-127-3153', 'prod-mocha', 1, 16500, 0, '2026-03-06T16:42:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3153-3', 'hist-ticket-127-3153', 'prod-latte', 1, 15000, 0, '2026-03-06T16:42:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3153', 'hist-ticket-127-3153', 'cash', 43500, 'completed', '2026-03-06T16:42:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3154', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-06T17:13:35.000Z', '2026-03-06T17:13:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3154-1', 'hist-ticket-127-3154', 'prod-mocha', 1, 16500, 0, '2026-03-06T17:13:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3154-2', 'hist-ticket-127-3154', 'prod-americano', 1, 12000, 0, '2026-03-06T17:13:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3154-3', 'hist-ticket-127-3154', 'prod-latte', 1, 15000, 0, '2026-03-06T17:13:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3154-4', 'hist-ticket-127-3154', 'prod-mocha', 1, 16500, 0, '2026-03-06T17:13:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3154', 'hist-ticket-127-3154', 'cash', 60000, 'completed', '2026-03-06T17:13:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3155', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-06T19:17:05.000Z', '2026-03-06T19:17:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3155-1', 'hist-ticket-127-3155', 'prod-mocha', 1, 16500, 0, '2026-03-06T19:17:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3155-2', 'hist-ticket-127-3155', 'prod-americano', 1, 12000, 0, '2026-03-06T19:17:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3155-3', 'hist-ticket-127-3155', 'prod-latte', 1, 15000, 0, '2026-03-06T19:17:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3155', 'hist-ticket-127-3155', 'cash', 43500, 'completed', '2026-03-06T19:17:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3156', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-06T13:08:29.000Z', '2026-03-06T13:08:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3156-1', 'hist-ticket-127-3156', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:08:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3156-2', 'hist-ticket-127-3156', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:08:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3156-3', 'hist-ticket-127-3156', 'prod-latte', 1, 15000, 0, '2026-03-06T13:08:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3156-4', 'hist-ticket-127-3156', 'prod-latte', 1, 15000, 0, '2026-03-06T13:08:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3156', 'hist-ticket-127-3156', 'cash', 63000, 'completed', '2026-03-06T13:08:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3157', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-06T13:23:43.000Z', '2026-03-06T13:23:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3157-1', 'hist-ticket-127-3157', 'prod-americano', 1, 12000, 0, '2026-03-06T13:23:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3157-2', 'hist-ticket-127-3157', 'prod-americano', 1, 12000, 0, '2026-03-06T13:23:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3157', 'hist-ticket-127-3157', 'cash', 24000, 'completed', '2026-03-06T13:23:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3158', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-03-06T12:52:13.000Z', '2026-03-06T12:52:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3158-1', 'hist-ticket-127-3158', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T12:52:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3158-2', 'hist-ticket-127-3158', 'prod-mocha', 1, 16500, 0, '2026-03-06T12:52:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3158-3', 'hist-ticket-127-3158', 'prod-latte', 1, 15000, 0, '2026-03-06T12:52:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3158-4', 'hist-ticket-127-3158', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T12:52:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3158', 'hist-ticket-127-3158', 'cash', 60500, 'completed', '2026-03-06T12:52:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3159', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-06T19:38:02.000Z', '2026-03-06T19:38:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3159-1', 'hist-ticket-127-3159', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T19:38:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3159-2', 'hist-ticket-127-3159', 'prod-americano', 1, 12000, 0, '2026-03-06T19:38:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3159-3', 'hist-ticket-127-3159', 'prod-latte', 1, 15000, 0, '2026-03-06T19:38:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3159', 'hist-ticket-127-3159', 'cash', 41500, 'completed', '2026-03-06T19:38:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3160', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-06T08:37:05.000Z', '2026-03-06T08:37:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3160-1', 'hist-ticket-127-3160', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T08:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3160-2', 'hist-ticket-127-3160', 'prod-americano', 1, 12000, 0, '2026-03-06T08:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3160-3', 'hist-ticket-127-3160', 'prod-latte', 1, 15000, 0, '2026-03-06T08:37:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3160-4', 'hist-ticket-127-3160', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T08:37:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3160', 'hist-ticket-127-3160', 'cash', 56000, 'completed', '2026-03-06T08:37:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3161', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-06T13:22:54.000Z', '2026-03-06T13:22:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3161-1', 'hist-ticket-127-3161', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T13:22:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3161-2', 'hist-ticket-127-3161', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T13:22:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3161-3', 'hist-ticket-127-3161', 'prod-latte', 1, 15000, 0, '2026-03-06T13:22:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3161-4', 'hist-ticket-127-3161', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:22:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3161', 'hist-ticket-127-3161', 'cash', 60500, 'completed', '2026-03-06T13:22:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3162', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-06T13:03:16.000Z', '2026-03-06T13:03:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3162-1', 'hist-ticket-127-3162', 'prod-americano', 1, 12000, 0, '2026-03-06T13:03:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3162', 'hist-ticket-127-3162', 'cash', 12000, 'completed', '2026-03-06T13:03:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3163', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-03-06T09:06:06.000Z', '2026-03-06T09:06:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3163-1', 'hist-ticket-127-3163', 'prod-mocha', 1, 16500, 0, '2026-03-06T09:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3163-2', 'hist-ticket-127-3163', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T09:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3163-3', 'hist-ticket-127-3163', 'prod-latte', 1, 15000, 0, '2026-03-06T09:06:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3163', 'hist-ticket-127-3163', 'cash', 46000, 'completed', '2026-03-06T09:06:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3164', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-06T12:01:11.000Z', '2026-03-06T12:01:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3164-1', 'hist-ticket-127-3164', 'prod-americano', 1, 12000, 0, '2026-03-06T12:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3164-2', 'hist-ticket-127-3164', 'prod-americano', 1, 12000, 0, '2026-03-06T12:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3164-3', 'hist-ticket-127-3164', 'prod-mocha', 1, 16500, 0, '2026-03-06T12:01:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3164-4', 'hist-ticket-127-3164', 'prod-americano', 1, 12000, 0, '2026-03-06T12:01:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3164', 'hist-ticket-127-3164', 'cash', 52500, 'completed', '2026-03-06T12:01:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3165', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-06T13:27:05.000Z', '2026-03-06T13:27:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3165-1', 'hist-ticket-127-3165', 'prod-americano', 1, 12000, 0, '2026-03-06T13:27:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3165-2', 'hist-ticket-127-3165', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T13:27:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3165-3', 'hist-ticket-127-3165', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:27:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3165-4', 'hist-ticket-127-3165', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:27:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3165', 'hist-ticket-127-3165', 'cash', 59500, 'completed', '2026-03-06T13:27:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3166', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-06T18:22:06.000Z', '2026-03-06T18:22:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3166-1', 'hist-ticket-127-3166', 'prod-latte', 1, 15000, 0, '2026-03-06T18:22:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3166', 'hist-ticket-127-3166', 'cash', 15000, 'completed', '2026-03-06T18:22:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3167', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-06T08:37:26.000Z', '2026-03-06T08:37:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3167-1', 'hist-ticket-127-3167', 'prod-latte', 1, 15000, 0, '2026-03-06T08:37:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3167-2', 'hist-ticket-127-3167', 'prod-mocha', 1, 16500, 0, '2026-03-06T08:37:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3167-3', 'hist-ticket-127-3167', 'prod-latte', 1, 15000, 0, '2026-03-06T08:37:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3167', 'hist-ticket-127-3167', 'cash', 46500, 'completed', '2026-03-06T08:37:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3168', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-06T08:55:48.000Z', '2026-03-06T08:55:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3168-1', 'hist-ticket-127-3168', 'prod-americano', 1, 12000, 0, '2026-03-06T08:55:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3168', 'hist-ticket-127-3168', 'cash', 12000, 'completed', '2026-03-06T08:55:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3169', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-06T16:31:32.000Z', '2026-03-06T16:31:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3169-1', 'hist-ticket-127-3169', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T16:31:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3169-2', 'hist-ticket-127-3169', 'prod-americano', 1, 12000, 0, '2026-03-06T16:31:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3169-3', 'hist-ticket-127-3169', 'prod-mocha', 1, 16500, 0, '2026-03-06T16:31:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3169', 'hist-ticket-127-3169', 'cash', 43000, 'completed', '2026-03-06T16:31:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3170', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-06T13:09:07.000Z', '2026-03-06T13:09:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3170-1', 'hist-ticket-127-3170', 'prod-latte', 1, 15000, 0, '2026-03-06T13:09:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3170-2', 'hist-ticket-127-3170', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T13:09:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3170-3', 'hist-ticket-127-3170', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T13:09:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3170-4', 'hist-ticket-127-3170', 'prod-mocha', 1, 16500, 0, '2026-03-06T13:09:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3170', 'hist-ticket-127-3170', 'cash', 60500, 'completed', '2026-03-06T13:09:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3171', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-06T18:51:22.000Z', '2026-03-06T18:51:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3171-1', 'hist-ticket-127-3171', 'prod-americano', 1, 12000, 0, '2026-03-06T18:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3171-2', 'hist-ticket-127-3171', 'prod-cappuccino', 1, 14500, 0, '2026-03-06T18:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3171-3', 'hist-ticket-127-3171', 'prod-americano', 1, 12000, 0, '2026-03-06T18:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3171-4', 'hist-ticket-127-3171', 'prod-americano', 1, 12000, 0, '2026-03-06T18:51:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3171', 'hist-ticket-127-3171', 'cash', 50500, 'completed', '2026-03-06T18:51:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-127-3172', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-06T10:10:57.000Z', '2026-03-06T10:10:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3172-1', 'hist-ticket-127-3172', 'prod-mocha', 1, 16500, 0, '2026-03-06T10:10:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-127-3172-2', 'hist-ticket-127-3172', 'prod-americano', 1, 12000, 0, '2026-03-06T10:10:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-127-3172', 'hist-ticket-127-3172', 'cash', 28500, 'completed', '2026-03-06T10:10:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3173', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-03-07T12:33:07.000Z', '2026-03-07T12:33:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3173-1', 'hist-ticket-128-3173', 'prod-mocha', 1, 16500, 0, '2026-03-07T12:33:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3173-2', 'hist-ticket-128-3173', 'prod-mocha', 1, 16500, 0, '2026-03-07T12:33:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3173', 'hist-ticket-128-3173', 'cash', 33000, 'completed', '2026-03-07T12:33:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3174', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-07T18:11:17.000Z', '2026-03-07T18:11:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3174-1', 'hist-ticket-128-3174', 'prod-mocha', 1, 16500, 0, '2026-03-07T18:11:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3174-2', 'hist-ticket-128-3174', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T18:11:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3174-3', 'hist-ticket-128-3174', 'prod-mocha', 1, 16500, 0, '2026-03-07T18:11:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3174-4', 'hist-ticket-128-3174', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T18:11:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3174', 'hist-ticket-128-3174', 'cash', 62000, 'completed', '2026-03-07T18:11:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3175', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-07T09:17:03.000Z', '2026-03-07T09:17:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3175-1', 'hist-ticket-128-3175', 'prod-mocha', 1, 16500, 0, '2026-03-07T09:17:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3175', 'hist-ticket-128-3175', 'cash', 16500, 'completed', '2026-03-07T09:17:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3176', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-07T19:51:40.000Z', '2026-03-07T19:51:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3176-1', 'hist-ticket-128-3176', 'prod-latte', 1, 15000, 0, '2026-03-07T19:51:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3176-2', 'hist-ticket-128-3176', 'prod-americano', 1, 12000, 0, '2026-03-07T19:51:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3176-3', 'hist-ticket-128-3176', 'prod-latte', 1, 15000, 0, '2026-03-07T19:51:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3176', 'hist-ticket-128-3176', 'cash', 42000, 'completed', '2026-03-07T19:51:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3177', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-03-07T19:42:34.000Z', '2026-03-07T19:42:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3177-1', 'hist-ticket-128-3177', 'prod-mocha', 1, 16500, 0, '2026-03-07T19:42:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3177-2', 'hist-ticket-128-3177', 'prod-latte', 1, 15000, 0, '2026-03-07T19:42:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3177-3', 'hist-ticket-128-3177', 'prod-latte', 1, 15000, 0, '2026-03-07T19:42:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3177', 'hist-ticket-128-3177', 'cash', 46500, 'completed', '2026-03-07T19:42:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3178', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-03-07T18:57:13.000Z', '2026-03-07T18:57:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3178-1', 'hist-ticket-128-3178', 'prod-latte', 1, 15000, 0, '2026-03-07T18:57:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3178-2', 'hist-ticket-128-3178', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T18:57:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3178-3', 'hist-ticket-128-3178', 'prod-mocha', 1, 16500, 0, '2026-03-07T18:57:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3178', 'hist-ticket-128-3178', 'cash', 46000, 'completed', '2026-03-07T18:57:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3179', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-07T14:36:43.000Z', '2026-03-07T14:36:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3179-1', 'hist-ticket-128-3179', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T14:36:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3179', 'hist-ticket-128-3179', 'cash', 14500, 'completed', '2026-03-07T14:36:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3180', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-03-07T13:35:34.000Z', '2026-03-07T13:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3180-1', 'hist-ticket-128-3180', 'prod-americano', 1, 12000, 0, '2026-03-07T13:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3180-2', 'hist-ticket-128-3180', 'prod-mocha', 1, 16500, 0, '2026-03-07T13:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3180', 'hist-ticket-128-3180', 'cash', 28500, 'completed', '2026-03-07T13:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3181', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-07T11:48:52.000Z', '2026-03-07T11:48:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3181-1', 'hist-ticket-128-3181', 'prod-mocha', 1, 16500, 0, '2026-03-07T11:48:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3181', 'hist-ticket-128-3181', 'cash', 16500, 'completed', '2026-03-07T11:48:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3182', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-07T09:02:34.000Z', '2026-03-07T09:02:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3182-1', 'hist-ticket-128-3182', 'prod-latte', 1, 15000, 0, '2026-03-07T09:02:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3182-2', 'hist-ticket-128-3182', 'prod-mocha', 1, 16500, 0, '2026-03-07T09:02:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3182-3', 'hist-ticket-128-3182', 'prod-americano', 1, 12000, 0, '2026-03-07T09:02:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3182', 'hist-ticket-128-3182', 'cash', 43500, 'completed', '2026-03-07T09:02:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3183', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-07T08:48:53.000Z', '2026-03-07T08:48:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3183-1', 'hist-ticket-128-3183', 'prod-americano', 1, 12000, 0, '2026-03-07T08:48:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3183', 'hist-ticket-128-3183', 'cash', 12000, 'completed', '2026-03-07T08:48:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3184', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-07T12:12:02.000Z', '2026-03-07T12:12:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3184-1', 'hist-ticket-128-3184', 'prod-mocha', 1, 16500, 0, '2026-03-07T12:12:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3184-2', 'hist-ticket-128-3184', 'prod-latte', 1, 15000, 0, '2026-03-07T12:12:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3184', 'hist-ticket-128-3184', 'cash', 31500, 'completed', '2026-03-07T12:12:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3185', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-07T10:28:47.000Z', '2026-03-07T10:28:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3185-1', 'hist-ticket-128-3185', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T10:28:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3185-2', 'hist-ticket-128-3185', 'prod-latte', 1, 15000, 0, '2026-03-07T10:28:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3185', 'hist-ticket-128-3185', 'cash', 29500, 'completed', '2026-03-07T10:28:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3186', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-07T17:01:07.000Z', '2026-03-07T17:01:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3186-1', 'hist-ticket-128-3186', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T17:01:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3186-2', 'hist-ticket-128-3186', 'prod-mocha', 1, 16500, 0, '2026-03-07T17:01:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3186-3', 'hist-ticket-128-3186', 'prod-americano', 1, 12000, 0, '2026-03-07T17:01:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3186-4', 'hist-ticket-128-3186', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T17:01:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3186', 'hist-ticket-128-3186', 'cash', 57500, 'completed', '2026-03-07T17:01:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3187', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-07T13:30:32.000Z', '2026-03-07T13:30:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3187-1', 'hist-ticket-128-3187', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T13:30:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3187', 'hist-ticket-128-3187', 'cash', 14500, 'completed', '2026-03-07T13:30:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3188', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-03-07T13:46:59.000Z', '2026-03-07T13:46:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3188-1', 'hist-ticket-128-3188', 'prod-americano', 1, 12000, 0, '2026-03-07T13:46:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3188-2', 'hist-ticket-128-3188', 'prod-latte', 1, 15000, 0, '2026-03-07T13:46:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3188-3', 'hist-ticket-128-3188', 'prod-americano', 1, 12000, 0, '2026-03-07T13:46:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3188', 'hist-ticket-128-3188', 'cash', 39000, 'completed', '2026-03-07T13:46:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3189', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-07T08:24:18.000Z', '2026-03-07T08:24:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3189-1', 'hist-ticket-128-3189', 'prod-latte', 1, 15000, 0, '2026-03-07T08:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3189-2', 'hist-ticket-128-3189', 'prod-mocha', 1, 16500, 0, '2026-03-07T08:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3189-3', 'hist-ticket-128-3189', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T08:24:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3189', 'hist-ticket-128-3189', 'cash', 46000, 'completed', '2026-03-07T08:24:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3190', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-07T15:56:15.000Z', '2026-03-07T15:56:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3190-1', 'hist-ticket-128-3190', 'prod-americano', 1, 12000, 0, '2026-03-07T15:56:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3190-2', 'hist-ticket-128-3190', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T15:56:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3190-3', 'hist-ticket-128-3190', 'prod-latte', 1, 15000, 0, '2026-03-07T15:56:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3190', 'hist-ticket-128-3190', 'cash', 41500, 'completed', '2026-03-07T15:56:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3191', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-07T10:38:06.000Z', '2026-03-07T10:38:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3191-1', 'hist-ticket-128-3191', 'prod-latte', 1, 15000, 0, '2026-03-07T10:38:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3191-2', 'hist-ticket-128-3191', 'prod-americano', 1, 12000, 0, '2026-03-07T10:38:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3191-3', 'hist-ticket-128-3191', 'prod-americano', 1, 12000, 0, '2026-03-07T10:38:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3191', 'hist-ticket-128-3191', 'cash', 39000, 'completed', '2026-03-07T10:38:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3192', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-07T14:31:24.000Z', '2026-03-07T14:31:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3192-1', 'hist-ticket-128-3192', 'prod-latte', 1, 15000, 0, '2026-03-07T14:31:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3192-2', 'hist-ticket-128-3192', 'prod-mocha', 1, 16500, 0, '2026-03-07T14:31:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3192-3', 'hist-ticket-128-3192', 'prod-latte', 1, 15000, 0, '2026-03-07T14:31:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3192', 'hist-ticket-128-3192', 'cash', 46500, 'completed', '2026-03-07T14:31:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3193', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-07T11:06:17.000Z', '2026-03-07T11:06:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3193-1', 'hist-ticket-128-3193', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T11:06:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3193', 'hist-ticket-128-3193', 'cash', 14500, 'completed', '2026-03-07T11:06:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3194', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-07T17:47:05.000Z', '2026-03-07T17:47:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3194-1', 'hist-ticket-128-3194', 'prod-mocha', 1, 16500, 0, '2026-03-07T17:47:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3194-2', 'hist-ticket-128-3194', 'prod-americano', 1, 12000, 0, '2026-03-07T17:47:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3194-3', 'hist-ticket-128-3194', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T17:47:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3194', 'hist-ticket-128-3194', 'cash', 43000, 'completed', '2026-03-07T17:47:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3195', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-07T10:00:12.000Z', '2026-03-07T10:00:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3195-1', 'hist-ticket-128-3195', 'prod-americano', 1, 12000, 0, '2026-03-07T10:00:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3195-2', 'hist-ticket-128-3195', 'prod-mocha', 1, 16500, 0, '2026-03-07T10:00:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3195-3', 'hist-ticket-128-3195', 'prod-mocha', 1, 16500, 0, '2026-03-07T10:00:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3195-4', 'hist-ticket-128-3195', 'prod-mocha', 1, 16500, 0, '2026-03-07T10:00:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3195', 'hist-ticket-128-3195', 'cash', 61500, 'completed', '2026-03-07T10:00:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3196', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-07T08:56:31.000Z', '2026-03-07T08:56:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3196-1', 'hist-ticket-128-3196', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T08:56:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3196', 'hist-ticket-128-3196', 'cash', 14500, 'completed', '2026-03-07T08:56:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3197', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-07T12:54:03.000Z', '2026-03-07T12:54:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3197-1', 'hist-ticket-128-3197', 'prod-americano', 1, 12000, 0, '2026-03-07T12:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3197-2', 'hist-ticket-128-3197', 'prod-latte', 1, 15000, 0, '2026-03-07T12:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3197-3', 'hist-ticket-128-3197', 'prod-mocha', 1, 16500, 0, '2026-03-07T12:54:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3197-4', 'hist-ticket-128-3197', 'prod-americano', 1, 12000, 0, '2026-03-07T12:54:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3197', 'hist-ticket-128-3197', 'cash', 55500, 'completed', '2026-03-07T12:54:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3198', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-07T15:05:35.000Z', '2026-03-07T15:05:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3198-1', 'hist-ticket-128-3198', 'prod-mocha', 1, 16500, 0, '2026-03-07T15:05:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3198-2', 'hist-ticket-128-3198', 'prod-latte', 1, 15000, 0, '2026-03-07T15:05:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3198', 'hist-ticket-128-3198', 'cash', 31500, 'completed', '2026-03-07T15:05:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3199', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-07T11:11:08.000Z', '2026-03-07T11:11:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3199-1', 'hist-ticket-128-3199', 'prod-latte', 1, 15000, 0, '2026-03-07T11:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3199-2', 'hist-ticket-128-3199', 'prod-americano', 1, 12000, 0, '2026-03-07T11:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3199-3', 'hist-ticket-128-3199', 'prod-mocha', 1, 16500, 0, '2026-03-07T11:11:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3199-4', 'hist-ticket-128-3199', 'prod-latte', 1, 15000, 0, '2026-03-07T11:11:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3199', 'hist-ticket-128-3199', 'cash', 58500, 'completed', '2026-03-07T11:11:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3200', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-07T16:57:40.000Z', '2026-03-07T16:57:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3200-1', 'hist-ticket-128-3200', 'prod-cappuccino', 1, 14500, 0, '2026-03-07T16:57:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3200', 'hist-ticket-128-3200', 'cash', 14500, 'completed', '2026-03-07T16:57:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-128-3201', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-07T17:14:06.000Z', '2026-03-07T17:14:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-128-3201-1', 'hist-ticket-128-3201', 'prod-mocha', 1, 16500, 0, '2026-03-07T17:14:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-128-3201', 'hist-ticket-128-3201', 'cash', 16500, 'completed', '2026-03-07T17:14:06.000Z');