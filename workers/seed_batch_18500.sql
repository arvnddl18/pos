INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4090-4', 'hist-ticket-160-4090', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T17:39:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4090', 'hist-ticket-160-4090', 'cash', 62000, 'completed', '2026-04-08T17:39:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4091', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-08T15:29:45.000Z', '2026-04-08T15:29:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4091-1', 'hist-ticket-160-4091', 'prod-mocha', 1, 16500, 0, '2026-04-08T15:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4091-2', 'hist-ticket-160-4091', 'prod-americano', 1, 12000, 0, '2026-04-08T15:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4091-3', 'hist-ticket-160-4091', 'prod-mocha', 1, 16500, 0, '2026-04-08T15:29:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4091-4', 'hist-ticket-160-4091', 'prod-latte', 1, 15000, 0, '2026-04-08T15:29:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4091', 'hist-ticket-160-4091', 'cash', 60000, 'completed', '2026-04-08T15:29:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4092', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-08T08:04:46.000Z', '2026-04-08T08:04:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4092-1', 'hist-ticket-160-4092', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T08:04:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4092-2', 'hist-ticket-160-4092', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T08:04:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4092-3', 'hist-ticket-160-4092', 'prod-americano', 1, 12000, 0, '2026-04-08T08:04:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4092', 'hist-ticket-160-4092', 'cash', 41000, 'completed', '2026-04-08T08:04:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4093', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-08T08:15:59.000Z', '2026-04-08T08:15:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4093-1', 'hist-ticket-160-4093', 'prod-americano', 1, 12000, 0, '2026-04-08T08:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4093-2', 'hist-ticket-160-4093', 'prod-latte', 1, 15000, 0, '2026-04-08T08:15:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4093-3', 'hist-ticket-160-4093', 'prod-mocha', 1, 16500, 0, '2026-04-08T08:15:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4093', 'hist-ticket-160-4093', 'cash', 43500, 'completed', '2026-04-08T08:15:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4094', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T19:33:22.000Z', '2026-04-08T19:33:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4094-1', 'hist-ticket-160-4094', 'prod-americano', 1, 12000, 0, '2026-04-08T19:33:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4094-2', 'hist-ticket-160-4094', 'prod-latte', 1, 15000, 0, '2026-04-08T19:33:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4094-3', 'hist-ticket-160-4094', 'prod-latte', 1, 15000, 0, '2026-04-08T19:33:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4094-4', 'hist-ticket-160-4094', 'prod-mocha', 1, 16500, 0, '2026-04-08T19:33:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4094', 'hist-ticket-160-4094', 'cash', 58500, 'completed', '2026-04-08T19:33:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4095', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-08T18:59:54.000Z', '2026-04-08T18:59:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4095-1', 'hist-ticket-160-4095', 'prod-latte', 1, 15000, 0, '2026-04-08T18:59:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4095-2', 'hist-ticket-160-4095', 'prod-americano', 1, 12000, 0, '2026-04-08T18:59:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4095', 'hist-ticket-160-4095', 'cash', 27000, 'completed', '2026-04-08T18:59:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4096', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-08T12:51:35.000Z', '2026-04-08T12:51:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4096-1', 'hist-ticket-160-4096', 'prod-mocha', 1, 16500, 0, '2026-04-08T12:51:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4096-2', 'hist-ticket-160-4096', 'prod-latte', 1, 15000, 0, '2026-04-08T12:51:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4096', 'hist-ticket-160-4096', 'cash', 31500, 'completed', '2026-04-08T12:51:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4097', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-08T12:34:41.000Z', '2026-04-08T12:34:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4097-1', 'hist-ticket-160-4097', 'prod-latte', 1, 15000, 0, '2026-04-08T12:34:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4097-2', 'hist-ticket-160-4097', 'prod-latte', 1, 15000, 0, '2026-04-08T12:34:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4097-3', 'hist-ticket-160-4097', 'prod-americano', 1, 12000, 0, '2026-04-08T12:34:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4097-4', 'hist-ticket-160-4097', 'prod-americano', 1, 12000, 0, '2026-04-08T12:34:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4097', 'hist-ticket-160-4097', 'cash', 54000, 'completed', '2026-04-08T12:34:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4098', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-08T16:05:34.000Z', '2026-04-08T16:05:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4098-1', 'hist-ticket-160-4098', 'prod-mocha', 1, 16500, 0, '2026-04-08T16:05:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4098', 'hist-ticket-160-4098', 'cash', 16500, 'completed', '2026-04-08T16:05:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-160-4099', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-08T16:24:07.000Z', '2026-04-08T16:24:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4099-1', 'hist-ticket-160-4099', 'prod-cappuccino', 1, 14500, 0, '2026-04-08T16:24:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4099-2', 'hist-ticket-160-4099', 'prod-latte', 1, 15000, 0, '2026-04-08T16:24:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-160-4099-3', 'hist-ticket-160-4099', 'prod-latte', 1, 15000, 0, '2026-04-08T16:24:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-160-4099', 'hist-ticket-160-4099', 'cash', 44500, 'completed', '2026-04-08T16:24:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4100', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-09T15:08:50.000Z', '2026-04-09T15:08:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4100-1', 'hist-ticket-161-4100', 'prod-latte', 1, 15000, 0, '2026-04-09T15:08:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4100-2', 'hist-ticket-161-4100', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T15:08:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4100-3', 'hist-ticket-161-4100', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:08:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4100', 'hist-ticket-161-4100', 'cash', 46000, 'completed', '2026-04-09T15:08:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4101', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-09T13:27:42.000Z', '2026-04-09T13:27:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4101-1', 'hist-ticket-161-4101', 'prod-americano', 1, 12000, 0, '2026-04-09T13:27:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4101-2', 'hist-ticket-161-4101', 'prod-latte', 1, 15000, 0, '2026-04-09T13:27:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4101', 'hist-ticket-161-4101', 'cash', 27000, 'completed', '2026-04-09T13:27:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4102', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-09T12:15:42.000Z', '2026-04-09T12:15:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4102-1', 'hist-ticket-161-4102', 'prod-americano', 1, 12000, 0, '2026-04-09T12:15:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4102-2', 'hist-ticket-161-4102', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:15:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4102', 'hist-ticket-161-4102', 'cash', 28500, 'completed', '2026-04-09T12:15:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4103', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-09T18:02:30.000Z', '2026-04-09T18:02:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4103-1', 'hist-ticket-161-4103', 'prod-americano', 1, 12000, 0, '2026-04-09T18:02:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4103', 'hist-ticket-161-4103', 'cash', 12000, 'completed', '2026-04-09T18:02:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4104', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-09T19:38:53.000Z', '2026-04-09T19:38:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4104-1', 'hist-ticket-161-4104', 'prod-mocha', 1, 16500, 0, '2026-04-09T19:38:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4104', 'hist-ticket-161-4104', 'cash', 16500, 'completed', '2026-04-09T19:38:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4105', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-09T12:51:48.000Z', '2026-04-09T12:51:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4105-1', 'hist-ticket-161-4105', 'prod-latte', 1, 15000, 0, '2026-04-09T12:51:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4105-2', 'hist-ticket-161-4105', 'prod-americano', 1, 12000, 0, '2026-04-09T12:51:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4105-3', 'hist-ticket-161-4105', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:51:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4105', 'hist-ticket-161-4105', 'cash', 41500, 'completed', '2026-04-09T12:51:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4106', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2026-04-09T16:38:33.000Z', '2026-04-09T16:38:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4106-1', 'hist-ticket-161-4106', 'prod-mocha', 1, 16500, 0, '2026-04-09T16:38:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4106', 'hist-ticket-161-4106', 'cash', 16500, 'completed', '2026-04-09T16:38:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4107', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-09T18:19:33.000Z', '2026-04-09T18:19:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4107-1', 'hist-ticket-161-4107', 'prod-mocha', 1, 16500, 0, '2026-04-09T18:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4107-2', 'hist-ticket-161-4107', 'prod-latte', 1, 15000, 0, '2026-04-09T18:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4107-3', 'hist-ticket-161-4107', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T18:19:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4107', 'hist-ticket-161-4107', 'cash', 46000, 'completed', '2026-04-09T18:19:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4108', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-09T13:32:30.000Z', '2026-04-09T13:32:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4108-1', 'hist-ticket-161-4108', 'prod-mocha', 1, 16500, 0, '2026-04-09T13:32:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4108-2', 'hist-ticket-161-4108', 'prod-mocha', 1, 16500, 0, '2026-04-09T13:32:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4108-3', 'hist-ticket-161-4108', 'prod-mocha', 1, 16500, 0, '2026-04-09T13:32:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4108', 'hist-ticket-161-4108', 'cash', 49500, 'completed', '2026-04-09T13:32:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4109', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-09T08:00:10.000Z', '2026-04-09T08:00:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4109-1', 'hist-ticket-161-4109', 'prod-latte', 1, 15000, 0, '2026-04-09T08:00:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4109-2', 'hist-ticket-161-4109', 'prod-mocha', 1, 16500, 0, '2026-04-09T08:00:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4109-3', 'hist-ticket-161-4109', 'prod-americano', 1, 12000, 0, '2026-04-09T08:00:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4109', 'hist-ticket-161-4109', 'cash', 43500, 'completed', '2026-04-09T08:00:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4110', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-09T11:05:28.000Z', '2026-04-09T11:05:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4110-1', 'hist-ticket-161-4110', 'prod-americano', 1, 12000, 0, '2026-04-09T11:05:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4110', 'hist-ticket-161-4110', 'cash', 12000, 'completed', '2026-04-09T11:05:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4111', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-09T11:45:38.000Z', '2026-04-09T11:45:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4111-1', 'hist-ticket-161-4111', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T11:45:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4111-2', 'hist-ticket-161-4111', 'prod-mocha', 1, 16500, 0, '2026-04-09T11:45:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4111-3', 'hist-ticket-161-4111', 'prod-americano', 1, 12000, 0, '2026-04-09T11:45:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4111', 'hist-ticket-161-4111', 'cash', 43000, 'completed', '2026-04-09T11:45:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4112', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-09T17:00:22.000Z', '2026-04-09T17:00:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4112-1', 'hist-ticket-161-4112', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:00:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4112', 'hist-ticket-161-4112', 'cash', 14500, 'completed', '2026-04-09T17:00:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4113', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-09T17:50:19.000Z', '2026-04-09T17:50:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4113-1', 'hist-ticket-161-4113', 'prod-americano', 1, 12000, 0, '2026-04-09T17:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4113-2', 'hist-ticket-161-4113', 'prod-mocha', 1, 16500, 0, '2026-04-09T17:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4113-3', 'hist-ticket-161-4113', 'prod-americano', 1, 12000, 0, '2026-04-09T17:50:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4113-4', 'hist-ticket-161-4113', 'prod-americano', 1, 12000, 0, '2026-04-09T17:50:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4113', 'hist-ticket-161-4113', 'cash', 52500, 'completed', '2026-04-09T17:50:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4114', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-09T17:02:58.000Z', '2026-04-09T17:02:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4114-1', 'hist-ticket-161-4114', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:02:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4114', 'hist-ticket-161-4114', 'cash', 14500, 'completed', '2026-04-09T17:02:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4115', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-09T12:48:38.000Z', '2026-04-09T12:48:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4115-1', 'hist-ticket-161-4115', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4115-2', 'hist-ticket-161-4115', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4115-3', 'hist-ticket-161-4115', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:48:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4115-4', 'hist-ticket-161-4115', 'prod-latte', 1, 15000, 0, '2026-04-09T12:48:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4115', 'hist-ticket-161-4115', 'cash', 62500, 'completed', '2026-04-09T12:48:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4116', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-09T19:46:55.000Z', '2026-04-09T19:46:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4116-1', 'hist-ticket-161-4116', 'prod-mocha', 1, 16500, 0, '2026-04-09T19:46:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4116-2', 'hist-ticket-161-4116', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T19:46:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4116-3', 'hist-ticket-161-4116', 'prod-latte', 1, 15000, 0, '2026-04-09T19:46:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4116', 'hist-ticket-161-4116', 'cash', 46000, 'completed', '2026-04-09T19:46:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4117', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-09T17:18:54.000Z', '2026-04-09T17:18:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4117-1', 'hist-ticket-161-4117', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:18:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4117-2', 'hist-ticket-161-4117', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T17:18:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4117-3', 'hist-ticket-161-4117', 'prod-latte', 1, 15000, 0, '2026-04-09T17:18:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4117', 'hist-ticket-161-4117', 'cash', 44000, 'completed', '2026-04-09T17:18:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4118', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-09T10:04:21.000Z', '2026-04-09T10:04:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4118-1', 'hist-ticket-161-4118', 'prod-americano', 1, 12000, 0, '2026-04-09T10:04:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4118', 'hist-ticket-161-4118', 'cash', 12000, 'completed', '2026-04-09T10:04:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4119', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-04-09T12:54:09.000Z', '2026-04-09T12:54:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4119-1', 'hist-ticket-161-4119', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:54:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4119-2', 'hist-ticket-161-4119', 'prod-americano', 1, 12000, 0, '2026-04-09T12:54:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4119-3', 'hist-ticket-161-4119', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:54:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4119-4', 'hist-ticket-161-4119', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:54:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4119', 'hist-ticket-161-4119', 'cash', 61500, 'completed', '2026-04-09T12:54:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4120', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-09T17:19:02.000Z', '2026-04-09T17:19:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4120-1', 'hist-ticket-161-4120', 'prod-latte', 1, 15000, 0, '2026-04-09T17:19:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4120', 'hist-ticket-161-4120', 'cash', 15000, 'completed', '2026-04-09T17:19:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4121', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-04-09T15:07:53.000Z', '2026-04-09T15:07:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4121-1', 'hist-ticket-161-4121', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:07:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4121-2', 'hist-ticket-161-4121', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T15:07:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4121-3', 'hist-ticket-161-4121', 'prod-latte', 1, 15000, 0, '2026-04-09T15:07:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4121-4', 'hist-ticket-161-4121', 'prod-mocha', 1, 16500, 0, '2026-04-09T15:07:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4121', 'hist-ticket-161-4121', 'cash', 62500, 'completed', '2026-04-09T15:07:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4122', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-04-09T19:08:32.000Z', '2026-04-09T19:08:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4122-1', 'hist-ticket-161-4122', 'prod-latte', 1, 15000, 0, '2026-04-09T19:08:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4122-2', 'hist-ticket-161-4122', 'prod-latte', 1, 15000, 0, '2026-04-09T19:08:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4122', 'hist-ticket-161-4122', 'cash', 30000, 'completed', '2026-04-09T19:08:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4123', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-09T09:09:35.000Z', '2026-04-09T09:09:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4123-1', 'hist-ticket-161-4123', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:09:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4123-2', 'hist-ticket-161-4123', 'prod-mocha', 1, 16500, 0, '2026-04-09T09:09:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4123', 'hist-ticket-161-4123', 'cash', 33000, 'completed', '2026-04-09T09:09:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4124', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-09T10:02:55.000Z', '2026-04-09T10:02:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4124-1', 'hist-ticket-161-4124', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T10:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4124-2', 'hist-ticket-161-4124', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T10:02:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4124', 'hist-ticket-161-4124', 'cash', 29000, 'completed', '2026-04-09T10:02:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4125', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-09T14:07:58.000Z', '2026-04-09T14:07:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4125-1', 'hist-ticket-161-4125', 'prod-mocha', 1, 16500, 0, '2026-04-09T14:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4125-2', 'hist-ticket-161-4125', 'prod-latte', 1, 15000, 0, '2026-04-09T14:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4125-3', 'hist-ticket-161-4125', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T14:07:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4125-4', 'hist-ticket-161-4125', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T14:07:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4125', 'hist-ticket-161-4125', 'cash', 60500, 'completed', '2026-04-09T14:07:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-161-4126', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-09T12:21:56.000Z', '2026-04-09T12:21:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4126-1', 'hist-ticket-161-4126', 'prod-latte', 1, 15000, 0, '2026-04-09T12:21:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4126-2', 'hist-ticket-161-4126', 'prod-americano', 1, 12000, 0, '2026-04-09T12:21:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4126-3', 'hist-ticket-161-4126', 'prod-cappuccino', 1, 14500, 0, '2026-04-09T12:21:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-161-4126-4', 'hist-ticket-161-4126', 'prod-mocha', 1, 16500, 0, '2026-04-09T12:21:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-161-4126', 'hist-ticket-161-4126', 'cash', 58000, 'completed', '2026-04-09T12:21:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4127', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-10T13:33:41.000Z', '2026-04-10T13:33:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4127-1', 'hist-ticket-162-4127', 'prod-latte', 1, 15000, 0, '2026-04-10T13:33:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4127-2', 'hist-ticket-162-4127', 'prod-americano', 1, 12000, 0, '2026-04-10T13:33:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4127-3', 'hist-ticket-162-4127', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:33:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4127', 'hist-ticket-162-4127', 'cash', 41500, 'completed', '2026-04-10T13:33:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4128', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T18:46:35.000Z', '2026-04-10T18:46:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4128-1', 'hist-ticket-162-4128', 'prod-mocha', 1, 16500, 0, '2026-04-10T18:46:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4128', 'hist-ticket-162-4128', 'cash', 16500, 'completed', '2026-04-10T18:46:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4129', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-10T09:27:40.000Z', '2026-04-10T09:27:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4129-1', 'hist-ticket-162-4129', 'prod-americano', 1, 12000, 0, '2026-04-10T09:27:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4129-2', 'hist-ticket-162-4129', 'prod-americano', 1, 12000, 0, '2026-04-10T09:27:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4129-3', 'hist-ticket-162-4129', 'prod-latte', 1, 15000, 0, '2026-04-10T09:27:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4129', 'hist-ticket-162-4129', 'cash', 39000, 'completed', '2026-04-10T09:27:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4130', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-10T14:22:03.000Z', '2026-04-10T14:22:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4130-1', 'hist-ticket-162-4130', 'prod-americano', 1, 12000, 0, '2026-04-10T14:22:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4130', 'hist-ticket-162-4130', 'cash', 12000, 'completed', '2026-04-10T14:22:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4131', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-10T13:21:22.000Z', '2026-04-10T13:21:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4131-1', 'hist-ticket-162-4131', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4131-2', 'hist-ticket-162-4131', 'prod-latte', 1, 15000, 0, '2026-04-10T13:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4131-3', 'hist-ticket-162-4131', 'prod-latte', 1, 15000, 0, '2026-04-10T13:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4131-4', 'hist-ticket-162-4131', 'prod-latte', 1, 15000, 0, '2026-04-10T13:21:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4131', 'hist-ticket-162-4131', 'cash', 59500, 'completed', '2026-04-10T13:21:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4132', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T13:41:00.000Z', '2026-04-10T13:41:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4132-1', 'hist-ticket-162-4132', 'prod-mocha', 1, 16500, 0, '2026-04-10T13:41:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4132', 'hist-ticket-162-4132', 'cash', 16500, 'completed', '2026-04-10T13:41:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4133', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-10T09:53:13.000Z', '2026-04-10T09:53:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4133-1', 'hist-ticket-162-4133', 'prod-latte', 1, 15000, 0, '2026-04-10T09:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4133-2', 'hist-ticket-162-4133', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T09:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4133-3', 'hist-ticket-162-4133', 'prod-americano', 1, 12000, 0, '2026-04-10T09:53:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4133', 'hist-ticket-162-4133', 'cash', 41500, 'completed', '2026-04-10T09:53:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4134', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T15:52:00.000Z', '2026-04-10T15:52:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4134-1', 'hist-ticket-162-4134', 'prod-americano', 1, 12000, 0, '2026-04-10T15:52:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4134-2', 'hist-ticket-162-4134', 'prod-americano', 1, 12000, 0, '2026-04-10T15:52:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4134-3', 'hist-ticket-162-4134', 'prod-americano', 1, 12000, 0, '2026-04-10T15:52:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4134-4', 'hist-ticket-162-4134', 'prod-latte', 1, 15000, 0, '2026-04-10T15:52:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4134', 'hist-ticket-162-4134', 'cash', 51000, 'completed', '2026-04-10T15:52:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4135', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-10T18:47:25.000Z', '2026-04-10T18:47:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4135-1', 'hist-ticket-162-4135', 'prod-latte', 1, 15000, 0, '2026-04-10T18:47:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4135-2', 'hist-ticket-162-4135', 'prod-latte', 1, 15000, 0, '2026-04-10T18:47:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4135', 'hist-ticket-162-4135', 'cash', 30000, 'completed', '2026-04-10T18:47:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4136', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-10T13:14:01.000Z', '2026-04-10T13:14:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4136-1', 'hist-ticket-162-4136', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T13:14:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4136-2', 'hist-ticket-162-4136', 'prod-mocha', 1, 16500, 0, '2026-04-10T13:14:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4136', 'hist-ticket-162-4136', 'cash', 31000, 'completed', '2026-04-10T13:14:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4137', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-10T19:45:03.000Z', '2026-04-10T19:45:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4137-1', 'hist-ticket-162-4137', 'prod-latte', 1, 15000, 0, '2026-04-10T19:45:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4137-2', 'hist-ticket-162-4137', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T19:45:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4137-3', 'hist-ticket-162-4137', 'prod-latte', 1, 15000, 0, '2026-04-10T19:45:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4137', 'hist-ticket-162-4137', 'cash', 44500, 'completed', '2026-04-10T19:45:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4138', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-04-10T16:06:39.000Z', '2026-04-10T16:06:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4138-1', 'hist-ticket-162-4138', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:06:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4138-2', 'hist-ticket-162-4138', 'prod-americano', 1, 12000, 0, '2026-04-10T16:06:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4138-3', 'hist-ticket-162-4138', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:06:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4138', 'hist-ticket-162-4138', 'cash', 45000, 'completed', '2026-04-10T16:06:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4139', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T10:38:31.000Z', '2026-04-10T10:38:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4139-1', 'hist-ticket-162-4139', 'prod-latte', 1, 15000, 0, '2026-04-10T10:38:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4139-2', 'hist-ticket-162-4139', 'prod-latte', 1, 15000, 0, '2026-04-10T10:38:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4139-3', 'hist-ticket-162-4139', 'prod-americano', 1, 12000, 0, '2026-04-10T10:38:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4139-4', 'hist-ticket-162-4139', 'prod-americano', 1, 12000, 0, '2026-04-10T10:38:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4139', 'hist-ticket-162-4139', 'cash', 54000, 'completed', '2026-04-10T10:38:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4140', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-10T16:54:27.000Z', '2026-04-10T16:54:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4140-1', 'hist-ticket-162-4140', 'prod-americano', 1, 12000, 0, '2026-04-10T16:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4140-2', 'hist-ticket-162-4140', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T16:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4140-3', 'hist-ticket-162-4140', 'prod-americano', 1, 12000, 0, '2026-04-10T16:54:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4140-4', 'hist-ticket-162-4140', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:54:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4140', 'hist-ticket-162-4140', 'cash', 55000, 'completed', '2026-04-10T16:54:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4141', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-10T17:45:44.000Z', '2026-04-10T17:45:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4141-1', 'hist-ticket-162-4141', 'prod-mocha', 1, 16500, 0, '2026-04-10T17:45:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4141-2', 'hist-ticket-162-4141', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T17:45:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4141-3', 'hist-ticket-162-4141', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T17:45:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4141', 'hist-ticket-162-4141', 'cash', 45500, 'completed', '2026-04-10T17:45:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4142', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-04-10T08:23:31.000Z', '2026-04-10T08:23:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4142-1', 'hist-ticket-162-4142', 'prod-americano', 1, 12000, 0, '2026-04-10T08:23:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4142-2', 'hist-ticket-162-4142', 'prod-americano', 1, 12000, 0, '2026-04-10T08:23:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4142', 'hist-ticket-162-4142', 'cash', 24000, 'completed', '2026-04-10T08:23:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4143', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-10T15:24:40.000Z', '2026-04-10T15:24:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4143-1', 'hist-ticket-162-4143', 'prod-mocha', 1, 16500, 0, '2026-04-10T15:24:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4143-2', 'hist-ticket-162-4143', 'prod-americano', 1, 12000, 0, '2026-04-10T15:24:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4143-3', 'hist-ticket-162-4143', 'prod-cappuccino', 1, 14500, 0, '2026-04-10T15:24:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4143', 'hist-ticket-162-4143', 'cash', 43000, 'completed', '2026-04-10T15:24:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4144', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-10T16:05:16.000Z', '2026-04-10T16:05:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4144-1', 'hist-ticket-162-4144', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:05:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4144-2', 'hist-ticket-162-4144', 'prod-latte', 1, 15000, 0, '2026-04-10T16:05:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4144-3', 'hist-ticket-162-4144', 'prod-mocha', 1, 16500, 0, '2026-04-10T16:05:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4144', 'hist-ticket-162-4144', 'cash', 48000, 'completed', '2026-04-10T16:05:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4145', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-10T08:41:08.000Z', '2026-04-10T08:41:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4145-1', 'hist-ticket-162-4145', 'prod-americano', 1, 12000, 0, '2026-04-10T08:41:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4145-2', 'hist-ticket-162-4145', 'prod-mocha', 1, 16500, 0, '2026-04-10T08:41:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4145-3', 'hist-ticket-162-4145', 'prod-latte', 1, 15000, 0, '2026-04-10T08:41:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4145-4', 'hist-ticket-162-4145', 'prod-latte', 1, 15000, 0, '2026-04-10T08:41:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4145', 'hist-ticket-162-4145', 'cash', 58500, 'completed', '2026-04-10T08:41:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4146', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-10T10:54:40.000Z', '2026-04-10T10:54:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4146-1', 'hist-ticket-162-4146', 'prod-mocha', 1, 16500, 0, '2026-04-10T10:54:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4146-2', 'hist-ticket-162-4146', 'prod-americano', 1, 12000, 0, '2026-04-10T10:54:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4146', 'hist-ticket-162-4146', 'cash', 28500, 'completed', '2026-04-10T10:54:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-162-4147', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-10T15:06:06.000Z', '2026-04-10T15:06:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4147-1', 'hist-ticket-162-4147', 'prod-americano', 1, 12000, 0, '2026-04-10T15:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4147-2', 'hist-ticket-162-4147', 'prod-latte', 1, 15000, 0, '2026-04-10T15:06:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-162-4147-3', 'hist-ticket-162-4147', 'prod-mocha', 1, 16500, 0, '2026-04-10T15:06:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-162-4147', 'hist-ticket-162-4147', 'cash', 43500, 'completed', '2026-04-10T15:06:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4148', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-11T18:44:07.000Z', '2026-04-11T18:44:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4148-1', 'hist-ticket-163-4148', 'prod-americano', 1, 12000, 0, '2026-04-11T18:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4148-2', 'hist-ticket-163-4148', 'prod-latte', 1, 15000, 0, '2026-04-11T18:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4148-3', 'hist-ticket-163-4148', 'prod-americano', 1, 12000, 0, '2026-04-11T18:44:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4148', 'hist-ticket-163-4148', 'cash', 39000, 'completed', '2026-04-11T18:44:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4149', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-11T10:04:07.000Z', '2026-04-11T10:04:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4149-1', 'hist-ticket-163-4149', 'prod-americano', 1, 12000, 0, '2026-04-11T10:04:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4149-2', 'hist-ticket-163-4149', 'prod-latte', 1, 15000, 0, '2026-04-11T10:04:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4149-3', 'hist-ticket-163-4149', 'prod-latte', 1, 15000, 0, '2026-04-11T10:04:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4149-4', 'hist-ticket-163-4149', 'prod-mocha', 1, 16500, 0, '2026-04-11T10:04:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4149', 'hist-ticket-163-4149', 'cash', 58500, 'completed', '2026-04-11T10:04:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4150', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-11T10:58:54.000Z', '2026-04-11T10:58:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4150-1', 'hist-ticket-163-4150', 'prod-mocha', 1, 16500, 0, '2026-04-11T10:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4150-2', 'hist-ticket-163-4150', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4150-3', 'hist-ticket-163-4150', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:58:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4150-4', 'hist-ticket-163-4150', 'prod-latte', 1, 15000, 0, '2026-04-11T10:58:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4150', 'hist-ticket-163-4150', 'cash', 60500, 'completed', '2026-04-11T10:58:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4151', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-11T14:53:24.000Z', '2026-04-11T14:53:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4151-1', 'hist-ticket-163-4151', 'prod-americano', 1, 12000, 0, '2026-04-11T14:53:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4151-2', 'hist-ticket-163-4151', 'prod-mocha', 1, 16500, 0, '2026-04-11T14:53:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4151', 'hist-ticket-163-4151', 'cash', 28500, 'completed', '2026-04-11T14:53:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4152', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-04-11T11:06:07.000Z', '2026-04-11T11:06:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4152-1', 'hist-ticket-163-4152', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T11:06:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4152-2', 'hist-ticket-163-4152', 'prod-mocha', 1, 16500, 0, '2026-04-11T11:06:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4152', 'hist-ticket-163-4152', 'cash', 31000, 'completed', '2026-04-11T11:06:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4153', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-11T08:46:19.000Z', '2026-04-11T08:46:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4153-1', 'hist-ticket-163-4153', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T08:46:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4153-2', 'hist-ticket-163-4153', 'prod-mocha', 1, 16500, 0, '2026-04-11T08:46:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4153-3', 'hist-ticket-163-4153', 'prod-americano', 1, 12000, 0, '2026-04-11T08:46:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4153', 'hist-ticket-163-4153', 'cash', 43000, 'completed', '2026-04-11T08:46:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4154', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-11T18:41:16.000Z', '2026-04-11T18:41:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4154-1', 'hist-ticket-163-4154', 'prod-latte', 1, 15000, 0, '2026-04-11T18:41:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4154-2', 'hist-ticket-163-4154', 'prod-americano', 1, 12000, 0, '2026-04-11T18:41:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4154-3', 'hist-ticket-163-4154', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:41:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4154', 'hist-ticket-163-4154', 'cash', 43500, 'completed', '2026-04-11T18:41:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4155', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-11T15:00:56.000Z', '2026-04-11T15:00:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4155-1', 'hist-ticket-163-4155', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:00:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4155-2', 'hist-ticket-163-4155', 'prod-latte', 1, 15000, 0, '2026-04-11T15:00:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4155-3', 'hist-ticket-163-4155', 'prod-americano', 1, 12000, 0, '2026-04-11T15:00:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4155-4', 'hist-ticket-163-4155', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:00:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4155', 'hist-ticket-163-4155', 'cash', 56000, 'completed', '2026-04-11T15:00:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4156', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-11T10:15:43.000Z', '2026-04-11T10:15:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4156-1', 'hist-ticket-163-4156', 'prod-latte', 1, 15000, 0, '2026-04-11T10:15:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4156-2', 'hist-ticket-163-4156', 'prod-mocha', 1, 16500, 0, '2026-04-11T10:15:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4156-3', 'hist-ticket-163-4156', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:15:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4156-4', 'hist-ticket-163-4156', 'prod-americano', 1, 12000, 0, '2026-04-11T10:15:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4156', 'hist-ticket-163-4156', 'cash', 58000, 'completed', '2026-04-11T10:15:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4157', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-11T14:36:35.000Z', '2026-04-11T14:36:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4157-1', 'hist-ticket-163-4157', 'prod-americano', 1, 12000, 0, '2026-04-11T14:36:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4157', 'hist-ticket-163-4157', 'cash', 12000, 'completed', '2026-04-11T14:36:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4158', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-11T11:39:54.000Z', '2026-04-11T11:39:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4158-1', 'hist-ticket-163-4158', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T11:39:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4158-2', 'hist-ticket-163-4158', 'prod-mocha', 1, 16500, 0, '2026-04-11T11:39:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4158-3', 'hist-ticket-163-4158', 'prod-latte', 1, 15000, 0, '2026-04-11T11:39:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4158', 'hist-ticket-163-4158', 'cash', 46000, 'completed', '2026-04-11T11:39:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4159', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-11T10:55:02.000Z', '2026-04-11T10:55:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4159-1', 'hist-ticket-163-4159', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:55:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4159-2', 'hist-ticket-163-4159', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:55:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4159-3', 'hist-ticket-163-4159', 'prod-latte', 1, 15000, 0, '2026-04-11T10:55:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4159-4', 'hist-ticket-163-4159', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:55:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4159', 'hist-ticket-163-4159', 'cash', 58500, 'completed', '2026-04-11T10:55:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4160', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-11T10:54:52.000Z', '2026-04-11T10:54:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4160-1', 'hist-ticket-163-4160', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T10:54:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4160-2', 'hist-ticket-163-4160', 'prod-latte', 1, 15000, 0, '2026-04-11T10:54:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4160', 'hist-ticket-163-4160', 'cash', 29500, 'completed', '2026-04-11T10:54:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4161', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-11T13:45:44.000Z', '2026-04-11T13:45:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4161-1', 'hist-ticket-163-4161', 'prod-latte', 1, 15000, 0, '2026-04-11T13:45:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4161-2', 'hist-ticket-163-4161', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T13:45:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4161-3', 'hist-ticket-163-4161', 'prod-mocha', 1, 16500, 0, '2026-04-11T13:45:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4161', 'hist-ticket-163-4161', 'cash', 46000, 'completed', '2026-04-11T13:45:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4162', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-04-11T12:49:19.000Z', '2026-04-11T12:49:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4162-1', 'hist-ticket-163-4162', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T12:49:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4162-2', 'hist-ticket-163-4162', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:49:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4162', 'hist-ticket-163-4162', 'cash', 31000, 'completed', '2026-04-11T12:49:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4163', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-11T18:45:08.000Z', '2026-04-11T18:45:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4163-1', 'hist-ticket-163-4163', 'prod-latte', 1, 15000, 0, '2026-04-11T18:45:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4163-2', 'hist-ticket-163-4163', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:45:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4163-3', 'hist-ticket-163-4163', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:45:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4163-4', 'hist-ticket-163-4163', 'prod-americano', 1, 12000, 0, '2026-04-11T18:45:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4163', 'hist-ticket-163-4163', 'cash', 56000, 'completed', '2026-04-11T18:45:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4164', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-11T12:37:57.000Z', '2026-04-11T12:37:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4164-1', 'hist-ticket-163-4164', 'prod-americano', 1, 12000, 0, '2026-04-11T12:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4164-2', 'hist-ticket-163-4164', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4164-3', 'hist-ticket-163-4164', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T12:37:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4164-4', 'hist-ticket-163-4164', 'prod-americano', 1, 12000, 0, '2026-04-11T12:37:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4164', 'hist-ticket-163-4164', 'cash', 55000, 'completed', '2026-04-11T12:37:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4165', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-11T15:20:33.000Z', '2026-04-11T15:20:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4165-1', 'hist-ticket-163-4165', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:20:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4165-2', 'hist-ticket-163-4165', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:20:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4165', 'hist-ticket-163-4165', 'cash', 33000, 'completed', '2026-04-11T15:20:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4166', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-11T13:17:12.000Z', '2026-04-11T13:17:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4166-1', 'hist-ticket-163-4166', 'prod-americano', 1, 12000, 0, '2026-04-11T13:17:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4166-2', 'hist-ticket-163-4166', 'prod-americano', 1, 12000, 0, '2026-04-11T13:17:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4166', 'hist-ticket-163-4166', 'cash', 24000, 'completed', '2026-04-11T13:17:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4167', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-11T17:12:26.000Z', '2026-04-11T17:12:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4167-1', 'hist-ticket-163-4167', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T17:12:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4167-2', 'hist-ticket-163-4167', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T17:12:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4167-3', 'hist-ticket-163-4167', 'prod-americano', 1, 12000, 0, '2026-04-11T17:12:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4167-4', 'hist-ticket-163-4167', 'prod-americano', 1, 12000, 0, '2026-04-11T17:12:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4167', 'hist-ticket-163-4167', 'cash', 53000, 'completed', '2026-04-11T17:12:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4168', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-11T09:36:42.000Z', '2026-04-11T09:36:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4168-1', 'hist-ticket-163-4168', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T09:36:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4168', 'hist-ticket-163-4168', 'cash', 14500, 'completed', '2026-04-11T09:36:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4169', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-11T15:42:07.000Z', '2026-04-11T15:42:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4169-1', 'hist-ticket-163-4169', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4169-2', 'hist-ticket-163-4169', 'prod-americano', 1, 12000, 0, '2026-04-11T15:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4169-3', 'hist-ticket-163-4169', 'prod-latte', 1, 15000, 0, '2026-04-11T15:42:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4169-4', 'hist-ticket-163-4169', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:42:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4169', 'hist-ticket-163-4169', 'cash', 58000, 'completed', '2026-04-11T15:42:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4170', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-11T12:23:59.000Z', '2026-04-11T12:23:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4170-1', 'hist-ticket-163-4170', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:23:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4170-2', 'hist-ticket-163-4170', 'prod-americano', 1, 12000, 0, '2026-04-11T12:23:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4170-3', 'hist-ticket-163-4170', 'prod-latte', 1, 15000, 0, '2026-04-11T12:23:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4170-4', 'hist-ticket-163-4170', 'prod-americano', 1, 12000, 0, '2026-04-11T12:23:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4170', 'hist-ticket-163-4170', 'cash', 55500, 'completed', '2026-04-11T12:23:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4171', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-11T19:48:46.000Z', '2026-04-11T19:48:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4171-1', 'hist-ticket-163-4171', 'prod-latte', 1, 15000, 0, '2026-04-11T19:48:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4171-2', 'hist-ticket-163-4171', 'prod-latte', 1, 15000, 0, '2026-04-11T19:48:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4171-3', 'hist-ticket-163-4171', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T19:48:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4171-4', 'hist-ticket-163-4171', 'prod-latte', 1, 15000, 0, '2026-04-11T19:48:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4171', 'hist-ticket-163-4171', 'cash', 59500, 'completed', '2026-04-11T19:48:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4172', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-11T15:28:58.000Z', '2026-04-11T15:28:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4172-1', 'hist-ticket-163-4172', 'prod-latte', 1, 15000, 0, '2026-04-11T15:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4172-2', 'hist-ticket-163-4172', 'prod-americano', 1, 12000, 0, '2026-04-11T15:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4172-3', 'hist-ticket-163-4172', 'prod-mocha', 1, 16500, 0, '2026-04-11T15:28:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4172-4', 'hist-ticket-163-4172', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:28:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4172', 'hist-ticket-163-4172', 'cash', 58000, 'completed', '2026-04-11T15:28:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4173', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-11T18:27:45.000Z', '2026-04-11T18:27:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4173-1', 'hist-ticket-163-4173', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:27:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4173-2', 'hist-ticket-163-4173', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:27:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4173', 'hist-ticket-163-4173', 'cash', 31000, 'completed', '2026-04-11T18:27:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4174', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-04-11T16:21:53.000Z', '2026-04-11T16:21:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4174-1', 'hist-ticket-163-4174', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T16:21:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4174-2', 'hist-ticket-163-4174', 'prod-americano', 1, 12000, 0, '2026-04-11T16:21:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4174', 'hist-ticket-163-4174', 'cash', 26500, 'completed', '2026-04-11T16:21:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4175', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-11T18:38:08.000Z', '2026-04-11T18:38:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4175-1', 'hist-ticket-163-4175', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:38:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4175-2', 'hist-ticket-163-4175', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T18:38:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4175-3', 'hist-ticket-163-4175', 'prod-mocha', 1, 16500, 0, '2026-04-11T18:38:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4175', 'hist-ticket-163-4175', 'cash', 45500, 'completed', '2026-04-11T18:38:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4176', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-04-11T15:17:14.000Z', '2026-04-11T15:17:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4176-1', 'hist-ticket-163-4176', 'prod-cappuccino', 1, 14500, 0, '2026-04-11T15:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4176-2', 'hist-ticket-163-4176', 'prod-americano', 1, 12000, 0, '2026-04-11T15:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4176-3', 'hist-ticket-163-4176', 'prod-americano', 1, 12000, 0, '2026-04-11T15:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4176-4', 'hist-ticket-163-4176', 'prod-americano', 1, 12000, 0, '2026-04-11T15:17:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4176', 'hist-ticket-163-4176', 'cash', 50500, 'completed', '2026-04-11T15:17:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4177', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-11T19:24:18.000Z', '2026-04-11T19:24:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4177-1', 'hist-ticket-163-4177', 'prod-americano', 1, 12000, 0, '2026-04-11T19:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4177-2', 'hist-ticket-163-4177', 'prod-latte', 1, 15000, 0, '2026-04-11T19:24:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4177-3', 'hist-ticket-163-4177', 'prod-americano', 1, 12000, 0, '2026-04-11T19:24:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4177', 'hist-ticket-163-4177', 'cash', 39000, 'completed', '2026-04-11T19:24:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4178', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-11T12:35:44.000Z', '2026-04-11T12:35:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4178-1', 'hist-ticket-163-4178', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4178-2', 'hist-ticket-163-4178', 'prod-americano', 1, 12000, 0, '2026-04-11T12:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4178-3', 'hist-ticket-163-4178', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:35:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4178-4', 'hist-ticket-163-4178', 'prod-mocha', 1, 16500, 0, '2026-04-11T12:35:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4178', 'hist-ticket-163-4178', 'cash', 61500, 'completed', '2026-04-11T12:35:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-163-4179', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-11T13:50:05.000Z', '2026-04-11T13:50:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4179-1', 'hist-ticket-163-4179', 'prod-americano', 1, 12000, 0, '2026-04-11T13:50:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4179-2', 'hist-ticket-163-4179', 'prod-mocha', 1, 16500, 0, '2026-04-11T13:50:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-163-4179-3', 'hist-ticket-163-4179', 'prod-mocha', 1, 16500, 0, '2026-04-11T13:50:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-163-4179', 'hist-ticket-163-4179', 'cash', 45000, 'completed', '2026-04-11T13:50:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4180', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-12T18:58:05.000Z', '2026-04-12T18:58:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4180-1', 'hist-ticket-164-4180', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T18:58:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4180-2', 'hist-ticket-164-4180', 'prod-latte', 1, 15000, 0, '2026-04-12T18:58:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4180', 'hist-ticket-164-4180', 'cash', 29500, 'completed', '2026-04-12T18:58:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4181', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-12T17:02:57.000Z', '2026-04-12T17:02:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4181-1', 'hist-ticket-164-4181', 'prod-mocha', 1, 16500, 0, '2026-04-12T17:02:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4181-2', 'hist-ticket-164-4181', 'prod-americano', 1, 12000, 0, '2026-04-12T17:02:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4181-3', 'hist-ticket-164-4181', 'prod-mocha', 1, 16500, 0, '2026-04-12T17:02:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4181', 'hist-ticket-164-4181', 'cash', 45000, 'completed', '2026-04-12T17:02:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4182', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T10:27:14.000Z', '2026-04-12T10:27:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4182-1', 'hist-ticket-164-4182', 'prod-mocha', 1, 16500, 0, '2026-04-12T10:27:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4182', 'hist-ticket-164-4182', 'cash', 16500, 'completed', '2026-04-12T10:27:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4183', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-12T09:51:41.000Z', '2026-04-12T09:51:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4183-1', 'hist-ticket-164-4183', 'prod-latte', 1, 15000, 0, '2026-04-12T09:51:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4183-2', 'hist-ticket-164-4183', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:51:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4183-3', 'hist-ticket-164-4183', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:51:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4183', 'hist-ticket-164-4183', 'cash', 44000, 'completed', '2026-04-12T09:51:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4184', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-12T10:36:48.000Z', '2026-04-12T10:36:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4184-1', 'hist-ticket-164-4184', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:36:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4184-2', 'hist-ticket-164-4184', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:36:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4184-3', 'hist-ticket-164-4184', 'prod-latte', 1, 15000, 0, '2026-04-12T10:36:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4184', 'hist-ticket-164-4184', 'cash', 44000, 'completed', '2026-04-12T10:36:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4185', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2026-04-12T18:47:38.000Z', '2026-04-12T18:47:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4185-1', 'hist-ticket-164-4185', 'prod-americano', 1, 12000, 0, '2026-04-12T18:47:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4185', 'hist-ticket-164-4185', 'cash', 12000, 'completed', '2026-04-12T18:47:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4186', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-12T12:02:55.000Z', '2026-04-12T12:02:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4186-1', 'hist-ticket-164-4186', 'prod-mocha', 1, 16500, 0, '2026-04-12T12:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4186-2', 'hist-ticket-164-4186', 'prod-latte', 1, 15000, 0, '2026-04-12T12:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4186-3', 'hist-ticket-164-4186', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T12:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4186-4', 'hist-ticket-164-4186', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T12:02:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4186', 'hist-ticket-164-4186', 'cash', 60500, 'completed', '2026-04-12T12:02:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4187', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T08:55:31.000Z', '2026-04-12T08:55:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4187-1', 'hist-ticket-164-4187', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:55:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4187-2', 'hist-ticket-164-4187', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T08:55:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4187-3', 'hist-ticket-164-4187', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:55:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4187-4', 'hist-ticket-164-4187', 'prod-mocha', 1, 16500, 0, '2026-04-12T08:55:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4187', 'hist-ticket-164-4187', 'cash', 64000, 'completed', '2026-04-12T08:55:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4188', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T09:15:09.000Z', '2026-04-12T09:15:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4188-1', 'hist-ticket-164-4188', 'prod-americano', 1, 12000, 0, '2026-04-12T09:15:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4188-2', 'hist-ticket-164-4188', 'prod-latte', 1, 15000, 0, '2026-04-12T09:15:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4188-3', 'hist-ticket-164-4188', 'prod-latte', 1, 15000, 0, '2026-04-12T09:15:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4188', 'hist-ticket-164-4188', 'cash', 42000, 'completed', '2026-04-12T09:15:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4189', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-04-12T13:18:41.000Z', '2026-04-12T13:18:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4189-1', 'hist-ticket-164-4189', 'prod-americano', 1, 12000, 0, '2026-04-12T13:18:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4189', 'hist-ticket-164-4189', 'cash', 12000, 'completed', '2026-04-12T13:18:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4190', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-12T15:05:17.000Z', '2026-04-12T15:05:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4190-1', 'hist-ticket-164-4190', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:05:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4190', 'hist-ticket-164-4190', 'cash', 14500, 'completed', '2026-04-12T15:05:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4191', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-12T15:02:55.000Z', '2026-04-12T15:02:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4191-1', 'hist-ticket-164-4191', 'prod-mocha', 1, 16500, 0, '2026-04-12T15:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4191-2', 'hist-ticket-164-4191', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T15:02:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4191', 'hist-ticket-164-4191', 'cash', 31000, 'completed', '2026-04-12T15:02:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4192', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-12T09:26:53.000Z', '2026-04-12T09:26:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4192-1', 'hist-ticket-164-4192', 'prod-latte', 1, 15000, 0, '2026-04-12T09:26:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4192-2', 'hist-ticket-164-4192', 'prod-americano', 1, 12000, 0, '2026-04-12T09:26:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4192', 'hist-ticket-164-4192', 'cash', 27000, 'completed', '2026-04-12T09:26:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4193', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-12T19:09:53.000Z', '2026-04-12T19:09:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4193-1', 'hist-ticket-164-4193', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T19:09:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4193', 'hist-ticket-164-4193', 'cash', 14500, 'completed', '2026-04-12T19:09:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4194', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-12T09:46:02.000Z', '2026-04-12T09:46:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4194-1', 'hist-ticket-164-4194', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:46:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4194-2', 'hist-ticket-164-4194', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T09:46:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4194-3', 'hist-ticket-164-4194', 'prod-latte', 1, 15000, 0, '2026-04-12T09:46:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4194', 'hist-ticket-164-4194', 'cash', 44000, 'completed', '2026-04-12T09:46:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4195', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-12T10:10:46.000Z', '2026-04-12T10:10:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4195-1', 'hist-ticket-164-4195', 'prod-mocha', 1, 16500, 0, '2026-04-12T10:10:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4195-2', 'hist-ticket-164-4195', 'prod-cappuccino', 1, 14500, 0, '2026-04-12T10:10:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4195', 'hist-ticket-164-4195', 'cash', 31000, 'completed', '2026-04-12T10:10:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-164-4196', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-12T12:30:53.000Z', '2026-04-12T12:30:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4196-1', 'hist-ticket-164-4196', 'prod-mocha', 1, 16500, 0, '2026-04-12T12:30:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-164-4196-2', 'hist-ticket-164-4196', 'prod-latte', 1, 15000, 0, '2026-04-12T12:30:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-164-4196', 'hist-ticket-164-4196', 'cash', 31500, 'completed', '2026-04-12T12:30:53.000Z');