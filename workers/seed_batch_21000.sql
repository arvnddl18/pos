INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4642-3', 'hist-ticket-178-4642', 'prod-mocha', 1, 16500, 0, '2026-04-26T16:08:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4642', 'hist-ticket-178-4642', 'cash', 40500, 'completed', '2026-04-26T16:08:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4643', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-26T08:28:43.000Z', '2026-04-26T08:28:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4643-1', 'hist-ticket-178-4643', 'prod-americano', 1, 12000, 0, '2026-04-26T08:28:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4643', 'hist-ticket-178-4643', 'cash', 12000, 'completed', '2026-04-26T08:28:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4644', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-26T14:38:21.000Z', '2026-04-26T14:38:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4644-1', 'hist-ticket-178-4644', 'prod-latte', 1, 15000, 0, '2026-04-26T14:38:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4644-2', 'hist-ticket-178-4644', 'prod-americano', 1, 12000, 0, '2026-04-26T14:38:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4644-3', 'hist-ticket-178-4644', 'prod-americano', 1, 12000, 0, '2026-04-26T14:38:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4644', 'hist-ticket-178-4644', 'cash', 39000, 'completed', '2026-04-26T14:38:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4645', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-26T15:07:59.000Z', '2026-04-26T15:07:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4645-1', 'hist-ticket-178-4645', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T15:07:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4645', 'hist-ticket-178-4645', 'cash', 14500, 'completed', '2026-04-26T15:07:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4646', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-26T11:07:58.000Z', '2026-04-26T11:07:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4646-1', 'hist-ticket-178-4646', 'prod-mocha', 1, 16500, 0, '2026-04-26T11:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4646-2', 'hist-ticket-178-4646', 'prod-latte', 1, 15000, 0, '2026-04-26T11:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4646-3', 'hist-ticket-178-4646', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T11:07:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4646', 'hist-ticket-178-4646', 'cash', 46000, 'completed', '2026-04-26T11:07:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4647', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-26T19:51:32.000Z', '2026-04-26T19:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4647-1', 'hist-ticket-178-4647', 'prod-americano', 1, 12000, 0, '2026-04-26T19:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4647-2', 'hist-ticket-178-4647', 'prod-latte', 1, 15000, 0, '2026-04-26T19:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4647-3', 'hist-ticket-178-4647', 'prod-americano', 1, 12000, 0, '2026-04-26T19:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4647-4', 'hist-ticket-178-4647', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T19:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4647', 'hist-ticket-178-4647', 'cash', 53500, 'completed', '2026-04-26T19:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4648', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-04-26T08:18:44.000Z', '2026-04-26T08:18:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4648-1', 'hist-ticket-178-4648', 'prod-americano', 1, 12000, 0, '2026-04-26T08:18:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4648-2', 'hist-ticket-178-4648', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T08:18:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4648-3', 'hist-ticket-178-4648', 'prod-latte', 1, 15000, 0, '2026-04-26T08:18:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4648-4', 'hist-ticket-178-4648', 'prod-latte', 1, 15000, 0, '2026-04-26T08:18:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4648', 'hist-ticket-178-4648', 'cash', 56500, 'completed', '2026-04-26T08:18:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4649', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-26T18:30:53.000Z', '2026-04-26T18:30:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4649-1', 'hist-ticket-178-4649', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T18:30:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4649-2', 'hist-ticket-178-4649', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T18:30:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4649-3', 'hist-ticket-178-4649', 'prod-latte', 1, 15000, 0, '2026-04-26T18:30:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4649', 'hist-ticket-178-4649', 'cash', 44000, 'completed', '2026-04-26T18:30:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4650', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-26T16:39:14.000Z', '2026-04-26T16:39:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4650-1', 'hist-ticket-178-4650', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T16:39:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4650-2', 'hist-ticket-178-4650', 'prod-americano', 1, 12000, 0, '2026-04-26T16:39:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4650', 'hist-ticket-178-4650', 'cash', 26500, 'completed', '2026-04-26T16:39:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4651', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-26T09:15:49.000Z', '2026-04-26T09:15:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4651-1', 'hist-ticket-178-4651', 'prod-latte', 1, 15000, 0, '2026-04-26T09:15:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4651-2', 'hist-ticket-178-4651', 'prod-latte', 1, 15000, 0, '2026-04-26T09:15:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4651-3', 'hist-ticket-178-4651', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:15:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4651-4', 'hist-ticket-178-4651', 'prod-mocha', 1, 16500, 0, '2026-04-26T09:15:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4651', 'hist-ticket-178-4651', 'cash', 63000, 'completed', '2026-04-26T09:15:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4652', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-26T08:57:08.000Z', '2026-04-26T08:57:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4652-1', 'hist-ticket-178-4652', 'prod-americano', 1, 12000, 0, '2026-04-26T08:57:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4652', 'hist-ticket-178-4652', 'cash', 12000, 'completed', '2026-04-26T08:57:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4653', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-26T15:00:43.000Z', '2026-04-26T15:00:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4653-1', 'hist-ticket-178-4653', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T15:00:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4653-2', 'hist-ticket-178-4653', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T15:00:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4653', 'hist-ticket-178-4653', 'cash', 29000, 'completed', '2026-04-26T15:00:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4654', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-26T16:49:55.000Z', '2026-04-26T16:49:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4654-1', 'hist-ticket-178-4654', 'prod-americano', 1, 12000, 0, '2026-04-26T16:49:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4654-2', 'hist-ticket-178-4654', 'prod-mocha', 1, 16500, 0, '2026-04-26T16:49:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4654-3', 'hist-ticket-178-4654', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T16:49:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4654-4', 'hist-ticket-178-4654', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T16:49:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4654', 'hist-ticket-178-4654', 'cash', 57500, 'completed', '2026-04-26T16:49:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4655', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-26T19:19:45.000Z', '2026-04-26T19:19:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4655-1', 'hist-ticket-178-4655', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T19:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4655-2', 'hist-ticket-178-4655', 'prod-latte', 1, 15000, 0, '2026-04-26T19:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4655-3', 'hist-ticket-178-4655', 'prod-latte', 1, 15000, 0, '2026-04-26T19:19:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4655-4', 'hist-ticket-178-4655', 'prod-americano', 1, 12000, 0, '2026-04-26T19:19:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4655', 'hist-ticket-178-4655', 'cash', 56500, 'completed', '2026-04-26T19:19:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4656', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-26T15:16:30.000Z', '2026-04-26T15:16:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4656-1', 'hist-ticket-178-4656', 'prod-mocha', 1, 16500, 0, '2026-04-26T15:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4656-2', 'hist-ticket-178-4656', 'prod-latte', 1, 15000, 0, '2026-04-26T15:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4656-3', 'hist-ticket-178-4656', 'prod-mocha', 1, 16500, 0, '2026-04-26T15:16:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4656-4', 'hist-ticket-178-4656', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T15:16:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4656', 'hist-ticket-178-4656', 'cash', 62500, 'completed', '2026-04-26T15:16:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4657', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-26T19:51:30.000Z', '2026-04-26T19:51:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4657-1', 'hist-ticket-178-4657', 'prod-latte', 1, 15000, 0, '2026-04-26T19:51:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4657-2', 'hist-ticket-178-4657', 'prod-cappuccino', 1, 14500, 0, '2026-04-26T19:51:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4657-3', 'hist-ticket-178-4657', 'prod-mocha', 1, 16500, 0, '2026-04-26T19:51:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4657', 'hist-ticket-178-4657', 'cash', 46000, 'completed', '2026-04-26T19:51:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-178-4658', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-26T14:53:47.000Z', '2026-04-26T14:53:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4658-1', 'hist-ticket-178-4658', 'prod-mocha', 1, 16500, 0, '2026-04-26T14:53:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-178-4658-2', 'hist-ticket-178-4658', 'prod-americano', 1, 12000, 0, '2026-04-26T14:53:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-178-4658', 'hist-ticket-178-4658', 'cash', 28500, 'completed', '2026-04-26T14:53:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4659', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-27T13:57:55.000Z', '2026-04-27T13:57:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4659-1', 'hist-ticket-179-4659', 'prod-americano', 1, 12000, 0, '2026-04-27T13:57:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4659-2', 'hist-ticket-179-4659', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T13:57:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4659', 'hist-ticket-179-4659', 'cash', 26500, 'completed', '2026-04-27T13:57:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4660', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-27T11:44:47.000Z', '2026-04-27T11:44:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4660-1', 'hist-ticket-179-4660', 'prod-americano', 1, 12000, 0, '2026-04-27T11:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4660-2', 'hist-ticket-179-4660', 'prod-americano', 1, 12000, 0, '2026-04-27T11:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4660-3', 'hist-ticket-179-4660', 'prod-mocha', 1, 16500, 0, '2026-04-27T11:44:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4660-4', 'hist-ticket-179-4660', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T11:44:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4660', 'hist-ticket-179-4660', 'cash', 55000, 'completed', '2026-04-27T11:44:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4661', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-04-27T11:54:42.000Z', '2026-04-27T11:54:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4661-1', 'hist-ticket-179-4661', 'prod-latte', 1, 15000, 0, '2026-04-27T11:54:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4661-2', 'hist-ticket-179-4661', 'prod-mocha', 1, 16500, 0, '2026-04-27T11:54:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4661-3', 'hist-ticket-179-4661', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T11:54:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4661', 'hist-ticket-179-4661', 'cash', 46000, 'completed', '2026-04-27T11:54:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4662', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-27T12:23:31.000Z', '2026-04-27T12:23:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4662-1', 'hist-ticket-179-4662', 'prod-latte', 1, 15000, 0, '2026-04-27T12:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4662-2', 'hist-ticket-179-4662', 'prod-mocha', 1, 16500, 0, '2026-04-27T12:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4662-3', 'hist-ticket-179-4662', 'prod-mocha', 1, 16500, 0, '2026-04-27T12:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4662-4', 'hist-ticket-179-4662', 'prod-latte', 1, 15000, 0, '2026-04-27T12:23:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4662', 'hist-ticket-179-4662', 'cash', 63000, 'completed', '2026-04-27T12:23:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4663', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-04-27T08:00:37.000Z', '2026-04-27T08:00:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4663-1', 'hist-ticket-179-4663', 'prod-mocha', 1, 16500, 0, '2026-04-27T08:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4663-2', 'hist-ticket-179-4663', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T08:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4663-3', 'hist-ticket-179-4663', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T08:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4663-4', 'hist-ticket-179-4663', 'prod-latte', 1, 15000, 0, '2026-04-27T08:00:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4663', 'hist-ticket-179-4663', 'cash', 60500, 'completed', '2026-04-27T08:00:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4664', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-27T10:06:19.000Z', '2026-04-27T10:06:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4664-1', 'hist-ticket-179-4664', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T10:06:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4664', 'hist-ticket-179-4664', 'cash', 14500, 'completed', '2026-04-27T10:06:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4665', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-27T13:29:18.000Z', '2026-04-27T13:29:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4665-1', 'hist-ticket-179-4665', 'prod-mocha', 1, 16500, 0, '2026-04-27T13:29:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4665-2', 'hist-ticket-179-4665', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T13:29:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4665', 'hist-ticket-179-4665', 'cash', 31000, 'completed', '2026-04-27T13:29:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4666', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-04-27T12:43:24.000Z', '2026-04-27T12:43:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4666-1', 'hist-ticket-179-4666', 'prod-latte', 1, 15000, 0, '2026-04-27T12:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4666-2', 'hist-ticket-179-4666', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T12:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4666-3', 'hist-ticket-179-4666', 'prod-americano', 1, 12000, 0, '2026-04-27T12:43:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4666-4', 'hist-ticket-179-4666', 'prod-latte', 1, 15000, 0, '2026-04-27T12:43:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4666', 'hist-ticket-179-4666', 'cash', 56500, 'completed', '2026-04-27T12:43:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4667', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-27T11:26:44.000Z', '2026-04-27T11:26:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4667-1', 'hist-ticket-179-4667', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T11:26:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4667-2', 'hist-ticket-179-4667', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T11:26:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4667', 'hist-ticket-179-4667', 'cash', 29000, 'completed', '2026-04-27T11:26:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4668', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-27T18:58:23.000Z', '2026-04-27T18:58:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4668-1', 'hist-ticket-179-4668', 'prod-latte', 1, 15000, 0, '2026-04-27T18:58:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4668-2', 'hist-ticket-179-4668', 'prod-americano', 1, 12000, 0, '2026-04-27T18:58:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4668-3', 'hist-ticket-179-4668', 'prod-americano', 1, 12000, 0, '2026-04-27T18:58:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4668-4', 'hist-ticket-179-4668', 'prod-americano', 1, 12000, 0, '2026-04-27T18:58:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4668', 'hist-ticket-179-4668', 'cash', 51000, 'completed', '2026-04-27T18:58:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4669', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-27T18:06:34.000Z', '2026-04-27T18:06:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4669-1', 'hist-ticket-179-4669', 'prod-mocha', 1, 16500, 0, '2026-04-27T18:06:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4669', 'hist-ticket-179-4669', 'cash', 16500, 'completed', '2026-04-27T18:06:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4670', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-27T12:15:45.000Z', '2026-04-27T12:15:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4670-1', 'hist-ticket-179-4670', 'prod-americano', 1, 12000, 0, '2026-04-27T12:15:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4670', 'hist-ticket-179-4670', 'cash', 12000, 'completed', '2026-04-27T12:15:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4671', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-27T18:25:12.000Z', '2026-04-27T18:25:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4671-1', 'hist-ticket-179-4671', 'prod-mocha', 1, 16500, 0, '2026-04-27T18:25:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4671-2', 'hist-ticket-179-4671', 'prod-latte', 1, 15000, 0, '2026-04-27T18:25:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4671-3', 'hist-ticket-179-4671', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T18:25:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4671', 'hist-ticket-179-4671', 'cash', 46000, 'completed', '2026-04-27T18:25:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4672', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-27T18:10:41.000Z', '2026-04-27T18:10:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4672-1', 'hist-ticket-179-4672', 'prod-americano', 1, 12000, 0, '2026-04-27T18:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4672-2', 'hist-ticket-179-4672', 'prod-americano', 1, 12000, 0, '2026-04-27T18:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4672-3', 'hist-ticket-179-4672', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T18:10:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4672-4', 'hist-ticket-179-4672', 'prod-latte', 1, 15000, 0, '2026-04-27T18:10:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4672', 'hist-ticket-179-4672', 'cash', 53500, 'completed', '2026-04-27T18:10:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4673', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-04-27T12:27:33.000Z', '2026-04-27T12:27:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4673-1', 'hist-ticket-179-4673', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T12:27:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4673-2', 'hist-ticket-179-4673', 'prod-americano', 1, 12000, 0, '2026-04-27T12:27:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4673', 'hist-ticket-179-4673', 'cash', 26500, 'completed', '2026-04-27T12:27:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4674', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-27T11:04:11.000Z', '2026-04-27T11:04:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4674-1', 'hist-ticket-179-4674', 'prod-mocha', 1, 16500, 0, '2026-04-27T11:04:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4674', 'hist-ticket-179-4674', 'cash', 16500, 'completed', '2026-04-27T11:04:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4675', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-27T12:51:06.000Z', '2026-04-27T12:51:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4675-1', 'hist-ticket-179-4675', 'prod-latte', 1, 15000, 0, '2026-04-27T12:51:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4675-2', 'hist-ticket-179-4675', 'prod-americano', 1, 12000, 0, '2026-04-27T12:51:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4675-3', 'hist-ticket-179-4675', 'prod-americano', 1, 12000, 0, '2026-04-27T12:51:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4675-4', 'hist-ticket-179-4675', 'prod-americano', 1, 12000, 0, '2026-04-27T12:51:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4675', 'hist-ticket-179-4675', 'cash', 51000, 'completed', '2026-04-27T12:51:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4676', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-27T12:48:20.000Z', '2026-04-27T12:48:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4676-1', 'hist-ticket-179-4676', 'prod-americano', 1, 12000, 0, '2026-04-27T12:48:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4676', 'hist-ticket-179-4676', 'cash', 12000, 'completed', '2026-04-27T12:48:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4677', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-27T13:56:51.000Z', '2026-04-27T13:56:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4677-1', 'hist-ticket-179-4677', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T13:56:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4677-2', 'hist-ticket-179-4677', 'prod-americano', 1, 12000, 0, '2026-04-27T13:56:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4677-3', 'hist-ticket-179-4677', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T13:56:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4677', 'hist-ticket-179-4677', 'cash', 41000, 'completed', '2026-04-27T13:56:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4678', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-27T10:13:47.000Z', '2026-04-27T10:13:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4678-1', 'hist-ticket-179-4678', 'prod-americano', 1, 12000, 0, '2026-04-27T10:13:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4678-2', 'hist-ticket-179-4678', 'prod-latte', 1, 15000, 0, '2026-04-27T10:13:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4678-3', 'hist-ticket-179-4678', 'prod-latte', 1, 15000, 0, '2026-04-27T10:13:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4678-4', 'hist-ticket-179-4678', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T10:13:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4678', 'hist-ticket-179-4678', 'cash', 56500, 'completed', '2026-04-27T10:13:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-179-4679', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-27T12:39:50.000Z', '2026-04-27T12:39:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4679-1', 'hist-ticket-179-4679', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T12:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4679-2', 'hist-ticket-179-4679', 'prod-mocha', 1, 16500, 0, '2026-04-27T12:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4679-3', 'hist-ticket-179-4679', 'prod-cappuccino', 1, 14500, 0, '2026-04-27T12:39:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-179-4679-4', 'hist-ticket-179-4679', 'prod-latte', 1, 15000, 0, '2026-04-27T12:39:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-179-4679', 'hist-ticket-179-4679', 'cash', 60500, 'completed', '2026-04-27T12:39:50.000Z');