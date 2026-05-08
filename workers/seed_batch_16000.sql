INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3532', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-19T11:48:18.000Z', '2026-03-19T11:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3532-1', 'hist-ticket-140-3532', 'prod-americano', 1, 12000, 0, '2026-03-19T11:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3532-2', 'hist-ticket-140-3532', 'prod-americano', 1, 12000, 0, '2026-03-19T11:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3532-3', 'hist-ticket-140-3532', 'prod-americano', 1, 12000, 0, '2026-03-19T11:48:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3532', 'hist-ticket-140-3532', 'cash', 36000, 'completed', '2026-03-19T11:48:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3533', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-19T08:54:19.000Z', '2026-03-19T08:54:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3533-1', 'hist-ticket-140-3533', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T08:54:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3533', 'hist-ticket-140-3533', 'cash', 14500, 'completed', '2026-03-19T08:54:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-140-3534', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-19T19:38:26.000Z', '2026-03-19T19:38:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3534-1', 'hist-ticket-140-3534', 'prod-cappuccino', 1, 14500, 0, '2026-03-19T19:38:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-140-3534-2', 'hist-ticket-140-3534', 'prod-mocha', 1, 16500, 0, '2026-03-19T19:38:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-140-3534', 'hist-ticket-140-3534', 'cash', 31000, 'completed', '2026-03-19T19:38:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3535', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-03-20T19:09:14.000Z', '2026-03-20T19:09:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3535-1', 'hist-ticket-141-3535', 'prod-mocha', 1, 16500, 0, '2026-03-20T19:09:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3535-2', 'hist-ticket-141-3535', 'prod-americano', 1, 12000, 0, '2026-03-20T19:09:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3535', 'hist-ticket-141-3535', 'cash', 28500, 'completed', '2026-03-20T19:09:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3536', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-20T17:37:14.000Z', '2026-03-20T17:37:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3536-1', 'hist-ticket-141-3536', 'prod-latte', 1, 15000, 0, '2026-03-20T17:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3536-2', 'hist-ticket-141-3536', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T17:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3536-3', 'hist-ticket-141-3536', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3536-4', 'hist-ticket-141-3536', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:37:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3536', 'hist-ticket-141-3536', 'cash', 62500, 'completed', '2026-03-20T17:37:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3537', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-20T09:33:47.000Z', '2026-03-20T09:33:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3537-1', 'hist-ticket-141-3537', 'prod-americano', 1, 12000, 0, '2026-03-20T09:33:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3537', 'hist-ticket-141-3537', 'cash', 12000, 'completed', '2026-03-20T09:33:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3538', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-20T10:46:05.000Z', '2026-03-20T10:46:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3538-1', 'hist-ticket-141-3538', 'prod-mocha', 1, 16500, 0, '2026-03-20T10:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3538-2', 'hist-ticket-141-3538', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T10:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3538-3', 'hist-ticket-141-3538', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T10:46:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3538', 'hist-ticket-141-3538', 'cash', 45500, 'completed', '2026-03-20T10:46:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3539', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-20T18:30:55.000Z', '2026-03-20T18:30:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3539-1', 'hist-ticket-141-3539', 'prod-latte', 1, 15000, 0, '2026-03-20T18:30:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3539-2', 'hist-ticket-141-3539', 'prod-latte', 1, 15000, 0, '2026-03-20T18:30:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3539-3', 'hist-ticket-141-3539', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T18:30:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3539', 'hist-ticket-141-3539', 'cash', 44500, 'completed', '2026-03-20T18:30:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3540', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-03-20T15:23:47.000Z', '2026-03-20T15:23:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3540-1', 'hist-ticket-141-3540', 'prod-latte', 1, 15000, 0, '2026-03-20T15:23:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3540-2', 'hist-ticket-141-3540', 'prod-americano', 1, 12000, 0, '2026-03-20T15:23:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3540-3', 'hist-ticket-141-3540', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T15:23:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3540-4', 'hist-ticket-141-3540', 'prod-mocha', 1, 16500, 0, '2026-03-20T15:23:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3540', 'hist-ticket-141-3540', 'cash', 58000, 'completed', '2026-03-20T15:23:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3541', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-20T11:29:25.000Z', '2026-03-20T11:29:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3541-1', 'hist-ticket-141-3541', 'prod-mocha', 1, 16500, 0, '2026-03-20T11:29:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3541-2', 'hist-ticket-141-3541', 'prod-latte', 1, 15000, 0, '2026-03-20T11:29:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3541', 'hist-ticket-141-3541', 'cash', 31500, 'completed', '2026-03-20T11:29:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3542', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-20T17:22:14.000Z', '2026-03-20T17:22:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3542-1', 'hist-ticket-141-3542', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T17:22:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3542-2', 'hist-ticket-141-3542', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:22:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3542-3', 'hist-ticket-141-3542', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:22:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3542', 'hist-ticket-141-3542', 'cash', 47500, 'completed', '2026-03-20T17:22:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3543', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-20T10:52:34.000Z', '2026-03-20T10:52:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3543-1', 'hist-ticket-141-3543', 'prod-americano', 1, 12000, 0, '2026-03-20T10:52:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3543', 'hist-ticket-141-3543', 'cash', 12000, 'completed', '2026-03-20T10:52:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3544', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-20T19:51:03.000Z', '2026-03-20T19:51:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3544-1', 'hist-ticket-141-3544', 'prod-latte', 1, 15000, 0, '2026-03-20T19:51:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3544', 'hist-ticket-141-3544', 'cash', 15000, 'completed', '2026-03-20T19:51:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3545', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-20T09:21:46.000Z', '2026-03-20T09:21:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3545-1', 'hist-ticket-141-3545', 'prod-latte', 1, 15000, 0, '2026-03-20T09:21:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3545-2', 'hist-ticket-141-3545', 'prod-latte', 1, 15000, 0, '2026-03-20T09:21:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3545-3', 'hist-ticket-141-3545', 'prod-americano', 1, 12000, 0, '2026-03-20T09:21:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3545', 'hist-ticket-141-3545', 'cash', 42000, 'completed', '2026-03-20T09:21:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3546', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-03-20T19:21:03.000Z', '2026-03-20T19:21:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3546-1', 'hist-ticket-141-3546', 'prod-americano', 1, 12000, 0, '2026-03-20T19:21:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3546-2', 'hist-ticket-141-3546', 'prod-americano', 1, 12000, 0, '2026-03-20T19:21:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3546', 'hist-ticket-141-3546', 'cash', 24000, 'completed', '2026-03-20T19:21:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3547', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-20T13:45:07.000Z', '2026-03-20T13:45:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3547-1', 'hist-ticket-141-3547', 'prod-americano', 1, 12000, 0, '2026-03-20T13:45:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3547', 'hist-ticket-141-3547', 'cash', 12000, 'completed', '2026-03-20T13:45:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3548', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-03-20T16:10:46.000Z', '2026-03-20T16:10:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3548-1', 'hist-ticket-141-3548', 'prod-americano', 1, 12000, 0, '2026-03-20T16:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3548-2', 'hist-ticket-141-3548', 'prod-latte', 1, 15000, 0, '2026-03-20T16:10:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3548', 'hist-ticket-141-3548', 'cash', 27000, 'completed', '2026-03-20T16:10:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3549', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-20T12:46:48.000Z', '2026-03-20T12:46:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3549-1', 'hist-ticket-141-3549', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T12:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3549-2', 'hist-ticket-141-3549', 'prod-mocha', 1, 16500, 0, '2026-03-20T12:46:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3549-3', 'hist-ticket-141-3549', 'prod-americano', 1, 12000, 0, '2026-03-20T12:46:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3549', 'hist-ticket-141-3549', 'cash', 43000, 'completed', '2026-03-20T12:46:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3550', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-20T17:56:42.000Z', '2026-03-20T17:56:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3550-1', 'hist-ticket-141-3550', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:56:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3550', 'hist-ticket-141-3550', 'cash', 16500, 'completed', '2026-03-20T17:56:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3551', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-20T09:28:53.000Z', '2026-03-20T09:28:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3551-1', 'hist-ticket-141-3551', 'prod-americano', 1, 12000, 0, '2026-03-20T09:28:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3551-2', 'hist-ticket-141-3551', 'prod-americano', 1, 12000, 0, '2026-03-20T09:28:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3551', 'hist-ticket-141-3551', 'cash', 24000, 'completed', '2026-03-20T09:28:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3552', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-20T12:27:28.000Z', '2026-03-20T12:27:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3552-1', 'hist-ticket-141-3552', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T12:27:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3552-2', 'hist-ticket-141-3552', 'prod-latte', 1, 15000, 0, '2026-03-20T12:27:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3552', 'hist-ticket-141-3552', 'cash', 29500, 'completed', '2026-03-20T12:27:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3553', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-20T08:31:09.000Z', '2026-03-20T08:31:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3553-1', 'hist-ticket-141-3553', 'prod-mocha', 1, 16500, 0, '2026-03-20T08:31:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3553', 'hist-ticket-141-3553', 'cash', 16500, 'completed', '2026-03-20T08:31:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3554', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-20T15:50:32.000Z', '2026-03-20T15:50:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3554-1', 'hist-ticket-141-3554', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T15:50:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3554-2', 'hist-ticket-141-3554', 'prod-latte', 1, 15000, 0, '2026-03-20T15:50:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3554-3', 'hist-ticket-141-3554', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T15:50:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3554', 'hist-ticket-141-3554', 'cash', 44000, 'completed', '2026-03-20T15:50:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3555', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-20T17:56:52.000Z', '2026-03-20T17:56:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3555-1', 'hist-ticket-141-3555', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T17:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3555-2', 'hist-ticket-141-3555', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3555-3', 'hist-ticket-141-3555', 'prod-latte', 1, 15000, 0, '2026-03-20T17:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3555-4', 'hist-ticket-141-3555', 'prod-mocha', 1, 16500, 0, '2026-03-20T17:56:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3555', 'hist-ticket-141-3555', 'cash', 62500, 'completed', '2026-03-20T17:56:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3556', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-20T10:18:41.000Z', '2026-03-20T10:18:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3556-1', 'hist-ticket-141-3556', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T10:18:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3556-2', 'hist-ticket-141-3556', 'prod-mocha', 1, 16500, 0, '2026-03-20T10:18:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3556-3', 'hist-ticket-141-3556', 'prod-mocha', 1, 16500, 0, '2026-03-20T10:18:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3556', 'hist-ticket-141-3556', 'cash', 47500, 'completed', '2026-03-20T10:18:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3557', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-03-20T11:15:21.000Z', '2026-03-20T11:15:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3557-1', 'hist-ticket-141-3557', 'prod-americano', 1, 12000, 0, '2026-03-20T11:15:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3557-2', 'hist-ticket-141-3557', 'prod-americano', 1, 12000, 0, '2026-03-20T11:15:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3557-3', 'hist-ticket-141-3557', 'prod-mocha', 1, 16500, 0, '2026-03-20T11:15:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3557', 'hist-ticket-141-3557', 'cash', 40500, 'completed', '2026-03-20T11:15:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3558', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-20T18:20:08.000Z', '2026-03-20T18:20:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3558-1', 'hist-ticket-141-3558', 'prod-latte', 1, 15000, 0, '2026-03-20T18:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3558-2', 'hist-ticket-141-3558', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T18:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3558-3', 'hist-ticket-141-3558', 'prod-latte', 1, 15000, 0, '2026-03-20T18:20:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3558', 'hist-ticket-141-3558', 'cash', 44500, 'completed', '2026-03-20T18:20:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3559', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-03-20T16:04:05.000Z', '2026-03-20T16:04:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3559-1', 'hist-ticket-141-3559', 'prod-americano', 1, 12000, 0, '2026-03-20T16:04:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3559-2', 'hist-ticket-141-3559', 'prod-mocha', 1, 16500, 0, '2026-03-20T16:04:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3559', 'hist-ticket-141-3559', 'cash', 28500, 'completed', '2026-03-20T16:04:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3560', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-20T11:33:32.000Z', '2026-03-20T11:33:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3560-1', 'hist-ticket-141-3560', 'prod-americano', 1, 12000, 0, '2026-03-20T11:33:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3560-2', 'hist-ticket-141-3560', 'prod-cappuccino', 1, 14500, 0, '2026-03-20T11:33:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3560', 'hist-ticket-141-3560', 'cash', 26500, 'completed', '2026-03-20T11:33:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-141-3561', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-20T16:19:37.000Z', '2026-03-20T16:19:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3561-1', 'hist-ticket-141-3561', 'prod-americano', 1, 12000, 0, '2026-03-20T16:19:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-141-3561-2', 'hist-ticket-141-3561', 'prod-americano', 1, 12000, 0, '2026-03-20T16:19:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-141-3561', 'hist-ticket-141-3561', 'cash', 24000, 'completed', '2026-03-20T16:19:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3562', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-21T16:57:47.000Z', '2026-03-21T16:57:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3562-1', 'hist-ticket-142-3562', 'prod-americano', 1, 12000, 0, '2026-03-21T16:57:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3562-2', 'hist-ticket-142-3562', 'prod-mocha', 1, 16500, 0, '2026-03-21T16:57:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3562-3', 'hist-ticket-142-3562', 'prod-mocha', 1, 16500, 0, '2026-03-21T16:57:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3562', 'hist-ticket-142-3562', 'cash', 45000, 'completed', '2026-03-21T16:57:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3563', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-21T10:08:33.000Z', '2026-03-21T10:08:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3563-1', 'hist-ticket-142-3563', 'prod-americano', 1, 12000, 0, '2026-03-21T10:08:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3563-2', 'hist-ticket-142-3563', 'prod-latte', 1, 15000, 0, '2026-03-21T10:08:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3563', 'hist-ticket-142-3563', 'cash', 27000, 'completed', '2026-03-21T10:08:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3564', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-21T13:18:28.000Z', '2026-03-21T13:18:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3564-1', 'hist-ticket-142-3564', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3564-2', 'hist-ticket-142-3564', 'prod-latte', 1, 15000, 0, '2026-03-21T13:18:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3564-3', 'hist-ticket-142-3564', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:18:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3564', 'hist-ticket-142-3564', 'cash', 44000, 'completed', '2026-03-21T13:18:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3565', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-21T11:10:31.000Z', '2026-03-21T11:10:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3565-1', 'hist-ticket-142-3565', 'prod-mocha', 1, 16500, 0, '2026-03-21T11:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3565-2', 'hist-ticket-142-3565', 'prod-americano', 1, 12000, 0, '2026-03-21T11:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3565-3', 'hist-ticket-142-3565', 'prod-americano', 1, 12000, 0, '2026-03-21T11:10:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3565-4', 'hist-ticket-142-3565', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T11:10:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3565', 'hist-ticket-142-3565', 'cash', 55000, 'completed', '2026-03-21T11:10:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3566', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-21T09:35:23.000Z', '2026-03-21T09:35:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3566-1', 'hist-ticket-142-3566', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T09:35:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3566', 'hist-ticket-142-3566', 'cash', 14500, 'completed', '2026-03-21T09:35:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3567', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-21T17:13:30.000Z', '2026-03-21T17:13:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3567-1', 'hist-ticket-142-3567', 'prod-americano', 1, 12000, 0, '2026-03-21T17:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3567-2', 'hist-ticket-142-3567', 'prod-latte', 1, 15000, 0, '2026-03-21T17:13:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3567-3', 'hist-ticket-142-3567', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T17:13:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3567', 'hist-ticket-142-3567', 'cash', 41500, 'completed', '2026-03-21T17:13:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3568', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-21T17:44:49.000Z', '2026-03-21T17:44:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3568-1', 'hist-ticket-142-3568', 'prod-latte', 1, 15000, 0, '2026-03-21T17:44:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3568', 'hist-ticket-142-3568', 'cash', 15000, 'completed', '2026-03-21T17:44:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3569', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-21T10:33:04.000Z', '2026-03-21T10:33:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3569-1', 'hist-ticket-142-3569', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T10:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3569-2', 'hist-ticket-142-3569', 'prod-mocha', 1, 16500, 0, '2026-03-21T10:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3569-3', 'hist-ticket-142-3569', 'prod-mocha', 1, 16500, 0, '2026-03-21T10:33:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3569', 'hist-ticket-142-3569', 'cash', 47500, 'completed', '2026-03-21T10:33:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3570', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-21T09:47:47.000Z', '2026-03-21T09:47:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3570-1', 'hist-ticket-142-3570', 'prod-americano', 1, 12000, 0, '2026-03-21T09:47:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3570', 'hist-ticket-142-3570', 'cash', 12000, 'completed', '2026-03-21T09:47:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3571', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-21T13:01:52.000Z', '2026-03-21T13:01:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3571-1', 'hist-ticket-142-3571', 'prod-americano', 1, 12000, 0, '2026-03-21T13:01:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3571-2', 'hist-ticket-142-3571', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:01:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3571-3', 'hist-ticket-142-3571', 'prod-americano', 1, 12000, 0, '2026-03-21T13:01:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3571-4', 'hist-ticket-142-3571', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:01:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3571', 'hist-ticket-142-3571', 'cash', 53000, 'completed', '2026-03-21T13:01:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3572', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-21T09:08:50.000Z', '2026-03-21T09:08:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3572-1', 'hist-ticket-142-3572', 'prod-latte', 1, 15000, 0, '2026-03-21T09:08:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3572', 'hist-ticket-142-3572', 'cash', 15000, 'completed', '2026-03-21T09:08:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3573', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-03-21T09:52:06.000Z', '2026-03-21T09:52:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3573-1', 'hist-ticket-142-3573', 'prod-latte', 1, 15000, 0, '2026-03-21T09:52:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3573-2', 'hist-ticket-142-3573', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T09:52:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3573-3', 'hist-ticket-142-3573', 'prod-latte', 1, 15000, 0, '2026-03-21T09:52:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3573', 'hist-ticket-142-3573', 'cash', 44500, 'completed', '2026-03-21T09:52:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3574', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-03-21T12:55:48.000Z', '2026-03-21T12:55:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3574-1', 'hist-ticket-142-3574', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T12:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3574-2', 'hist-ticket-142-3574', 'prod-americano', 1, 12000, 0, '2026-03-21T12:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3574-3', 'hist-ticket-142-3574', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T12:55:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3574-4', 'hist-ticket-142-3574', 'prod-mocha', 1, 16500, 0, '2026-03-21T12:55:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3574', 'hist-ticket-142-3574', 'cash', 57500, 'completed', '2026-03-21T12:55:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3575', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-21T13:27:00.000Z', '2026-03-21T13:27:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3575-1', 'hist-ticket-142-3575', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:27:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3575-2', 'hist-ticket-142-3575', 'prod-latte', 1, 15000, 0, '2026-03-21T13:27:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3575-3', 'hist-ticket-142-3575', 'prod-americano', 1, 12000, 0, '2026-03-21T13:27:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3575-4', 'hist-ticket-142-3575', 'prod-americano', 1, 12000, 0, '2026-03-21T13:27:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3575', 'hist-ticket-142-3575', 'cash', 53500, 'completed', '2026-03-21T13:27:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3576', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-21T12:17:33.000Z', '2026-03-21T12:17:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3576-1', 'hist-ticket-142-3576', 'prod-latte', 1, 15000, 0, '2026-03-21T12:17:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3576-2', 'hist-ticket-142-3576', 'prod-latte', 1, 15000, 0, '2026-03-21T12:17:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3576', 'hist-ticket-142-3576', 'cash', 30000, 'completed', '2026-03-21T12:17:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3577', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-21T17:02:29.000Z', '2026-03-21T17:02:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3577-1', 'hist-ticket-142-3577', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T17:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3577-2', 'hist-ticket-142-3577', 'prod-mocha', 1, 16500, 0, '2026-03-21T17:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3577-3', 'hist-ticket-142-3577', 'prod-americano', 1, 12000, 0, '2026-03-21T17:02:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3577-4', 'hist-ticket-142-3577', 'prod-latte', 1, 15000, 0, '2026-03-21T17:02:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3577', 'hist-ticket-142-3577', 'cash', 58000, 'completed', '2026-03-21T17:02:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3578', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-03-21T09:59:25.000Z', '2026-03-21T09:59:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3578-1', 'hist-ticket-142-3578', 'prod-mocha', 1, 16500, 0, '2026-03-21T09:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3578-2', 'hist-ticket-142-3578', 'prod-americano', 1, 12000, 0, '2026-03-21T09:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3578-3', 'hist-ticket-142-3578', 'prod-mocha', 1, 16500, 0, '2026-03-21T09:59:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3578-4', 'hist-ticket-142-3578', 'prod-mocha', 1, 16500, 0, '2026-03-21T09:59:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3578', 'hist-ticket-142-3578', 'cash', 61500, 'completed', '2026-03-21T09:59:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3579', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-21T09:39:39.000Z', '2026-03-21T09:39:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3579-1', 'hist-ticket-142-3579', 'prod-latte', 1, 15000, 0, '2026-03-21T09:39:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3579', 'hist-ticket-142-3579', 'cash', 15000, 'completed', '2026-03-21T09:39:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3580', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-21T15:43:18.000Z', '2026-03-21T15:43:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3580-1', 'hist-ticket-142-3580', 'prod-latte', 1, 15000, 0, '2026-03-21T15:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3580-2', 'hist-ticket-142-3580', 'prod-americano', 1, 12000, 0, '2026-03-21T15:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3580-3', 'hist-ticket-142-3580', 'prod-americano', 1, 12000, 0, '2026-03-21T15:43:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3580-4', 'hist-ticket-142-3580', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T15:43:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3580', 'hist-ticket-142-3580', 'cash', 53500, 'completed', '2026-03-21T15:43:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3581', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-21T17:22:06.000Z', '2026-03-21T17:22:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3581-1', 'hist-ticket-142-3581', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T17:22:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3581-2', 'hist-ticket-142-3581', 'prod-mocha', 1, 16500, 0, '2026-03-21T17:22:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3581', 'hist-ticket-142-3581', 'cash', 31000, 'completed', '2026-03-21T17:22:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3582', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-21T15:11:27.000Z', '2026-03-21T15:11:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3582-1', 'hist-ticket-142-3582', 'prod-americano', 1, 12000, 0, '2026-03-21T15:11:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3582-2', 'hist-ticket-142-3582', 'prod-americano', 1, 12000, 0, '2026-03-21T15:11:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3582-3', 'hist-ticket-142-3582', 'prod-latte', 1, 15000, 0, '2026-03-21T15:11:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3582-4', 'hist-ticket-142-3582', 'prod-americano', 1, 12000, 0, '2026-03-21T15:11:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3582', 'hist-ticket-142-3582', 'cash', 51000, 'completed', '2026-03-21T15:11:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3583', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-21T16:00:01.000Z', '2026-03-21T16:00:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3583-1', 'hist-ticket-142-3583', 'prod-latte', 1, 15000, 0, '2026-03-21T16:00:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3583-2', 'hist-ticket-142-3583', 'prod-latte', 1, 15000, 0, '2026-03-21T16:00:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3583-3', 'hist-ticket-142-3583', 'prod-mocha', 1, 16500, 0, '2026-03-21T16:00:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3583', 'hist-ticket-142-3583', 'cash', 46500, 'completed', '2026-03-21T16:00:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3584', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-21T19:04:16.000Z', '2026-03-21T19:04:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3584-1', 'hist-ticket-142-3584', 'prod-mocha', 1, 16500, 0, '2026-03-21T19:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3584-2', 'hist-ticket-142-3584', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T19:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3584-3', 'hist-ticket-142-3584', 'prod-mocha', 1, 16500, 0, '2026-03-21T19:04:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3584-4', 'hist-ticket-142-3584', 'prod-latte', 1, 15000, 0, '2026-03-21T19:04:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3584', 'hist-ticket-142-3584', 'cash', 62500, 'completed', '2026-03-21T19:04:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3585', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-21T18:44:15.000Z', '2026-03-21T18:44:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3585-1', 'hist-ticket-142-3585', 'prod-mocha', 1, 16500, 0, '2026-03-21T18:44:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3585-2', 'hist-ticket-142-3585', 'prod-americano', 1, 12000, 0, '2026-03-21T18:44:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3585', 'hist-ticket-142-3585', 'cash', 28500, 'completed', '2026-03-21T18:44:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3586', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-21T13:13:44.000Z', '2026-03-21T13:13:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3586-1', 'hist-ticket-142-3586', 'prod-latte', 1, 15000, 0, '2026-03-21T13:13:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3586', 'hist-ticket-142-3586', 'cash', 15000, 'completed', '2026-03-21T13:13:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3587', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-21T09:44:45.000Z', '2026-03-21T09:44:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3587-1', 'hist-ticket-142-3587', 'prod-latte', 1, 15000, 0, '2026-03-21T09:44:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3587', 'hist-ticket-142-3587', 'cash', 15000, 'completed', '2026-03-21T09:44:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3588', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-21T13:22:05.000Z', '2026-03-21T13:22:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3588-1', 'hist-ticket-142-3588', 'prod-latte', 1, 15000, 0, '2026-03-21T13:22:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3588-2', 'hist-ticket-142-3588', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:22:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3588-3', 'hist-ticket-142-3588', 'prod-latte', 1, 15000, 0, '2026-03-21T13:22:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3588', 'hist-ticket-142-3588', 'cash', 44500, 'completed', '2026-03-21T13:22:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3589', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-21T08:49:11.000Z', '2026-03-21T08:49:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3589-1', 'hist-ticket-142-3589', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T08:49:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3589-2', 'hist-ticket-142-3589', 'prod-latte', 1, 15000, 0, '2026-03-21T08:49:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3589-3', 'hist-ticket-142-3589', 'prod-mocha', 1, 16500, 0, '2026-03-21T08:49:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3589-4', 'hist-ticket-142-3589', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T08:49:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3589', 'hist-ticket-142-3589', 'cash', 60500, 'completed', '2026-03-21T08:49:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3590', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-21T19:14:16.000Z', '2026-03-21T19:14:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3590-1', 'hist-ticket-142-3590', 'prod-americano', 1, 12000, 0, '2026-03-21T19:14:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3590-2', 'hist-ticket-142-3590', 'prod-latte', 1, 15000, 0, '2026-03-21T19:14:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3590-3', 'hist-ticket-142-3590', 'prod-latte', 1, 15000, 0, '2026-03-21T19:14:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3590', 'hist-ticket-142-3590', 'cash', 42000, 'completed', '2026-03-21T19:14:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3591', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-21T09:21:34.000Z', '2026-03-21T09:21:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3591-1', 'hist-ticket-142-3591', 'prod-americano', 1, 12000, 0, '2026-03-21T09:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3591-2', 'hist-ticket-142-3591', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T09:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3591-3', 'hist-ticket-142-3591', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T09:21:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3591-4', 'hist-ticket-142-3591', 'prod-mocha', 1, 16500, 0, '2026-03-21T09:21:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3591', 'hist-ticket-142-3591', 'cash', 57500, 'completed', '2026-03-21T09:21:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3592', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-21T13:42:54.000Z', '2026-03-21T13:42:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3592-1', 'hist-ticket-142-3592', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T13:42:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3592', 'hist-ticket-142-3592', 'cash', 14500, 'completed', '2026-03-21T13:42:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3593', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-21T12:06:56.000Z', '2026-03-21T12:06:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3593-1', 'hist-ticket-142-3593', 'prod-mocha', 1, 16500, 0, '2026-03-21T12:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3593-2', 'hist-ticket-142-3593', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T12:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3593-3', 'hist-ticket-142-3593', 'prod-latte', 1, 15000, 0, '2026-03-21T12:06:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3593-4', 'hist-ticket-142-3593', 'prod-latte', 1, 15000, 0, '2026-03-21T12:06:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3593', 'hist-ticket-142-3593', 'cash', 61000, 'completed', '2026-03-21T12:06:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-142-3594', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-21T10:28:11.000Z', '2026-03-21T10:28:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3594-1', 'hist-ticket-142-3594', 'prod-americano', 1, 12000, 0, '2026-03-21T10:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3594-2', 'hist-ticket-142-3594', 'prod-cappuccino', 1, 14500, 0, '2026-03-21T10:28:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-142-3594-3', 'hist-ticket-142-3594', 'prod-latte', 1, 15000, 0, '2026-03-21T10:28:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-142-3594', 'hist-ticket-142-3594', 'cash', 41500, 'completed', '2026-03-21T10:28:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3595', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-22T10:45:12.000Z', '2026-03-22T10:45:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3595-1', 'hist-ticket-143-3595', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:45:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3595-2', 'hist-ticket-143-3595', 'prod-latte', 1, 15000, 0, '2026-03-22T10:45:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3595-3', 'hist-ticket-143-3595', 'prod-latte', 1, 15000, 0, '2026-03-22T10:45:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3595-4', 'hist-ticket-143-3595', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:45:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3595', 'hist-ticket-143-3595', 'cash', 59000, 'completed', '2026-03-22T10:45:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3596', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-03-22T10:28:06.000Z', '2026-03-22T10:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3596-1', 'hist-ticket-143-3596', 'prod-latte', 1, 15000, 0, '2026-03-22T10:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3596-2', 'hist-ticket-143-3596', 'prod-latte', 1, 15000, 0, '2026-03-22T10:28:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3596', 'hist-ticket-143-3596', 'cash', 30000, 'completed', '2026-03-22T10:28:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3597', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-22T17:16:34.000Z', '2026-03-22T17:16:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3597-1', 'hist-ticket-143-3597', 'prod-latte', 1, 15000, 0, '2026-03-22T17:16:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3597', 'hist-ticket-143-3597', 'cash', 15000, 'completed', '2026-03-22T17:16:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3598', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-22T12:10:10.000Z', '2026-03-22T12:10:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3598-1', 'hist-ticket-143-3598', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:10:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3598-2', 'hist-ticket-143-3598', 'prod-americano', 1, 12000, 0, '2026-03-22T12:10:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3598-3', 'hist-ticket-143-3598', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:10:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3598-4', 'hist-ticket-143-3598', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:10:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3598', 'hist-ticket-143-3598', 'cash', 55500, 'completed', '2026-03-22T12:10:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3599', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-22T17:31:19.000Z', '2026-03-22T17:31:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3599-1', 'hist-ticket-143-3599', 'prod-latte', 1, 15000, 0, '2026-03-22T17:31:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3599', 'hist-ticket-143-3599', 'cash', 15000, 'completed', '2026-03-22T17:31:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3600', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-22T09:11:56.000Z', '2026-03-22T09:11:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3600-1', 'hist-ticket-143-3600', 'prod-americano', 1, 12000, 0, '2026-03-22T09:11:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3600', 'hist-ticket-143-3600', 'cash', 12000, 'completed', '2026-03-22T09:11:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3601', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-03-22T18:18:13.000Z', '2026-03-22T18:18:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3601-1', 'hist-ticket-143-3601', 'prod-latte', 1, 15000, 0, '2026-03-22T18:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3601-2', 'hist-ticket-143-3601', 'prod-latte', 1, 15000, 0, '2026-03-22T18:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3601-3', 'hist-ticket-143-3601', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T18:18:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3601', 'hist-ticket-143-3601', 'cash', 44500, 'completed', '2026-03-22T18:18:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3602', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-03-22T16:15:43.000Z', '2026-03-22T16:15:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3602-1', 'hist-ticket-143-3602', 'prod-mocha', 1, 16500, 0, '2026-03-22T16:15:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3602-2', 'hist-ticket-143-3602', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T16:15:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3602', 'hist-ticket-143-3602', 'cash', 31000, 'completed', '2026-03-22T16:15:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3603', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-22T10:39:47.000Z', '2026-03-22T10:39:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3603-1', 'hist-ticket-143-3603', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3603-2', 'hist-ticket-143-3603', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3603-3', 'hist-ticket-143-3603', 'prod-latte', 1, 15000, 0, '2026-03-22T10:39:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3603-4', 'hist-ticket-143-3603', 'prod-mocha', 1, 16500, 0, '2026-03-22T10:39:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3603', 'hist-ticket-143-3603', 'cash', 60500, 'completed', '2026-03-22T10:39:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3604', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-22T17:19:17.000Z', '2026-03-22T17:19:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3604-1', 'hist-ticket-143-3604', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T17:19:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3604', 'hist-ticket-143-3604', 'cash', 14500, 'completed', '2026-03-22T17:19:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3605', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-22T16:47:19.000Z', '2026-03-22T16:47:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3605-1', 'hist-ticket-143-3605', 'prod-americano', 1, 12000, 0, '2026-03-22T16:47:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3605-2', 'hist-ticket-143-3605', 'prod-mocha', 1, 16500, 0, '2026-03-22T16:47:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3605', 'hist-ticket-143-3605', 'cash', 28500, 'completed', '2026-03-22T16:47:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3606', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-22T11:37:49.000Z', '2026-03-22T11:37:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3606-1', 'hist-ticket-143-3606', 'prod-latte', 1, 15000, 0, '2026-03-22T11:37:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3606', 'hist-ticket-143-3606', 'cash', 15000, 'completed', '2026-03-22T11:37:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3607', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-22T17:54:57.000Z', '2026-03-22T17:54:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3607-1', 'hist-ticket-143-3607', 'prod-mocha', 1, 16500, 0, '2026-03-22T17:54:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3607-2', 'hist-ticket-143-3607', 'prod-mocha', 1, 16500, 0, '2026-03-22T17:54:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3607', 'hist-ticket-143-3607', 'cash', 33000, 'completed', '2026-03-22T17:54:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3608', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-22T11:33:42.000Z', '2026-03-22T11:33:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3608-1', 'hist-ticket-143-3608', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T11:33:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3608-2', 'hist-ticket-143-3608', 'prod-latte', 1, 15000, 0, '2026-03-22T11:33:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3608-3', 'hist-ticket-143-3608', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T11:33:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3608-4', 'hist-ticket-143-3608', 'prod-americano', 1, 12000, 0, '2026-03-22T11:33:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3608', 'hist-ticket-143-3608', 'cash', 56000, 'completed', '2026-03-22T11:33:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3609', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-03-22T13:14:45.000Z', '2026-03-22T13:14:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3609-1', 'hist-ticket-143-3609', 'prod-mocha', 1, 16500, 0, '2026-03-22T13:14:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3609-2', 'hist-ticket-143-3609', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T13:14:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3609-3', 'hist-ticket-143-3609', 'prod-latte', 1, 15000, 0, '2026-03-22T13:14:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3609-4', 'hist-ticket-143-3609', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T13:14:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3609', 'hist-ticket-143-3609', 'cash', 60500, 'completed', '2026-03-22T13:14:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3610', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-03-22T18:59:30.000Z', '2026-03-22T18:59:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3610-1', 'hist-ticket-143-3610', 'prod-americano', 1, 12000, 0, '2026-03-22T18:59:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3610-2', 'hist-ticket-143-3610', 'prod-americano', 1, 12000, 0, '2026-03-22T18:59:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3610', 'hist-ticket-143-3610', 'cash', 24000, 'completed', '2026-03-22T18:59:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3611', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-22T13:23:11.000Z', '2026-03-22T13:23:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3611-1', 'hist-ticket-143-3611', 'prod-americano', 1, 12000, 0, '2026-03-22T13:23:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3611', 'hist-ticket-143-3611', 'cash', 12000, 'completed', '2026-03-22T13:23:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3612', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-03-22T12:40:31.000Z', '2026-03-22T12:40:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3612-1', 'hist-ticket-143-3612', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3612-2', 'hist-ticket-143-3612', 'prod-mocha', 1, 16500, 0, '2026-03-22T12:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3612-3', 'hist-ticket-143-3612', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:40:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3612-4', 'hist-ticket-143-3612', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:40:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3612', 'hist-ticket-143-3612', 'cash', 60000, 'completed', '2026-03-22T12:40:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3613', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-22T17:59:59.000Z', '2026-03-22T17:59:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3613-1', 'hist-ticket-143-3613', 'prod-americano', 1, 12000, 0, '2026-03-22T17:59:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3613-2', 'hist-ticket-143-3613', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T17:59:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3613', 'hist-ticket-143-3613', 'cash', 26500, 'completed', '2026-03-22T17:59:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3614', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-22T18:47:20.000Z', '2026-03-22T18:47:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3614-1', 'hist-ticket-143-3614', 'prod-americano', 1, 12000, 0, '2026-03-22T18:47:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3614-2', 'hist-ticket-143-3614', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T18:47:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3614-3', 'hist-ticket-143-3614', 'prod-americano', 1, 12000, 0, '2026-03-22T18:47:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3614', 'hist-ticket-143-3614', 'cash', 38500, 'completed', '2026-03-22T18:47:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3615', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-22T19:59:35.000Z', '2026-03-22T19:59:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3615-1', 'hist-ticket-143-3615', 'prod-americano', 1, 12000, 0, '2026-03-22T19:59:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3615', 'hist-ticket-143-3615', 'cash', 12000, 'completed', '2026-03-22T19:59:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3616', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-22T08:23:34.000Z', '2026-03-22T08:23:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3616-1', 'hist-ticket-143-3616', 'prod-americano', 1, 12000, 0, '2026-03-22T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3616-2', 'hist-ticket-143-3616', 'prod-mocha', 1, 16500, 0, '2026-03-22T08:23:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3616-3', 'hist-ticket-143-3616', 'prod-mocha', 1, 16500, 0, '2026-03-22T08:23:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3616', 'hist-ticket-143-3616', 'cash', 45000, 'completed', '2026-03-22T08:23:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3617', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-03-22T18:04:35.000Z', '2026-03-22T18:04:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3617-1', 'hist-ticket-143-3617', 'prod-mocha', 1, 16500, 0, '2026-03-22T18:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3617-2', 'hist-ticket-143-3617', 'prod-latte', 1, 15000, 0, '2026-03-22T18:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3617-3', 'hist-ticket-143-3617', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T18:04:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3617', 'hist-ticket-143-3617', 'cash', 46000, 'completed', '2026-03-22T18:04:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3618', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-03-22T14:24:13.000Z', '2026-03-22T14:24:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3618-1', 'hist-ticket-143-3618', 'prod-latte', 1, 15000, 0, '2026-03-22T14:24:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3618', 'hist-ticket-143-3618', 'cash', 15000, 'completed', '2026-03-22T14:24:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3619', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-22T12:01:48.000Z', '2026-03-22T12:01:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3619-1', 'hist-ticket-143-3619', 'prod-americano', 1, 12000, 0, '2026-03-22T12:01:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3619-2', 'hist-ticket-143-3619', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:01:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3619-3', 'hist-ticket-143-3619', 'prod-mocha', 1, 16500, 0, '2026-03-22T12:01:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3619', 'hist-ticket-143-3619', 'cash', 43000, 'completed', '2026-03-22T12:01:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3620', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-22T16:55:49.000Z', '2026-03-22T16:55:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3620-1', 'hist-ticket-143-3620', 'prod-americano', 1, 12000, 0, '2026-03-22T16:55:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3620-2', 'hist-ticket-143-3620', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T16:55:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3620-3', 'hist-ticket-143-3620', 'prod-latte', 1, 15000, 0, '2026-03-22T16:55:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3620-4', 'hist-ticket-143-3620', 'prod-mocha', 1, 16500, 0, '2026-03-22T16:55:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3620', 'hist-ticket-143-3620', 'cash', 58000, 'completed', '2026-03-22T16:55:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3621', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-22T13:34:07.000Z', '2026-03-22T13:34:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3621-1', 'hist-ticket-143-3621', 'prod-americano', 1, 12000, 0, '2026-03-22T13:34:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3621', 'hist-ticket-143-3621', 'cash', 12000, 'completed', '2026-03-22T13:34:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3622', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-22T13:41:11.000Z', '2026-03-22T13:41:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3622-1', 'hist-ticket-143-3622', 'prod-mocha', 1, 16500, 0, '2026-03-22T13:41:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3622-2', 'hist-ticket-143-3622', 'prod-latte', 1, 15000, 0, '2026-03-22T13:41:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3622', 'hist-ticket-143-3622', 'cash', 31500, 'completed', '2026-03-22T13:41:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3623', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-22T09:22:03.000Z', '2026-03-22T09:22:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3623-1', 'hist-ticket-143-3623', 'prod-latte', 1, 15000, 0, '2026-03-22T09:22:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3623-2', 'hist-ticket-143-3623', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T09:22:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3623', 'hist-ticket-143-3623', 'cash', 29500, 'completed', '2026-03-22T09:22:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3624', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-22T14:19:57.000Z', '2026-03-22T14:19:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3624-1', 'hist-ticket-143-3624', 'prod-mocha', 1, 16500, 0, '2026-03-22T14:19:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3624-2', 'hist-ticket-143-3624', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T14:19:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3624-3', 'hist-ticket-143-3624', 'prod-latte', 1, 15000, 0, '2026-03-22T14:19:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3624-4', 'hist-ticket-143-3624', 'prod-latte', 1, 15000, 0, '2026-03-22T14:19:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3624', 'hist-ticket-143-3624', 'cash', 61000, 'completed', '2026-03-22T14:19:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3625', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-22T15:07:15.000Z', '2026-03-22T15:07:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3625-1', 'hist-ticket-143-3625', 'prod-americano', 1, 12000, 0, '2026-03-22T15:07:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3625', 'hist-ticket-143-3625', 'cash', 12000, 'completed', '2026-03-22T15:07:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3626', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-22T12:00:50.000Z', '2026-03-22T12:00:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3626-1', 'hist-ticket-143-3626', 'prod-mocha', 1, 16500, 0, '2026-03-22T12:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3626-2', 'hist-ticket-143-3626', 'prod-americano', 1, 12000, 0, '2026-03-22T12:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3626-3', 'hist-ticket-143-3626', 'prod-mocha', 1, 16500, 0, '2026-03-22T12:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3626-4', 'hist-ticket-143-3626', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T12:00:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3626', 'hist-ticket-143-3626', 'cash', 59500, 'completed', '2026-03-22T12:00:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3627', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-03-22T19:35:49.000Z', '2026-03-22T19:35:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3627-1', 'hist-ticket-143-3627', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T19:35:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3627', 'hist-ticket-143-3627', 'cash', 14500, 'completed', '2026-03-22T19:35:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3628', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-22T15:49:37.000Z', '2026-03-22T15:49:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3628-1', 'hist-ticket-143-3628', 'prod-mocha', 1, 16500, 0, '2026-03-22T15:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3628-2', 'hist-ticket-143-3628', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T15:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3628-3', 'hist-ticket-143-3628', 'prod-mocha', 1, 16500, 0, '2026-03-22T15:49:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3628', 'hist-ticket-143-3628', 'cash', 47500, 'completed', '2026-03-22T15:49:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3629', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-22T13:49:25.000Z', '2026-03-22T13:49:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3629-1', 'hist-ticket-143-3629', 'prod-latte', 1, 15000, 0, '2026-03-22T13:49:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3629-2', 'hist-ticket-143-3629', 'prod-mocha', 1, 16500, 0, '2026-03-22T13:49:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3629', 'hist-ticket-143-3629', 'cash', 31500, 'completed', '2026-03-22T13:49:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3630', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-22T14:10:52.000Z', '2026-03-22T14:10:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3630-1', 'hist-ticket-143-3630', 'prod-mocha', 1, 16500, 0, '2026-03-22T14:10:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3630-2', 'hist-ticket-143-3630', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T14:10:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3630', 'hist-ticket-143-3630', 'cash', 31000, 'completed', '2026-03-22T14:10:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3631', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-22T10:53:51.000Z', '2026-03-22T10:53:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3631-1', 'hist-ticket-143-3631', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:53:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3631-2', 'hist-ticket-143-3631', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:53:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3631-3', 'hist-ticket-143-3631', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T10:53:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3631', 'hist-ticket-143-3631', 'cash', 43500, 'completed', '2026-03-22T10:53:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3632', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-03-22T15:17:23.000Z', '2026-03-22T15:17:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3632-1', 'hist-ticket-143-3632', 'prod-latte', 1, 15000, 0, '2026-03-22T15:17:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3632-2', 'hist-ticket-143-3632', 'prod-americano', 1, 12000, 0, '2026-03-22T15:17:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3632-3', 'hist-ticket-143-3632', 'prod-americano', 1, 12000, 0, '2026-03-22T15:17:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3632-4', 'hist-ticket-143-3632', 'prod-latte', 1, 15000, 0, '2026-03-22T15:17:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3632', 'hist-ticket-143-3632', 'cash', 54000, 'completed', '2026-03-22T15:17:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3633', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-22T17:13:09.000Z', '2026-03-22T17:13:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3633-1', 'hist-ticket-143-3633', 'prod-latte', 1, 15000, 0, '2026-03-22T17:13:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3633', 'hist-ticket-143-3633', 'cash', 15000, 'completed', '2026-03-22T17:13:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-143-3634', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-22T18:05:10.000Z', '2026-03-22T18:05:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3634-1', 'hist-ticket-143-3634', 'prod-americano', 1, 12000, 0, '2026-03-22T18:05:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3634-2', 'hist-ticket-143-3634', 'prod-americano', 1, 12000, 0, '2026-03-22T18:05:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-143-3634-3', 'hist-ticket-143-3634', 'prod-cappuccino', 1, 14500, 0, '2026-03-22T18:05:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-143-3634', 'hist-ticket-143-3634', 'cash', 38500, 'completed', '2026-03-22T18:05:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3635', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-23T11:13:00.000Z', '2026-03-23T11:13:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3635-1', 'hist-ticket-144-3635', 'prod-mocha', 1, 16500, 0, '2026-03-23T11:13:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3635', 'hist-ticket-144-3635', 'cash', 16500, 'completed', '2026-03-23T11:13:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3636', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-23T12:41:01.000Z', '2026-03-23T12:41:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3636-1', 'hist-ticket-144-3636', 'prod-mocha', 1, 16500, 0, '2026-03-23T12:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3636-2', 'hist-ticket-144-3636', 'prod-latte', 1, 15000, 0, '2026-03-23T12:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3636-3', 'hist-ticket-144-3636', 'prod-americano', 1, 12000, 0, '2026-03-23T12:41:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3636-4', 'hist-ticket-144-3636', 'prod-mocha', 1, 16500, 0, '2026-03-23T12:41:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3636', 'hist-ticket-144-3636', 'cash', 60000, 'completed', '2026-03-23T12:41:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3637', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-23T15:56:05.000Z', '2026-03-23T15:56:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3637-1', 'hist-ticket-144-3637', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T15:56:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3637-2', 'hist-ticket-144-3637', 'prod-mocha', 1, 16500, 0, '2026-03-23T15:56:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3637', 'hist-ticket-144-3637', 'cash', 31000, 'completed', '2026-03-23T15:56:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3638', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-03-23T16:39:32.000Z', '2026-03-23T16:39:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3638-1', 'hist-ticket-144-3638', 'prod-americano', 1, 12000, 0, '2026-03-23T16:39:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3638-2', 'hist-ticket-144-3638', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T16:39:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3638-3', 'hist-ticket-144-3638', 'prod-americano', 1, 12000, 0, '2026-03-23T16:39:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3638-4', 'hist-ticket-144-3638', 'prod-americano', 1, 12000, 0, '2026-03-23T16:39:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3638', 'hist-ticket-144-3638', 'cash', 50500, 'completed', '2026-03-23T16:39:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3639', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-23T14:13:22.000Z', '2026-03-23T14:13:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3639-1', 'hist-ticket-144-3639', 'prod-americano', 1, 12000, 0, '2026-03-23T14:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3639-2', 'hist-ticket-144-3639', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T14:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3639-3', 'hist-ticket-144-3639', 'prod-americano', 1, 12000, 0, '2026-03-23T14:13:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3639', 'hist-ticket-144-3639', 'cash', 38500, 'completed', '2026-03-23T14:13:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3640', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-23T08:24:56.000Z', '2026-03-23T08:24:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3640-1', 'hist-ticket-144-3640', 'prod-mocha', 1, 16500, 0, '2026-03-23T08:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3640-2', 'hist-ticket-144-3640', 'prod-latte', 1, 15000, 0, '2026-03-23T08:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3640-3', 'hist-ticket-144-3640', 'prod-americano', 1, 12000, 0, '2026-03-23T08:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3640-4', 'hist-ticket-144-3640', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T08:24:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3640', 'hist-ticket-144-3640', 'cash', 58000, 'completed', '2026-03-23T08:24:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3641', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-03-23T10:58:43.000Z', '2026-03-23T10:58:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3641-1', 'hist-ticket-144-3641', 'prod-latte', 1, 15000, 0, '2026-03-23T10:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3641-2', 'hist-ticket-144-3641', 'prod-americano', 1, 12000, 0, '2026-03-23T10:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3641-3', 'hist-ticket-144-3641', 'prod-latte', 1, 15000, 0, '2026-03-23T10:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3641-4', 'hist-ticket-144-3641', 'prod-cappuccino', 1, 14500, 0, '2026-03-23T10:58:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-144-3641', 'hist-ticket-144-3641', 'cash', 56500, 'completed', '2026-03-23T10:58:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-144-3642', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-23T09:28:07.000Z', '2026-03-23T09:28:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-144-3642-1', 'hist-ticket-144-3642', 'prod-americano', 1, 12000, 0, '2026-03-23T09:28:07.000Z');