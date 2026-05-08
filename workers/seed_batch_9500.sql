INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2110', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-24T17:38:30.000Z', '2026-01-24T17:38:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2110-1', 'hist-ticket-86-2110', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2110-2', 'hist-ticket-86-2110', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2110-3', 'hist-ticket-86-2110', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T17:38:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2110-4', 'hist-ticket-86-2110', 'prod-americano', 1, 12000, 0, '2026-01-24T17:38:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2110', 'hist-ticket-86-2110', 'cash', 55500, 'completed', '2026-01-24T17:38:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2111', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-24T10:30:54.000Z', '2026-01-24T10:30:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2111-1', 'hist-ticket-86-2111', 'prod-americano', 1, 12000, 0, '2026-01-24T10:30:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2111', 'hist-ticket-86-2111', 'cash', 12000, 'completed', '2026-01-24T10:30:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-86-2112', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-24T13:57:36.000Z', '2026-01-24T13:57:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2112-1', 'hist-ticket-86-2112', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T13:57:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2112-2', 'hist-ticket-86-2112', 'prod-cappuccino', 1, 14500, 0, '2026-01-24T13:57:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-86-2112-3', 'hist-ticket-86-2112', 'prod-mocha', 1, 16500, 0, '2026-01-24T13:57:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-86-2112', 'hist-ticket-86-2112', 'cash', 45500, 'completed', '2026-01-24T13:57:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2113', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-25T19:01:19.000Z', '2026-01-25T19:01:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2113-1', 'hist-ticket-87-2113', 'prod-latte', 1, 15000, 0, '2026-01-25T19:01:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2113-2', 'hist-ticket-87-2113', 'prod-americano', 1, 12000, 0, '2026-01-25T19:01:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2113', 'hist-ticket-87-2113', 'cash', 27000, 'completed', '2026-01-25T19:01:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2114', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-25T12:03:31.000Z', '2026-01-25T12:03:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2114-1', 'hist-ticket-87-2114', 'prod-mocha', 1, 16500, 0, '2026-01-25T12:03:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2114-2', 'hist-ticket-87-2114', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:03:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2114-3', 'hist-ticket-87-2114', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:03:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2114', 'hist-ticket-87-2114', 'cash', 45500, 'completed', '2026-01-25T12:03:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2115', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-25T12:07:02.000Z', '2026-01-25T12:07:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2115-1', 'hist-ticket-87-2115', 'prod-latte', 1, 15000, 0, '2026-01-25T12:07:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2115-2', 'hist-ticket-87-2115', 'prod-americano', 1, 12000, 0, '2026-01-25T12:07:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2115-3', 'hist-ticket-87-2115', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:07:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2115-4', 'hist-ticket-87-2115', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:07:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2115', 'hist-ticket-87-2115', 'cash', 56000, 'completed', '2026-01-25T12:07:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2116', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-25T08:39:21.000Z', '2026-01-25T08:39:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2116-1', 'hist-ticket-87-2116', 'prod-latte', 1, 15000, 0, '2026-01-25T08:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2116-2', 'hist-ticket-87-2116', 'prod-mocha', 1, 16500, 0, '2026-01-25T08:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2116-3', 'hist-ticket-87-2116', 'prod-mocha', 1, 16500, 0, '2026-01-25T08:39:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2116-4', 'hist-ticket-87-2116', 'prod-latte', 1, 15000, 0, '2026-01-25T08:39:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2116', 'hist-ticket-87-2116', 'cash', 63000, 'completed', '2026-01-25T08:39:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2117', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-25T12:11:38.000Z', '2026-01-25T12:11:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2117-1', 'hist-ticket-87-2117', 'prod-mocha', 1, 16500, 0, '2026-01-25T12:11:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2117-2', 'hist-ticket-87-2117', 'prod-mocha', 1, 16500, 0, '2026-01-25T12:11:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2117', 'hist-ticket-87-2117', 'cash', 33000, 'completed', '2026-01-25T12:11:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2118', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-25T09:54:23.000Z', '2026-01-25T09:54:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2118-1', 'hist-ticket-87-2118', 'prod-latte', 1, 15000, 0, '2026-01-25T09:54:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2118-2', 'hist-ticket-87-2118', 'prod-americano', 1, 12000, 0, '2026-01-25T09:54:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2118', 'hist-ticket-87-2118', 'cash', 27000, 'completed', '2026-01-25T09:54:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2119', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-25T12:50:33.000Z', '2026-01-25T12:50:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2119-1', 'hist-ticket-87-2119', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:50:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2119', 'hist-ticket-87-2119', 'cash', 14500, 'completed', '2026-01-25T12:50:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2120', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-01-25T16:03:29.000Z', '2026-01-25T16:03:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2120-1', 'hist-ticket-87-2120', 'prod-mocha', 1, 16500, 0, '2026-01-25T16:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2120-2', 'hist-ticket-87-2120', 'prod-mocha', 1, 16500, 0, '2026-01-25T16:03:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2120', 'hist-ticket-87-2120', 'cash', 33000, 'completed', '2026-01-25T16:03:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2121', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-25T16:45:29.000Z', '2026-01-25T16:45:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2121-1', 'hist-ticket-87-2121', 'prod-americano', 1, 12000, 0, '2026-01-25T16:45:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2121-2', 'hist-ticket-87-2121', 'prod-mocha', 1, 16500, 0, '2026-01-25T16:45:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2121', 'hist-ticket-87-2121', 'cash', 28500, 'completed', '2026-01-25T16:45:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2122', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-01-25T15:59:08.000Z', '2026-01-25T15:59:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2122-1', 'hist-ticket-87-2122', 'prod-americano', 1, 12000, 0, '2026-01-25T15:59:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2122-2', 'hist-ticket-87-2122', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T15:59:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2122-3', 'hist-ticket-87-2122', 'prod-mocha', 1, 16500, 0, '2026-01-25T15:59:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2122', 'hist-ticket-87-2122', 'cash', 43000, 'completed', '2026-01-25T15:59:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2123', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-01-25T12:59:28.000Z', '2026-01-25T12:59:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2123-1', 'hist-ticket-87-2123', 'prod-americano', 1, 12000, 0, '2026-01-25T12:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2123-2', 'hist-ticket-87-2123', 'prod-mocha', 1, 16500, 0, '2026-01-25T12:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2123-3', 'hist-ticket-87-2123', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:59:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2123', 'hist-ticket-87-2123', 'cash', 43000, 'completed', '2026-01-25T12:59:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2124', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-25T12:19:45.000Z', '2026-01-25T12:19:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2124-1', 'hist-ticket-87-2124', 'prod-latte', 1, 15000, 0, '2026-01-25T12:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2124-2', 'hist-ticket-87-2124', 'prod-latte', 1, 15000, 0, '2026-01-25T12:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2124-3', 'hist-ticket-87-2124', 'prod-americano', 1, 12000, 0, '2026-01-25T12:19:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2124', 'hist-ticket-87-2124', 'cash', 42000, 'completed', '2026-01-25T12:19:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2125', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-25T11:30:49.000Z', '2026-01-25T11:30:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2125-1', 'hist-ticket-87-2125', 'prod-americano', 1, 12000, 0, '2026-01-25T11:30:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2125-2', 'hist-ticket-87-2125', 'prod-mocha', 1, 16500, 0, '2026-01-25T11:30:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2125', 'hist-ticket-87-2125', 'cash', 28500, 'completed', '2026-01-25T11:30:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2126', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-25T16:30:53.000Z', '2026-01-25T16:30:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2126-1', 'hist-ticket-87-2126', 'prod-latte', 1, 15000, 0, '2026-01-25T16:30:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2126', 'hist-ticket-87-2126', 'cash', 15000, 'completed', '2026-01-25T16:30:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2127', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-25T11:42:52.000Z', '2026-01-25T11:42:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2127-1', 'hist-ticket-87-2127', 'prod-mocha', 1, 16500, 0, '2026-01-25T11:42:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2127-2', 'hist-ticket-87-2127', 'prod-americano', 1, 12000, 0, '2026-01-25T11:42:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2127-3', 'hist-ticket-87-2127', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T11:42:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2127-4', 'hist-ticket-87-2127', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T11:42:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2127', 'hist-ticket-87-2127', 'cash', 57500, 'completed', '2026-01-25T11:42:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2128', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-25T18:00:43.000Z', '2026-01-25T18:00:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2128-1', 'hist-ticket-87-2128', 'prod-mocha', 1, 16500, 0, '2026-01-25T18:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2128-2', 'hist-ticket-87-2128', 'prod-mocha', 1, 16500, 0, '2026-01-25T18:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2128-3', 'hist-ticket-87-2128', 'prod-mocha', 1, 16500, 0, '2026-01-25T18:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2128-4', 'hist-ticket-87-2128', 'prod-mocha', 1, 16500, 0, '2026-01-25T18:00:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2128', 'hist-ticket-87-2128', 'cash', 66000, 'completed', '2026-01-25T18:00:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2129', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-01-25T15:32:15.000Z', '2026-01-25T15:32:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2129-1', 'hist-ticket-87-2129', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T15:32:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2129', 'hist-ticket-87-2129', 'cash', 14500, 'completed', '2026-01-25T15:32:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2130', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-25T08:03:14.000Z', '2026-01-25T08:03:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2130-1', 'hist-ticket-87-2130', 'prod-mocha', 1, 16500, 0, '2026-01-25T08:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2130-2', 'hist-ticket-87-2130', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T08:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2130-3', 'hist-ticket-87-2130', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T08:03:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2130-4', 'hist-ticket-87-2130', 'prod-americano', 1, 12000, 0, '2026-01-25T08:03:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2130', 'hist-ticket-87-2130', 'cash', 57500, 'completed', '2026-01-25T08:03:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2131', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-25T10:34:13.000Z', '2026-01-25T10:34:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2131-1', 'hist-ticket-87-2131', 'prod-latte', 1, 15000, 0, '2026-01-25T10:34:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2131-2', 'hist-ticket-87-2131', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T10:34:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2131-3', 'hist-ticket-87-2131', 'prod-latte', 1, 15000, 0, '2026-01-25T10:34:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2131', 'hist-ticket-87-2131', 'cash', 44500, 'completed', '2026-01-25T10:34:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2132', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-25T13:13:22.000Z', '2026-01-25T13:13:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2132-1', 'hist-ticket-87-2132', 'prod-latte', 1, 15000, 0, '2026-01-25T13:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2132-2', 'hist-ticket-87-2132', 'prod-latte', 1, 15000, 0, '2026-01-25T13:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2132-3', 'hist-ticket-87-2132', 'prod-americano', 1, 12000, 0, '2026-01-25T13:13:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2132-4', 'hist-ticket-87-2132', 'prod-mocha', 1, 16500, 0, '2026-01-25T13:13:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2132', 'hist-ticket-87-2132', 'cash', 58500, 'completed', '2026-01-25T13:13:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2133', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-25T13:10:28.000Z', '2026-01-25T13:10:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2133-1', 'hist-ticket-87-2133', 'prod-mocha', 1, 16500, 0, '2026-01-25T13:10:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2133-2', 'hist-ticket-87-2133', 'prod-americano', 1, 12000, 0, '2026-01-25T13:10:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2133-3', 'hist-ticket-87-2133', 'prod-americano', 1, 12000, 0, '2026-01-25T13:10:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2133', 'hist-ticket-87-2133', 'cash', 40500, 'completed', '2026-01-25T13:10:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2134', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-01-25T12:14:55.000Z', '2026-01-25T12:14:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2134-1', 'hist-ticket-87-2134', 'prod-americano', 1, 12000, 0, '2026-01-25T12:14:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2134-2', 'hist-ticket-87-2134', 'prod-americano', 1, 12000, 0, '2026-01-25T12:14:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2134', 'hist-ticket-87-2134', 'cash', 24000, 'completed', '2026-01-25T12:14:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2135', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-25T14:43:56.000Z', '2026-01-25T14:43:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2135-1', 'hist-ticket-87-2135', 'prod-mocha', 1, 16500, 0, '2026-01-25T14:43:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2135-2', 'hist-ticket-87-2135', 'prod-americano', 1, 12000, 0, '2026-01-25T14:43:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2135', 'hist-ticket-87-2135', 'cash', 28500, 'completed', '2026-01-25T14:43:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2136', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-25T12:21:52.000Z', '2026-01-25T12:21:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2136-1', 'hist-ticket-87-2136', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:21:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2136-2', 'hist-ticket-87-2136', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T12:21:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2136-3', 'hist-ticket-87-2136', 'prod-latte', 1, 15000, 0, '2026-01-25T12:21:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2136-4', 'hist-ticket-87-2136', 'prod-americano', 1, 12000, 0, '2026-01-25T12:21:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2136', 'hist-ticket-87-2136', 'cash', 56000, 'completed', '2026-01-25T12:21:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2137', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-25T08:03:03.000Z', '2026-01-25T08:03:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2137-1', 'hist-ticket-87-2137', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T08:03:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2137-2', 'hist-ticket-87-2137', 'prod-latte', 1, 15000, 0, '2026-01-25T08:03:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2137', 'hist-ticket-87-2137', 'cash', 29500, 'completed', '2026-01-25T08:03:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-87-2138', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-01-25T16:58:35.000Z', '2026-01-25T16:58:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2138-1', 'hist-ticket-87-2138', 'prod-cappuccino', 1, 14500, 0, '2026-01-25T16:58:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2138-2', 'hist-ticket-87-2138', 'prod-mocha', 1, 16500, 0, '2026-01-25T16:58:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-87-2138-3', 'hist-ticket-87-2138', 'prod-americano', 1, 12000, 0, '2026-01-25T16:58:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-87-2138', 'hist-ticket-87-2138', 'cash', 43000, 'completed', '2026-01-25T16:58:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2139', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-26T18:36:28.000Z', '2026-01-26T18:36:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2139-1', 'hist-ticket-88-2139', 'prod-americano', 1, 12000, 0, '2026-01-26T18:36:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2139-2', 'hist-ticket-88-2139', 'prod-mocha', 1, 16500, 0, '2026-01-26T18:36:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2139', 'hist-ticket-88-2139', 'cash', 28500, 'completed', '2026-01-26T18:36:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2140', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-26T12:08:24.000Z', '2026-01-26T12:08:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2140-1', 'hist-ticket-88-2140', 'prod-americano', 1, 12000, 0, '2026-01-26T12:08:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2140-2', 'hist-ticket-88-2140', 'prod-mocha', 1, 16500, 0, '2026-01-26T12:08:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2140', 'hist-ticket-88-2140', 'cash', 28500, 'completed', '2026-01-26T12:08:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2141', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-26T08:44:54.000Z', '2026-01-26T08:44:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2141-1', 'hist-ticket-88-2141', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T08:44:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2141-2', 'hist-ticket-88-2141', 'prod-americano', 1, 12000, 0, '2026-01-26T08:44:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2141', 'hist-ticket-88-2141', 'cash', 26500, 'completed', '2026-01-26T08:44:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2142', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-26T10:07:36.000Z', '2026-01-26T10:07:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2142-1', 'hist-ticket-88-2142', 'prod-americano', 1, 12000, 0, '2026-01-26T10:07:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2142-2', 'hist-ticket-88-2142', 'prod-latte', 1, 15000, 0, '2026-01-26T10:07:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2142-3', 'hist-ticket-88-2142', 'prod-mocha', 1, 16500, 0, '2026-01-26T10:07:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2142', 'hist-ticket-88-2142', 'cash', 43500, 'completed', '2026-01-26T10:07:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2143', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-26T10:49:35.000Z', '2026-01-26T10:49:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2143-1', 'hist-ticket-88-2143', 'prod-americano', 1, 12000, 0, '2026-01-26T10:49:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2143-2', 'hist-ticket-88-2143', 'prod-latte', 1, 15000, 0, '2026-01-26T10:49:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2143-3', 'hist-ticket-88-2143', 'prod-americano', 1, 12000, 0, '2026-01-26T10:49:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2143', 'hist-ticket-88-2143', 'cash', 39000, 'completed', '2026-01-26T10:49:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2144', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-26T17:21:35.000Z', '2026-01-26T17:21:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2144-1', 'hist-ticket-88-2144', 'prod-americano', 1, 12000, 0, '2026-01-26T17:21:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2144-2', 'hist-ticket-88-2144', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T17:21:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2144-3', 'hist-ticket-88-2144', 'prod-latte', 1, 15000, 0, '2026-01-26T17:21:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2144', 'hist-ticket-88-2144', 'cash', 41500, 'completed', '2026-01-26T17:21:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2145', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-01-26T10:07:50.000Z', '2026-01-26T10:07:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2145-1', 'hist-ticket-88-2145', 'prod-mocha', 1, 16500, 0, '2026-01-26T10:07:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2145-2', 'hist-ticket-88-2145', 'prod-americano', 1, 12000, 0, '2026-01-26T10:07:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2145-3', 'hist-ticket-88-2145', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T10:07:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2145', 'hist-ticket-88-2145', 'cash', 43000, 'completed', '2026-01-26T10:07:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2146', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-26T14:09:06.000Z', '2026-01-26T14:09:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2146-1', 'hist-ticket-88-2146', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T14:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2146-2', 'hist-ticket-88-2146', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T14:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2146-3', 'hist-ticket-88-2146', 'prod-mocha', 1, 16500, 0, '2026-01-26T14:09:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2146', 'hist-ticket-88-2146', 'cash', 45500, 'completed', '2026-01-26T14:09:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2147', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-26T08:47:59.000Z', '2026-01-26T08:47:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2147-1', 'hist-ticket-88-2147', 'prod-mocha', 1, 16500, 0, '2026-01-26T08:47:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2147-2', 'hist-ticket-88-2147', 'prod-americano', 1, 12000, 0, '2026-01-26T08:47:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2147-3', 'hist-ticket-88-2147', 'prod-americano', 1, 12000, 0, '2026-01-26T08:47:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2147', 'hist-ticket-88-2147', 'cash', 40500, 'completed', '2026-01-26T08:47:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2148', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-26T14:21:54.000Z', '2026-01-26T14:21:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2148-1', 'hist-ticket-88-2148', 'prod-mocha', 1, 16500, 0, '2026-01-26T14:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2148-2', 'hist-ticket-88-2148', 'prod-mocha', 1, 16500, 0, '2026-01-26T14:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2148-3', 'hist-ticket-88-2148', 'prod-mocha', 1, 16500, 0, '2026-01-26T14:21:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2148-4', 'hist-ticket-88-2148', 'prod-americano', 1, 12000, 0, '2026-01-26T14:21:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2148', 'hist-ticket-88-2148', 'cash', 61500, 'completed', '2026-01-26T14:21:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2149', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-01-26T08:28:50.000Z', '2026-01-26T08:28:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2149-1', 'hist-ticket-88-2149', 'prod-americano', 1, 12000, 0, '2026-01-26T08:28:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2149-2', 'hist-ticket-88-2149', 'prod-mocha', 1, 16500, 0, '2026-01-26T08:28:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2149', 'hist-ticket-88-2149', 'cash', 28500, 'completed', '2026-01-26T08:28:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2150', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-26T15:30:12.000Z', '2026-01-26T15:30:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2150-1', 'hist-ticket-88-2150', 'prod-latte', 1, 15000, 0, '2026-01-26T15:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2150-2', 'hist-ticket-88-2150', 'prod-latte', 1, 15000, 0, '2026-01-26T15:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2150-3', 'hist-ticket-88-2150', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T15:30:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2150-4', 'hist-ticket-88-2150', 'prod-mocha', 1, 16500, 0, '2026-01-26T15:30:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2150', 'hist-ticket-88-2150', 'cash', 61000, 'completed', '2026-01-26T15:30:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2151', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-01-26T17:20:10.000Z', '2026-01-26T17:20:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2151-1', 'hist-ticket-88-2151', 'prod-latte', 1, 15000, 0, '2026-01-26T17:20:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2151-2', 'hist-ticket-88-2151', 'prod-mocha', 1, 16500, 0, '2026-01-26T17:20:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2151-3', 'hist-ticket-88-2151', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T17:20:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2151-4', 'hist-ticket-88-2151', 'prod-mocha', 1, 16500, 0, '2026-01-26T17:20:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2151', 'hist-ticket-88-2151', 'cash', 62500, 'completed', '2026-01-26T17:20:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2152', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-26T16:52:44.000Z', '2026-01-26T16:52:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2152-1', 'hist-ticket-88-2152', 'prod-mocha', 1, 16500, 0, '2026-01-26T16:52:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2152', 'hist-ticket-88-2152', 'cash', 16500, 'completed', '2026-01-26T16:52:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2153', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-26T11:30:37.000Z', '2026-01-26T11:30:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2153-1', 'hist-ticket-88-2153', 'prod-mocha', 1, 16500, 0, '2026-01-26T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2153-2', 'hist-ticket-88-2153', 'prod-mocha', 1, 16500, 0, '2026-01-26T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2153-3', 'hist-ticket-88-2153', 'prod-latte', 1, 15000, 0, '2026-01-26T11:30:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2153-4', 'hist-ticket-88-2153', 'prod-americano', 1, 12000, 0, '2026-01-26T11:30:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2153', 'hist-ticket-88-2153', 'cash', 60000, 'completed', '2026-01-26T11:30:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-88-2154', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-26T11:23:43.000Z', '2026-01-26T11:23:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2154-1', 'hist-ticket-88-2154', 'prod-latte', 1, 15000, 0, '2026-01-26T11:23:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2154-2', 'hist-ticket-88-2154', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T11:23:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2154-3', 'hist-ticket-88-2154', 'prod-americano', 1, 12000, 0, '2026-01-26T11:23:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-88-2154-4', 'hist-ticket-88-2154', 'prod-cappuccino', 1, 14500, 0, '2026-01-26T11:23:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-88-2154', 'hist-ticket-88-2154', 'cash', 56000, 'completed', '2026-01-26T11:23:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2155', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-27T11:35:46.000Z', '2026-01-27T11:35:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2155-1', 'hist-ticket-89-2155', 'prod-mocha', 1, 16500, 0, '2026-01-27T11:35:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2155-2', 'hist-ticket-89-2155', 'prod-mocha', 1, 16500, 0, '2026-01-27T11:35:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2155', 'hist-ticket-89-2155', 'cash', 33000, 'completed', '2026-01-27T11:35:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2156', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-01-27T09:48:19.000Z', '2026-01-27T09:48:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2156-1', 'hist-ticket-89-2156', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T09:48:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2156-2', 'hist-ticket-89-2156', 'prod-mocha', 1, 16500, 0, '2026-01-27T09:48:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2156-3', 'hist-ticket-89-2156', 'prod-latte', 1, 15000, 0, '2026-01-27T09:48:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2156', 'hist-ticket-89-2156', 'cash', 46000, 'completed', '2026-01-27T09:48:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2157', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-27T09:21:32.000Z', '2026-01-27T09:21:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2157-1', 'hist-ticket-89-2157', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T09:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2157-2', 'hist-ticket-89-2157', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T09:21:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2157', 'hist-ticket-89-2157', 'cash', 29000, 'completed', '2026-01-27T09:21:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2158', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-27T17:41:19.000Z', '2026-01-27T17:41:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2158-1', 'hist-ticket-89-2158', 'prod-latte', 1, 15000, 0, '2026-01-27T17:41:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2158-2', 'hist-ticket-89-2158', 'prod-latte', 1, 15000, 0, '2026-01-27T17:41:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2158-3', 'hist-ticket-89-2158', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T17:41:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2158', 'hist-ticket-89-2158', 'cash', 44500, 'completed', '2026-01-27T17:41:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2159', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-27T09:53:15.000Z', '2026-01-27T09:53:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2159-1', 'hist-ticket-89-2159', 'prod-mocha', 1, 16500, 0, '2026-01-27T09:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2159-2', 'hist-ticket-89-2159', 'prod-americano', 1, 12000, 0, '2026-01-27T09:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2159-3', 'hist-ticket-89-2159', 'prod-latte', 1, 15000, 0, '2026-01-27T09:53:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2159-4', 'hist-ticket-89-2159', 'prod-americano', 1, 12000, 0, '2026-01-27T09:53:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2159', 'hist-ticket-89-2159', 'cash', 55500, 'completed', '2026-01-27T09:53:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2160', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-27T08:36:32.000Z', '2026-01-27T08:36:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2160-1', 'hist-ticket-89-2160', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T08:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2160-2', 'hist-ticket-89-2160', 'prod-americano', 1, 12000, 0, '2026-01-27T08:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2160-3', 'hist-ticket-89-2160', 'prod-americano', 1, 12000, 0, '2026-01-27T08:36:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2160-4', 'hist-ticket-89-2160', 'prod-latte', 1, 15000, 0, '2026-01-27T08:36:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2160', 'hist-ticket-89-2160', 'cash', 53500, 'completed', '2026-01-27T08:36:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2161', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-27T15:25:15.000Z', '2026-01-27T15:25:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2161-1', 'hist-ticket-89-2161', 'prod-americano', 1, 12000, 0, '2026-01-27T15:25:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2161-2', 'hist-ticket-89-2161', 'prod-mocha', 1, 16500, 0, '2026-01-27T15:25:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2161', 'hist-ticket-89-2161', 'cash', 28500, 'completed', '2026-01-27T15:25:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2162', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-27T18:40:26.000Z', '2026-01-27T18:40:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2162-1', 'hist-ticket-89-2162', 'prod-mocha', 1, 16500, 0, '2026-01-27T18:40:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2162-2', 'hist-ticket-89-2162', 'prod-mocha', 1, 16500, 0, '2026-01-27T18:40:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2162-3', 'hist-ticket-89-2162', 'prod-americano', 1, 12000, 0, '2026-01-27T18:40:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2162', 'hist-ticket-89-2162', 'cash', 45000, 'completed', '2026-01-27T18:40:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2163', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-01-27T13:04:44.000Z', '2026-01-27T13:04:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2163-1', 'hist-ticket-89-2163', 'prod-latte', 1, 15000, 0, '2026-01-27T13:04:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2163-2', 'hist-ticket-89-2163', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:04:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2163', 'hist-ticket-89-2163', 'cash', 31500, 'completed', '2026-01-27T13:04:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2164', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-27T12:18:29.000Z', '2026-01-27T12:18:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2164-1', 'hist-ticket-89-2164', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T12:18:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2164-2', 'hist-ticket-89-2164', 'prod-mocha', 1, 16500, 0, '2026-01-27T12:18:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2164-3', 'hist-ticket-89-2164', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T12:18:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2164-4', 'hist-ticket-89-2164', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T12:18:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2164', 'hist-ticket-89-2164', 'cash', 60000, 'completed', '2026-01-27T12:18:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2165', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-01-27T16:20:53.000Z', '2026-01-27T16:20:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2165-1', 'hist-ticket-89-2165', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T16:20:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2165-2', 'hist-ticket-89-2165', 'prod-americano', 1, 12000, 0, '2026-01-27T16:20:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2165-3', 'hist-ticket-89-2165', 'prod-americano', 1, 12000, 0, '2026-01-27T16:20:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2165', 'hist-ticket-89-2165', 'cash', 38500, 'completed', '2026-01-27T16:20:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2166', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-27T13:18:03.000Z', '2026-01-27T13:18:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2166-1', 'hist-ticket-89-2166', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:18:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2166', 'hist-ticket-89-2166', 'cash', 16500, 'completed', '2026-01-27T13:18:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2167', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-27T13:38:50.000Z', '2026-01-27T13:38:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2167-1', 'hist-ticket-89-2167', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:38:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2167-2', 'hist-ticket-89-2167', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:38:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2167-3', 'hist-ticket-89-2167', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:38:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2167-4', 'hist-ticket-89-2167', 'prod-americano', 1, 12000, 0, '2026-01-27T13:38:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2167', 'hist-ticket-89-2167', 'cash', 61500, 'completed', '2026-01-27T13:38:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2168', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-27T19:13:08.000Z', '2026-01-27T19:13:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2168-1', 'hist-ticket-89-2168', 'prod-latte', 1, 15000, 0, '2026-01-27T19:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2168-2', 'hist-ticket-89-2168', 'prod-americano', 1, 12000, 0, '2026-01-27T19:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2168-3', 'hist-ticket-89-2168', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T19:13:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2168', 'hist-ticket-89-2168', 'cash', 41500, 'completed', '2026-01-27T19:13:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2169', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-27T14:51:50.000Z', '2026-01-27T14:51:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2169-1', 'hist-ticket-89-2169', 'prod-latte', 1, 15000, 0, '2026-01-27T14:51:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2169-2', 'hist-ticket-89-2169', 'prod-americano', 1, 12000, 0, '2026-01-27T14:51:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2169', 'hist-ticket-89-2169', 'cash', 27000, 'completed', '2026-01-27T14:51:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2170', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-01-27T14:14:49.000Z', '2026-01-27T14:14:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2170-1', 'hist-ticket-89-2170', 'prod-americano', 1, 12000, 0, '2026-01-27T14:14:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2170-2', 'hist-ticket-89-2170', 'prod-mocha', 1, 16500, 0, '2026-01-27T14:14:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2170', 'hist-ticket-89-2170', 'cash', 28500, 'completed', '2026-01-27T14:14:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2171', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-27T11:39:19.000Z', '2026-01-27T11:39:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2171-1', 'hist-ticket-89-2171', 'prod-latte', 1, 15000, 0, '2026-01-27T11:39:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2171-2', 'hist-ticket-89-2171', 'prod-americano', 1, 12000, 0, '2026-01-27T11:39:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2171', 'hist-ticket-89-2171', 'cash', 27000, 'completed', '2026-01-27T11:39:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-89-2172', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-27T13:04:38.000Z', '2026-01-27T13:04:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2172-1', 'hist-ticket-89-2172', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T13:04:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2172-2', 'hist-ticket-89-2172', 'prod-mocha', 1, 16500, 0, '2026-01-27T13:04:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2172-3', 'hist-ticket-89-2172', 'prod-cappuccino', 1, 14500, 0, '2026-01-27T13:04:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-89-2172-4', 'hist-ticket-89-2172', 'prod-americano', 1, 12000, 0, '2026-01-27T13:04:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-89-2172', 'hist-ticket-89-2172', 'cash', 57500, 'completed', '2026-01-27T13:04:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2173', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-28T10:53:29.000Z', '2026-01-28T10:53:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2173-1', 'hist-ticket-90-2173', 'prod-latte', 1, 15000, 0, '2026-01-28T10:53:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2173-2', 'hist-ticket-90-2173', 'prod-americano', 1, 12000, 0, '2026-01-28T10:53:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2173-3', 'hist-ticket-90-2173', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T10:53:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2173', 'hist-ticket-90-2173', 'cash', 41500, 'completed', '2026-01-28T10:53:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2174', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-28T18:17:35.000Z', '2026-01-28T18:17:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2174-1', 'hist-ticket-90-2174', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T18:17:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2174-2', 'hist-ticket-90-2174', 'prod-latte', 1, 15000, 0, '2026-01-28T18:17:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2174-3', 'hist-ticket-90-2174', 'prod-mocha', 1, 16500, 0, '2026-01-28T18:17:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2174', 'hist-ticket-90-2174', 'cash', 46000, 'completed', '2026-01-28T18:17:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2175', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-28T14:48:10.000Z', '2026-01-28T14:48:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2175-1', 'hist-ticket-90-2175', 'prod-americano', 1, 12000, 0, '2026-01-28T14:48:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2175-2', 'hist-ticket-90-2175', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T14:48:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2175-3', 'hist-ticket-90-2175', 'prod-americano', 1, 12000, 0, '2026-01-28T14:48:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2175-4', 'hist-ticket-90-2175', 'prod-latte', 1, 15000, 0, '2026-01-28T14:48:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2175', 'hist-ticket-90-2175', 'cash', 53500, 'completed', '2026-01-28T14:48:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2176', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-28T08:20:28.000Z', '2026-01-28T08:20:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2176-1', 'hist-ticket-90-2176', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T08:20:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2176', 'hist-ticket-90-2176', 'cash', 14500, 'completed', '2026-01-28T08:20:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2177', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-28T18:48:51.000Z', '2026-01-28T18:48:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2177-1', 'hist-ticket-90-2177', 'prod-mocha', 1, 16500, 0, '2026-01-28T18:48:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2177', 'hist-ticket-90-2177', 'cash', 16500, 'completed', '2026-01-28T18:48:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2178', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-01-28T14:19:20.000Z', '2026-01-28T14:19:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2178-1', 'hist-ticket-90-2178', 'prod-latte', 1, 15000, 0, '2026-01-28T14:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2178-2', 'hist-ticket-90-2178', 'prod-latte', 1, 15000, 0, '2026-01-28T14:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2178-3', 'hist-ticket-90-2178', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T14:19:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2178-4', 'hist-ticket-90-2178', 'prod-americano', 1, 12000, 0, '2026-01-28T14:19:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2178', 'hist-ticket-90-2178', 'cash', 56500, 'completed', '2026-01-28T14:19:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2179', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-01-28T09:59:53.000Z', '2026-01-28T09:59:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2179-1', 'hist-ticket-90-2179', 'prod-latte', 1, 15000, 0, '2026-01-28T09:59:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2179-2', 'hist-ticket-90-2179', 'prod-mocha', 1, 16500, 0, '2026-01-28T09:59:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2179', 'hist-ticket-90-2179', 'cash', 31500, 'completed', '2026-01-28T09:59:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2180', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-01-28T15:15:17.000Z', '2026-01-28T15:15:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2180-1', 'hist-ticket-90-2180', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T15:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2180-2', 'hist-ticket-90-2180', 'prod-americano', 1, 12000, 0, '2026-01-28T15:15:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2180-3', 'hist-ticket-90-2180', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T15:15:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2180', 'hist-ticket-90-2180', 'cash', 41000, 'completed', '2026-01-28T15:15:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2181', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-28T15:02:01.000Z', '2026-01-28T15:02:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2181-1', 'hist-ticket-90-2181', 'prod-latte', 1, 15000, 0, '2026-01-28T15:02:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2181-2', 'hist-ticket-90-2181', 'prod-latte', 1, 15000, 0, '2026-01-28T15:02:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2181-3', 'hist-ticket-90-2181', 'prod-mocha', 1, 16500, 0, '2026-01-28T15:02:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2181', 'hist-ticket-90-2181', 'cash', 46500, 'completed', '2026-01-28T15:02:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2182', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-01-28T09:49:37.000Z', '2026-01-28T09:49:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2182-1', 'hist-ticket-90-2182', 'prod-latte', 1, 15000, 0, '2026-01-28T09:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2182-2', 'hist-ticket-90-2182', 'prod-americano', 1, 12000, 0, '2026-01-28T09:49:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2182-3', 'hist-ticket-90-2182', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T09:49:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2182', 'hist-ticket-90-2182', 'cash', 41500, 'completed', '2026-01-28T09:49:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2183', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-28T19:36:27.000Z', '2026-01-28T19:36:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2183-1', 'hist-ticket-90-2183', 'prod-americano', 1, 12000, 0, '2026-01-28T19:36:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2183-2', 'hist-ticket-90-2183', 'prod-latte', 1, 15000, 0, '2026-01-28T19:36:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2183', 'hist-ticket-90-2183', 'cash', 27000, 'completed', '2026-01-28T19:36:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2184', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-28T11:55:24.000Z', '2026-01-28T11:55:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2184-1', 'hist-ticket-90-2184', 'prod-americano', 1, 12000, 0, '2026-01-28T11:55:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2184', 'hist-ticket-90-2184', 'cash', 12000, 'completed', '2026-01-28T11:55:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2185', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-01-28T11:27:20.000Z', '2026-01-28T11:27:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2185-1', 'hist-ticket-90-2185', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T11:27:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2185-2', 'hist-ticket-90-2185', 'prod-americano', 1, 12000, 0, '2026-01-28T11:27:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2185', 'hist-ticket-90-2185', 'cash', 26500, 'completed', '2026-01-28T11:27:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2186', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-28T18:19:16.000Z', '2026-01-28T18:19:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2186-1', 'hist-ticket-90-2186', 'prod-mocha', 1, 16500, 0, '2026-01-28T18:19:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2186-2', 'hist-ticket-90-2186', 'prod-americano', 1, 12000, 0, '2026-01-28T18:19:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2186-3', 'hist-ticket-90-2186', 'prod-mocha', 1, 16500, 0, '2026-01-28T18:19:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2186-4', 'hist-ticket-90-2186', 'prod-mocha', 1, 16500, 0, '2026-01-28T18:19:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2186', 'hist-ticket-90-2186', 'cash', 61500, 'completed', '2026-01-28T18:19:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2187', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-28T14:05:11.000Z', '2026-01-28T14:05:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2187-1', 'hist-ticket-90-2187', 'prod-latte', 1, 15000, 0, '2026-01-28T14:05:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2187-2', 'hist-ticket-90-2187', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T14:05:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2187-3', 'hist-ticket-90-2187', 'prod-americano', 1, 12000, 0, '2026-01-28T14:05:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2187', 'hist-ticket-90-2187', 'cash', 41500, 'completed', '2026-01-28T14:05:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2188', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-28T08:36:44.000Z', '2026-01-28T08:36:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2188-1', 'hist-ticket-90-2188', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T08:36:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2188-2', 'hist-ticket-90-2188', 'prod-americano', 1, 12000, 0, '2026-01-28T08:36:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2188-3', 'hist-ticket-90-2188', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T08:36:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2188', 'hist-ticket-90-2188', 'cash', 41000, 'completed', '2026-01-28T08:36:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2189', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-28T19:30:05.000Z', '2026-01-28T19:30:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2189-1', 'hist-ticket-90-2189', 'prod-americano', 1, 12000, 0, '2026-01-28T19:30:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2189-2', 'hist-ticket-90-2189', 'prod-mocha', 1, 16500, 0, '2026-01-28T19:30:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2189-3', 'hist-ticket-90-2189', 'prod-mocha', 1, 16500, 0, '2026-01-28T19:30:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2189', 'hist-ticket-90-2189', 'cash', 45000, 'completed', '2026-01-28T19:30:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2190', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-28T10:12:01.000Z', '2026-01-28T10:12:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2190-1', 'hist-ticket-90-2190', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T10:12:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2190-2', 'hist-ticket-90-2190', 'prod-americano', 1, 12000, 0, '2026-01-28T10:12:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2190-3', 'hist-ticket-90-2190', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T10:12:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2190', 'hist-ticket-90-2190', 'cash', 41000, 'completed', '2026-01-28T10:12:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2191', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-28T17:54:59.000Z', '2026-01-28T17:54:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2191-1', 'hist-ticket-90-2191', 'prod-americano', 1, 12000, 0, '2026-01-28T17:54:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2191-2', 'hist-ticket-90-2191', 'prod-mocha', 1, 16500, 0, '2026-01-28T17:54:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2191-3', 'hist-ticket-90-2191', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T17:54:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2191', 'hist-ticket-90-2191', 'cash', 43000, 'completed', '2026-01-28T17:54:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-90-2192', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-28T10:15:10.000Z', '2026-01-28T10:15:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2192-1', 'hist-ticket-90-2192', 'prod-latte', 1, 15000, 0, '2026-01-28T10:15:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2192-2', 'hist-ticket-90-2192', 'prod-cappuccino', 1, 14500, 0, '2026-01-28T10:15:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2192-3', 'hist-ticket-90-2192', 'prod-latte', 1, 15000, 0, '2026-01-28T10:15:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-90-2192-4', 'hist-ticket-90-2192', 'prod-americano', 1, 12000, 0, '2026-01-28T10:15:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-90-2192', 'hist-ticket-90-2192', 'cash', 56500, 'completed', '2026-01-28T10:15:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2193', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-29T19:33:04.000Z', '2026-01-29T19:33:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2193-1', 'hist-ticket-91-2193', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T19:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2193-2', 'hist-ticket-91-2193', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T19:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2193-3', 'hist-ticket-91-2193', 'prod-mocha', 1, 16500, 0, '2026-01-29T19:33:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2193-4', 'hist-ticket-91-2193', 'prod-mocha', 1, 16500, 0, '2026-01-29T19:33:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2193', 'hist-ticket-91-2193', 'cash', 62000, 'completed', '2026-01-29T19:33:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2194', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-29T12:35:34.000Z', '2026-01-29T12:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2194-1', 'hist-ticket-91-2194', 'prod-americano', 1, 12000, 0, '2026-01-29T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2194-2', 'hist-ticket-91-2194', 'prod-latte', 1, 15000, 0, '2026-01-29T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2194-3', 'hist-ticket-91-2194', 'prod-latte', 1, 15000, 0, '2026-01-29T12:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2194-4', 'hist-ticket-91-2194', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T12:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2194', 'hist-ticket-91-2194', 'cash', 56500, 'completed', '2026-01-29T12:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2195', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-29T09:35:37.000Z', '2026-01-29T09:35:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2195-1', 'hist-ticket-91-2195', 'prod-americano', 1, 12000, 0, '2026-01-29T09:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2195-2', 'hist-ticket-91-2195', 'prod-mocha', 1, 16500, 0, '2026-01-29T09:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2195-3', 'hist-ticket-91-2195', 'prod-latte', 1, 15000, 0, '2026-01-29T09:35:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2195-4', 'hist-ticket-91-2195', 'prod-latte', 1, 15000, 0, '2026-01-29T09:35:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2195', 'hist-ticket-91-2195', 'cash', 58500, 'completed', '2026-01-29T09:35:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2196', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-29T10:28:31.000Z', '2026-01-29T10:28:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2196-1', 'hist-ticket-91-2196', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T10:28:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2196', 'hist-ticket-91-2196', 'cash', 14500, 'completed', '2026-01-29T10:28:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2197', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-01-29T17:31:07.000Z', '2026-01-29T17:31:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2197-1', 'hist-ticket-91-2197', 'prod-mocha', 1, 16500, 0, '2026-01-29T17:31:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2197-2', 'hist-ticket-91-2197', 'prod-mocha', 1, 16500, 0, '2026-01-29T17:31:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2197-3', 'hist-ticket-91-2197', 'prod-latte', 1, 15000, 0, '2026-01-29T17:31:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2197-4', 'hist-ticket-91-2197', 'prod-americano', 1, 12000, 0, '2026-01-29T17:31:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2197', 'hist-ticket-91-2197', 'cash', 60000, 'completed', '2026-01-29T17:31:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2198', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-29T14:23:30.000Z', '2026-01-29T14:23:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2198-1', 'hist-ticket-91-2198', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T14:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2198-2', 'hist-ticket-91-2198', 'prod-latte', 1, 15000, 0, '2026-01-29T14:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2198-3', 'hist-ticket-91-2198', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T14:23:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2198-4', 'hist-ticket-91-2198', 'prod-mocha', 1, 16500, 0, '2026-01-29T14:23:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2198', 'hist-ticket-91-2198', 'cash', 60500, 'completed', '2026-01-29T14:23:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2199', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-29T10:32:56.000Z', '2026-01-29T10:32:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2199-1', 'hist-ticket-91-2199', 'prod-mocha', 1, 16500, 0, '2026-01-29T10:32:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2199-2', 'hist-ticket-91-2199', 'prod-latte', 1, 15000, 0, '2026-01-29T10:32:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2199-3', 'hist-ticket-91-2199', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T10:32:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2199-4', 'hist-ticket-91-2199', 'prod-latte', 1, 15000, 0, '2026-01-29T10:32:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2199', 'hist-ticket-91-2199', 'cash', 61000, 'completed', '2026-01-29T10:32:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2200', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-29T16:21:20.000Z', '2026-01-29T16:21:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2200-1', 'hist-ticket-91-2200', 'prod-mocha', 1, 16500, 0, '2026-01-29T16:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2200-2', 'hist-ticket-91-2200', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T16:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2200-3', 'hist-ticket-91-2200', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T16:21:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2200-4', 'hist-ticket-91-2200', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T16:21:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2200', 'hist-ticket-91-2200', 'cash', 60000, 'completed', '2026-01-29T16:21:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2201', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-29T17:01:56.000Z', '2026-01-29T17:01:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2201-1', 'hist-ticket-91-2201', 'prod-mocha', 1, 16500, 0, '2026-01-29T17:01:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2201', 'hist-ticket-91-2201', 'cash', 16500, 'completed', '2026-01-29T17:01:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2202', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-01-29T11:02:30.000Z', '2026-01-29T11:02:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2202-1', 'hist-ticket-91-2202', 'prod-americano', 1, 12000, 0, '2026-01-29T11:02:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2202-2', 'hist-ticket-91-2202', 'prod-americano', 1, 12000, 0, '2026-01-29T11:02:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2202', 'hist-ticket-91-2202', 'cash', 24000, 'completed', '2026-01-29T11:02:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2203', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-29T09:36:59.000Z', '2026-01-29T09:36:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2203-1', 'hist-ticket-91-2203', 'prod-americano', 1, 12000, 0, '2026-01-29T09:36:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2203-2', 'hist-ticket-91-2203', 'prod-latte', 1, 15000, 0, '2026-01-29T09:36:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2203', 'hist-ticket-91-2203', 'cash', 27000, 'completed', '2026-01-29T09:36:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2204', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-29T18:50:22.000Z', '2026-01-29T18:50:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2204-1', 'hist-ticket-91-2204', 'prod-mocha', 1, 16500, 0, '2026-01-29T18:50:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2204-2', 'hist-ticket-91-2204', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T18:50:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2204-3', 'hist-ticket-91-2204', 'prod-americano', 1, 12000, 0, '2026-01-29T18:50:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2204-4', 'hist-ticket-91-2204', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T18:50:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2204', 'hist-ticket-91-2204', 'cash', 57500, 'completed', '2026-01-29T18:50:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2205', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-01-29T14:21:01.000Z', '2026-01-29T14:21:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2205-1', 'hist-ticket-91-2205', 'prod-latte', 1, 15000, 0, '2026-01-29T14:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2205-2', 'hist-ticket-91-2205', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T14:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2205-3', 'hist-ticket-91-2205', 'prod-mocha', 1, 16500, 0, '2026-01-29T14:21:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2205-4', 'hist-ticket-91-2205', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T14:21:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2205', 'hist-ticket-91-2205', 'cash', 60500, 'completed', '2026-01-29T14:21:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2206', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-29T17:31:11.000Z', '2026-01-29T17:31:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2206-1', 'hist-ticket-91-2206', 'prod-latte', 1, 15000, 0, '2026-01-29T17:31:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2206-2', 'hist-ticket-91-2206', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T17:31:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2206-3', 'hist-ticket-91-2206', 'prod-americano', 1, 12000, 0, '2026-01-29T17:31:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2206-4', 'hist-ticket-91-2206', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T17:31:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2206', 'hist-ticket-91-2206', 'cash', 56000, 'completed', '2026-01-29T17:31:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2207', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-29T12:07:10.000Z', '2026-01-29T12:07:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2207-1', 'hist-ticket-91-2207', 'prod-americano', 1, 12000, 0, '2026-01-29T12:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2207-2', 'hist-ticket-91-2207', 'prod-latte', 1, 15000, 0, '2026-01-29T12:07:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2207-3', 'hist-ticket-91-2207', 'prod-americano', 1, 12000, 0, '2026-01-29T12:07:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2207', 'hist-ticket-91-2207', 'cash', 39000, 'completed', '2026-01-29T12:07:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2208', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-29T13:04:10.000Z', '2026-01-29T13:04:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2208-1', 'hist-ticket-91-2208', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T13:04:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2208-2', 'hist-ticket-91-2208', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T13:04:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2208', 'hist-ticket-91-2208', 'cash', 29000, 'completed', '2026-01-29T13:04:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2209', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-01-29T10:42:17.000Z', '2026-01-29T10:42:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2209-1', 'hist-ticket-91-2209', 'prod-mocha', 1, 16500, 0, '2026-01-29T10:42:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2209-2', 'hist-ticket-91-2209', 'prod-cappuccino', 1, 14500, 0, '2026-01-29T10:42:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2209-3', 'hist-ticket-91-2209', 'prod-latte', 1, 15000, 0, '2026-01-29T10:42:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2209', 'hist-ticket-91-2209', 'cash', 46000, 'completed', '2026-01-29T10:42:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-91-2210', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-29T19:56:46.000Z', '2026-01-29T19:56:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2210-1', 'hist-ticket-91-2210', 'prod-mocha', 1, 16500, 0, '2026-01-29T19:56:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2210-2', 'hist-ticket-91-2210', 'prod-americano', 1, 12000, 0, '2026-01-29T19:56:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-91-2210-3', 'hist-ticket-91-2210', 'prod-mocha', 1, 16500, 0, '2026-01-29T19:56:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-91-2210', 'hist-ticket-91-2210', 'cash', 45000, 'completed', '2026-01-29T19:56:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2211', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-01-30T13:31:40.000Z', '2026-01-30T13:31:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2211-1', 'hist-ticket-92-2211', 'prod-americano', 1, 12000, 0, '2026-01-30T13:31:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2211-2', 'hist-ticket-92-2211', 'prod-mocha', 1, 16500, 0, '2026-01-30T13:31:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2211', 'hist-ticket-92-2211', 'cash', 28500, 'completed', '2026-01-30T13:31:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2212', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-30T13:20:22.000Z', '2026-01-30T13:20:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2212-1', 'hist-ticket-92-2212', 'prod-latte', 1, 15000, 0, '2026-01-30T13:20:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2212-2', 'hist-ticket-92-2212', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T13:20:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2212', 'hist-ticket-92-2212', 'cash', 29500, 'completed', '2026-01-30T13:20:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2213', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-30T13:45:58.000Z', '2026-01-30T13:45:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2213-1', 'hist-ticket-92-2213', 'prod-mocha', 1, 16500, 0, '2026-01-30T13:45:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2213-2', 'hist-ticket-92-2213', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T13:45:58.000Z');