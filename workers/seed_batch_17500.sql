INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3862', 'hist-ticket-152-3862', 'cash', 28500, 'completed', '2026-03-31T11:31:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3863', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-03-31T17:25:11.000Z', '2026-03-31T17:25:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3863-1', 'hist-ticket-152-3863', 'prod-mocha', 1, 16500, 0, '2026-03-31T17:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3863-2', 'hist-ticket-152-3863', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T17:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3863-3', 'hist-ticket-152-3863', 'prod-americano', 1, 12000, 0, '2026-03-31T17:25:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3863', 'hist-ticket-152-3863', 'cash', 43000, 'completed', '2026-03-31T17:25:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3864', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-03-31T14:51:33.000Z', '2026-03-31T14:51:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3864-1', 'hist-ticket-152-3864', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T14:51:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3864-2', 'hist-ticket-152-3864', 'prod-americano', 1, 12000, 0, '2026-03-31T14:51:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3864', 'hist-ticket-152-3864', 'cash', 26500, 'completed', '2026-03-31T14:51:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3865', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-03-31T16:52:57.000Z', '2026-03-31T16:52:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3865-1', 'hist-ticket-152-3865', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T16:52:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3865-2', 'hist-ticket-152-3865', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T16:52:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3865', 'hist-ticket-152-3865', 'cash', 29000, 'completed', '2026-03-31T16:52:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3866', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-03-31T08:49:33.000Z', '2026-03-31T08:49:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3866-1', 'hist-ticket-152-3866', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T08:49:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3866-2', 'hist-ticket-152-3866', 'prod-americano', 1, 12000, 0, '2026-03-31T08:49:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3866-3', 'hist-ticket-152-3866', 'prod-mocha', 1, 16500, 0, '2026-03-31T08:49:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3866', 'hist-ticket-152-3866', 'cash', 43000, 'completed', '2026-03-31T08:49:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3867', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-03-31T09:22:26.000Z', '2026-03-31T09:22:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3867-1', 'hist-ticket-152-3867', 'prod-americano', 1, 12000, 0, '2026-03-31T09:22:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3867', 'hist-ticket-152-3867', 'cash', 12000, 'completed', '2026-03-31T09:22:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3868', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-03-31T14:09:34.000Z', '2026-03-31T14:09:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3868-1', 'hist-ticket-152-3868', 'prod-latte', 1, 15000, 0, '2026-03-31T14:09:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3868', 'hist-ticket-152-3868', 'cash', 15000, 'completed', '2026-03-31T14:09:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3869', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-03-31T13:55:29.000Z', '2026-03-31T13:55:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3869-1', 'hist-ticket-152-3869', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T13:55:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3869-2', 'hist-ticket-152-3869', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T13:55:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3869-3', 'hist-ticket-152-3869', 'prod-cappuccino', 1, 14500, 0, '2026-03-31T13:55:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3869', 'hist-ticket-152-3869', 'cash', 43500, 'completed', '2026-03-31T13:55:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-152-3870', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-03-31T12:09:29.000Z', '2026-03-31T12:09:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3870-1', 'hist-ticket-152-3870', 'prod-americano', 1, 12000, 0, '2026-03-31T12:09:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-152-3870-2', 'hist-ticket-152-3870', 'prod-mocha', 1, 16500, 0, '2026-03-31T12:09:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-152-3870', 'hist-ticket-152-3870', 'cash', 28500, 'completed', '2026-03-31T12:09:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3871', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-01T19:34:14.000Z', '2026-04-01T19:34:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3871-1', 'hist-ticket-153-3871', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T19:34:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3871', 'hist-ticket-153-3871', 'cash', 14500, 'completed', '2026-04-01T19:34:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3872', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-01T18:39:29.000Z', '2026-04-01T18:39:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3872-1', 'hist-ticket-153-3872', 'prod-mocha', 1, 16500, 0, '2026-04-01T18:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3872-2', 'hist-ticket-153-3872', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T18:39:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3872-3', 'hist-ticket-153-3872', 'prod-americano', 1, 12000, 0, '2026-04-01T18:39:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3872', 'hist-ticket-153-3872', 'cash', 43000, 'completed', '2026-04-01T18:39:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3873', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-01T16:12:16.000Z', '2026-04-01T16:12:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3873-1', 'hist-ticket-153-3873', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:12:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3873', 'hist-ticket-153-3873', 'cash', 16500, 'completed', '2026-04-01T16:12:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3874', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-04-01T08:54:49.000Z', '2026-04-01T08:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3874-1', 'hist-ticket-153-3874', 'prod-mocha', 1, 16500, 0, '2026-04-01T08:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3874-2', 'hist-ticket-153-3874', 'prod-americano', 1, 12000, 0, '2026-04-01T08:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3874', 'hist-ticket-153-3874', 'cash', 28500, 'completed', '2026-04-01T08:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3875', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-01T11:47:02.000Z', '2026-04-01T11:47:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3875-1', 'hist-ticket-153-3875', 'prod-americano', 1, 12000, 0, '2026-04-01T11:47:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3875-2', 'hist-ticket-153-3875', 'prod-latte', 1, 15000, 0, '2026-04-01T11:47:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3875-3', 'hist-ticket-153-3875', 'prod-mocha', 1, 16500, 0, '2026-04-01T11:47:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3875-4', 'hist-ticket-153-3875', 'prod-americano', 1, 12000, 0, '2026-04-01T11:47:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3875', 'hist-ticket-153-3875', 'cash', 55500, 'completed', '2026-04-01T11:47:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3876', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-04-01T19:55:51.000Z', '2026-04-01T19:55:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3876-1', 'hist-ticket-153-3876', 'prod-latte', 1, 15000, 0, '2026-04-01T19:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3876-2', 'hist-ticket-153-3876', 'prod-mocha', 1, 16500, 0, '2026-04-01T19:55:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3876-3', 'hist-ticket-153-3876', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T19:55:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3876', 'hist-ticket-153-3876', 'cash', 46000, 'completed', '2026-04-01T19:55:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3877', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-01T10:48:07.000Z', '2026-04-01T10:48:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3877-1', 'hist-ticket-153-3877', 'prod-latte', 1, 15000, 0, '2026-04-01T10:48:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3877', 'hist-ticket-153-3877', 'cash', 15000, 'completed', '2026-04-01T10:48:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3878', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-01T15:12:03.000Z', '2026-04-01T15:12:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3878-1', 'hist-ticket-153-3878', 'prod-mocha', 1, 16500, 0, '2026-04-01T15:12:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3878-2', 'hist-ticket-153-3878', 'prod-mocha', 1, 16500, 0, '2026-04-01T15:12:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3878', 'hist-ticket-153-3878', 'cash', 33000, 'completed', '2026-04-01T15:12:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3879', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-01T09:20:33.000Z', '2026-04-01T09:20:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3879-1', 'hist-ticket-153-3879', 'prod-latte', 1, 15000, 0, '2026-04-01T09:20:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3879-2', 'hist-ticket-153-3879', 'prod-americano', 1, 12000, 0, '2026-04-01T09:20:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3879-3', 'hist-ticket-153-3879', 'prod-mocha', 1, 16500, 0, '2026-04-01T09:20:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3879-4', 'hist-ticket-153-3879', 'prod-latte', 1, 15000, 0, '2026-04-01T09:20:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3879', 'hist-ticket-153-3879', 'cash', 58500, 'completed', '2026-04-01T09:20:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3880', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-04-01T13:18:06.000Z', '2026-04-01T13:18:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3880-1', 'hist-ticket-153-3880', 'prod-latte', 1, 15000, 0, '2026-04-01T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3880-2', 'hist-ticket-153-3880', 'prod-americano', 1, 12000, 0, '2026-04-01T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3880-3', 'hist-ticket-153-3880', 'prod-latte', 1, 15000, 0, '2026-04-01T13:18:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3880-4', 'hist-ticket-153-3880', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:18:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3880', 'hist-ticket-153-3880', 'cash', 56500, 'completed', '2026-04-01T13:18:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3881', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-01T15:56:42.000Z', '2026-04-01T15:56:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3881-1', 'hist-ticket-153-3881', 'prod-americano', 1, 12000, 0, '2026-04-01T15:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3881-2', 'hist-ticket-153-3881', 'prod-americano', 1, 12000, 0, '2026-04-01T15:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3881-3', 'hist-ticket-153-3881', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T15:56:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3881-4', 'hist-ticket-153-3881', 'prod-mocha', 1, 16500, 0, '2026-04-01T15:56:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3881', 'hist-ticket-153-3881', 'cash', 55000, 'completed', '2026-04-01T15:56:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3882', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-01T11:10:17.000Z', '2026-04-01T11:10:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3882-1', 'hist-ticket-153-3882', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T11:10:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3882-2', 'hist-ticket-153-3882', 'prod-mocha', 1, 16500, 0, '2026-04-01T11:10:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3882-3', 'hist-ticket-153-3882', 'prod-mocha', 1, 16500, 0, '2026-04-01T11:10:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3882', 'hist-ticket-153-3882', 'cash', 47500, 'completed', '2026-04-01T11:10:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3883', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-01T14:58:56.000Z', '2026-04-01T14:58:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3883-1', 'hist-ticket-153-3883', 'prod-americano', 1, 12000, 0, '2026-04-01T14:58:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3883', 'hist-ticket-153-3883', 'cash', 12000, 'completed', '2026-04-01T14:58:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3884', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-01T10:42:15.000Z', '2026-04-01T10:42:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3884-1', 'hist-ticket-153-3884', 'prod-americano', 1, 12000, 0, '2026-04-01T10:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3884-2', 'hist-ticket-153-3884', 'prod-latte', 1, 15000, 0, '2026-04-01T10:42:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3884-3', 'hist-ticket-153-3884', 'prod-americano', 1, 12000, 0, '2026-04-01T10:42:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3884', 'hist-ticket-153-3884', 'cash', 39000, 'completed', '2026-04-01T10:42:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3885', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-01T15:17:23.000Z', '2026-04-01T15:17:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3885-1', 'hist-ticket-153-3885', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T15:17:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3885-2', 'hist-ticket-153-3885', 'prod-latte', 1, 15000, 0, '2026-04-01T15:17:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3885', 'hist-ticket-153-3885', 'cash', 29500, 'completed', '2026-04-01T15:17:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3886', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-01T16:46:10.000Z', '2026-04-01T16:46:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3886-1', 'hist-ticket-153-3886', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:46:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3886', 'hist-ticket-153-3886', 'cash', 16500, 'completed', '2026-04-01T16:46:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3887', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-01T19:45:21.000Z', '2026-04-01T19:45:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3887-1', 'hist-ticket-153-3887', 'prod-americano', 1, 12000, 0, '2026-04-01T19:45:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3887-2', 'hist-ticket-153-3887', 'prod-latte', 1, 15000, 0, '2026-04-01T19:45:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3887', 'hist-ticket-153-3887', 'cash', 27000, 'completed', '2026-04-01T19:45:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3888', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-01T19:55:08.000Z', '2026-04-01T19:55:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3888-1', 'hist-ticket-153-3888', 'prod-latte', 1, 15000, 0, '2026-04-01T19:55:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3888-2', 'hist-ticket-153-3888', 'prod-americano', 1, 12000, 0, '2026-04-01T19:55:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3888-3', 'hist-ticket-153-3888', 'prod-mocha', 1, 16500, 0, '2026-04-01T19:55:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3888-4', 'hist-ticket-153-3888', 'prod-latte', 1, 15000, 0, '2026-04-01T19:55:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3888', 'hist-ticket-153-3888', 'cash', 58500, 'completed', '2026-04-01T19:55:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3889', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-01T13:28:54.000Z', '2026-04-01T13:28:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3889-1', 'hist-ticket-153-3889', 'prod-americano', 1, 12000, 0, '2026-04-01T13:28:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3889', 'hist-ticket-153-3889', 'cash', 12000, 'completed', '2026-04-01T13:28:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3890', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-01T12:10:45.000Z', '2026-04-01T12:10:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3890-1', 'hist-ticket-153-3890', 'prod-mocha', 1, 16500, 0, '2026-04-01T12:10:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3890', 'hist-ticket-153-3890', 'cash', 16500, 'completed', '2026-04-01T12:10:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3891', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-01T15:16:36.000Z', '2026-04-01T15:16:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3891-1', 'hist-ticket-153-3891', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T15:16:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3891', 'hist-ticket-153-3891', 'cash', 14500, 'completed', '2026-04-01T15:16:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3892', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-01T16:27:39.000Z', '2026-04-01T16:27:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3892-1', 'hist-ticket-153-3892', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:27:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3892-2', 'hist-ticket-153-3892', 'prod-mocha', 1, 16500, 0, '2026-04-01T16:27:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3892-3', 'hist-ticket-153-3892', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T16:27:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3892', 'hist-ticket-153-3892', 'cash', 47500, 'completed', '2026-04-01T16:27:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-153-3893', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-01T13:21:40.000Z', '2026-04-01T13:21:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3893-1', 'hist-ticket-153-3893', 'prod-cappuccino', 1, 14500, 0, '2026-04-01T13:21:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3893-2', 'hist-ticket-153-3893', 'prod-americano', 1, 12000, 0, '2026-04-01T13:21:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3893-3', 'hist-ticket-153-3893', 'prod-mocha', 1, 16500, 0, '2026-04-01T13:21:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-153-3893-4', 'hist-ticket-153-3893', 'prod-americano', 1, 12000, 0, '2026-04-01T13:21:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-153-3893', 'hist-ticket-153-3893', 'cash', 55000, 'completed', '2026-04-01T13:21:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3894', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-02T15:35:33.000Z', '2026-04-02T15:35:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3894-1', 'hist-ticket-154-3894', 'prod-mocha', 1, 16500, 0, '2026-04-02T15:35:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3894', 'hist-ticket-154-3894', 'cash', 16500, 'completed', '2026-04-02T15:35:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3895', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-02T16:09:51.000Z', '2026-04-02T16:09:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3895-1', 'hist-ticket-154-3895', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:09:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3895-2', 'hist-ticket-154-3895', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:09:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3895-3', 'hist-ticket-154-3895', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:09:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3895-4', 'hist-ticket-154-3895', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:09:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3895', 'hist-ticket-154-3895', 'cash', 60000, 'completed', '2026-04-02T16:09:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3896', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-02T14:03:57.000Z', '2026-04-02T14:03:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3896-1', 'hist-ticket-154-3896', 'prod-latte', 1, 15000, 0, '2026-04-02T14:03:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3896-2', 'hist-ticket-154-3896', 'prod-mocha', 1, 16500, 0, '2026-04-02T14:03:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3896-3', 'hist-ticket-154-3896', 'prod-mocha', 1, 16500, 0, '2026-04-02T14:03:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3896-4', 'hist-ticket-154-3896', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T14:03:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3896', 'hist-ticket-154-3896', 'cash', 62500, 'completed', '2026-04-02T14:03:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3897', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-02T16:21:10.000Z', '2026-04-02T16:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3897-1', 'hist-ticket-154-3897', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3897-2', 'hist-ticket-154-3897', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3897-3', 'hist-ticket-154-3897', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3897-4', 'hist-ticket-154-3897', 'prod-mocha', 1, 16500, 0, '2026-04-02T16:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3897', 'hist-ticket-154-3897', 'cash', 64000, 'completed', '2026-04-02T16:21:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3898', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-02T08:49:31.000Z', '2026-04-02T08:49:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3898-1', 'hist-ticket-154-3898', 'prod-mocha', 1, 16500, 0, '2026-04-02T08:49:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3898-2', 'hist-ticket-154-3898', 'prod-mocha', 1, 16500, 0, '2026-04-02T08:49:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3898', 'hist-ticket-154-3898', 'cash', 33000, 'completed', '2026-04-02T08:49:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3899', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-02T09:11:19.000Z', '2026-04-02T09:11:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3899-1', 'hist-ticket-154-3899', 'prod-mocha', 1, 16500, 0, '2026-04-02T09:11:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3899-2', 'hist-ticket-154-3899', 'prod-mocha', 1, 16500, 0, '2026-04-02T09:11:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3899-3', 'hist-ticket-154-3899', 'prod-latte', 1, 15000, 0, '2026-04-02T09:11:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3899', 'hist-ticket-154-3899', 'cash', 48000, 'completed', '2026-04-02T09:11:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3900', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-02T10:15:59.000Z', '2026-04-02T10:15:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3900-1', 'hist-ticket-154-3900', 'prod-mocha', 1, 16500, 0, '2026-04-02T10:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3900-2', 'hist-ticket-154-3900', 'prod-latte', 1, 15000, 0, '2026-04-02T10:15:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3900', 'hist-ticket-154-3900', 'cash', 31500, 'completed', '2026-04-02T10:15:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3901', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-02T19:29:11.000Z', '2026-04-02T19:29:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3901-1', 'hist-ticket-154-3901', 'prod-americano', 1, 12000, 0, '2026-04-02T19:29:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3901-2', 'hist-ticket-154-3901', 'prod-americano', 1, 12000, 0, '2026-04-02T19:29:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3901-3', 'hist-ticket-154-3901', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T19:29:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3901-4', 'hist-ticket-154-3901', 'prod-americano', 1, 12000, 0, '2026-04-02T19:29:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3901', 'hist-ticket-154-3901', 'cash', 50500, 'completed', '2026-04-02T19:29:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3902', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-02T19:28:22.000Z', '2026-04-02T19:28:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3902-1', 'hist-ticket-154-3902', 'prod-mocha', 1, 16500, 0, '2026-04-02T19:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3902-2', 'hist-ticket-154-3902', 'prod-americano', 1, 12000, 0, '2026-04-02T19:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3902-3', 'hist-ticket-154-3902', 'prod-mocha', 1, 16500, 0, '2026-04-02T19:28:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3902-4', 'hist-ticket-154-3902', 'prod-mocha', 1, 16500, 0, '2026-04-02T19:28:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3902', 'hist-ticket-154-3902', 'cash', 61500, 'completed', '2026-04-02T19:28:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3903', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-02T14:07:33.000Z', '2026-04-02T14:07:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3903-1', 'hist-ticket-154-3903', 'prod-mocha', 1, 16500, 0, '2026-04-02T14:07:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3903-2', 'hist-ticket-154-3903', 'prod-mocha', 1, 16500, 0, '2026-04-02T14:07:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3903', 'hist-ticket-154-3903', 'cash', 33000, 'completed', '2026-04-02T14:07:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3904', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-02T17:40:41.000Z', '2026-04-02T17:40:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3904-1', 'hist-ticket-154-3904', 'prod-mocha', 1, 16500, 0, '2026-04-02T17:40:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3904-2', 'hist-ticket-154-3904', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T17:40:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3904-3', 'hist-ticket-154-3904', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T17:40:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3904', 'hist-ticket-154-3904', 'cash', 45500, 'completed', '2026-04-02T17:40:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3905', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-02T19:06:57.000Z', '2026-04-02T19:06:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3905-1', 'hist-ticket-154-3905', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T19:06:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3905-2', 'hist-ticket-154-3905', 'prod-mocha', 1, 16500, 0, '2026-04-02T19:06:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3905', 'hist-ticket-154-3905', 'cash', 31000, 'completed', '2026-04-02T19:06:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3906', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-02T11:55:27.000Z', '2026-04-02T11:55:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3906-1', 'hist-ticket-154-3906', 'prod-mocha', 1, 16500, 0, '2026-04-02T11:55:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3906-2', 'hist-ticket-154-3906', 'prod-mocha', 1, 16500, 0, '2026-04-02T11:55:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3906-3', 'hist-ticket-154-3906', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T11:55:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3906', 'hist-ticket-154-3906', 'cash', 47500, 'completed', '2026-04-02T11:55:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3907', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-02T16:00:40.000Z', '2026-04-02T16:00:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3907-1', 'hist-ticket-154-3907', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:00:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3907-2', 'hist-ticket-154-3907', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T16:00:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3907', 'hist-ticket-154-3907', 'cash', 29000, 'completed', '2026-04-02T16:00:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3908', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-02T14:49:57.000Z', '2026-04-02T14:49:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3908-1', 'hist-ticket-154-3908', 'prod-americano', 1, 12000, 0, '2026-04-02T14:49:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3908-2', 'hist-ticket-154-3908', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T14:49:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3908', 'hist-ticket-154-3908', 'cash', 26500, 'completed', '2026-04-02T14:49:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3909', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-02T19:58:53.000Z', '2026-04-02T19:58:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3909-1', 'hist-ticket-154-3909', 'prod-americano', 1, 12000, 0, '2026-04-02T19:58:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3909', 'hist-ticket-154-3909', 'cash', 12000, 'completed', '2026-04-02T19:58:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3910', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-04-02T16:56:16.000Z', '2026-04-02T16:56:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3910-1', 'hist-ticket-154-3910', 'prod-latte', 1, 15000, 0, '2026-04-02T16:56:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3910', 'hist-ticket-154-3910', 'cash', 15000, 'completed', '2026-04-02T16:56:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3911', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-02T15:35:38.000Z', '2026-04-02T15:35:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3911-1', 'hist-ticket-154-3911', 'prod-americano', 1, 12000, 0, '2026-04-02T15:35:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3911', 'hist-ticket-154-3911', 'cash', 12000, 'completed', '2026-04-02T15:35:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3912', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-02T14:15:37.000Z', '2026-04-02T14:15:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3912-1', 'hist-ticket-154-3912', 'prod-latte', 1, 15000, 0, '2026-04-02T14:15:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3912-2', 'hist-ticket-154-3912', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T14:15:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3912-3', 'hist-ticket-154-3912', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T14:15:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3912', 'hist-ticket-154-3912', 'cash', 44000, 'completed', '2026-04-02T14:15:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3913', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-02T10:00:28.000Z', '2026-04-02T10:00:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3913-1', 'hist-ticket-154-3913', 'prod-mocha', 1, 16500, 0, '2026-04-02T10:00:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3913-2', 'hist-ticket-154-3913', 'prod-americano', 1, 12000, 0, '2026-04-02T10:00:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3913-3', 'hist-ticket-154-3913', 'prod-americano', 1, 12000, 0, '2026-04-02T10:00:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3913-4', 'hist-ticket-154-3913', 'prod-mocha', 1, 16500, 0, '2026-04-02T10:00:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3913', 'hist-ticket-154-3913', 'cash', 57000, 'completed', '2026-04-02T10:00:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3914', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-02T17:59:31.000Z', '2026-04-02T17:59:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3914-1', 'hist-ticket-154-3914', 'prod-americano', 1, 12000, 0, '2026-04-02T17:59:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3914-2', 'hist-ticket-154-3914', 'prod-mocha', 1, 16500, 0, '2026-04-02T17:59:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3914', 'hist-ticket-154-3914', 'cash', 28500, 'completed', '2026-04-02T17:59:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3915', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-02T08:19:31.000Z', '2026-04-02T08:19:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3915-1', 'hist-ticket-154-3915', 'prod-latte', 1, 15000, 0, '2026-04-02T08:19:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3915', 'hist-ticket-154-3915', 'cash', 15000, 'completed', '2026-04-02T08:19:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3916', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-02T19:01:43.000Z', '2026-04-02T19:01:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3916-1', 'hist-ticket-154-3916', 'prod-latte', 1, 15000, 0, '2026-04-02T19:01:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3916', 'hist-ticket-154-3916', 'cash', 15000, 'completed', '2026-04-02T19:01:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3917', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-02T11:43:07.000Z', '2026-04-02T11:43:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3917-1', 'hist-ticket-154-3917', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T11:43:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3917-2', 'hist-ticket-154-3917', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T11:43:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3917-3', 'hist-ticket-154-3917', 'prod-latte', 1, 15000, 0, '2026-04-02T11:43:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3917-4', 'hist-ticket-154-3917', 'prod-americano', 1, 12000, 0, '2026-04-02T11:43:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3917', 'hist-ticket-154-3917', 'cash', 56000, 'completed', '2026-04-02T11:43:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3918', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-02T09:11:31.000Z', '2026-04-02T09:11:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3918-1', 'hist-ticket-154-3918', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T09:11:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3918-2', 'hist-ticket-154-3918', 'prod-latte', 1, 15000, 0, '2026-04-02T09:11:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3918', 'hist-ticket-154-3918', 'cash', 29500, 'completed', '2026-04-02T09:11:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3919', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-02T12:07:54.000Z', '2026-04-02T12:07:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3919-1', 'hist-ticket-154-3919', 'prod-latte', 1, 15000, 0, '2026-04-02T12:07:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3919-2', 'hist-ticket-154-3919', 'prod-americano', 1, 12000, 0, '2026-04-02T12:07:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3919-3', 'hist-ticket-154-3919', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T12:07:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3919', 'hist-ticket-154-3919', 'cash', 41500, 'completed', '2026-04-02T12:07:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3920', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-02T11:01:05.000Z', '2026-04-02T11:01:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3920-1', 'hist-ticket-154-3920', 'prod-latte', 1, 15000, 0, '2026-04-02T11:01:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3920', 'hist-ticket-154-3920', 'cash', 15000, 'completed', '2026-04-02T11:01:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3921', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-04-02T18:25:11.000Z', '2026-04-02T18:25:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3921-1', 'hist-ticket-154-3921', 'prod-americano', 1, 12000, 0, '2026-04-02T18:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3921-2', 'hist-ticket-154-3921', 'prod-americano', 1, 12000, 0, '2026-04-02T18:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3921-3', 'hist-ticket-154-3921', 'prod-cappuccino', 1, 14500, 0, '2026-04-02T18:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3921-4', 'hist-ticket-154-3921', 'prod-latte', 1, 15000, 0, '2026-04-02T18:25:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3921', 'hist-ticket-154-3921', 'cash', 53500, 'completed', '2026-04-02T18:25:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-154-3922', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-02T13:14:32.000Z', '2026-04-02T13:14:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3922-1', 'hist-ticket-154-3922', 'prod-latte', 1, 15000, 0, '2026-04-02T13:14:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3922-2', 'hist-ticket-154-3922', 'prod-latte', 1, 15000, 0, '2026-04-02T13:14:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-154-3922-3', 'hist-ticket-154-3922', 'prod-americano', 1, 12000, 0, '2026-04-02T13:14:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-154-3922', 'hist-ticket-154-3922', 'cash', 42000, 'completed', '2026-04-02T13:14:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3923', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-03T14:30:20.000Z', '2026-04-03T14:30:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3923-1', 'hist-ticket-155-3923', 'prod-latte', 1, 15000, 0, '2026-04-03T14:30:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3923', 'hist-ticket-155-3923', 'cash', 15000, 'completed', '2026-04-03T14:30:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3924', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-04-03T15:46:51.000Z', '2026-04-03T15:46:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3924-1', 'hist-ticket-155-3924', 'prod-latte', 1, 15000, 0, '2026-04-03T15:46:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3924', 'hist-ticket-155-3924', 'cash', 15000, 'completed', '2026-04-03T15:46:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3925', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-04-03T17:00:31.000Z', '2026-04-03T17:00:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3925-1', 'hist-ticket-155-3925', 'prod-latte', 1, 15000, 0, '2026-04-03T17:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3925-2', 'hist-ticket-155-3925', 'prod-latte', 1, 15000, 0, '2026-04-03T17:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3925-3', 'hist-ticket-155-3925', 'prod-latte', 1, 15000, 0, '2026-04-03T17:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3925-4', 'hist-ticket-155-3925', 'prod-americano', 1, 12000, 0, '2026-04-03T17:00:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3925', 'hist-ticket-155-3925', 'cash', 57000, 'completed', '2026-04-03T17:00:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3926', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-03T17:45:41.000Z', '2026-04-03T17:45:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3926-1', 'hist-ticket-155-3926', 'prod-latte', 1, 15000, 0, '2026-04-03T17:45:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3926-2', 'hist-ticket-155-3926', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:45:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3926', 'hist-ticket-155-3926', 'cash', 31500, 'completed', '2026-04-03T17:45:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3927', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-03T15:35:41.000Z', '2026-04-03T15:35:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3927-1', 'hist-ticket-155-3927', 'prod-latte', 1, 15000, 0, '2026-04-03T15:35:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3927', 'hist-ticket-155-3927', 'cash', 15000, 'completed', '2026-04-03T15:35:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3928', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-03T16:20:44.000Z', '2026-04-03T16:20:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3928-1', 'hist-ticket-155-3928', 'prod-mocha', 1, 16500, 0, '2026-04-03T16:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3928-2', 'hist-ticket-155-3928', 'prod-mocha', 1, 16500, 0, '2026-04-03T16:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3928-3', 'hist-ticket-155-3928', 'prod-latte', 1, 15000, 0, '2026-04-03T16:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3928-4', 'hist-ticket-155-3928', 'prod-latte', 1, 15000, 0, '2026-04-03T16:20:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3928', 'hist-ticket-155-3928', 'cash', 63000, 'completed', '2026-04-03T16:20:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3929', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-03T09:40:09.000Z', '2026-04-03T09:40:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3929-1', 'hist-ticket-155-3929', 'prod-americano', 1, 12000, 0, '2026-04-03T09:40:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3929-2', 'hist-ticket-155-3929', 'prod-latte', 1, 15000, 0, '2026-04-03T09:40:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3929-3', 'hist-ticket-155-3929', 'prod-mocha', 1, 16500, 0, '2026-04-03T09:40:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3929', 'hist-ticket-155-3929', 'cash', 43500, 'completed', '2026-04-03T09:40:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3930', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-03T18:26:44.000Z', '2026-04-03T18:26:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3930-1', 'hist-ticket-155-3930', 'prod-americano', 1, 12000, 0, '2026-04-03T18:26:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3930-2', 'hist-ticket-155-3930', 'prod-mocha', 1, 16500, 0, '2026-04-03T18:26:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3930-3', 'hist-ticket-155-3930', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:26:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3930', 'hist-ticket-155-3930', 'cash', 43000, 'completed', '2026-04-03T18:26:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3931', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-03T13:58:12.000Z', '2026-04-03T13:58:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3931-1', 'hist-ticket-155-3931', 'prod-latte', 1, 15000, 0, '2026-04-03T13:58:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3931-2', 'hist-ticket-155-3931', 'prod-americano', 1, 12000, 0, '2026-04-03T13:58:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3931-3', 'hist-ticket-155-3931', 'prod-latte', 1, 15000, 0, '2026-04-03T13:58:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3931', 'hist-ticket-155-3931', 'cash', 42000, 'completed', '2026-04-03T13:58:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3932', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-03T12:28:04.000Z', '2026-04-03T12:28:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3932-1', 'hist-ticket-155-3932', 'prod-latte', 1, 15000, 0, '2026-04-03T12:28:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3932', 'hist-ticket-155-3932', 'cash', 15000, 'completed', '2026-04-03T12:28:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3933', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-03T19:08:38.000Z', '2026-04-03T19:08:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3933-1', 'hist-ticket-155-3933', 'prod-mocha', 1, 16500, 0, '2026-04-03T19:08:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3933-2', 'hist-ticket-155-3933', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T19:08:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3933', 'hist-ticket-155-3933', 'cash', 31000, 'completed', '2026-04-03T19:08:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3934', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-03T17:46:41.000Z', '2026-04-03T17:46:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3934-1', 'hist-ticket-155-3934', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3934-2', 'hist-ticket-155-3934', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T17:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3934-3', 'hist-ticket-155-3934', 'prod-latte', 1, 15000, 0, '2026-04-03T17:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3934-4', 'hist-ticket-155-3934', 'prod-americano', 1, 12000, 0, '2026-04-03T17:46:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3934', 'hist-ticket-155-3934', 'cash', 58000, 'completed', '2026-04-03T17:46:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3935', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-03T18:30:25.000Z', '2026-04-03T18:30:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3935-1', 'hist-ticket-155-3935', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:30:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3935-2', 'hist-ticket-155-3935', 'prod-americano', 1, 12000, 0, '2026-04-03T18:30:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3935-3', 'hist-ticket-155-3935', 'prod-mocha', 1, 16500, 0, '2026-04-03T18:30:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3935-4', 'hist-ticket-155-3935', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T18:30:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3935', 'hist-ticket-155-3935', 'cash', 57500, 'completed', '2026-04-03T18:30:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3936', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-03T16:32:45.000Z', '2026-04-03T16:32:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3936-1', 'hist-ticket-155-3936', 'prod-latte', 1, 15000, 0, '2026-04-03T16:32:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3936-2', 'hist-ticket-155-3936', 'prod-mocha', 1, 16500, 0, '2026-04-03T16:32:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3936-3', 'hist-ticket-155-3936', 'prod-latte', 1, 15000, 0, '2026-04-03T16:32:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3936-4', 'hist-ticket-155-3936', 'prod-americano', 1, 12000, 0, '2026-04-03T16:32:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3936', 'hist-ticket-155-3936', 'cash', 58500, 'completed', '2026-04-03T16:32:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3937', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-03T19:45:39.000Z', '2026-04-03T19:45:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3937-1', 'hist-ticket-155-3937', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T19:45:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3937-2', 'hist-ticket-155-3937', 'prod-latte', 1, 15000, 0, '2026-04-03T19:45:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3937-3', 'hist-ticket-155-3937', 'prod-mocha', 1, 16500, 0, '2026-04-03T19:45:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3937-4', 'hist-ticket-155-3937', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T19:45:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3937', 'hist-ticket-155-3937', 'cash', 60500, 'completed', '2026-04-03T19:45:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3938', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-03T13:39:35.000Z', '2026-04-03T13:39:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3938-1', 'hist-ticket-155-3938', 'prod-mocha', 1, 16500, 0, '2026-04-03T13:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3938-2', 'hist-ticket-155-3938', 'prod-mocha', 1, 16500, 0, '2026-04-03T13:39:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3938-3', 'hist-ticket-155-3938', 'prod-latte', 1, 15000, 0, '2026-04-03T13:39:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3938', 'hist-ticket-155-3938', 'cash', 48000, 'completed', '2026-04-03T13:39:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3939', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-04-03T17:40:34.000Z', '2026-04-03T17:40:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3939-1', 'hist-ticket-155-3939', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:40:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3939-2', 'hist-ticket-155-3939', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T17:40:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3939-3', 'hist-ticket-155-3939', 'prod-latte', 1, 15000, 0, '2026-04-03T17:40:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3939-4', 'hist-ticket-155-3939', 'prod-latte', 1, 15000, 0, '2026-04-03T17:40:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3939', 'hist-ticket-155-3939', 'cash', 61000, 'completed', '2026-04-03T17:40:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3940', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-03T18:55:58.000Z', '2026-04-03T18:55:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3940-1', 'hist-ticket-155-3940', 'prod-mocha', 1, 16500, 0, '2026-04-03T18:55:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3940-2', 'hist-ticket-155-3940', 'prod-latte', 1, 15000, 0, '2026-04-03T18:55:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3940', 'hist-ticket-155-3940', 'cash', 31500, 'completed', '2026-04-03T18:55:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3941', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-03T14:01:23.000Z', '2026-04-03T14:01:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3941-1', 'hist-ticket-155-3941', 'prod-mocha', 1, 16500, 0, '2026-04-03T14:01:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3941', 'hist-ticket-155-3941', 'cash', 16500, 'completed', '2026-04-03T14:01:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3942', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-04-03T11:51:59.000Z', '2026-04-03T11:51:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3942-1', 'hist-ticket-155-3942', 'prod-latte', 1, 15000, 0, '2026-04-03T11:51:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3942', 'hist-ticket-155-3942', 'cash', 15000, 'completed', '2026-04-03T11:51:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3943', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-03T19:26:33.000Z', '2026-04-03T19:26:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3943-1', 'hist-ticket-155-3943', 'prod-americano', 1, 12000, 0, '2026-04-03T19:26:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3943-2', 'hist-ticket-155-3943', 'prod-americano', 1, 12000, 0, '2026-04-03T19:26:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3943-3', 'hist-ticket-155-3943', 'prod-latte', 1, 15000, 0, '2026-04-03T19:26:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3943-4', 'hist-ticket-155-3943', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T19:26:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3943', 'hist-ticket-155-3943', 'cash', 53500, 'completed', '2026-04-03T19:26:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3944', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-04-03T15:44:26.000Z', '2026-04-03T15:44:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3944-1', 'hist-ticket-155-3944', 'prod-americano', 1, 12000, 0, '2026-04-03T15:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3944-2', 'hist-ticket-155-3944', 'prod-mocha', 1, 16500, 0, '2026-04-03T15:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3944-3', 'hist-ticket-155-3944', 'prod-latte', 1, 15000, 0, '2026-04-03T15:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3944-4', 'hist-ticket-155-3944', 'prod-latte', 1, 15000, 0, '2026-04-03T15:44:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3944', 'hist-ticket-155-3944', 'cash', 58500, 'completed', '2026-04-03T15:44:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3945', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-03T15:10:36.000Z', '2026-04-03T15:10:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3945-1', 'hist-ticket-155-3945', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T15:10:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3945-2', 'hist-ticket-155-3945', 'prod-mocha', 1, 16500, 0, '2026-04-03T15:10:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3945-3', 'hist-ticket-155-3945', 'prod-latte', 1, 15000, 0, '2026-04-03T15:10:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3945', 'hist-ticket-155-3945', 'cash', 46000, 'completed', '2026-04-03T15:10:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3946', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-03T17:17:30.000Z', '2026-04-03T17:17:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3946-1', 'hist-ticket-155-3946', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:17:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3946-2', 'hist-ticket-155-3946', 'prod-mocha', 1, 16500, 0, '2026-04-03T17:17:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3946-3', 'hist-ticket-155-3946', 'prod-americano', 1, 12000, 0, '2026-04-03T17:17:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3946-4', 'hist-ticket-155-3946', 'prod-latte', 1, 15000, 0, '2026-04-03T17:17:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3946', 'hist-ticket-155-3946', 'cash', 60000, 'completed', '2026-04-03T17:17:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3947', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-03T19:00:22.000Z', '2026-04-03T19:00:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3947-1', 'hist-ticket-155-3947', 'prod-americano', 1, 12000, 0, '2026-04-03T19:00:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3947', 'hist-ticket-155-3947', 'cash', 12000, 'completed', '2026-04-03T19:00:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3948', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-03T13:11:48.000Z', '2026-04-03T13:11:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3948-1', 'hist-ticket-155-3948', 'prod-cappuccino', 1, 14500, 0, '2026-04-03T13:11:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3948-2', 'hist-ticket-155-3948', 'prod-mocha', 1, 16500, 0, '2026-04-03T13:11:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3948', 'hist-ticket-155-3948', 'cash', 31000, 'completed', '2026-04-03T13:11:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-155-3949', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-03T08:54:36.000Z', '2026-04-03T08:54:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-155-3949-1', 'hist-ticket-155-3949', 'prod-latte', 1, 15000, 0, '2026-04-03T08:54:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-155-3949', 'hist-ticket-155-3949', 'cash', 15000, 'completed', '2026-04-03T08:54:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3950', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-04T18:38:50.000Z', '2026-04-04T18:38:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3950-1', 'hist-ticket-156-3950', 'prod-mocha', 1, 16500, 0, '2026-04-04T18:38:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3950', 'hist-ticket-156-3950', 'cash', 16500, 'completed', '2026-04-04T18:38:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3951', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-04T14:20:23.000Z', '2026-04-04T14:20:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3951-1', 'hist-ticket-156-3951', 'prod-mocha', 1, 16500, 0, '2026-04-04T14:20:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3951-2', 'hist-ticket-156-3951', 'prod-americano', 1, 12000, 0, '2026-04-04T14:20:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3951-3', 'hist-ticket-156-3951', 'prod-mocha', 1, 16500, 0, '2026-04-04T14:20:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3951', 'hist-ticket-156-3951', 'cash', 45000, 'completed', '2026-04-04T14:20:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3952', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-04T14:20:57.000Z', '2026-04-04T14:20:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3952-1', 'hist-ticket-156-3952', 'prod-latte', 1, 15000, 0, '2026-04-04T14:20:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3952-2', 'hist-ticket-156-3952', 'prod-latte', 1, 15000, 0, '2026-04-04T14:20:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3952', 'hist-ticket-156-3952', 'cash', 30000, 'completed', '2026-04-04T14:20:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3953', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-04T19:00:44.000Z', '2026-04-04T19:00:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3953-1', 'hist-ticket-156-3953', 'prod-americano', 1, 12000, 0, '2026-04-04T19:00:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3953-2', 'hist-ticket-156-3953', 'prod-americano', 1, 12000, 0, '2026-04-04T19:00:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3953-3', 'hist-ticket-156-3953', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T19:00:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3953', 'hist-ticket-156-3953', 'cash', 38500, 'completed', '2026-04-04T19:00:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3954', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-04T10:29:54.000Z', '2026-04-04T10:29:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3954-1', 'hist-ticket-156-3954', 'prod-americano', 1, 12000, 0, '2026-04-04T10:29:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3954', 'hist-ticket-156-3954', 'cash', 12000, 'completed', '2026-04-04T10:29:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3955', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-04T09:45:43.000Z', '2026-04-04T09:45:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3955-1', 'hist-ticket-156-3955', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T09:45:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3955-2', 'hist-ticket-156-3955', 'prod-mocha', 1, 16500, 0, '2026-04-04T09:45:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3955-3', 'hist-ticket-156-3955', 'prod-americano', 1, 12000, 0, '2026-04-04T09:45:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3955', 'hist-ticket-156-3955', 'cash', 43000, 'completed', '2026-04-04T09:45:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3956', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-04T19:12:14.000Z', '2026-04-04T19:12:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3956-1', 'hist-ticket-156-3956', 'prod-latte', 1, 15000, 0, '2026-04-04T19:12:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3956-2', 'hist-ticket-156-3956', 'prod-americano', 1, 12000, 0, '2026-04-04T19:12:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3956', 'hist-ticket-156-3956', 'cash', 27000, 'completed', '2026-04-04T19:12:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3957', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-04T15:20:12.000Z', '2026-04-04T15:20:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3957-1', 'hist-ticket-156-3957', 'prod-latte', 1, 15000, 0, '2026-04-04T15:20:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3957-2', 'hist-ticket-156-3957', 'prod-americano', 1, 12000, 0, '2026-04-04T15:20:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3957', 'hist-ticket-156-3957', 'cash', 27000, 'completed', '2026-04-04T15:20:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3958', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-04T16:30:49.000Z', '2026-04-04T16:30:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3958-1', 'hist-ticket-156-3958', 'prod-latte', 1, 15000, 0, '2026-04-04T16:30:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3958-2', 'hist-ticket-156-3958', 'prod-mocha', 1, 16500, 0, '2026-04-04T16:30:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3958', 'hist-ticket-156-3958', 'cash', 31500, 'completed', '2026-04-04T16:30:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3959', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-04T14:43:53.000Z', '2026-04-04T14:43:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3959-1', 'hist-ticket-156-3959', 'prod-mocha', 1, 16500, 0, '2026-04-04T14:43:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3959-2', 'hist-ticket-156-3959', 'prod-americano', 1, 12000, 0, '2026-04-04T14:43:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3959-3', 'hist-ticket-156-3959', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T14:43:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3959', 'hist-ticket-156-3959', 'cash', 43000, 'completed', '2026-04-04T14:43:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3960', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-04T14:32:50.000Z', '2026-04-04T14:32:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3960-1', 'hist-ticket-156-3960', 'prod-mocha', 1, 16500, 0, '2026-04-04T14:32:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3960-2', 'hist-ticket-156-3960', 'prod-latte', 1, 15000, 0, '2026-04-04T14:32:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3960', 'hist-ticket-156-3960', 'cash', 31500, 'completed', '2026-04-04T14:32:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3961', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-04T10:27:39.000Z', '2026-04-04T10:27:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3961-1', 'hist-ticket-156-3961', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T10:27:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3961-2', 'hist-ticket-156-3961', 'prod-americano', 1, 12000, 0, '2026-04-04T10:27:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3961', 'hist-ticket-156-3961', 'cash', 26500, 'completed', '2026-04-04T10:27:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3962', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-04T15:10:44.000Z', '2026-04-04T15:10:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3962-1', 'hist-ticket-156-3962', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:10:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3962', 'hist-ticket-156-3962', 'cash', 14500, 'completed', '2026-04-04T15:10:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3963', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-04-04T15:21:10.000Z', '2026-04-04T15:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3963-1', 'hist-ticket-156-3963', 'prod-mocha', 1, 16500, 0, '2026-04-04T15:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3963-2', 'hist-ticket-156-3963', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3963-3', 'hist-ticket-156-3963', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3963-4', 'hist-ticket-156-3963', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T15:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3963', 'hist-ticket-156-3963', 'cash', 60000, 'completed', '2026-04-04T15:21:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3964', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-04-04T12:09:36.000Z', '2026-04-04T12:09:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3964-1', 'hist-ticket-156-3964', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T12:09:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3964-2', 'hist-ticket-156-3964', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T12:09:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3964', 'hist-ticket-156-3964', 'cash', 29000, 'completed', '2026-04-04T12:09:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3965', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-04T08:28:54.000Z', '2026-04-04T08:28:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3965-1', 'hist-ticket-156-3965', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T08:28:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3965', 'hist-ticket-156-3965', 'cash', 14500, 'completed', '2026-04-04T08:28:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3966', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-04T08:12:29.000Z', '2026-04-04T08:12:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3966-1', 'hist-ticket-156-3966', 'prod-americano', 1, 12000, 0, '2026-04-04T08:12:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3966', 'hist-ticket-156-3966', 'cash', 12000, 'completed', '2026-04-04T08:12:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3967', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-04T13:05:58.000Z', '2026-04-04T13:05:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3967-1', 'hist-ticket-156-3967', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T13:05:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3967-2', 'hist-ticket-156-3967', 'prod-mocha', 1, 16500, 0, '2026-04-04T13:05:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3967', 'hist-ticket-156-3967', 'cash', 31000, 'completed', '2026-04-04T13:05:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3968', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-04T10:10:56.000Z', '2026-04-04T10:10:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3968-1', 'hist-ticket-156-3968', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T10:10:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3968-2', 'hist-ticket-156-3968', 'prod-latte', 1, 15000, 0, '2026-04-04T10:10:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3968', 'hist-ticket-156-3968', 'cash', 29500, 'completed', '2026-04-04T10:10:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3969', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-04T08:32:43.000Z', '2026-04-04T08:32:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3969-1', 'hist-ticket-156-3969', 'prod-mocha', 1, 16500, 0, '2026-04-04T08:32:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3969', 'hist-ticket-156-3969', 'cash', 16500, 'completed', '2026-04-04T08:32:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3970', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-04T09:35:45.000Z', '2026-04-04T09:35:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3970-1', 'hist-ticket-156-3970', 'prod-latte', 1, 15000, 0, '2026-04-04T09:35:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3970', 'hist-ticket-156-3970', 'cash', 15000, 'completed', '2026-04-04T09:35:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3971', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-04-04T18:45:57.000Z', '2026-04-04T18:45:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3971-1', 'hist-ticket-156-3971', 'prod-mocha', 1, 16500, 0, '2026-04-04T18:45:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3971', 'hist-ticket-156-3971', 'cash', 16500, 'completed', '2026-04-04T18:45:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3972', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-04T10:48:12.000Z', '2026-04-04T10:48:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3972-1', 'hist-ticket-156-3972', 'prod-latte', 1, 15000, 0, '2026-04-04T10:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3972-2', 'hist-ticket-156-3972', 'prod-americano', 1, 12000, 0, '2026-04-04T10:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3972-3', 'hist-ticket-156-3972', 'prod-mocha', 1, 16500, 0, '2026-04-04T10:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3972-4', 'hist-ticket-156-3972', 'prod-latte', 1, 15000, 0, '2026-04-04T10:48:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3972', 'hist-ticket-156-3972', 'cash', 58500, 'completed', '2026-04-04T10:48:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3973', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-04-04T17:34:43.000Z', '2026-04-04T17:34:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3973-1', 'hist-ticket-156-3973', 'prod-mocha', 1, 16500, 0, '2026-04-04T17:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3973-2', 'hist-ticket-156-3973', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T17:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3973-3', 'hist-ticket-156-3973', 'prod-americano', 1, 12000, 0, '2026-04-04T17:34:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3973', 'hist-ticket-156-3973', 'cash', 43000, 'completed', '2026-04-04T17:34:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3974', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-04T08:27:01.000Z', '2026-04-04T08:27:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3974-1', 'hist-ticket-156-3974', 'prod-mocha', 1, 16500, 0, '2026-04-04T08:27:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3974', 'hist-ticket-156-3974', 'cash', 16500, 'completed', '2026-04-04T08:27:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3975', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2026-04-04T14:53:19.000Z', '2026-04-04T14:53:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3975-1', 'hist-ticket-156-3975', 'prod-latte', 1, 15000, 0, '2026-04-04T14:53:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3975-2', 'hist-ticket-156-3975', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T14:53:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3975-3', 'hist-ticket-156-3975', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T14:53:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-156-3975', 'hist-ticket-156-3975', 'cash', 44000, 'completed', '2026-04-04T14:53:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-156-3976', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-04T09:16:08.000Z', '2026-04-04T09:16:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3976-1', 'hist-ticket-156-3976', 'prod-mocha', 1, 16500, 0, '2026-04-04T09:16:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3976-2', 'hist-ticket-156-3976', 'prod-mocha', 1, 16500, 0, '2026-04-04T09:16:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-156-3976-3', 'hist-ticket-156-3976', 'prod-cappuccino', 1, 14500, 0, '2026-04-04T09:16:08.000Z');