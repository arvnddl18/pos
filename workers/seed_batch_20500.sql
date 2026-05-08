INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4529-3', 'hist-ticket-175-4529', 'prod-mocha', 1, 16500, 0, '2026-04-23T08:46:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4529-4', 'hist-ticket-175-4529', 'prod-latte', 1, 15000, 0, '2026-04-23T08:46:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4529', 'hist-ticket-175-4529', 'cash', 58000, 'completed', '2026-04-23T08:46:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4530', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-23T10:01:45.000Z', '2026-04-23T10:01:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4530-1', 'hist-ticket-175-4530', 'prod-mocha', 1, 16500, 0, '2026-04-23T10:01:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4530-2', 'hist-ticket-175-4530', 'prod-americano', 1, 12000, 0, '2026-04-23T10:01:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4530-3', 'hist-ticket-175-4530', 'prod-latte', 1, 15000, 0, '2026-04-23T10:01:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4530-4', 'hist-ticket-175-4530', 'prod-americano', 1, 12000, 0, '2026-04-23T10:01:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4530', 'hist-ticket-175-4530', 'cash', 55500, 'completed', '2026-04-23T10:01:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4531', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-23T13:42:23.000Z', '2026-04-23T13:42:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4531-1', 'hist-ticket-175-4531', 'prod-latte', 1, 15000, 0, '2026-04-23T13:42:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4531-2', 'hist-ticket-175-4531', 'prod-americano', 1, 12000, 0, '2026-04-23T13:42:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4531-3', 'hist-ticket-175-4531', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:42:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4531-4', 'hist-ticket-175-4531', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:42:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4531', 'hist-ticket-175-4531', 'cash', 58000, 'completed', '2026-04-23T13:42:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4532', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-23T09:43:15.000Z', '2026-04-23T09:43:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4532-1', 'hist-ticket-175-4532', 'prod-latte', 1, 15000, 0, '2026-04-23T09:43:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4532-2', 'hist-ticket-175-4532', 'prod-mocha', 1, 16500, 0, '2026-04-23T09:43:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4532', 'hist-ticket-175-4532', 'cash', 31500, 'completed', '2026-04-23T09:43:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4533', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-23T16:16:53.000Z', '2026-04-23T16:16:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4533-1', 'hist-ticket-175-4533', 'prod-mocha', 1, 16500, 0, '2026-04-23T16:16:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4533', 'hist-ticket-175-4533', 'cash', 16500, 'completed', '2026-04-23T16:16:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4534', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-23T08:48:09.000Z', '2026-04-23T08:48:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4534-1', 'hist-ticket-175-4534', 'prod-latte', 1, 15000, 0, '2026-04-23T08:48:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4534-2', 'hist-ticket-175-4534', 'prod-latte', 1, 15000, 0, '2026-04-23T08:48:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4534', 'hist-ticket-175-4534', 'cash', 30000, 'completed', '2026-04-23T08:48:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4535', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-04-23T15:08:41.000Z', '2026-04-23T15:08:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4535-1', 'hist-ticket-175-4535', 'prod-mocha', 1, 16500, 0, '2026-04-23T15:08:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4535', 'hist-ticket-175-4535', 'cash', 16500, 'completed', '2026-04-23T15:08:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4536', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-23T09:35:07.000Z', '2026-04-23T09:35:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4536-1', 'hist-ticket-175-4536', 'prod-americano', 1, 12000, 0, '2026-04-23T09:35:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4536', 'hist-ticket-175-4536', 'cash', 12000, 'completed', '2026-04-23T09:35:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4537', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-23T11:16:38.000Z', '2026-04-23T11:16:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4537-1', 'hist-ticket-175-4537', 'prod-latte', 1, 15000, 0, '2026-04-23T11:16:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4537-2', 'hist-ticket-175-4537', 'prod-latte', 1, 15000, 0, '2026-04-23T11:16:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4537-3', 'hist-ticket-175-4537', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T11:16:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4537', 'hist-ticket-175-4537', 'cash', 44500, 'completed', '2026-04-23T11:16:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4538', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-23T08:18:46.000Z', '2026-04-23T08:18:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4538-1', 'hist-ticket-175-4538', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T08:18:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4538-2', 'hist-ticket-175-4538', 'prod-latte', 1, 15000, 0, '2026-04-23T08:18:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4538-3', 'hist-ticket-175-4538', 'prod-americano', 1, 12000, 0, '2026-04-23T08:18:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4538-4', 'hist-ticket-175-4538', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T08:18:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4538', 'hist-ticket-175-4538', 'cash', 56000, 'completed', '2026-04-23T08:18:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4539', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-23T14:38:34.000Z', '2026-04-23T14:38:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4539-1', 'hist-ticket-175-4539', 'prod-americano', 1, 12000, 0, '2026-04-23T14:38:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4539-2', 'hist-ticket-175-4539', 'prod-americano', 1, 12000, 0, '2026-04-23T14:38:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4539-3', 'hist-ticket-175-4539', 'prod-americano', 1, 12000, 0, '2026-04-23T14:38:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4539-4', 'hist-ticket-175-4539', 'prod-latte', 1, 15000, 0, '2026-04-23T14:38:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4539', 'hist-ticket-175-4539', 'cash', 51000, 'completed', '2026-04-23T14:38:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4540', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-04-23T19:33:37.000Z', '2026-04-23T19:33:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4540-1', 'hist-ticket-175-4540', 'prod-mocha', 1, 16500, 0, '2026-04-23T19:33:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4540', 'hist-ticket-175-4540', 'cash', 16500, 'completed', '2026-04-23T19:33:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4541', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-23T13:19:03.000Z', '2026-04-23T13:19:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4541-1', 'hist-ticket-175-4541', 'prod-americano', 1, 12000, 0, '2026-04-23T13:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4541-2', 'hist-ticket-175-4541', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4541-3', 'hist-ticket-175-4541', 'prod-mocha', 1, 16500, 0, '2026-04-23T13:19:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4541-4', 'hist-ticket-175-4541', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T13:19:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4541', 'hist-ticket-175-4541', 'cash', 59500, 'completed', '2026-04-23T13:19:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4542', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-23T17:24:26.000Z', '2026-04-23T17:24:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4542-1', 'hist-ticket-175-4542', 'prod-latte', 1, 15000, 0, '2026-04-23T17:24:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4542-2', 'hist-ticket-175-4542', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:24:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4542-3', 'hist-ticket-175-4542', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:24:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4542', 'hist-ticket-175-4542', 'cash', 44000, 'completed', '2026-04-23T17:24:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4543', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-23T19:02:42.000Z', '2026-04-23T19:02:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4543-1', 'hist-ticket-175-4543', 'prod-latte', 1, 15000, 0, '2026-04-23T19:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4543-2', 'hist-ticket-175-4543', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T19:02:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4543-3', 'hist-ticket-175-4543', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T19:02:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4543', 'hist-ticket-175-4543', 'cash', 44000, 'completed', '2026-04-23T19:02:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4544', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-23T12:46:21.000Z', '2026-04-23T12:46:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4544-1', 'hist-ticket-175-4544', 'prod-latte', 1, 15000, 0, '2026-04-23T12:46:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4544-2', 'hist-ticket-175-4544', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T12:46:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4544-3', 'hist-ticket-175-4544', 'prod-americano', 1, 12000, 0, '2026-04-23T12:46:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4544-4', 'hist-ticket-175-4544', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T12:46:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4544', 'hist-ticket-175-4544', 'cash', 56000, 'completed', '2026-04-23T12:46:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4545', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-23T17:23:02.000Z', '2026-04-23T17:23:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4545-1', 'hist-ticket-175-4545', 'prod-latte', 1, 15000, 0, '2026-04-23T17:23:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4545-2', 'hist-ticket-175-4545', 'prod-americano', 1, 12000, 0, '2026-04-23T17:23:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4545-3', 'hist-ticket-175-4545', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:23:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4545-4', 'hist-ticket-175-4545', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:23:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4545', 'hist-ticket-175-4545', 'cash', 56000, 'completed', '2026-04-23T17:23:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4546', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-23T15:46:46.000Z', '2026-04-23T15:46:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4546-1', 'hist-ticket-175-4546', 'prod-mocha', 1, 16500, 0, '2026-04-23T15:46:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4546', 'hist-ticket-175-4546', 'cash', 16500, 'completed', '2026-04-23T15:46:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4547', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-04-23T17:47:49.000Z', '2026-04-23T17:47:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4547-1', 'hist-ticket-175-4547', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T17:47:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4547', 'hist-ticket-175-4547', 'cash', 14500, 'completed', '2026-04-23T17:47:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4548', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-23T08:05:33.000Z', '2026-04-23T08:05:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4548-1', 'hist-ticket-175-4548', 'prod-latte', 1, 15000, 0, '2026-04-23T08:05:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4548-2', 'hist-ticket-175-4548', 'prod-americano', 1, 12000, 0, '2026-04-23T08:05:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4548', 'hist-ticket-175-4548', 'cash', 27000, 'completed', '2026-04-23T08:05:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4549', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-23T10:46:01.000Z', '2026-04-23T10:46:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4549-1', 'hist-ticket-175-4549', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T10:46:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4549-2', 'hist-ticket-175-4549', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T10:46:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4549-3', 'hist-ticket-175-4549', 'prod-americano', 1, 12000, 0, '2026-04-23T10:46:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4549-4', 'hist-ticket-175-4549', 'prod-mocha', 1, 16500, 0, '2026-04-23T10:46:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4549', 'hist-ticket-175-4549', 'cash', 57500, 'completed', '2026-04-23T10:46:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4550', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-23T14:56:10.000Z', '2026-04-23T14:56:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4550-1', 'hist-ticket-175-4550', 'prod-mocha', 1, 16500, 0, '2026-04-23T14:56:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4550-2', 'hist-ticket-175-4550', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T14:56:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4550', 'hist-ticket-175-4550', 'cash', 31000, 'completed', '2026-04-23T14:56:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4551', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-23T14:58:30.000Z', '2026-04-23T14:58:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4551-1', 'hist-ticket-175-4551', 'prod-mocha', 1, 16500, 0, '2026-04-23T14:58:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4551-2', 'hist-ticket-175-4551', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T14:58:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4551', 'hist-ticket-175-4551', 'cash', 31000, 'completed', '2026-04-23T14:58:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-175-4552', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-23T12:25:05.000Z', '2026-04-23T12:25:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4552-1', 'hist-ticket-175-4552', 'prod-latte', 1, 15000, 0, '2026-04-23T12:25:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4552-2', 'hist-ticket-175-4552', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T12:25:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4552-3', 'hist-ticket-175-4552', 'prod-mocha', 1, 16500, 0, '2026-04-23T12:25:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-175-4552-4', 'hist-ticket-175-4552', 'prod-cappuccino', 1, 14500, 0, '2026-04-23T12:25:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-175-4552', 'hist-ticket-175-4552', 'cash', 60500, 'completed', '2026-04-23T12:25:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4553', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-24T18:42:40.000Z', '2026-04-24T18:42:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4553-1', 'hist-ticket-176-4553', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:42:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4553-2', 'hist-ticket-176-4553', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:42:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4553-3', 'hist-ticket-176-4553', 'prod-mocha', 1, 16500, 0, '2026-04-24T18:42:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4553-4', 'hist-ticket-176-4553', 'prod-americano', 1, 12000, 0, '2026-04-24T18:42:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4553', 'hist-ticket-176-4553', 'cash', 57500, 'completed', '2026-04-24T18:42:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4554', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T14:50:05.000Z', '2026-04-24T14:50:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4554-1', 'hist-ticket-176-4554', 'prod-latte', 1, 15000, 0, '2026-04-24T14:50:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4554-2', 'hist-ticket-176-4554', 'prod-latte', 1, 15000, 0, '2026-04-24T14:50:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4554-3', 'hist-ticket-176-4554', 'prod-mocha', 1, 16500, 0, '2026-04-24T14:50:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4554', 'hist-ticket-176-4554', 'cash', 46500, 'completed', '2026-04-24T14:50:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4555', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-24T18:49:35.000Z', '2026-04-24T18:49:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4555-1', 'hist-ticket-176-4555', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:49:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4555-2', 'hist-ticket-176-4555', 'prod-latte', 1, 15000, 0, '2026-04-24T18:49:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4555-3', 'hist-ticket-176-4555', 'prod-mocha', 1, 16500, 0, '2026-04-24T18:49:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4555-4', 'hist-ticket-176-4555', 'prod-mocha', 1, 16500, 0, '2026-04-24T18:49:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4555', 'hist-ticket-176-4555', 'cash', 62500, 'completed', '2026-04-24T18:49:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4556', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-24T09:28:37.000Z', '2026-04-24T09:28:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4556-1', 'hist-ticket-176-4556', 'prod-mocha', 1, 16500, 0, '2026-04-24T09:28:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4556-2', 'hist-ticket-176-4556', 'prod-mocha', 1, 16500, 0, '2026-04-24T09:28:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4556-3', 'hist-ticket-176-4556', 'prod-mocha', 1, 16500, 0, '2026-04-24T09:28:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4556-4', 'hist-ticket-176-4556', 'prod-mocha', 1, 16500, 0, '2026-04-24T09:28:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4556', 'hist-ticket-176-4556', 'cash', 66000, 'completed', '2026-04-24T09:28:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4557', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-24T16:29:40.000Z', '2026-04-24T16:29:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4557-1', 'hist-ticket-176-4557', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:29:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4557-2', 'hist-ticket-176-4557', 'prod-latte', 1, 15000, 0, '2026-04-24T16:29:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4557', 'hist-ticket-176-4557', 'cash', 29500, 'completed', '2026-04-24T16:29:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4558', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-24T11:05:18.000Z', '2026-04-24T11:05:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4558-1', 'hist-ticket-176-4558', 'prod-latte', 1, 15000, 0, '2026-04-24T11:05:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4558-2', 'hist-ticket-176-4558', 'prod-americano', 1, 12000, 0, '2026-04-24T11:05:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4558', 'hist-ticket-176-4558', 'cash', 27000, 'completed', '2026-04-24T11:05:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4559', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-24T08:03:21.000Z', '2026-04-24T08:03:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4559-1', 'hist-ticket-176-4559', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T08:03:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4559-2', 'hist-ticket-176-4559', 'prod-mocha', 1, 16500, 0, '2026-04-24T08:03:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4559-3', 'hist-ticket-176-4559', 'prod-americano', 1, 12000, 0, '2026-04-24T08:03:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4559-4', 'hist-ticket-176-4559', 'prod-mocha', 1, 16500, 0, '2026-04-24T08:03:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4559', 'hist-ticket-176-4559', 'cash', 59500, 'completed', '2026-04-24T08:03:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4560', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-24T16:49:14.000Z', '2026-04-24T16:49:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4560-1', 'hist-ticket-176-4560', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4560-2', 'hist-ticket-176-4560', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4560-3', 'hist-ticket-176-4560', 'prod-americano', 1, 12000, 0, '2026-04-24T16:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4560-4', 'hist-ticket-176-4560', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T16:49:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4560', 'hist-ticket-176-4560', 'cash', 55500, 'completed', '2026-04-24T16:49:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4561', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-24T10:58:34.000Z', '2026-04-24T10:58:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4561-1', 'hist-ticket-176-4561', 'prod-mocha', 1, 16500, 0, '2026-04-24T10:58:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4561-2', 'hist-ticket-176-4561', 'prod-mocha', 1, 16500, 0, '2026-04-24T10:58:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4561', 'hist-ticket-176-4561', 'cash', 33000, 'completed', '2026-04-24T10:58:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4562', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-24T13:25:55.000Z', '2026-04-24T13:25:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4562-1', 'hist-ticket-176-4562', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T13:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4562-2', 'hist-ticket-176-4562', 'prod-mocha', 1, 16500, 0, '2026-04-24T13:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4562-3', 'hist-ticket-176-4562', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T13:25:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4562-4', 'hist-ticket-176-4562', 'prod-mocha', 1, 16500, 0, '2026-04-24T13:25:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4562', 'hist-ticket-176-4562', 'cash', 62000, 'completed', '2026-04-24T13:25:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4563', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-24T14:37:53.000Z', '2026-04-24T14:37:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4563-1', 'hist-ticket-176-4563', 'prod-mocha', 1, 16500, 0, '2026-04-24T14:37:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4563-2', 'hist-ticket-176-4563', 'prod-latte', 1, 15000, 0, '2026-04-24T14:37:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4563', 'hist-ticket-176-4563', 'cash', 31500, 'completed', '2026-04-24T14:37:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4564', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-24T09:43:26.000Z', '2026-04-24T09:43:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4564-1', 'hist-ticket-176-4564', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T09:43:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4564-2', 'hist-ticket-176-4564', 'prod-latte', 1, 15000, 0, '2026-04-24T09:43:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4564-3', 'hist-ticket-176-4564', 'prod-americano', 1, 12000, 0, '2026-04-24T09:43:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4564', 'hist-ticket-176-4564', 'cash', 41500, 'completed', '2026-04-24T09:43:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4565', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-24T14:39:12.000Z', '2026-04-24T14:39:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4565-1', 'hist-ticket-176-4565', 'prod-latte', 1, 15000, 0, '2026-04-24T14:39:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4565-2', 'hist-ticket-176-4565', 'prod-latte', 1, 15000, 0, '2026-04-24T14:39:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4565-3', 'hist-ticket-176-4565', 'prod-americano', 1, 12000, 0, '2026-04-24T14:39:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4565', 'hist-ticket-176-4565', 'cash', 42000, 'completed', '2026-04-24T14:39:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4566', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-04-24T12:52:48.000Z', '2026-04-24T12:52:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4566-1', 'hist-ticket-176-4566', 'prod-latte', 1, 15000, 0, '2026-04-24T12:52:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4566-2', 'hist-ticket-176-4566', 'prod-americano', 1, 12000, 0, '2026-04-24T12:52:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4566-3', 'hist-ticket-176-4566', 'prod-mocha', 1, 16500, 0, '2026-04-24T12:52:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4566-4', 'hist-ticket-176-4566', 'prod-mocha', 1, 16500, 0, '2026-04-24T12:52:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4566', 'hist-ticket-176-4566', 'cash', 60000, 'completed', '2026-04-24T12:52:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4567', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-24T08:42:52.000Z', '2026-04-24T08:42:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4567-1', 'hist-ticket-176-4567', 'prod-americano', 1, 12000, 0, '2026-04-24T08:42:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4567', 'hist-ticket-176-4567', 'cash', 12000, 'completed', '2026-04-24T08:42:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4568', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-24T09:26:42.000Z', '2026-04-24T09:26:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4568-1', 'hist-ticket-176-4568', 'prod-mocha', 1, 16500, 0, '2026-04-24T09:26:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4568-2', 'hist-ticket-176-4568', 'prod-americano', 1, 12000, 0, '2026-04-24T09:26:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4568-3', 'hist-ticket-176-4568', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T09:26:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4568-4', 'hist-ticket-176-4568', 'prod-americano', 1, 12000, 0, '2026-04-24T09:26:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4568', 'hist-ticket-176-4568', 'cash', 55000, 'completed', '2026-04-24T09:26:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4569', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-24T10:21:11.000Z', '2026-04-24T10:21:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4569-1', 'hist-ticket-176-4569', 'prod-latte', 1, 15000, 0, '2026-04-24T10:21:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4569', 'hist-ticket-176-4569', 'cash', 15000, 'completed', '2026-04-24T10:21:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4570', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-24T18:02:32.000Z', '2026-04-24T18:02:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4570-1', 'hist-ticket-176-4570', 'prod-latte', 1, 15000, 0, '2026-04-24T18:02:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4570', 'hist-ticket-176-4570', 'cash', 15000, 'completed', '2026-04-24T18:02:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4571', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-04-24T18:32:39.000Z', '2026-04-24T18:32:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4571-1', 'hist-ticket-176-4571', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T18:32:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4571', 'hist-ticket-176-4571', 'cash', 14500, 'completed', '2026-04-24T18:32:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4572', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-24T16:22:23.000Z', '2026-04-24T16:22:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4572-1', 'hist-ticket-176-4572', 'prod-mocha', 1, 16500, 0, '2026-04-24T16:22:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4572', 'hist-ticket-176-4572', 'cash', 16500, 'completed', '2026-04-24T16:22:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4573', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-24T08:53:43.000Z', '2026-04-24T08:53:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4573-1', 'hist-ticket-176-4573', 'prod-latte', 1, 15000, 0, '2026-04-24T08:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4573-2', 'hist-ticket-176-4573', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T08:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4573-3', 'hist-ticket-176-4573', 'prod-latte', 1, 15000, 0, '2026-04-24T08:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4573-4', 'hist-ticket-176-4573', 'prod-americano', 1, 12000, 0, '2026-04-24T08:53:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4573', 'hist-ticket-176-4573', 'cash', 56500, 'completed', '2026-04-24T08:53:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4574', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-24T11:33:52.000Z', '2026-04-24T11:33:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4574-1', 'hist-ticket-176-4574', 'prod-latte', 1, 15000, 0, '2026-04-24T11:33:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4574', 'hist-ticket-176-4574', 'cash', 15000, 'completed', '2026-04-24T11:33:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4575', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-24T14:05:19.000Z', '2026-04-24T14:05:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4575-1', 'hist-ticket-176-4575', 'prod-latte', 1, 15000, 0, '2026-04-24T14:05:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4575', 'hist-ticket-176-4575', 'cash', 15000, 'completed', '2026-04-24T14:05:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4576', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-24T17:43:31.000Z', '2026-04-24T17:43:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4576-1', 'hist-ticket-176-4576', 'prod-mocha', 1, 16500, 0, '2026-04-24T17:43:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4576-2', 'hist-ticket-176-4576', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T17:43:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4576', 'hist-ticket-176-4576', 'cash', 31000, 'completed', '2026-04-24T17:43:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-176-4577', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-24T10:48:24.000Z', '2026-04-24T10:48:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-176-4577-1', 'hist-ticket-176-4577', 'prod-cappuccino', 1, 14500, 0, '2026-04-24T10:48:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-176-4577', 'hist-ticket-176-4577', 'cash', 14500, 'completed', '2026-04-24T10:48:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4578', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-25T08:39:34.000Z', '2026-04-25T08:39:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4578-1', 'hist-ticket-177-4578', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:39:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4578', 'hist-ticket-177-4578', 'cash', 14500, 'completed', '2026-04-25T08:39:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4579', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T15:20:12.000Z', '2026-04-25T15:20:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4579-1', 'hist-ticket-177-4579', 'prod-latte', 1, 15000, 0, '2026-04-25T15:20:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4579', 'hist-ticket-177-4579', 'cash', 15000, 'completed', '2026-04-25T15:20:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4580', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-25T14:44:47.000Z', '2026-04-25T14:44:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4580-1', 'hist-ticket-177-4580', 'prod-americano', 1, 12000, 0, '2026-04-25T14:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4580-2', 'hist-ticket-177-4580', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4580-3', 'hist-ticket-177-4580', 'prod-latte', 1, 15000, 0, '2026-04-25T14:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4580-4', 'hist-ticket-177-4580', 'prod-latte', 1, 15000, 0, '2026-04-25T14:44:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4580', 'hist-ticket-177-4580', 'cash', 58500, 'completed', '2026-04-25T14:44:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4581', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-25T08:20:09.000Z', '2026-04-25T08:20:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4581-1', 'hist-ticket-177-4581', 'prod-latte', 1, 15000, 0, '2026-04-25T08:20:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4581-2', 'hist-ticket-177-4581', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T08:20:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4581-3', 'hist-ticket-177-4581', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:20:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4581', 'hist-ticket-177-4581', 'cash', 46000, 'completed', '2026-04-25T08:20:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4582', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-25T19:26:55.000Z', '2026-04-25T19:26:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4582-1', 'hist-ticket-177-4582', 'prod-mocha', 1, 16500, 0, '2026-04-25T19:26:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4582-2', 'hist-ticket-177-4582', 'prod-latte', 1, 15000, 0, '2026-04-25T19:26:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4582-3', 'hist-ticket-177-4582', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T19:26:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4582', 'hist-ticket-177-4582', 'cash', 46000, 'completed', '2026-04-25T19:26:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4583', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-25T15:44:18.000Z', '2026-04-25T15:44:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4583-1', 'hist-ticket-177-4583', 'prod-mocha', 1, 16500, 0, '2026-04-25T15:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4583-2', 'hist-ticket-177-4583', 'prod-latte', 1, 15000, 0, '2026-04-25T15:44:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4583', 'hist-ticket-177-4583', 'cash', 31500, 'completed', '2026-04-25T15:44:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4584', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-25T14:34:26.000Z', '2026-04-25T14:34:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4584-1', 'hist-ticket-177-4584', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:34:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4584-2', 'hist-ticket-177-4584', 'prod-latte', 1, 15000, 0, '2026-04-25T14:34:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4584-3', 'hist-ticket-177-4584', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:34:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4584', 'hist-ticket-177-4584', 'cash', 48000, 'completed', '2026-04-25T14:34:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4585', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-25T19:50:19.000Z', '2026-04-25T19:50:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4585-1', 'hist-ticket-177-4585', 'prod-americano', 1, 12000, 0, '2026-04-25T19:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4585-2', 'hist-ticket-177-4585', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T19:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4585-3', 'hist-ticket-177-4585', 'prod-mocha', 1, 16500, 0, '2026-04-25T19:50:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4585', 'hist-ticket-177-4585', 'cash', 43000, 'completed', '2026-04-25T19:50:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4586', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-25T09:59:45.000Z', '2026-04-25T09:59:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4586-1', 'hist-ticket-177-4586', 'prod-latte', 1, 15000, 0, '2026-04-25T09:59:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4586', 'hist-ticket-177-4586', 'cash', 15000, 'completed', '2026-04-25T09:59:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4587', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-04-25T17:20:24.000Z', '2026-04-25T17:20:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4587-1', 'hist-ticket-177-4587', 'prod-americano', 1, 12000, 0, '2026-04-25T17:20:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4587', 'hist-ticket-177-4587', 'cash', 12000, 'completed', '2026-04-25T17:20:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4588', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-25T13:52:46.000Z', '2026-04-25T13:52:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4588-1', 'hist-ticket-177-4588', 'prod-americano', 1, 12000, 0, '2026-04-25T13:52:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4588', 'hist-ticket-177-4588', 'cash', 12000, 'completed', '2026-04-25T13:52:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4589', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-04-25T14:52:59.000Z', '2026-04-25T14:52:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4589-1', 'hist-ticket-177-4589', 'prod-americano', 1, 12000, 0, '2026-04-25T14:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4589-2', 'hist-ticket-177-4589', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4589-3', 'hist-ticket-177-4589', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:52:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4589-4', 'hist-ticket-177-4589', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:52:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4589', 'hist-ticket-177-4589', 'cash', 61500, 'completed', '2026-04-25T14:52:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4590', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-25T10:56:49.000Z', '2026-04-25T10:56:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4590-1', 'hist-ticket-177-4590', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:56:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4590-2', 'hist-ticket-177-4590', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:56:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4590', 'hist-ticket-177-4590', 'cash', 29000, 'completed', '2026-04-25T10:56:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4591', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-25T08:02:18.000Z', '2026-04-25T08:02:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4591-1', 'hist-ticket-177-4591', 'prod-latte', 1, 15000, 0, '2026-04-25T08:02:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4591-2', 'hist-ticket-177-4591', 'prod-americano', 1, 12000, 0, '2026-04-25T08:02:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4591-3', 'hist-ticket-177-4591', 'prod-americano', 1, 12000, 0, '2026-04-25T08:02:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4591', 'hist-ticket-177-4591', 'cash', 39000, 'completed', '2026-04-25T08:02:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4592', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T09:43:51.000Z', '2026-04-25T09:43:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4592-1', 'hist-ticket-177-4592', 'prod-americano', 1, 12000, 0, '2026-04-25T09:43:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4592', 'hist-ticket-177-4592', 'cash', 12000, 'completed', '2026-04-25T09:43:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4593', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-25T19:58:19.000Z', '2026-04-25T19:58:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4593-1', 'hist-ticket-177-4593', 'prod-americano', 1, 12000, 0, '2026-04-25T19:58:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4593', 'hist-ticket-177-4593', 'cash', 12000, 'completed', '2026-04-25T19:58:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4594', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-25T11:12:50.000Z', '2026-04-25T11:12:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4594-1', 'hist-ticket-177-4594', 'prod-americano', 1, 12000, 0, '2026-04-25T11:12:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4594-2', 'hist-ticket-177-4594', 'prod-americano', 1, 12000, 0, '2026-04-25T11:12:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4594-3', 'hist-ticket-177-4594', 'prod-americano', 1, 12000, 0, '2026-04-25T11:12:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4594', 'hist-ticket-177-4594', 'cash', 36000, 'completed', '2026-04-25T11:12:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4595', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T18:24:49.000Z', '2026-04-25T18:24:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4595-1', 'hist-ticket-177-4595', 'prod-mocha', 1, 16500, 0, '2026-04-25T18:24:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4595', 'hist-ticket-177-4595', 'cash', 16500, 'completed', '2026-04-25T18:24:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4596', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-25T19:18:13.000Z', '2026-04-25T19:18:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4596-1', 'hist-ticket-177-4596', 'prod-americano', 1, 12000, 0, '2026-04-25T19:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4596-2', 'hist-ticket-177-4596', 'prod-americano', 1, 12000, 0, '2026-04-25T19:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4596-3', 'hist-ticket-177-4596', 'prod-mocha', 1, 16500, 0, '2026-04-25T19:18:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4596-4', 'hist-ticket-177-4596', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T19:18:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4596', 'hist-ticket-177-4596', 'cash', 55000, 'completed', '2026-04-25T19:18:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4597', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-25T09:56:21.000Z', '2026-04-25T09:56:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4597-1', 'hist-ticket-177-4597', 'prod-americano', 1, 12000, 0, '2026-04-25T09:56:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4597', 'hist-ticket-177-4597', 'cash', 12000, 'completed', '2026-04-25T09:56:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4598', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-25T13:44:28.000Z', '2026-04-25T13:44:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4598-1', 'hist-ticket-177-4598', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T13:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4598-2', 'hist-ticket-177-4598', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T13:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4598-3', 'hist-ticket-177-4598', 'prod-latte', 1, 15000, 0, '2026-04-25T13:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4598-4', 'hist-ticket-177-4598', 'prod-latte', 1, 15000, 0, '2026-04-25T13:44:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4598', 'hist-ticket-177-4598', 'cash', 59000, 'completed', '2026-04-25T13:44:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4599', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-25T13:28:29.000Z', '2026-04-25T13:28:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4599-1', 'hist-ticket-177-4599', 'prod-americano', 1, 12000, 0, '2026-04-25T13:28:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4599', 'hist-ticket-177-4599', 'cash', 12000, 'completed', '2026-04-25T13:28:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4600', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-25T08:34:16.000Z', '2026-04-25T08:34:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4600-1', 'hist-ticket-177-4600', 'prod-americano', 1, 12000, 0, '2026-04-25T08:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4600-2', 'hist-ticket-177-4600', 'prod-latte', 1, 15000, 0, '2026-04-25T08:34:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4600-3', 'hist-ticket-177-4600', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:34:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4600', 'hist-ticket-177-4600', 'cash', 43500, 'completed', '2026-04-25T08:34:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4601', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-04-25T19:50:23.000Z', '2026-04-25T19:50:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4601-1', 'hist-ticket-177-4601', 'prod-americano', 1, 12000, 0, '2026-04-25T19:50:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4601-2', 'hist-ticket-177-4601', 'prod-latte', 1, 15000, 0, '2026-04-25T19:50:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4601', 'hist-ticket-177-4601', 'cash', 27000, 'completed', '2026-04-25T19:50:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4602', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-25T10:25:02.000Z', '2026-04-25T10:25:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4602-1', 'hist-ticket-177-4602', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:25:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4602-2', 'hist-ticket-177-4602', 'prod-americano', 1, 12000, 0, '2026-04-25T10:25:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4602-3', 'hist-ticket-177-4602', 'prod-mocha', 1, 16500, 0, '2026-04-25T10:25:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4602-4', 'hist-ticket-177-4602', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:25:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4602', 'hist-ticket-177-4602', 'cash', 57500, 'completed', '2026-04-25T10:25:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4603', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T10:30:30.000Z', '2026-04-25T10:30:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4603-1', 'hist-ticket-177-4603', 'prod-mocha', 1, 16500, 0, '2026-04-25T10:30:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4603-2', 'hist-ticket-177-4603', 'prod-americano', 1, 12000, 0, '2026-04-25T10:30:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4603-3', 'hist-ticket-177-4603', 'prod-americano', 1, 12000, 0, '2026-04-25T10:30:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4603', 'hist-ticket-177-4603', 'cash', 40500, 'completed', '2026-04-25T10:30:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4604', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-04-25T14:34:08.000Z', '2026-04-25T14:34:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4604-1', 'hist-ticket-177-4604', 'prod-americano', 1, 12000, 0, '2026-04-25T14:34:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4604-2', 'hist-ticket-177-4604', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T14:34:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4604', 'hist-ticket-177-4604', 'cash', 26500, 'completed', '2026-04-25T14:34:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4605', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-25T12:47:54.000Z', '2026-04-25T12:47:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4605-1', 'hist-ticket-177-4605', 'prod-mocha', 1, 16500, 0, '2026-04-25T12:47:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4605', 'hist-ticket-177-4605', 'cash', 16500, 'completed', '2026-04-25T12:47:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4606', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-25T10:50:20.000Z', '2026-04-25T10:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4606-1', 'hist-ticket-177-4606', 'prod-mocha', 1, 16500, 0, '2026-04-25T10:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4606-2', 'hist-ticket-177-4606', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4606-3', 'hist-ticket-177-4606', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:50:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4606-4', 'hist-ticket-177-4606', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T10:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4606', 'hist-ticket-177-4606', 'cash', 60000, 'completed', '2026-04-25T10:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4607', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-25T14:35:53.000Z', '2026-04-25T14:35:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4607-1', 'hist-ticket-177-4607', 'prod-latte', 1, 15000, 0, '2026-04-25T14:35:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4607-2', 'hist-ticket-177-4607', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:35:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4607-3', 'hist-ticket-177-4607', 'prod-latte', 1, 15000, 0, '2026-04-25T14:35:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4607', 'hist-ticket-177-4607', 'cash', 46500, 'completed', '2026-04-25T14:35:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4608', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-25T08:00:11.000Z', '2026-04-25T08:00:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4608-1', 'hist-ticket-177-4608', 'prod-latte', 1, 15000, 0, '2026-04-25T08:00:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4608-2', 'hist-ticket-177-4608', 'prod-americano', 1, 12000, 0, '2026-04-25T08:00:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4608', 'hist-ticket-177-4608', 'cash', 27000, 'completed', '2026-04-25T08:00:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4609', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T10:41:20.000Z', '2026-04-25T10:41:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4609-1', 'hist-ticket-177-4609', 'prod-mocha', 1, 16500, 0, '2026-04-25T10:41:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4609', 'hist-ticket-177-4609', 'cash', 16500, 'completed', '2026-04-25T10:41:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4610', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-25T11:24:45.000Z', '2026-04-25T11:24:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4610-1', 'hist-ticket-177-4610', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:24:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4610-2', 'hist-ticket-177-4610', 'prod-americano', 1, 12000, 0, '2026-04-25T11:24:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4610-3', 'hist-ticket-177-4610', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:24:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4610-4', 'hist-ticket-177-4610', 'prod-americano', 1, 12000, 0, '2026-04-25T11:24:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4610', 'hist-ticket-177-4610', 'cash', 53000, 'completed', '2026-04-25T11:24:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4611', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-25T12:33:56.000Z', '2026-04-25T12:33:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4611-1', 'hist-ticket-177-4611', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T12:33:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4611-2', 'hist-ticket-177-4611', 'prod-americano', 1, 12000, 0, '2026-04-25T12:33:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4611', 'hist-ticket-177-4611', 'cash', 26500, 'completed', '2026-04-25T12:33:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4612', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-25T16:12:03.000Z', '2026-04-25T16:12:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4612-1', 'hist-ticket-177-4612', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T16:12:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4612', 'hist-ticket-177-4612', 'cash', 14500, 'completed', '2026-04-25T16:12:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4613', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-04-25T14:56:43.000Z', '2026-04-25T14:56:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4613-1', 'hist-ticket-177-4613', 'prod-latte', 1, 15000, 0, '2026-04-25T14:56:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4613-2', 'hist-ticket-177-4613', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:56:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4613-3', 'hist-ticket-177-4613', 'prod-latte', 1, 15000, 0, '2026-04-25T14:56:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4613', 'hist-ticket-177-4613', 'cash', 46500, 'completed', '2026-04-25T14:56:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4614', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-25T18:15:34.000Z', '2026-04-25T18:15:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4614-1', 'hist-ticket-177-4614', 'prod-americano', 1, 12000, 0, '2026-04-25T18:15:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4614-2', 'hist-ticket-177-4614', 'prod-mocha', 1, 16500, 0, '2026-04-25T18:15:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4614-3', 'hist-ticket-177-4614', 'prod-mocha', 1, 16500, 0, '2026-04-25T18:15:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4614', 'hist-ticket-177-4614', 'cash', 45000, 'completed', '2026-04-25T18:15:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4615', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-25T14:39:50.000Z', '2026-04-25T14:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4615-1', 'hist-ticket-177-4615', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4615', 'hist-ticket-177-4615', 'cash', 16500, 'completed', '2026-04-25T14:39:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4616', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-04-25T19:58:47.000Z', '2026-04-25T19:58:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4616-1', 'hist-ticket-177-4616', 'prod-mocha', 1, 16500, 0, '2026-04-25T19:58:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4616', 'hist-ticket-177-4616', 'cash', 16500, 'completed', '2026-04-25T19:58:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4617', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-25T10:00:37.000Z', '2026-04-25T10:00:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4617-1', 'hist-ticket-177-4617', 'prod-mocha', 1, 16500, 0, '2026-04-25T10:00:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4617', 'hist-ticket-177-4617', 'cash', 16500, 'completed', '2026-04-25T10:00:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4618', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-25T09:09:25.000Z', '2026-04-25T09:09:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4618-1', 'hist-ticket-177-4618', 'prod-mocha', 1, 16500, 0, '2026-04-25T09:09:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4618-2', 'hist-ticket-177-4618', 'prod-americano', 1, 12000, 0, '2026-04-25T09:09:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4618', 'hist-ticket-177-4618', 'cash', 28500, 'completed', '2026-04-25T09:09:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4619', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-25T14:21:26.000Z', '2026-04-25T14:21:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4619-1', 'hist-ticket-177-4619', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T14:21:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4619-2', 'hist-ticket-177-4619', 'prod-americano', 1, 12000, 0, '2026-04-25T14:21:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4619-3', 'hist-ticket-177-4619', 'prod-mocha', 1, 16500, 0, '2026-04-25T14:21:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4619-4', 'hist-ticket-177-4619', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T14:21:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4619', 'hist-ticket-177-4619', 'cash', 57500, 'completed', '2026-04-25T14:21:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4620', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-25T09:23:17.000Z', '2026-04-25T09:23:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4620-1', 'hist-ticket-177-4620', 'prod-latte', 1, 15000, 0, '2026-04-25T09:23:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4620-2', 'hist-ticket-177-4620', 'prod-latte', 1, 15000, 0, '2026-04-25T09:23:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4620-3', 'hist-ticket-177-4620', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T09:23:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4620-4', 'hist-ticket-177-4620', 'prod-mocha', 1, 16500, 0, '2026-04-25T09:23:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4620', 'hist-ticket-177-4620', 'cash', 61000, 'completed', '2026-04-25T09:23:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4621', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-04-25T17:32:17.000Z', '2026-04-25T17:32:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4621-1', 'hist-ticket-177-4621', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T17:32:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4621-2', 'hist-ticket-177-4621', 'prod-americano', 1, 12000, 0, '2026-04-25T17:32:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4621', 'hist-ticket-177-4621', 'cash', 26500, 'completed', '2026-04-25T17:32:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4622', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-25T12:01:15.000Z', '2026-04-25T12:01:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4622-1', 'hist-ticket-177-4622', 'prod-latte', 1, 15000, 0, '2026-04-25T12:01:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4622-2', 'hist-ticket-177-4622', 'prod-mocha', 1, 16500, 0, '2026-04-25T12:01:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4622-3', 'hist-ticket-177-4622', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T12:01:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4622-4', 'hist-ticket-177-4622', 'prod-mocha', 1, 16500, 0, '2026-04-25T12:01:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4622', 'hist-ticket-177-4622', 'cash', 62500, 'completed', '2026-04-25T12:01:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4623', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-25T11:24:17.000Z', '2026-04-25T11:24:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4623-1', 'hist-ticket-177-4623', 'prod-cappuccino', 1, 14500, 0, '2026-04-25T11:24:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4623-2', 'hist-ticket-177-4623', 'prod-americano', 1, 12000, 0, '2026-04-25T11:24:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4623', 'hist-ticket-177-4623', 'cash', 26500, 'completed', '2026-04-25T11:24:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4624', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-25T17:48:28.000Z', '2026-04-25T17:48:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4624-1', 'hist-ticket-177-4624', 'prod-mocha', 1, 16500, 0, '2026-04-25T17:48:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4624-2', 'hist-ticket-177-4624', 'prod-americano', 1, 12000, 0, '2026-04-25T17:48:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4624', 'hist-ticket-177-4624', 'cash', 28500, 'completed', '2026-04-25T17:48:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4625', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-25T14:44:10.000Z', '2026-04-25T14:44:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4625-1', 'hist-ticket-177-4625', 'prod-latte', 1, 15000, 0, '2026-04-25T14:44:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4625', 'hist-ticket-177-4625', 'cash', 15000, 'completed', '2026-04-25T14:44:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-177-4626', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-25T08:01:21.000Z', '2026-04-25T08:01:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4626-1', 'hist-ticket-177-4626', 'prod-americano', 1, 12000, 0, '2026-04-25T08:01:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4626-2', 'hist-ticket-177-4626', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:01:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-177-4626-3', 'hist-ticket-177-4626', 'prod-mocha', 1, 16500, 0, '2026-04-25T08:01:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-177-4626', 'hist-ticket-177-4626', 'cash', 45000, 'completed', '2026-04-25T08:01:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4627', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-26T16:29:42.000Z', '2026-04-26T16:29:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4627-1', 'hist-ticket-178-4627', 'prod-mocha', 1, 16500, 0, '2026-04-26T16:29:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4627-2', 'hist-ticket-178-4627', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T16:29:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4627-3', 'hist-ticket-178-4627', 'prod-latte', 1, 15000, 0, '2026-04-26T16:29:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4627-4', 'hist-ticket-178-4627', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T16:29:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4627', 'hist-ticket-178-4627', 'cash', 60500, 'completed', '2026-04-26T16:29:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4628', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-04-26T13:04:28.000Z', '2026-04-26T13:04:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4628-1', 'hist-ticket-178-4628', 'prod-latte', 1, 15000, 0, '2026-04-26T13:04:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4628', 'hist-ticket-178-4628', 'cash', 15000, 'completed', '2026-04-26T13:04:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4629', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-26T13:08:57.000Z', '2026-04-26T13:08:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4629-1', 'hist-ticket-178-4629', 'prod-americano', 1, 12000, 0, '2026-04-26T13:08:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4629', 'hist-ticket-178-4629', 'cash', 12000, 'completed', '2026-04-26T13:08:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4630', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-26T13:27:35.000Z', '2026-04-26T13:27:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4630-1', 'hist-ticket-178-4630', 'prod-americano', 1, 12000, 0, '2026-04-26T13:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4630-2', 'hist-ticket-178-4630', 'prod-americano', 1, 12000, 0, '2026-04-26T13:27:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4630-3', 'hist-ticket-178-4630', 'prod-americano', 1, 12000, 0, '2026-04-26T13:27:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4630', 'hist-ticket-178-4630', 'cash', 36000, 'completed', '2026-04-26T13:27:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4631', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-26T08:02:41.000Z', '2026-04-26T08:02:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4631-1', 'hist-ticket-178-4631', 'prod-latte', 1, 15000, 0, '2026-04-26T08:02:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4631-2', 'hist-ticket-178-4631', 'prod-latte', 1, 15000, 0, '2026-04-26T08:02:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4631', 'hist-ticket-178-4631', 'cash', 30000, 'completed', '2026-04-26T08:02:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4632', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-26T17:38:55.000Z', '2026-04-26T17:38:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4632-1', 'hist-ticket-178-4632', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T17:38:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4632-2', 'hist-ticket-178-4632', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T17:38:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4632', 'hist-ticket-178-4632', 'cash', 29000, 'completed', '2026-04-26T17:38:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4633', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-26T16:11:01.000Z', '2026-04-26T16:11:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4633-1', 'hist-ticket-178-4633', 'prod-mocha', 1, 16500, 0, '2026-04-26T16:11:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4633-2', 'hist-ticket-178-4633', 'prod-americano', 1, 12000, 0, '2026-04-26T16:11:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4633-3', 'hist-ticket-178-4633', 'prod-mocha', 1, 16500, 0, '2026-04-26T16:11:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4633', 'hist-ticket-178-4633', 'cash', 45000, 'completed', '2026-04-26T16:11:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4634', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-26T18:49:54.000Z', '2026-04-26T18:49:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4634-1', 'hist-ticket-178-4634', 'prod-mocha', 1, 16500, 0, '2026-04-26T18:49:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4634', 'hist-ticket-178-4634', 'cash', 16500, 'completed', '2026-04-26T18:49:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4635', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-26T14:36:51.000Z', '2026-04-26T14:36:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4635-1', 'hist-ticket-178-4635', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T14:36:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4635-2', 'hist-ticket-178-4635', 'prod-mocha', 1, 16500, 0, '2026-04-26T14:36:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4635', 'hist-ticket-178-4635', 'cash', 31000, 'completed', '2026-04-26T14:36:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4636', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-26T14:33:50.000Z', '2026-04-26T14:33:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4636-1', 'hist-ticket-178-4636', 'prod-mocha', 1, 16500, 0, '2026-04-26T14:33:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4636-2', 'hist-ticket-178-4636', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T14:33:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4636', 'hist-ticket-178-4636', 'cash', 31000, 'completed', '2026-04-26T14:33:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4637', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-26T16:28:36.000Z', '2026-04-26T16:28:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4637-1', 'hist-ticket-178-4637', 'prod-latte', 1, 15000, 0, '2026-04-26T16:28:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4637-2', 'hist-ticket-178-4637', 'prod-americano', 1, 12000, 0, '2026-04-26T16:28:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4637', 'hist-ticket-178-4637', 'cash', 27000, 'completed', '2026-04-26T16:28:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4638', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-26T09:52:02.000Z', '2026-04-26T09:52:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4638-1', 'hist-ticket-178-4638', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4638-2', 'hist-ticket-178-4638', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:52:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4638-3', 'hist-ticket-178-4638', 'prod-latte', 1, 15000, 0, '2026-04-26T09:52:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4638', 'hist-ticket-178-4638', 'cash', 48000, 'completed', '2026-04-26T09:52:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4639', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-26T11:37:06.000Z', '2026-04-26T11:37:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4639-1', 'hist-ticket-178-4639', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T11:37:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4639-2', 'hist-ticket-178-4639', 'prod-latte', 1, 15000, 0, '2026-04-26T11:37:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4639', 'hist-ticket-178-4639', 'cash', 29500, 'completed', '2026-04-26T11:37:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4640', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-26T12:14:45.000Z', '2026-04-26T12:14:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4640-1', 'hist-ticket-178-4640', 'prod-latte', 1, 15000, 0, '2026-04-26T12:14:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4640', 'hist-ticket-178-4640', 'cash', 15000, 'completed', '2026-04-26T12:14:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4641', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-26T09:18:02.000Z', '2026-04-26T09:18:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4641-1', 'hist-ticket-178-4641', 'prod-americano', 1, 12000, 0, '2026-04-26T09:18:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4641-2', 'hist-ticket-178-4641', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:18:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4641-3', 'hist-ticket-178-4641', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:18:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4641-4', 'hist-ticket-178-4641', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T09:18:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4641', 'hist-ticket-178-4641', 'cash', 59500, 'completed', '2026-04-26T09:18:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4642', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-26T16:08:03.000Z', '2026-04-26T16:08:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4642-1', 'hist-ticket-178-4642', 'prod-americano', 1, 12000, 0, '2026-04-26T16:08:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4642-2', 'hist-ticket-178-4642', 'prod-americano', 1, 12000, 0, '2026-04-26T16:08:03.000Z');