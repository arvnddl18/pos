INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3307-2', 'hist-ticket-132-3307', 'prod-americano', 1, 12000, 0, '2026-03-11T15:52:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3307-3', 'hist-ticket-132-3307', 'prod-latte', 1, 15000, 0, '2026-03-11T15:52:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3307-4', 'hist-ticket-132-3307', 'prod-cappuccino', 1, 14500, 0, '2026-03-11T15:52:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3307', 'hist-ticket-132-3307', 'cash', 56000, 'completed', '2026-03-11T15:52:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-132-3308', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-11T16:12:31.000Z', '2026-03-11T16:12:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3308-1', 'hist-ticket-132-3308', 'prod-americano', 1, 12000, 0, '2026-03-11T16:12:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3308-2', 'hist-ticket-132-3308', 'prod-latte', 1, 15000, 0, '2026-03-11T16:12:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-132-3308-3', 'hist-ticket-132-3308', 'prod-americano', 1, 12000, 0, '2026-03-11T16:12:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-132-3308', 'hist-ticket-132-3308', 'cash', 39000, 'completed', '2026-03-11T16:12:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3309', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-12T10:33:37.000Z', '2026-03-12T10:33:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3309-1', 'hist-ticket-133-3309', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T10:33:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3309', 'hist-ticket-133-3309', 'cash', 14500, 'completed', '2026-03-12T10:33:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3310', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-12T12:04:48.000Z', '2026-03-12T12:04:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3310-1', 'hist-ticket-133-3310', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:04:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3310-2', 'hist-ticket-133-3310', 'prod-latte', 1, 15000, 0, '2026-03-12T12:04:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3310-3', 'hist-ticket-133-3310', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:04:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3310', 'hist-ticket-133-3310', 'cash', 48000, 'completed', '2026-03-12T12:04:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3311', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-12T10:08:18.000Z', '2026-03-12T10:08:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3311-1', 'hist-ticket-133-3311', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T10:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3311-2', 'hist-ticket-133-3311', 'prod-latte', 1, 15000, 0, '2026-03-12T10:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3311-3', 'hist-ticket-133-3311', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T10:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3311-4', 'hist-ticket-133-3311', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T10:08:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3311', 'hist-ticket-133-3311', 'cash', 58500, 'completed', '2026-03-12T10:08:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3312', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-12T14:25:34.000Z', '2026-03-12T14:25:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3312-1', 'hist-ticket-133-3312', 'prod-mocha', 1, 16500, 0, '2026-03-12T14:25:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3312', 'hist-ticket-133-3312', 'cash', 16500, 'completed', '2026-03-12T14:25:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3313', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-12T19:55:33.000Z', '2026-03-12T19:55:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3313-1', 'hist-ticket-133-3313', 'prod-latte', 1, 15000, 0, '2026-03-12T19:55:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3313-2', 'hist-ticket-133-3313', 'prod-mocha', 1, 16500, 0, '2026-03-12T19:55:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3313', 'hist-ticket-133-3313', 'cash', 31500, 'completed', '2026-03-12T19:55:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3314', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-12T10:43:44.000Z', '2026-03-12T10:43:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3314-1', 'hist-ticket-133-3314', 'prod-mocha', 1, 16500, 0, '2026-03-12T10:43:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3314-2', 'hist-ticket-133-3314', 'prod-mocha', 1, 16500, 0, '2026-03-12T10:43:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3314-3', 'hist-ticket-133-3314', 'prod-mocha', 1, 16500, 0, '2026-03-12T10:43:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3314', 'hist-ticket-133-3314', 'cash', 49500, 'completed', '2026-03-12T10:43:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3315', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-12T12:16:24.000Z', '2026-03-12T12:16:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3315-1', 'hist-ticket-133-3315', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3315-2', 'hist-ticket-133-3315', 'prod-latte', 1, 15000, 0, '2026-03-12T12:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3315-3', 'hist-ticket-133-3315', 'prod-americano', 1, 12000, 0, '2026-03-12T12:16:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3315-4', 'hist-ticket-133-3315', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:16:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3315', 'hist-ticket-133-3315', 'cash', 60000, 'completed', '2026-03-12T12:16:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3316', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-12T15:32:08.000Z', '2026-03-12T15:32:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3316-1', 'hist-ticket-133-3316', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T15:32:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3316-2', 'hist-ticket-133-3316', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T15:32:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3316-3', 'hist-ticket-133-3316', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T15:32:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3316', 'hist-ticket-133-3316', 'cash', 43500, 'completed', '2026-03-12T15:32:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3317', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-12T09:29:57.000Z', '2026-03-12T09:29:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3317-1', 'hist-ticket-133-3317', 'prod-mocha', 1, 16500, 0, '2026-03-12T09:29:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3317', 'hist-ticket-133-3317', 'cash', 16500, 'completed', '2026-03-12T09:29:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3318', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-12T17:14:59.000Z', '2026-03-12T17:14:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3318-1', 'hist-ticket-133-3318', 'prod-mocha', 1, 16500, 0, '2026-03-12T17:14:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3318-2', 'hist-ticket-133-3318', 'prod-mocha', 1, 16500, 0, '2026-03-12T17:14:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3318-3', 'hist-ticket-133-3318', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T17:14:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3318', 'hist-ticket-133-3318', 'cash', 47500, 'completed', '2026-03-12T17:14:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3319', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-12T12:13:19.000Z', '2026-03-12T12:13:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3319-1', 'hist-ticket-133-3319', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:13:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3319-2', 'hist-ticket-133-3319', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T12:13:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3319-3', 'hist-ticket-133-3319', 'prod-latte', 1, 15000, 0, '2026-03-12T12:13:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3319', 'hist-ticket-133-3319', 'cash', 46000, 'completed', '2026-03-12T12:13:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3320', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-12T16:30:48.000Z', '2026-03-12T16:30:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3320-1', 'hist-ticket-133-3320', 'prod-latte', 1, 15000, 0, '2026-03-12T16:30:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3320', 'hist-ticket-133-3320', 'cash', 15000, 'completed', '2026-03-12T16:30:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3321', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-12T11:12:59.000Z', '2026-03-12T11:12:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3321-1', 'hist-ticket-133-3321', 'prod-americano', 1, 12000, 0, '2026-03-12T11:12:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3321-2', 'hist-ticket-133-3321', 'prod-latte', 1, 15000, 0, '2026-03-12T11:12:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3321-3', 'hist-ticket-133-3321', 'prod-mocha', 1, 16500, 0, '2026-03-12T11:12:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3321', 'hist-ticket-133-3321', 'cash', 43500, 'completed', '2026-03-12T11:12:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3322', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-12T16:06:03.000Z', '2026-03-12T16:06:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3322-1', 'hist-ticket-133-3322', 'prod-mocha', 1, 16500, 0, '2026-03-12T16:06:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3322', 'hist-ticket-133-3322', 'cash', 16500, 'completed', '2026-03-12T16:06:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3323', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-12T10:38:32.000Z', '2026-03-12T10:38:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3323-1', 'hist-ticket-133-3323', 'prod-latte', 1, 15000, 0, '2026-03-12T10:38:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3323-2', 'hist-ticket-133-3323', 'prod-americano', 1, 12000, 0, '2026-03-12T10:38:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3323', 'hist-ticket-133-3323', 'cash', 27000, 'completed', '2026-03-12T10:38:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3324', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-12T17:54:27.000Z', '2026-03-12T17:54:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3324-1', 'hist-ticket-133-3324', 'prod-mocha', 1, 16500, 0, '2026-03-12T17:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3324-2', 'hist-ticket-133-3324', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T17:54:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3324', 'hist-ticket-133-3324', 'cash', 31000, 'completed', '2026-03-12T17:54:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3325', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-12T19:00:50.000Z', '2026-03-12T19:00:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3325-1', 'hist-ticket-133-3325', 'prod-latte', 1, 15000, 0, '2026-03-12T19:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3325-2', 'hist-ticket-133-3325', 'prod-americano', 1, 12000, 0, '2026-03-12T19:00:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3325-3', 'hist-ticket-133-3325', 'prod-latte', 1, 15000, 0, '2026-03-12T19:00:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3325', 'hist-ticket-133-3325', 'cash', 42000, 'completed', '2026-03-12T19:00:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3326', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-03-12T14:42:07.000Z', '2026-03-12T14:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3326-1', 'hist-ticket-133-3326', 'prod-americano', 1, 12000, 0, '2026-03-12T14:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3326', 'hist-ticket-133-3326', 'cash', 12000, 'completed', '2026-03-12T14:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3327', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-12T10:55:30.000Z', '2026-03-12T10:55:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3327-1', 'hist-ticket-133-3327', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T10:55:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3327', 'hist-ticket-133-3327', 'cash', 14500, 'completed', '2026-03-12T10:55:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3328', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-12T11:07:06.000Z', '2026-03-12T11:07:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3328-1', 'hist-ticket-133-3328', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T11:07:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3328', 'hist-ticket-133-3328', 'cash', 14500, 'completed', '2026-03-12T11:07:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3329', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-03-12T16:51:34.000Z', '2026-03-12T16:51:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3329-1', 'hist-ticket-133-3329', 'prod-latte', 1, 15000, 0, '2026-03-12T16:51:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3329-2', 'hist-ticket-133-3329', 'prod-americano', 1, 12000, 0, '2026-03-12T16:51:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3329-3', 'hist-ticket-133-3329', 'prod-latte', 1, 15000, 0, '2026-03-12T16:51:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3329', 'hist-ticket-133-3329', 'cash', 42000, 'completed', '2026-03-12T16:51:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3330', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-12T18:40:13.000Z', '2026-03-12T18:40:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3330-1', 'hist-ticket-133-3330', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T18:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3330-2', 'hist-ticket-133-3330', 'prod-mocha', 1, 16500, 0, '2026-03-12T18:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3330-3', 'hist-ticket-133-3330', 'prod-mocha', 1, 16500, 0, '2026-03-12T18:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3330-4', 'hist-ticket-133-3330', 'prod-americano', 1, 12000, 0, '2026-03-12T18:40:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3330', 'hist-ticket-133-3330', 'cash', 59500, 'completed', '2026-03-12T18:40:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3331', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-12T11:34:16.000Z', '2026-03-12T11:34:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3331-1', 'hist-ticket-133-3331', 'prod-americano', 1, 12000, 0, '2026-03-12T11:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3331-2', 'hist-ticket-133-3331', 'prod-mocha', 1, 16500, 0, '2026-03-12T11:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3331-3', 'hist-ticket-133-3331', 'prod-latte', 1, 15000, 0, '2026-03-12T11:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3331-4', 'hist-ticket-133-3331', 'prod-mocha', 1, 16500, 0, '2026-03-12T11:34:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3331', 'hist-ticket-133-3331', 'cash', 60000, 'completed', '2026-03-12T11:34:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3332', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-12T12:06:23.000Z', '2026-03-12T12:06:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3332-1', 'hist-ticket-133-3332', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:06:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3332-2', 'hist-ticket-133-3332', 'prod-americano', 1, 12000, 0, '2026-03-12T12:06:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3332-3', 'hist-ticket-133-3332', 'prod-latte', 1, 15000, 0, '2026-03-12T12:06:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3332-4', 'hist-ticket-133-3332', 'prod-mocha', 1, 16500, 0, '2026-03-12T12:06:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3332', 'hist-ticket-133-3332', 'cash', 60000, 'completed', '2026-03-12T12:06:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3333', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-12T18:03:41.000Z', '2026-03-12T18:03:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3333-1', 'hist-ticket-133-3333', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T18:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3333-2', 'hist-ticket-133-3333', 'prod-mocha', 1, 16500, 0, '2026-03-12T18:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3333-3', 'hist-ticket-133-3333', 'prod-latte', 1, 15000, 0, '2026-03-12T18:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3333-4', 'hist-ticket-133-3333', 'prod-mocha', 1, 16500, 0, '2026-03-12T18:03:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3333', 'hist-ticket-133-3333', 'cash', 62500, 'completed', '2026-03-12T18:03:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3334', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-12T14:03:17.000Z', '2026-03-12T14:03:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3334-1', 'hist-ticket-133-3334', 'prod-mocha', 1, 16500, 0, '2026-03-12T14:03:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3334-2', 'hist-ticket-133-3334', 'prod-latte', 1, 15000, 0, '2026-03-12T14:03:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3334-3', 'hist-ticket-133-3334', 'prod-mocha', 1, 16500, 0, '2026-03-12T14:03:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3334', 'hist-ticket-133-3334', 'cash', 48000, 'completed', '2026-03-12T14:03:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3335', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-12T15:15:34.000Z', '2026-03-12T15:15:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3335-1', 'hist-ticket-133-3335', 'prod-latte', 1, 15000, 0, '2026-03-12T15:15:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3335-2', 'hist-ticket-133-3335', 'prod-mocha', 1, 16500, 0, '2026-03-12T15:15:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3335', 'hist-ticket-133-3335', 'cash', 31500, 'completed', '2026-03-12T15:15:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3336', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-12T09:03:32.000Z', '2026-03-12T09:03:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3336-1', 'hist-ticket-133-3336', 'prod-americano', 1, 12000, 0, '2026-03-12T09:03:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3336', 'hist-ticket-133-3336', 'cash', 12000, 'completed', '2026-03-12T09:03:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-133-3337', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-12T18:27:02.000Z', '2026-03-12T18:27:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3337-1', 'hist-ticket-133-3337', 'prod-americano', 1, 12000, 0, '2026-03-12T18:27:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3337-2', 'hist-ticket-133-3337', 'prod-latte', 1, 15000, 0, '2026-03-12T18:27:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-133-3337-3', 'hist-ticket-133-3337', 'prod-cappuccino', 1, 14500, 0, '2026-03-12T18:27:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-133-3337', 'hist-ticket-133-3337', 'cash', 41500, 'completed', '2026-03-12T18:27:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3338', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-03-13T12:57:50.000Z', '2026-03-13T12:57:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3338-1', 'hist-ticket-134-3338', 'prod-americano', 1, 12000, 0, '2026-03-13T12:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3338-2', 'hist-ticket-134-3338', 'prod-latte', 1, 15000, 0, '2026-03-13T12:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3338-3', 'hist-ticket-134-3338', 'prod-mocha', 1, 16500, 0, '2026-03-13T12:57:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3338-4', 'hist-ticket-134-3338', 'prod-mocha', 1, 16500, 0, '2026-03-13T12:57:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3338', 'hist-ticket-134-3338', 'cash', 60000, 'completed', '2026-03-13T12:57:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3339', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-13T08:56:28.000Z', '2026-03-13T08:56:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3339-1', 'hist-ticket-134-3339', 'prod-mocha', 1, 16500, 0, '2026-03-13T08:56:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3339-2', 'hist-ticket-134-3339', 'prod-americano', 1, 12000, 0, '2026-03-13T08:56:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3339-3', 'hist-ticket-134-3339', 'prod-latte', 1, 15000, 0, '2026-03-13T08:56:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3339-4', 'hist-ticket-134-3339', 'prod-americano', 1, 12000, 0, '2026-03-13T08:56:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3339', 'hist-ticket-134-3339', 'cash', 55500, 'completed', '2026-03-13T08:56:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3340', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-13T11:53:53.000Z', '2026-03-13T11:53:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3340-1', 'hist-ticket-134-3340', 'prod-mocha', 1, 16500, 0, '2026-03-13T11:53:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3340-2', 'hist-ticket-134-3340', 'prod-americano', 1, 12000, 0, '2026-03-13T11:53:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3340-3', 'hist-ticket-134-3340', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T11:53:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3340', 'hist-ticket-134-3340', 'cash', 43000, 'completed', '2026-03-13T11:53:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3341', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-03-13T09:07:50.000Z', '2026-03-13T09:07:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3341-1', 'hist-ticket-134-3341', 'prod-mocha', 1, 16500, 0, '2026-03-13T09:07:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3341-2', 'hist-ticket-134-3341', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T09:07:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3341', 'hist-ticket-134-3341', 'cash', 31000, 'completed', '2026-03-13T09:07:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3342', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-03-13T14:27:45.000Z', '2026-03-13T14:27:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3342-1', 'hist-ticket-134-3342', 'prod-americano', 1, 12000, 0, '2026-03-13T14:27:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3342-2', 'hist-ticket-134-3342', 'prod-latte', 1, 15000, 0, '2026-03-13T14:27:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3342-3', 'hist-ticket-134-3342', 'prod-mocha', 1, 16500, 0, '2026-03-13T14:27:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3342', 'hist-ticket-134-3342', 'cash', 43500, 'completed', '2026-03-13T14:27:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3343', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-13T12:22:00.000Z', '2026-03-13T12:22:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3343-1', 'hist-ticket-134-3343', 'prod-mocha', 1, 16500, 0, '2026-03-13T12:22:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3343-2', 'hist-ticket-134-3343', 'prod-americano', 1, 12000, 0, '2026-03-13T12:22:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3343-3', 'hist-ticket-134-3343', 'prod-latte', 1, 15000, 0, '2026-03-13T12:22:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3343-4', 'hist-ticket-134-3343', 'prod-mocha', 1, 16500, 0, '2026-03-13T12:22:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3343', 'hist-ticket-134-3343', 'cash', 60000, 'completed', '2026-03-13T12:22:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3344', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-13T13:04:09.000Z', '2026-03-13T13:04:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3344-1', 'hist-ticket-134-3344', 'prod-americano', 1, 12000, 0, '2026-03-13T13:04:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3344-2', 'hist-ticket-134-3344', 'prod-mocha', 1, 16500, 0, '2026-03-13T13:04:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3344', 'hist-ticket-134-3344', 'cash', 28500, 'completed', '2026-03-13T13:04:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3345', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-03-13T09:39:46.000Z', '2026-03-13T09:39:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3345-1', 'hist-ticket-134-3345', 'prod-latte', 1, 15000, 0, '2026-03-13T09:39:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3345-2', 'hist-ticket-134-3345', 'prod-latte', 1, 15000, 0, '2026-03-13T09:39:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3345', 'hist-ticket-134-3345', 'cash', 30000, 'completed', '2026-03-13T09:39:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3346', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-03-13T19:20:45.000Z', '2026-03-13T19:20:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3346-1', 'hist-ticket-134-3346', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T19:20:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3346', 'hist-ticket-134-3346', 'cash', 14500, 'completed', '2026-03-13T19:20:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3347', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-13T18:21:18.000Z', '2026-03-13T18:21:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3347-1', 'hist-ticket-134-3347', 'prod-latte', 1, 15000, 0, '2026-03-13T18:21:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3347-2', 'hist-ticket-134-3347', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T18:21:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3347-3', 'hist-ticket-134-3347', 'prod-latte', 1, 15000, 0, '2026-03-13T18:21:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3347-4', 'hist-ticket-134-3347', 'prod-mocha', 1, 16500, 0, '2026-03-13T18:21:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3347', 'hist-ticket-134-3347', 'cash', 61000, 'completed', '2026-03-13T18:21:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3348', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-03-13T18:54:35.000Z', '2026-03-13T18:54:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3348-1', 'hist-ticket-134-3348', 'prod-mocha', 1, 16500, 0, '2026-03-13T18:54:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3348-2', 'hist-ticket-134-3348', 'prod-latte', 1, 15000, 0, '2026-03-13T18:54:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3348-3', 'hist-ticket-134-3348', 'prod-latte', 1, 15000, 0, '2026-03-13T18:54:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3348', 'hist-ticket-134-3348', 'cash', 46500, 'completed', '2026-03-13T18:54:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3349', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-13T17:34:50.000Z', '2026-03-13T17:34:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3349-1', 'hist-ticket-134-3349', 'prod-latte', 1, 15000, 0, '2026-03-13T17:34:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3349', 'hist-ticket-134-3349', 'cash', 15000, 'completed', '2026-03-13T17:34:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3350', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-13T15:03:56.000Z', '2026-03-13T15:03:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3350-1', 'hist-ticket-134-3350', 'prod-mocha', 1, 16500, 0, '2026-03-13T15:03:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3350', 'hist-ticket-134-3350', 'cash', 16500, 'completed', '2026-03-13T15:03:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3351', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-13T19:02:14.000Z', '2026-03-13T19:02:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3351-1', 'hist-ticket-134-3351', 'prod-americano', 1, 12000, 0, '2026-03-13T19:02:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3351', 'hist-ticket-134-3351', 'cash', 12000, 'completed', '2026-03-13T19:02:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3352', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-03-13T08:31:53.000Z', '2026-03-13T08:31:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3352-1', 'hist-ticket-134-3352', 'prod-americano', 1, 12000, 0, '2026-03-13T08:31:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3352', 'hist-ticket-134-3352', 'cash', 12000, 'completed', '2026-03-13T08:31:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3353', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-03-13T08:49:20.000Z', '2026-03-13T08:49:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3353-1', 'hist-ticket-134-3353', 'prod-americano', 1, 12000, 0, '2026-03-13T08:49:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3353-2', 'hist-ticket-134-3353', 'prod-latte', 1, 15000, 0, '2026-03-13T08:49:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3353-3', 'hist-ticket-134-3353', 'prod-mocha', 1, 16500, 0, '2026-03-13T08:49:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3353', 'hist-ticket-134-3353', 'cash', 43500, 'completed', '2026-03-13T08:49:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3354', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-13T12:34:06.000Z', '2026-03-13T12:34:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3354-1', 'hist-ticket-134-3354', 'prod-americano', 1, 12000, 0, '2026-03-13T12:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3354-2', 'hist-ticket-134-3354', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T12:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3354-3', 'hist-ticket-134-3354', 'prod-americano', 1, 12000, 0, '2026-03-13T12:34:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3354', 'hist-ticket-134-3354', 'cash', 38500, 'completed', '2026-03-13T12:34:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3355', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-13T16:12:51.000Z', '2026-03-13T16:12:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3355-1', 'hist-ticket-134-3355', 'prod-latte', 1, 15000, 0, '2026-03-13T16:12:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3355-2', 'hist-ticket-134-3355', 'prod-latte', 1, 15000, 0, '2026-03-13T16:12:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3355-3', 'hist-ticket-134-3355', 'prod-mocha', 1, 16500, 0, '2026-03-13T16:12:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3355', 'hist-ticket-134-3355', 'cash', 46500, 'completed', '2026-03-13T16:12:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3356', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-13T17:36:07.000Z', '2026-03-13T17:36:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3356-1', 'hist-ticket-134-3356', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T17:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3356-2', 'hist-ticket-134-3356', 'prod-americano', 1, 12000, 0, '2026-03-13T17:36:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3356-3', 'hist-ticket-134-3356', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T17:36:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3356', 'hist-ticket-134-3356', 'cash', 41000, 'completed', '2026-03-13T17:36:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3357', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-13T12:05:24.000Z', '2026-03-13T12:05:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3357-1', 'hist-ticket-134-3357', 'prod-mocha', 1, 16500, 0, '2026-03-13T12:05:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3357', 'hist-ticket-134-3357', 'cash', 16500, 'completed', '2026-03-13T12:05:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3358', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-03-13T18:24:54.000Z', '2026-03-13T18:24:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3358-1', 'hist-ticket-134-3358', 'prod-americano', 1, 12000, 0, '2026-03-13T18:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3358-2', 'hist-ticket-134-3358', 'prod-latte', 1, 15000, 0, '2026-03-13T18:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3358-3', 'hist-ticket-134-3358', 'prod-latte', 1, 15000, 0, '2026-03-13T18:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3358-4', 'hist-ticket-134-3358', 'prod-americano', 1, 12000, 0, '2026-03-13T18:24:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3358', 'hist-ticket-134-3358', 'cash', 54000, 'completed', '2026-03-13T18:24:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3359', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-13T18:38:02.000Z', '2026-03-13T18:38:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3359-1', 'hist-ticket-134-3359', 'prod-latte', 1, 15000, 0, '2026-03-13T18:38:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3359', 'hist-ticket-134-3359', 'cash', 15000, 'completed', '2026-03-13T18:38:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3360', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-03-13T10:12:21.000Z', '2026-03-13T10:12:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3360-1', 'hist-ticket-134-3360', 'prod-mocha', 1, 16500, 0, '2026-03-13T10:12:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3360-2', 'hist-ticket-134-3360', 'prod-latte', 1, 15000, 0, '2026-03-13T10:12:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3360-3', 'hist-ticket-134-3360', 'prod-mocha', 1, 16500, 0, '2026-03-13T10:12:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3360', 'hist-ticket-134-3360', 'cash', 48000, 'completed', '2026-03-13T10:12:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3361', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-13T11:31:48.000Z', '2026-03-13T11:31:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3361-1', 'hist-ticket-134-3361', 'prod-americano', 1, 12000, 0, '2026-03-13T11:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3361-2', 'hist-ticket-134-3361', 'prod-latte', 1, 15000, 0, '2026-03-13T11:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3361-3', 'hist-ticket-134-3361', 'prod-americano', 1, 12000, 0, '2026-03-13T11:31:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3361-4', 'hist-ticket-134-3361', 'prod-americano', 1, 12000, 0, '2026-03-13T11:31:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3361', 'hist-ticket-134-3361', 'cash', 51000, 'completed', '2026-03-13T11:31:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-134-3362', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-03-13T17:10:50.000Z', '2026-03-13T17:10:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3362-1', 'hist-ticket-134-3362', 'prod-americano', 1, 12000, 0, '2026-03-13T17:10:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3362-2', 'hist-ticket-134-3362', 'prod-americano', 1, 12000, 0, '2026-03-13T17:10:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-134-3362-3', 'hist-ticket-134-3362', 'prod-cappuccino', 1, 14500, 0, '2026-03-13T17:10:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-134-3362', 'hist-ticket-134-3362', 'cash', 38500, 'completed', '2026-03-13T17:10:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3363', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-14T13:35:26.000Z', '2026-03-14T13:35:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3363-1', 'hist-ticket-135-3363', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T13:35:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3363-2', 'hist-ticket-135-3363', 'prod-latte', 1, 15000, 0, '2026-03-14T13:35:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3363-3', 'hist-ticket-135-3363', 'prod-mocha', 1, 16500, 0, '2026-03-14T13:35:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3363', 'hist-ticket-135-3363', 'cash', 46000, 'completed', '2026-03-14T13:35:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3364', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-14T13:33:29.000Z', '2026-03-14T13:33:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3364-1', 'hist-ticket-135-3364', 'prod-mocha', 1, 16500, 0, '2026-03-14T13:33:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3364-2', 'hist-ticket-135-3364', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T13:33:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3364-3', 'hist-ticket-135-3364', 'prod-mocha', 1, 16500, 0, '2026-03-14T13:33:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3364', 'hist-ticket-135-3364', 'cash', 47500, 'completed', '2026-03-14T13:33:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3365', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-14T10:38:53.000Z', '2026-03-14T10:38:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3365-1', 'hist-ticket-135-3365', 'prod-americano', 1, 12000, 0, '2026-03-14T10:38:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3365', 'hist-ticket-135-3365', 'cash', 12000, 'completed', '2026-03-14T10:38:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3366', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-14T19:53:09.000Z', '2026-03-14T19:53:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3366-1', 'hist-ticket-135-3366', 'prod-latte', 1, 15000, 0, '2026-03-14T19:53:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3366-2', 'hist-ticket-135-3366', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T19:53:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3366', 'hist-ticket-135-3366', 'cash', 29500, 'completed', '2026-03-14T19:53:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3367', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-14T17:00:23.000Z', '2026-03-14T17:00:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3367-1', 'hist-ticket-135-3367', 'prod-latte', 1, 15000, 0, '2026-03-14T17:00:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3367-2', 'hist-ticket-135-3367', 'prod-mocha', 1, 16500, 0, '2026-03-14T17:00:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3367', 'hist-ticket-135-3367', 'cash', 31500, 'completed', '2026-03-14T17:00:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3368', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-14T11:52:08.000Z', '2026-03-14T11:52:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3368-1', 'hist-ticket-135-3368', 'prod-americano', 1, 12000, 0, '2026-03-14T11:52:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3368-2', 'hist-ticket-135-3368', 'prod-mocha', 1, 16500, 0, '2026-03-14T11:52:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3368', 'hist-ticket-135-3368', 'cash', 28500, 'completed', '2026-03-14T11:52:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3369', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-14T12:25:37.000Z', '2026-03-14T12:25:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3369-1', 'hist-ticket-135-3369', 'prod-latte', 1, 15000, 0, '2026-03-14T12:25:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3369', 'hist-ticket-135-3369', 'cash', 15000, 'completed', '2026-03-14T12:25:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3370', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-14T15:53:17.000Z', '2026-03-14T15:53:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3370-1', 'hist-ticket-135-3370', 'prod-americano', 1, 12000, 0, '2026-03-14T15:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3370-2', 'hist-ticket-135-3370', 'prod-americano', 1, 12000, 0, '2026-03-14T15:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3370-3', 'hist-ticket-135-3370', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T15:53:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3370-4', 'hist-ticket-135-3370', 'prod-latte', 1, 15000, 0, '2026-03-14T15:53:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3370', 'hist-ticket-135-3370', 'cash', 53500, 'completed', '2026-03-14T15:53:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3371', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-14T17:39:01.000Z', '2026-03-14T17:39:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3371-1', 'hist-ticket-135-3371', 'prod-americano', 1, 12000, 0, '2026-03-14T17:39:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3371-2', 'hist-ticket-135-3371', 'prod-americano', 1, 12000, 0, '2026-03-14T17:39:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3371-3', 'hist-ticket-135-3371', 'prod-mocha', 1, 16500, 0, '2026-03-14T17:39:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3371-4', 'hist-ticket-135-3371', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T17:39:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3371', 'hist-ticket-135-3371', 'cash', 55000, 'completed', '2026-03-14T17:39:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3372', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-14T19:09:49.000Z', '2026-03-14T19:09:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3372-1', 'hist-ticket-135-3372', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T19:09:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3372-2', 'hist-ticket-135-3372', 'prod-mocha', 1, 16500, 0, '2026-03-14T19:09:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3372', 'hist-ticket-135-3372', 'cash', 31000, 'completed', '2026-03-14T19:09:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3373', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-03-14T12:19:51.000Z', '2026-03-14T12:19:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3373-1', 'hist-ticket-135-3373', 'prod-mocha', 1, 16500, 0, '2026-03-14T12:19:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3373', 'hist-ticket-135-3373', 'cash', 16500, 'completed', '2026-03-14T12:19:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3374', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-03-14T19:45:39.000Z', '2026-03-14T19:45:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3374-1', 'hist-ticket-135-3374', 'prod-latte', 1, 15000, 0, '2026-03-14T19:45:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3374-2', 'hist-ticket-135-3374', 'prod-americano', 1, 12000, 0, '2026-03-14T19:45:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3374', 'hist-ticket-135-3374', 'cash', 27000, 'completed', '2026-03-14T19:45:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3375', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-14T10:25:03.000Z', '2026-03-14T10:25:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3375-1', 'hist-ticket-135-3375', 'prod-americano', 1, 12000, 0, '2026-03-14T10:25:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3375-2', 'hist-ticket-135-3375', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T10:25:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3375-3', 'hist-ticket-135-3375', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T10:25:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3375-4', 'hist-ticket-135-3375', 'prod-latte', 1, 15000, 0, '2026-03-14T10:25:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3375', 'hist-ticket-135-3375', 'cash', 56000, 'completed', '2026-03-14T10:25:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3376', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-03-14T08:57:16.000Z', '2026-03-14T08:57:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3376-1', 'hist-ticket-135-3376', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T08:57:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3376', 'hist-ticket-135-3376', 'cash', 14500, 'completed', '2026-03-14T08:57:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3377', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-14T08:01:25.000Z', '2026-03-14T08:01:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3377-1', 'hist-ticket-135-3377', 'prod-mocha', 1, 16500, 0, '2026-03-14T08:01:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3377-2', 'hist-ticket-135-3377', 'prod-mocha', 1, 16500, 0, '2026-03-14T08:01:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3377-3', 'hist-ticket-135-3377', 'prod-americano', 1, 12000, 0, '2026-03-14T08:01:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3377', 'hist-ticket-135-3377', 'cash', 45000, 'completed', '2026-03-14T08:01:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3378', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-14T10:43:48.000Z', '2026-03-14T10:43:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3378-1', 'hist-ticket-135-3378', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T10:43:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3378-2', 'hist-ticket-135-3378', 'prod-mocha', 1, 16500, 0, '2026-03-14T10:43:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3378', 'hist-ticket-135-3378', 'cash', 31000, 'completed', '2026-03-14T10:43:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3379', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-14T15:56:22.000Z', '2026-03-14T15:56:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3379-1', 'hist-ticket-135-3379', 'prod-americano', 1, 12000, 0, '2026-03-14T15:56:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3379', 'hist-ticket-135-3379', 'cash', 12000, 'completed', '2026-03-14T15:56:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3380', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-03-14T12:20:08.000Z', '2026-03-14T12:20:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3380-1', 'hist-ticket-135-3380', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T12:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3380-2', 'hist-ticket-135-3380', 'prod-latte', 1, 15000, 0, '2026-03-14T12:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3380-3', 'hist-ticket-135-3380', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T12:20:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3380-4', 'hist-ticket-135-3380', 'prod-latte', 1, 15000, 0, '2026-03-14T12:20:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3380', 'hist-ticket-135-3380', 'cash', 59000, 'completed', '2026-03-14T12:20:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3381', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-14T16:18:53.000Z', '2026-03-14T16:18:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3381-1', 'hist-ticket-135-3381', 'prod-americano', 1, 12000, 0, '2026-03-14T16:18:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3381-2', 'hist-ticket-135-3381', 'prod-americano', 1, 12000, 0, '2026-03-14T16:18:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3381-3', 'hist-ticket-135-3381', 'prod-latte', 1, 15000, 0, '2026-03-14T16:18:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3381', 'hist-ticket-135-3381', 'cash', 39000, 'completed', '2026-03-14T16:18:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3382', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-14T18:27:43.000Z', '2026-03-14T18:27:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3382-1', 'hist-ticket-135-3382', 'prod-mocha', 1, 16500, 0, '2026-03-14T18:27:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3382-2', 'hist-ticket-135-3382', 'prod-latte', 1, 15000, 0, '2026-03-14T18:27:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3382-3', 'hist-ticket-135-3382', 'prod-americano', 1, 12000, 0, '2026-03-14T18:27:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3382', 'hist-ticket-135-3382', 'cash', 43500, 'completed', '2026-03-14T18:27:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3383', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-14T19:45:08.000Z', '2026-03-14T19:45:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3383-1', 'hist-ticket-135-3383', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T19:45:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3383', 'hist-ticket-135-3383', 'cash', 14500, 'completed', '2026-03-14T19:45:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3384', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-03-14T13:31:00.000Z', '2026-03-14T13:31:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3384-1', 'hist-ticket-135-3384', 'prod-latte', 1, 15000, 0, '2026-03-14T13:31:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3384-2', 'hist-ticket-135-3384', 'prod-latte', 1, 15000, 0, '2026-03-14T13:31:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3384-3', 'hist-ticket-135-3384', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T13:31:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3384-4', 'hist-ticket-135-3384', 'prod-americano', 1, 12000, 0, '2026-03-14T13:31:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3384', 'hist-ticket-135-3384', 'cash', 56500, 'completed', '2026-03-14T13:31:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3385', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-14T18:23:37.000Z', '2026-03-14T18:23:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3385-1', 'hist-ticket-135-3385', 'prod-latte', 1, 15000, 0, '2026-03-14T18:23:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3385-2', 'hist-ticket-135-3385', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T18:23:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3385', 'hist-ticket-135-3385', 'cash', 29500, 'completed', '2026-03-14T18:23:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3386', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-03-14T18:02:42.000Z', '2026-03-14T18:02:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3386-1', 'hist-ticket-135-3386', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T18:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3386-2', 'hist-ticket-135-3386', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T18:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3386-3', 'hist-ticket-135-3386', 'prod-latte', 1, 15000, 0, '2026-03-14T18:02:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3386', 'hist-ticket-135-3386', 'cash', 44000, 'completed', '2026-03-14T18:02:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3387', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-03-14T17:33:09.000Z', '2026-03-14T17:33:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3387-1', 'hist-ticket-135-3387', 'prod-mocha', 1, 16500, 0, '2026-03-14T17:33:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3387', 'hist-ticket-135-3387', 'cash', 16500, 'completed', '2026-03-14T17:33:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3388', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-03-14T08:38:32.000Z', '2026-03-14T08:38:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3388-1', 'hist-ticket-135-3388', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T08:38:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3388', 'hist-ticket-135-3388', 'cash', 14500, 'completed', '2026-03-14T08:38:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3389', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-14T12:18:04.000Z', '2026-03-14T12:18:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3389-1', 'hist-ticket-135-3389', 'prod-americano', 1, 12000, 0, '2026-03-14T12:18:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3389', 'hist-ticket-135-3389', 'cash', 12000, 'completed', '2026-03-14T12:18:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3390', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-14T09:38:28.000Z', '2026-03-14T09:38:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3390-1', 'hist-ticket-135-3390', 'prod-mocha', 1, 16500, 0, '2026-03-14T09:38:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3390', 'hist-ticket-135-3390', 'cash', 16500, 'completed', '2026-03-14T09:38:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3391', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-14T13:50:09.000Z', '2026-03-14T13:50:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3391-1', 'hist-ticket-135-3391', 'prod-mocha', 1, 16500, 0, '2026-03-14T13:50:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3391', 'hist-ticket-135-3391', 'cash', 16500, 'completed', '2026-03-14T13:50:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3392', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-14T12:25:34.000Z', '2026-03-14T12:25:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3392-1', 'hist-ticket-135-3392', 'prod-americano', 1, 12000, 0, '2026-03-14T12:25:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3392-2', 'hist-ticket-135-3392', 'prod-mocha', 1, 16500, 0, '2026-03-14T12:25:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3392', 'hist-ticket-135-3392', 'cash', 28500, 'completed', '2026-03-14T12:25:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3393', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-03-14T17:22:21.000Z', '2026-03-14T17:22:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3393-1', 'hist-ticket-135-3393', 'prod-americano', 1, 12000, 0, '2026-03-14T17:22:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3393-2', 'hist-ticket-135-3393', 'prod-mocha', 1, 16500, 0, '2026-03-14T17:22:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3393-3', 'hist-ticket-135-3393', 'prod-latte', 1, 15000, 0, '2026-03-14T17:22:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3393-4', 'hist-ticket-135-3393', 'prod-mocha', 1, 16500, 0, '2026-03-14T17:22:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3393', 'hist-ticket-135-3393', 'cash', 60000, 'completed', '2026-03-14T17:22:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3394', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-14T11:06:01.000Z', '2026-03-14T11:06:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3394-1', 'hist-ticket-135-3394', 'prod-latte', 1, 15000, 0, '2026-03-14T11:06:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3394-2', 'hist-ticket-135-3394', 'prod-latte', 1, 15000, 0, '2026-03-14T11:06:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3394', 'hist-ticket-135-3394', 'cash', 30000, 'completed', '2026-03-14T11:06:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3395', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-14T15:54:29.000Z', '2026-03-14T15:54:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3395-1', 'hist-ticket-135-3395', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T15:54:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3395-2', 'hist-ticket-135-3395', 'prod-mocha', 1, 16500, 0, '2026-03-14T15:54:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3395', 'hist-ticket-135-3395', 'cash', 31000, 'completed', '2026-03-14T15:54:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3396', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-14T10:25:21.000Z', '2026-03-14T10:25:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3396-1', 'hist-ticket-135-3396', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T10:25:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3396-2', 'hist-ticket-135-3396', 'prod-cappuccino', 1, 14500, 0, '2026-03-14T10:25:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3396-3', 'hist-ticket-135-3396', 'prod-latte', 1, 15000, 0, '2026-03-14T10:25:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3396-4', 'hist-ticket-135-3396', 'prod-americano', 1, 12000, 0, '2026-03-14T10:25:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3396', 'hist-ticket-135-3396', 'cash', 56000, 'completed', '2026-03-14T10:25:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3397', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-03-14T10:49:52.000Z', '2026-03-14T10:49:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3397-1', 'hist-ticket-135-3397', 'prod-mocha', 1, 16500, 0, '2026-03-14T10:49:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3397-2', 'hist-ticket-135-3397', 'prod-americano', 1, 12000, 0, '2026-03-14T10:49:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3397', 'hist-ticket-135-3397', 'cash', 28500, 'completed', '2026-03-14T10:49:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-135-3398', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-14T12:30:51.000Z', '2026-03-14T12:30:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3398-1', 'hist-ticket-135-3398', 'prod-americano', 1, 12000, 0, '2026-03-14T12:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3398-2', 'hist-ticket-135-3398', 'prod-latte', 1, 15000, 0, '2026-03-14T12:30:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-135-3398-3', 'hist-ticket-135-3398', 'prod-mocha', 1, 16500, 0, '2026-03-14T12:30:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-135-3398', 'hist-ticket-135-3398', 'cash', 43500, 'completed', '2026-03-14T12:30:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3399', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-15T10:03:53.000Z', '2026-03-15T10:03:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3399-1', 'hist-ticket-136-3399', 'prod-latte', 1, 15000, 0, '2026-03-15T10:03:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3399-2', 'hist-ticket-136-3399', 'prod-mocha', 1, 16500, 0, '2026-03-15T10:03:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3399-3', 'hist-ticket-136-3399', 'prod-latte', 1, 15000, 0, '2026-03-15T10:03:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3399', 'hist-ticket-136-3399', 'cash', 46500, 'completed', '2026-03-15T10:03:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3400', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-03-15T11:50:04.000Z', '2026-03-15T11:50:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3400-1', 'hist-ticket-136-3400', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T11:50:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3400-2', 'hist-ticket-136-3400', 'prod-americano', 1, 12000, 0, '2026-03-15T11:50:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3400', 'hist-ticket-136-3400', 'cash', 26500, 'completed', '2026-03-15T11:50:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3401', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-03-15T13:26:24.000Z', '2026-03-15T13:26:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3401-1', 'hist-ticket-136-3401', 'prod-americano', 1, 12000, 0, '2026-03-15T13:26:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3401-2', 'hist-ticket-136-3401', 'prod-latte', 1, 15000, 0, '2026-03-15T13:26:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3401-3', 'hist-ticket-136-3401', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T13:26:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3401', 'hist-ticket-136-3401', 'cash', 41500, 'completed', '2026-03-15T13:26:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3402', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-15T09:04:39.000Z', '2026-03-15T09:04:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3402-1', 'hist-ticket-136-3402', 'prod-latte', 1, 15000, 0, '2026-03-15T09:04:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3402-2', 'hist-ticket-136-3402', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T09:04:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3402', 'hist-ticket-136-3402', 'cash', 29500, 'completed', '2026-03-15T09:04:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3403', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-03-15T16:17:13.000Z', '2026-03-15T16:17:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3403-1', 'hist-ticket-136-3403', 'prod-americano', 1, 12000, 0, '2026-03-15T16:17:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3403-2', 'hist-ticket-136-3403', 'prod-latte', 1, 15000, 0, '2026-03-15T16:17:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3403', 'hist-ticket-136-3403', 'cash', 27000, 'completed', '2026-03-15T16:17:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3404', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-03-15T09:53:27.000Z', '2026-03-15T09:53:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3404-1', 'hist-ticket-136-3404', 'prod-americano', 1, 12000, 0, '2026-03-15T09:53:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3404-2', 'hist-ticket-136-3404', 'prod-americano', 1, 12000, 0, '2026-03-15T09:53:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3404-3', 'hist-ticket-136-3404', 'prod-mocha', 1, 16500, 0, '2026-03-15T09:53:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3404', 'hist-ticket-136-3404', 'cash', 40500, 'completed', '2026-03-15T09:53:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3405', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-03-15T17:52:22.000Z', '2026-03-15T17:52:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3405-1', 'hist-ticket-136-3405', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T17:52:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3405-2', 'hist-ticket-136-3405', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:52:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3405-3', 'hist-ticket-136-3405', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T17:52:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3405', 'hist-ticket-136-3405', 'cash', 45500, 'completed', '2026-03-15T17:52:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3406', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-15T19:41:03.000Z', '2026-03-15T19:41:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3406-1', 'hist-ticket-136-3406', 'prod-latte', 1, 15000, 0, '2026-03-15T19:41:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3406-2', 'hist-ticket-136-3406', 'prod-latte', 1, 15000, 0, '2026-03-15T19:41:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3406-3', 'hist-ticket-136-3406', 'prod-americano', 1, 12000, 0, '2026-03-15T19:41:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3406', 'hist-ticket-136-3406', 'cash', 42000, 'completed', '2026-03-15T19:41:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3407', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-15T15:44:59.000Z', '2026-03-15T15:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3407-1', 'hist-ticket-136-3407', 'prod-mocha', 1, 16500, 0, '2026-03-15T15:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3407-2', 'hist-ticket-136-3407', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T15:44:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3407', 'hist-ticket-136-3407', 'cash', 31000, 'completed', '2026-03-15T15:44:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3408', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-15T19:20:19.000Z', '2026-03-15T19:20:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3408-1', 'hist-ticket-136-3408', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T19:20:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3408', 'hist-ticket-136-3408', 'cash', 14500, 'completed', '2026-03-15T19:20:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3409', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-03-15T10:57:32.000Z', '2026-03-15T10:57:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3409-1', 'hist-ticket-136-3409', 'prod-latte', 1, 15000, 0, '2026-03-15T10:57:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3409-2', 'hist-ticket-136-3409', 'prod-latte', 1, 15000, 0, '2026-03-15T10:57:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3409-3', 'hist-ticket-136-3409', 'prod-mocha', 1, 16500, 0, '2026-03-15T10:57:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3409-4', 'hist-ticket-136-3409', 'prod-latte', 1, 15000, 0, '2026-03-15T10:57:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3409', 'hist-ticket-136-3409', 'cash', 61500, 'completed', '2026-03-15T10:57:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3410', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-03-15T17:04:05.000Z', '2026-03-15T17:04:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3410-1', 'hist-ticket-136-3410', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T17:04:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3410-2', 'hist-ticket-136-3410', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:04:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3410-3', 'hist-ticket-136-3410', 'prod-latte', 1, 15000, 0, '2026-03-15T17:04:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3410', 'hist-ticket-136-3410', 'cash', 46000, 'completed', '2026-03-15T17:04:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3411', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-15T17:56:43.000Z', '2026-03-15T17:56:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3411-1', 'hist-ticket-136-3411', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:56:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3411-2', 'hist-ticket-136-3411', 'prod-americano', 1, 12000, 0, '2026-03-15T17:56:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3411-3', 'hist-ticket-136-3411', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:56:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3411', 'hist-ticket-136-3411', 'cash', 45000, 'completed', '2026-03-15T17:56:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3412', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-15T18:06:16.000Z', '2026-03-15T18:06:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3412-1', 'hist-ticket-136-3412', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T18:06:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3412-2', 'hist-ticket-136-3412', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T18:06:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3412', 'hist-ticket-136-3412', 'cash', 29000, 'completed', '2026-03-15T18:06:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3413', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-03-15T10:42:50.000Z', '2026-03-15T10:42:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3413-1', 'hist-ticket-136-3413', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T10:42:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3413', 'hist-ticket-136-3413', 'cash', 14500, 'completed', '2026-03-15T10:42:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3414', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-03-15T19:55:38.000Z', '2026-03-15T19:55:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3414-1', 'hist-ticket-136-3414', 'prod-mocha', 1, 16500, 0, '2026-03-15T19:55:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3414-2', 'hist-ticket-136-3414', 'prod-mocha', 1, 16500, 0, '2026-03-15T19:55:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3414', 'hist-ticket-136-3414', 'cash', 33000, 'completed', '2026-03-15T19:55:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3415', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-03-15T17:16:47.000Z', '2026-03-15T17:16:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3415-1', 'hist-ticket-136-3415', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:16:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3415-2', 'hist-ticket-136-3415', 'prod-americano', 1, 12000, 0, '2026-03-15T17:16:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3415-3', 'hist-ticket-136-3415', 'prod-mocha', 1, 16500, 0, '2026-03-15T17:16:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3415', 'hist-ticket-136-3415', 'cash', 45000, 'completed', '2026-03-15T17:16:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3416', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-03-15T16:23:42.000Z', '2026-03-15T16:23:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3416-1', 'hist-ticket-136-3416', 'prod-mocha', 1, 16500, 0, '2026-03-15T16:23:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3416-2', 'hist-ticket-136-3416', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T16:23:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3416-3', 'hist-ticket-136-3416', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T16:23:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3416', 'hist-ticket-136-3416', 'cash', 45500, 'completed', '2026-03-15T16:23:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3417', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-03-15T17:39:28.000Z', '2026-03-15T17:39:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3417-1', 'hist-ticket-136-3417', 'prod-americano', 1, 12000, 0, '2026-03-15T17:39:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3417', 'hist-ticket-136-3417', 'cash', 12000, 'completed', '2026-03-15T17:39:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3418', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-03-15T13:35:17.000Z', '2026-03-15T13:35:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3418-1', 'hist-ticket-136-3418', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T13:35:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3418-2', 'hist-ticket-136-3418', 'prod-americano', 1, 12000, 0, '2026-03-15T13:35:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3418', 'hist-ticket-136-3418', 'cash', 26500, 'completed', '2026-03-15T13:35:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3419', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-03-15T15:51:45.000Z', '2026-03-15T15:51:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3419-1', 'hist-ticket-136-3419', 'prod-americano', 1, 12000, 0, '2026-03-15T15:51:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3419-2', 'hist-ticket-136-3419', 'prod-latte', 1, 15000, 0, '2026-03-15T15:51:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-136-3419-3', 'hist-ticket-136-3419', 'prod-cappuccino', 1, 14500, 0, '2026-03-15T15:51:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-136-3419', 'hist-ticket-136-3419', 'cash', 41500, 'completed', '2026-03-15T15:51:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-136-3420', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-03-15T09:20:46.000Z', '2026-03-15T09:20:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;