INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4304', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-04-16T09:54:15.000Z', '2026-04-16T09:54:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4304-1', 'hist-ticket-168-4304', 'prod-americano', 1, 12000, 0, '2026-04-16T09:54:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4304', 'hist-ticket-168-4304', 'cash', 12000, 'completed', '2026-04-16T09:54:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4305', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-04-16T19:55:40.000Z', '2026-04-16T19:55:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4305-1', 'hist-ticket-168-4305', 'prod-mocha', 1, 16500, 0, '2026-04-16T19:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4305-2', 'hist-ticket-168-4305', 'prod-americano', 1, 12000, 0, '2026-04-16T19:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4305-3', 'hist-ticket-168-4305', 'prod-americano', 1, 12000, 0, '2026-04-16T19:55:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4305-4', 'hist-ticket-168-4305', 'prod-latte', 1, 15000, 0, '2026-04-16T19:55:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4305', 'hist-ticket-168-4305', 'cash', 55500, 'completed', '2026-04-16T19:55:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4306', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-16T14:10:12.000Z', '2026-04-16T14:10:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4306-1', 'hist-ticket-168-4306', 'prod-latte', 1, 15000, 0, '2026-04-16T14:10:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4306-2', 'hist-ticket-168-4306', 'prod-mocha', 1, 16500, 0, '2026-04-16T14:10:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4306', 'hist-ticket-168-4306', 'cash', 31500, 'completed', '2026-04-16T14:10:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4307', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-16T08:25:03.000Z', '2026-04-16T08:25:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4307-1', 'hist-ticket-168-4307', 'prod-latte', 1, 15000, 0, '2026-04-16T08:25:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4307-2', 'hist-ticket-168-4307', 'prod-mocha', 1, 16500, 0, '2026-04-16T08:25:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4307', 'hist-ticket-168-4307', 'cash', 31500, 'completed', '2026-04-16T08:25:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4308', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-16T16:25:05.000Z', '2026-04-16T16:25:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4308-1', 'hist-ticket-168-4308', 'prod-americano', 1, 12000, 0, '2026-04-16T16:25:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4308-2', 'hist-ticket-168-4308', 'prod-mocha', 1, 16500, 0, '2026-04-16T16:25:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4308-3', 'hist-ticket-168-4308', 'prod-americano', 1, 12000, 0, '2026-04-16T16:25:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4308', 'hist-ticket-168-4308', 'cash', 40500, 'completed', '2026-04-16T16:25:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4309', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T15:56:52.000Z', '2026-04-16T15:56:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4309-1', 'hist-ticket-168-4309', 'prod-americano', 1, 12000, 0, '2026-04-16T15:56:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4309-2', 'hist-ticket-168-4309', 'prod-mocha', 1, 16500, 0, '2026-04-16T15:56:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4309', 'hist-ticket-168-4309', 'cash', 28500, 'completed', '2026-04-16T15:56:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4310', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-04-16T13:44:21.000Z', '2026-04-16T13:44:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4310-1', 'hist-ticket-168-4310', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T13:44:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4310-2', 'hist-ticket-168-4310', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T13:44:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4310-3', 'hist-ticket-168-4310', 'prod-americano', 1, 12000, 0, '2026-04-16T13:44:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4310', 'hist-ticket-168-4310', 'cash', 41000, 'completed', '2026-04-16T13:44:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4311', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-04-16T11:33:30.000Z', '2026-04-16T11:33:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4311-1', 'hist-ticket-168-4311', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:33:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4311-2', 'hist-ticket-168-4311', 'prod-americano', 1, 12000, 0, '2026-04-16T11:33:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4311', 'hist-ticket-168-4311', 'cash', 26500, 'completed', '2026-04-16T11:33:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4312', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-04-16T16:35:13.000Z', '2026-04-16T16:35:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4312-1', 'hist-ticket-168-4312', 'prod-latte', 1, 15000, 0, '2026-04-16T16:35:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4312-2', 'hist-ticket-168-4312', 'prod-latte', 1, 15000, 0, '2026-04-16T16:35:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4312', 'hist-ticket-168-4312', 'cash', 30000, 'completed', '2026-04-16T16:35:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4313', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-04-16T10:54:49.000Z', '2026-04-16T10:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4313-1', 'hist-ticket-168-4313', 'prod-americano', 1, 12000, 0, '2026-04-16T10:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4313-2', 'hist-ticket-168-4313', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T10:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4313', 'hist-ticket-168-4313', 'cash', 26500, 'completed', '2026-04-16T10:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4314', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-16T15:01:54.000Z', '2026-04-16T15:01:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4314-1', 'hist-ticket-168-4314', 'prod-mocha', 1, 16500, 0, '2026-04-16T15:01:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4314-2', 'hist-ticket-168-4314', 'prod-latte', 1, 15000, 0, '2026-04-16T15:01:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4314', 'hist-ticket-168-4314', 'cash', 31500, 'completed', '2026-04-16T15:01:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4315', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-16T16:35:54.000Z', '2026-04-16T16:35:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4315-1', 'hist-ticket-168-4315', 'prod-latte', 1, 15000, 0, '2026-04-16T16:35:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4315-2', 'hist-ticket-168-4315', 'prod-americano', 1, 12000, 0, '2026-04-16T16:35:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4315', 'hist-ticket-168-4315', 'cash', 27000, 'completed', '2026-04-16T16:35:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4316', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-04-16T14:22:45.000Z', '2026-04-16T14:22:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4316-1', 'hist-ticket-168-4316', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4316-2', 'hist-ticket-168-4316', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:22:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4316-3', 'hist-ticket-168-4316', 'prod-latte', 1, 15000, 0, '2026-04-16T14:22:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4316', 'hist-ticket-168-4316', 'cash', 44000, 'completed', '2026-04-16T14:22:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4317', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-16T14:45:24.000Z', '2026-04-16T14:45:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4317-1', 'hist-ticket-168-4317', 'prod-americano', 1, 12000, 0, '2026-04-16T14:45:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4317-2', 'hist-ticket-168-4317', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:45:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4317', 'hist-ticket-168-4317', 'cash', 26500, 'completed', '2026-04-16T14:45:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4318', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-04-16T14:40:40.000Z', '2026-04-16T14:40:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4318-1', 'hist-ticket-168-4318', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4318-2', 'hist-ticket-168-4318', 'prod-mocha', 1, 16500, 0, '2026-04-16T14:40:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4318-3', 'hist-ticket-168-4318', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:40:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4318', 'hist-ticket-168-4318', 'cash', 45500, 'completed', '2026-04-16T14:40:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4319', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-16T09:44:05.000Z', '2026-04-16T09:44:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4319-1', 'hist-ticket-168-4319', 'prod-latte', 1, 15000, 0, '2026-04-16T09:44:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4319', 'hist-ticket-168-4319', 'cash', 15000, 'completed', '2026-04-16T09:44:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4320', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2026-04-16T08:32:29.000Z', '2026-04-16T08:32:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4320-1', 'hist-ticket-168-4320', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T08:32:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4320-2', 'hist-ticket-168-4320', 'prod-americano', 1, 12000, 0, '2026-04-16T08:32:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4320-3', 'hist-ticket-168-4320', 'prod-mocha', 1, 16500, 0, '2026-04-16T08:32:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4320-4', 'hist-ticket-168-4320', 'prod-americano', 1, 12000, 0, '2026-04-16T08:32:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4320', 'hist-ticket-168-4320', 'cash', 55000, 'completed', '2026-04-16T08:32:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4321', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-04-16T11:43:38.000Z', '2026-04-16T11:43:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4321-1', 'hist-ticket-168-4321', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:43:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4321-2', 'hist-ticket-168-4321', 'prod-mocha', 1, 16500, 0, '2026-04-16T11:43:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4321-3', 'hist-ticket-168-4321', 'prod-americano', 1, 12000, 0, '2026-04-16T11:43:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4321-4', 'hist-ticket-168-4321', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:43:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4321', 'hist-ticket-168-4321', 'cash', 57500, 'completed', '2026-04-16T11:43:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4322', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-16T19:25:10.000Z', '2026-04-16T19:25:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4322-1', 'hist-ticket-168-4322', 'prod-americano', 1, 12000, 0, '2026-04-16T19:25:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4322-2', 'hist-ticket-168-4322', 'prod-mocha', 1, 16500, 0, '2026-04-16T19:25:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4322-3', 'hist-ticket-168-4322', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T19:25:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4322', 'hist-ticket-168-4322', 'cash', 43000, 'completed', '2026-04-16T19:25:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4323', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-16T14:39:53.000Z', '2026-04-16T14:39:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4323-1', 'hist-ticket-168-4323', 'prod-americano', 1, 12000, 0, '2026-04-16T14:39:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4323-2', 'hist-ticket-168-4323', 'prod-mocha', 1, 16500, 0, '2026-04-16T14:39:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4323-3', 'hist-ticket-168-4323', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:39:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4323-4', 'hist-ticket-168-4323', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T14:39:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4323', 'hist-ticket-168-4323', 'cash', 57500, 'completed', '2026-04-16T14:39:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4324', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T12:30:46.000Z', '2026-04-16T12:30:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4324-1', 'hist-ticket-168-4324', 'prod-americano', 1, 12000, 0, '2026-04-16T12:30:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4324', 'hist-ticket-168-4324', 'cash', 12000, 'completed', '2026-04-16T12:30:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4325', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-16T11:01:45.000Z', '2026-04-16T11:01:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4325-1', 'hist-ticket-168-4325', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T11:01:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4325', 'hist-ticket-168-4325', 'cash', 14500, 'completed', '2026-04-16T11:01:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4326', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-16T08:53:25.000Z', '2026-04-16T08:53:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4326-1', 'hist-ticket-168-4326', 'prod-americano', 1, 12000, 0, '2026-04-16T08:53:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4326-2', 'hist-ticket-168-4326', 'prod-americano', 1, 12000, 0, '2026-04-16T08:53:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4326-3', 'hist-ticket-168-4326', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T08:53:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4326', 'hist-ticket-168-4326', 'cash', 38500, 'completed', '2026-04-16T08:53:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-168-4327', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-16T15:01:47.000Z', '2026-04-16T15:01:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4327-1', 'hist-ticket-168-4327', 'prod-americano', 1, 12000, 0, '2026-04-16T15:01:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4327-2', 'hist-ticket-168-4327', 'prod-cappuccino', 1, 14500, 0, '2026-04-16T15:01:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4327-3', 'hist-ticket-168-4327', 'prod-mocha', 1, 16500, 0, '2026-04-16T15:01:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-168-4327-4', 'hist-ticket-168-4327', 'prod-latte', 1, 15000, 0, '2026-04-16T15:01:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-168-4327', 'hist-ticket-168-4327', 'cash', 58000, 'completed', '2026-04-16T15:01:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4328', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-17T13:32:15.000Z', '2026-04-17T13:32:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4328-1', 'hist-ticket-169-4328', 'prod-mocha', 1, 16500, 0, '2026-04-17T13:32:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4328-2', 'hist-ticket-169-4328', 'prod-latte', 1, 15000, 0, '2026-04-17T13:32:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4328-3', 'hist-ticket-169-4328', 'prod-latte', 1, 15000, 0, '2026-04-17T13:32:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4328-4', 'hist-ticket-169-4328', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T13:32:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4328', 'hist-ticket-169-4328', 'cash', 61000, 'completed', '2026-04-17T13:32:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4329', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-17T08:35:33.000Z', '2026-04-17T08:35:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4329-1', 'hist-ticket-169-4329', 'prod-mocha', 1, 16500, 0, '2026-04-17T08:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4329-2', 'hist-ticket-169-4329', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T08:35:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4329-3', 'hist-ticket-169-4329', 'prod-mocha', 1, 16500, 0, '2026-04-17T08:35:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4329', 'hist-ticket-169-4329', 'cash', 47500, 'completed', '2026-04-17T08:35:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4330', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-17T12:29:01.000Z', '2026-04-17T12:29:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4330-1', 'hist-ticket-169-4330', 'prod-latte', 1, 15000, 0, '2026-04-17T12:29:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4330-2', 'hist-ticket-169-4330', 'prod-mocha', 1, 16500, 0, '2026-04-17T12:29:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4330-3', 'hist-ticket-169-4330', 'prod-americano', 1, 12000, 0, '2026-04-17T12:29:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4330-4', 'hist-ticket-169-4330', 'prod-mocha', 1, 16500, 0, '2026-04-17T12:29:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4330', 'hist-ticket-169-4330', 'cash', 60000, 'completed', '2026-04-17T12:29:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4331', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-17T17:42:29.000Z', '2026-04-17T17:42:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4331-1', 'hist-ticket-169-4331', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T17:42:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4331-2', 'hist-ticket-169-4331', 'prod-latte', 1, 15000, 0, '2026-04-17T17:42:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4331-3', 'hist-ticket-169-4331', 'prod-latte', 1, 15000, 0, '2026-04-17T17:42:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4331-4', 'hist-ticket-169-4331', 'prod-mocha', 1, 16500, 0, '2026-04-17T17:42:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4331', 'hist-ticket-169-4331', 'cash', 61000, 'completed', '2026-04-17T17:42:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4332', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-17T19:38:19.000Z', '2026-04-17T19:38:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4332-1', 'hist-ticket-169-4332', 'prod-latte', 1, 15000, 0, '2026-04-17T19:38:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4332-2', 'hist-ticket-169-4332', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T19:38:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4332-3', 'hist-ticket-169-4332', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T19:38:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4332-4', 'hist-ticket-169-4332', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T19:38:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4332', 'hist-ticket-169-4332', 'cash', 58500, 'completed', '2026-04-17T19:38:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4333', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-17T09:58:58.000Z', '2026-04-17T09:58:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4333-1', 'hist-ticket-169-4333', 'prod-mocha', 1, 16500, 0, '2026-04-17T09:58:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4333', 'hist-ticket-169-4333', 'cash', 16500, 'completed', '2026-04-17T09:58:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4334', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-17T08:36:49.000Z', '2026-04-17T08:36:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4334-1', 'hist-ticket-169-4334', 'prod-americano', 1, 12000, 0, '2026-04-17T08:36:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4334-2', 'hist-ticket-169-4334', 'prod-latte', 1, 15000, 0, '2026-04-17T08:36:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4334', 'hist-ticket-169-4334', 'cash', 27000, 'completed', '2026-04-17T08:36:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4335', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-17T18:54:51.000Z', '2026-04-17T18:54:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4335-1', 'hist-ticket-169-4335', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T18:54:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4335-2', 'hist-ticket-169-4335', 'prod-mocha', 1, 16500, 0, '2026-04-17T18:54:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4335', 'hist-ticket-169-4335', 'cash', 31000, 'completed', '2026-04-17T18:54:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4336', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-17T11:24:02.000Z', '2026-04-17T11:24:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4336-1', 'hist-ticket-169-4336', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T11:24:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4336-2', 'hist-ticket-169-4336', 'prod-mocha', 1, 16500, 0, '2026-04-17T11:24:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4336-3', 'hist-ticket-169-4336', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T11:24:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4336', 'hist-ticket-169-4336', 'cash', 45500, 'completed', '2026-04-17T11:24:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4337', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-17T17:35:46.000Z', '2026-04-17T17:35:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4337-1', 'hist-ticket-169-4337', 'prod-americano', 1, 12000, 0, '2026-04-17T17:35:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4337-2', 'hist-ticket-169-4337', 'prod-latte', 1, 15000, 0, '2026-04-17T17:35:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4337-3', 'hist-ticket-169-4337', 'prod-latte', 1, 15000, 0, '2026-04-17T17:35:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4337', 'hist-ticket-169-4337', 'cash', 42000, 'completed', '2026-04-17T17:35:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4338', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-17T13:12:07.000Z', '2026-04-17T13:12:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4338-1', 'hist-ticket-169-4338', 'prod-latte', 1, 15000, 0, '2026-04-17T13:12:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4338-2', 'hist-ticket-169-4338', 'prod-americano', 1, 12000, 0, '2026-04-17T13:12:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4338-3', 'hist-ticket-169-4338', 'prod-americano', 1, 12000, 0, '2026-04-17T13:12:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4338', 'hist-ticket-169-4338', 'cash', 39000, 'completed', '2026-04-17T13:12:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4339', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-17T10:24:34.000Z', '2026-04-17T10:24:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4339-1', 'hist-ticket-169-4339', 'prod-mocha', 1, 16500, 0, '2026-04-17T10:24:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4339', 'hist-ticket-169-4339', 'cash', 16500, 'completed', '2026-04-17T10:24:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4340', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-17T15:23:55.000Z', '2026-04-17T15:23:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4340-1', 'hist-ticket-169-4340', 'prod-mocha', 1, 16500, 0, '2026-04-17T15:23:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4340', 'hist-ticket-169-4340', 'cash', 16500, 'completed', '2026-04-17T15:23:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4341', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-17T15:19:08.000Z', '2026-04-17T15:19:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4341-1', 'hist-ticket-169-4341', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T15:19:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4341', 'hist-ticket-169-4341', 'cash', 14500, 'completed', '2026-04-17T15:19:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4342', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-04-17T08:03:45.000Z', '2026-04-17T08:03:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4342-1', 'hist-ticket-169-4342', 'prod-mocha', 1, 16500, 0, '2026-04-17T08:03:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4342-2', 'hist-ticket-169-4342', 'prod-americano', 1, 12000, 0, '2026-04-17T08:03:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4342-3', 'hist-ticket-169-4342', 'prod-latte', 1, 15000, 0, '2026-04-17T08:03:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4342-4', 'hist-ticket-169-4342', 'prod-americano', 1, 12000, 0, '2026-04-17T08:03:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4342', 'hist-ticket-169-4342', 'cash', 55500, 'completed', '2026-04-17T08:03:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4343', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-17T13:09:21.000Z', '2026-04-17T13:09:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4343-1', 'hist-ticket-169-4343', 'prod-latte', 1, 15000, 0, '2026-04-17T13:09:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4343-2', 'hist-ticket-169-4343', 'prod-latte', 1, 15000, 0, '2026-04-17T13:09:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4343-3', 'hist-ticket-169-4343', 'prod-mocha', 1, 16500, 0, '2026-04-17T13:09:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4343-4', 'hist-ticket-169-4343', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T13:09:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4343', 'hist-ticket-169-4343', 'cash', 61000, 'completed', '2026-04-17T13:09:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4344', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-17T13:44:57.000Z', '2026-04-17T13:44:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4344-1', 'hist-ticket-169-4344', 'prod-mocha', 1, 16500, 0, '2026-04-17T13:44:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4344-2', 'hist-ticket-169-4344', 'prod-americano', 1, 12000, 0, '2026-04-17T13:44:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4344', 'hist-ticket-169-4344', 'cash', 28500, 'completed', '2026-04-17T13:44:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4345', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-17T09:04:14.000Z', '2026-04-17T09:04:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4345-1', 'hist-ticket-169-4345', 'prod-latte', 1, 15000, 0, '2026-04-17T09:04:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4345-2', 'hist-ticket-169-4345', 'prod-mocha', 1, 16500, 0, '2026-04-17T09:04:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4345-3', 'hist-ticket-169-4345', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T09:04:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4345-4', 'hist-ticket-169-4345', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T09:04:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4345', 'hist-ticket-169-4345', 'cash', 60500, 'completed', '2026-04-17T09:04:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4346', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-17T08:32:31.000Z', '2026-04-17T08:32:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4346-1', 'hist-ticket-169-4346', 'prod-americano', 1, 12000, 0, '2026-04-17T08:32:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4346-2', 'hist-ticket-169-4346', 'prod-latte', 1, 15000, 0, '2026-04-17T08:32:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4346-3', 'hist-ticket-169-4346', 'prod-latte', 1, 15000, 0, '2026-04-17T08:32:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4346', 'hist-ticket-169-4346', 'cash', 42000, 'completed', '2026-04-17T08:32:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4347', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2026-04-17T17:06:49.000Z', '2026-04-17T17:06:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4347-1', 'hist-ticket-169-4347', 'prod-mocha', 1, 16500, 0, '2026-04-17T17:06:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4347-2', 'hist-ticket-169-4347', 'prod-americano', 1, 12000, 0, '2026-04-17T17:06:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4347-3', 'hist-ticket-169-4347', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T17:06:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4347-4', 'hist-ticket-169-4347', 'prod-americano', 1, 12000, 0, '2026-04-17T17:06:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4347', 'hist-ticket-169-4347', 'cash', 55000, 'completed', '2026-04-17T17:06:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4348', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-17T13:12:34.000Z', '2026-04-17T13:12:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4348-1', 'hist-ticket-169-4348', 'prod-latte', 1, 15000, 0, '2026-04-17T13:12:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4348-2', 'hist-ticket-169-4348', 'prod-mocha', 1, 16500, 0, '2026-04-17T13:12:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4348', 'hist-ticket-169-4348', 'cash', 31500, 'completed', '2026-04-17T13:12:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4349', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-04-17T10:06:59.000Z', '2026-04-17T10:06:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4349-1', 'hist-ticket-169-4349', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:06:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4349-2', 'hist-ticket-169-4349', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T10:06:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4349-3', 'hist-ticket-169-4349', 'prod-latte', 1, 15000, 0, '2026-04-17T10:06:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4349', 'hist-ticket-169-4349', 'cash', 44000, 'completed', '2026-04-17T10:06:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4350', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-17T18:00:48.000Z', '2026-04-17T18:00:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4350-1', 'hist-ticket-169-4350', 'prod-mocha', 1, 16500, 0, '2026-04-17T18:00:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4350-2', 'hist-ticket-169-4350', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T18:00:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4350-3', 'hist-ticket-169-4350', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T18:00:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4350', 'hist-ticket-169-4350', 'cash', 45500, 'completed', '2026-04-17T18:00:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-169-4351', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-17T13:44:43.000Z', '2026-04-17T13:44:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4351-1', 'hist-ticket-169-4351', 'prod-cappuccino', 1, 14500, 0, '2026-04-17T13:44:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4351-2', 'hist-ticket-169-4351', 'prod-latte', 1, 15000, 0, '2026-04-17T13:44:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4351-3', 'hist-ticket-169-4351', 'prod-latte', 1, 15000, 0, '2026-04-17T13:44:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-169-4351-4', 'hist-ticket-169-4351', 'prod-latte', 1, 15000, 0, '2026-04-17T13:44:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-169-4351', 'hist-ticket-169-4351', 'cash', 59500, 'completed', '2026-04-17T13:44:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4352', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-18T18:20:51.000Z', '2026-04-18T18:20:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4352-1', 'hist-ticket-170-4352', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T18:20:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4352-2', 'hist-ticket-170-4352', 'prod-americano', 1, 12000, 0, '2026-04-18T18:20:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4352-3', 'hist-ticket-170-4352', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T18:20:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4352', 'hist-ticket-170-4352', 'cash', 41000, 'completed', '2026-04-18T18:20:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4353', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-18T09:41:42.000Z', '2026-04-18T09:41:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4353-1', 'hist-ticket-170-4353', 'prod-americano', 1, 12000, 0, '2026-04-18T09:41:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4353-2', 'hist-ticket-170-4353', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T09:41:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4353-3', 'hist-ticket-170-4353', 'prod-mocha', 1, 16500, 0, '2026-04-18T09:41:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4353-4', 'hist-ticket-170-4353', 'prod-latte', 1, 15000, 0, '2026-04-18T09:41:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4353', 'hist-ticket-170-4353', 'cash', 58000, 'completed', '2026-04-18T09:41:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4354', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-18T14:53:47.000Z', '2026-04-18T14:53:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4354-1', 'hist-ticket-170-4354', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:53:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4354-2', 'hist-ticket-170-4354', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:53:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4354-3', 'hist-ticket-170-4354', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:53:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4354', 'hist-ticket-170-4354', 'cash', 43500, 'completed', '2026-04-18T14:53:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4355', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-18T15:20:36.000Z', '2026-04-18T15:20:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4355-1', 'hist-ticket-170-4355', 'prod-americano', 1, 12000, 0, '2026-04-18T15:20:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4355', 'hist-ticket-170-4355', 'cash', 12000, 'completed', '2026-04-18T15:20:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4356', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-18T14:45:14.000Z', '2026-04-18T14:45:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4356-1', 'hist-ticket-170-4356', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:45:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4356-2', 'hist-ticket-170-4356', 'prod-americano', 1, 12000, 0, '2026-04-18T14:45:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4356-3', 'hist-ticket-170-4356', 'prod-mocha', 1, 16500, 0, '2026-04-18T14:45:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4356', 'hist-ticket-170-4356', 'cash', 43000, 'completed', '2026-04-18T14:45:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4357', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-04-18T11:15:26.000Z', '2026-04-18T11:15:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4357-1', 'hist-ticket-170-4357', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T11:15:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4357-2', 'hist-ticket-170-4357', 'prod-mocha', 1, 16500, 0, '2026-04-18T11:15:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4357-3', 'hist-ticket-170-4357', 'prod-americano', 1, 12000, 0, '2026-04-18T11:15:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4357', 'hist-ticket-170-4357', 'cash', 43000, 'completed', '2026-04-18T11:15:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4358', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T14:07:38.000Z', '2026-04-18T14:07:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4358-1', 'hist-ticket-170-4358', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:07:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4358', 'hist-ticket-170-4358', 'cash', 14500, 'completed', '2026-04-18T14:07:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4359', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-18T14:09:15.000Z', '2026-04-18T14:09:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4359-1', 'hist-ticket-170-4359', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:09:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4359-2', 'hist-ticket-170-4359', 'prod-latte', 1, 15000, 0, '2026-04-18T14:09:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4359-3', 'hist-ticket-170-4359', 'prod-americano', 1, 12000, 0, '2026-04-18T14:09:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4359', 'hist-ticket-170-4359', 'cash', 41500, 'completed', '2026-04-18T14:09:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4360', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-18T13:59:06.000Z', '2026-04-18T13:59:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4360-1', 'hist-ticket-170-4360', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:59:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4360-2', 'hist-ticket-170-4360', 'prod-americano', 1, 12000, 0, '2026-04-18T13:59:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4360', 'hist-ticket-170-4360', 'cash', 26500, 'completed', '2026-04-18T13:59:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4361', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-04-18T12:09:01.000Z', '2026-04-18T12:09:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4361-1', 'hist-ticket-170-4361', 'prod-latte', 1, 15000, 0, '2026-04-18T12:09:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4361-2', 'hist-ticket-170-4361', 'prod-americano', 1, 12000, 0, '2026-04-18T12:09:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4361', 'hist-ticket-170-4361', 'cash', 27000, 'completed', '2026-04-18T12:09:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4362', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-18T15:03:10.000Z', '2026-04-18T15:03:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4362-1', 'hist-ticket-170-4362', 'prod-latte', 1, 15000, 0, '2026-04-18T15:03:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4362', 'hist-ticket-170-4362', 'cash', 15000, 'completed', '2026-04-18T15:03:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4363', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-04-18T09:47:39.000Z', '2026-04-18T09:47:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4363-1', 'hist-ticket-170-4363', 'prod-americano', 1, 12000, 0, '2026-04-18T09:47:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4363-2', 'hist-ticket-170-4363', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T09:47:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4363', 'hist-ticket-170-4363', 'cash', 26500, 'completed', '2026-04-18T09:47:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4364', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-18T17:25:11.000Z', '2026-04-18T17:25:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4364-1', 'hist-ticket-170-4364', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T17:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4364-2', 'hist-ticket-170-4364', 'prod-mocha', 1, 16500, 0, '2026-04-18T17:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4364-3', 'hist-ticket-170-4364', 'prod-latte', 1, 15000, 0, '2026-04-18T17:25:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4364-4', 'hist-ticket-170-4364', 'prod-latte', 1, 15000, 0, '2026-04-18T17:25:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4364', 'hist-ticket-170-4364', 'cash', 61000, 'completed', '2026-04-18T17:25:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4365', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-18T17:07:25.000Z', '2026-04-18T17:07:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4365-1', 'hist-ticket-170-4365', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T17:07:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4365-2', 'hist-ticket-170-4365', 'prod-americano', 1, 12000, 0, '2026-04-18T17:07:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4365', 'hist-ticket-170-4365', 'cash', 26500, 'completed', '2026-04-18T17:07:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4366', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-04-18T10:38:18.000Z', '2026-04-18T10:38:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4366-1', 'hist-ticket-170-4366', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:38:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4366-2', 'hist-ticket-170-4366', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T10:38:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4366', 'hist-ticket-170-4366', 'cash', 31000, 'completed', '2026-04-18T10:38:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4367', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T19:54:37.000Z', '2026-04-18T19:54:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4367-1', 'hist-ticket-170-4367', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4367-2', 'hist-ticket-170-4367', 'prod-americano', 1, 12000, 0, '2026-04-18T19:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4367-3', 'hist-ticket-170-4367', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:54:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4367-4', 'hist-ticket-170-4367', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:54:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4367', 'hist-ticket-170-4367', 'cash', 57500, 'completed', '2026-04-18T19:54:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4368', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-04-18T14:05:06.000Z', '2026-04-18T14:05:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4368-1', 'hist-ticket-170-4368', 'prod-americano', 1, 12000, 0, '2026-04-18T14:05:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4368-2', 'hist-ticket-170-4368', 'prod-americano', 1, 12000, 0, '2026-04-18T14:05:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4368-3', 'hist-ticket-170-4368', 'prod-latte', 1, 15000, 0, '2026-04-18T14:05:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4368-4', 'hist-ticket-170-4368', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:05:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4368', 'hist-ticket-170-4368', 'cash', 53500, 'completed', '2026-04-18T14:05:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4369', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-18T08:27:50.000Z', '2026-04-18T08:27:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4369-1', 'hist-ticket-170-4369', 'prod-americano', 1, 12000, 0, '2026-04-18T08:27:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4369', 'hist-ticket-170-4369', 'cash', 12000, 'completed', '2026-04-18T08:27:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4370', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-18T13:49:30.000Z', '2026-04-18T13:49:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4370-1', 'hist-ticket-170-4370', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:49:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4370-2', 'hist-ticket-170-4370', 'prod-americano', 1, 12000, 0, '2026-04-18T13:49:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4370-3', 'hist-ticket-170-4370', 'prod-latte', 1, 15000, 0, '2026-04-18T13:49:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4370', 'hist-ticket-170-4370', 'cash', 41500, 'completed', '2026-04-18T13:49:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4371', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-18T17:50:44.000Z', '2026-04-18T17:50:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4371-1', 'hist-ticket-170-4371', 'prod-americano', 1, 12000, 0, '2026-04-18T17:50:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4371-2', 'hist-ticket-170-4371', 'prod-americano', 1, 12000, 0, '2026-04-18T17:50:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4371', 'hist-ticket-170-4371', 'cash', 24000, 'completed', '2026-04-18T17:50:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4372', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-18T11:22:15.000Z', '2026-04-18T11:22:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4372-1', 'hist-ticket-170-4372', 'prod-latte', 1, 15000, 0, '2026-04-18T11:22:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4372', 'hist-ticket-170-4372', 'cash', 15000, 'completed', '2026-04-18T11:22:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4373', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-18T19:09:15.000Z', '2026-04-18T19:09:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4373-1', 'hist-ticket-170-4373', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:09:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4373-2', 'hist-ticket-170-4373', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:09:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4373-3', 'hist-ticket-170-4373', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T19:09:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4373', 'hist-ticket-170-4373', 'cash', 47500, 'completed', '2026-04-18T19:09:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4374', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-04-18T13:28:06.000Z', '2026-04-18T13:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4374-1', 'hist-ticket-170-4374', 'prod-latte', 1, 15000, 0, '2026-04-18T13:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4374-2', 'hist-ticket-170-4374', 'prod-mocha', 1, 16500, 0, '2026-04-18T13:28:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4374', 'hist-ticket-170-4374', 'cash', 31500, 'completed', '2026-04-18T13:28:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4375', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-18T18:37:25.000Z', '2026-04-18T18:37:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4375-1', 'hist-ticket-170-4375', 'prod-mocha', 1, 16500, 0, '2026-04-18T18:37:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4375', 'hist-ticket-170-4375', 'cash', 16500, 'completed', '2026-04-18T18:37:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4376', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-04-18T14:58:05.000Z', '2026-04-18T14:58:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4376-1', 'hist-ticket-170-4376', 'prod-latte', 1, 15000, 0, '2026-04-18T14:58:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4376-2', 'hist-ticket-170-4376', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T14:58:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4376-3', 'hist-ticket-170-4376', 'prod-latte', 1, 15000, 0, '2026-04-18T14:58:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4376', 'hist-ticket-170-4376', 'cash', 44500, 'completed', '2026-04-18T14:58:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4377', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-04-18T15:45:57.000Z', '2026-04-18T15:45:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4377-1', 'hist-ticket-170-4377', 'prod-mocha', 1, 16500, 0, '2026-04-18T15:45:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4377-2', 'hist-ticket-170-4377', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T15:45:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4377-3', 'hist-ticket-170-4377', 'prod-americano', 1, 12000, 0, '2026-04-18T15:45:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4377', 'hist-ticket-170-4377', 'cash', 43000, 'completed', '2026-04-18T15:45:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4378', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-18T16:00:47.000Z', '2026-04-18T16:00:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4378-1', 'hist-ticket-170-4378', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T16:00:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4378', 'hist-ticket-170-4378', 'cash', 14500, 'completed', '2026-04-18T16:00:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4379', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-04-18T16:45:47.000Z', '2026-04-18T16:45:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4379-1', 'hist-ticket-170-4379', 'prod-latte', 1, 15000, 0, '2026-04-18T16:45:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4379-2', 'hist-ticket-170-4379', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T16:45:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4379-3', 'hist-ticket-170-4379', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T16:45:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4379', 'hist-ticket-170-4379', 'cash', 44000, 'completed', '2026-04-18T16:45:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4380', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-04-18T11:28:14.000Z', '2026-04-18T11:28:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4380-1', 'hist-ticket-170-4380', 'prod-mocha', 1, 16500, 0, '2026-04-18T11:28:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4380-2', 'hist-ticket-170-4380', 'prod-latte', 1, 15000, 0, '2026-04-18T11:28:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4380-3', 'hist-ticket-170-4380', 'prod-latte', 1, 15000, 0, '2026-04-18T11:28:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4380', 'hist-ticket-170-4380', 'cash', 46500, 'completed', '2026-04-18T11:28:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4381', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-18T11:08:03.000Z', '2026-04-18T11:08:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4381-1', 'hist-ticket-170-4381', 'prod-mocha', 1, 16500, 0, '2026-04-18T11:08:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4381', 'hist-ticket-170-4381', 'cash', 16500, 'completed', '2026-04-18T11:08:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4382', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-18T10:30:50.000Z', '2026-04-18T10:30:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4382-1', 'hist-ticket-170-4382', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T10:30:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4382-2', 'hist-ticket-170-4382', 'prod-mocha', 1, 16500, 0, '2026-04-18T10:30:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4382-3', 'hist-ticket-170-4382', 'prod-americano', 1, 12000, 0, '2026-04-18T10:30:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4382-4', 'hist-ticket-170-4382', 'prod-americano', 1, 12000, 0, '2026-04-18T10:30:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4382', 'hist-ticket-170-4382', 'cash', 55000, 'completed', '2026-04-18T10:30:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4383', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-18T18:26:04.000Z', '2026-04-18T18:26:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4383-1', 'hist-ticket-170-4383', 'prod-mocha', 1, 16500, 0, '2026-04-18T18:26:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4383', 'hist-ticket-170-4383', 'cash', 16500, 'completed', '2026-04-18T18:26:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4384', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-18T13:42:21.000Z', '2026-04-18T13:42:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4384-1', 'hist-ticket-170-4384', 'prod-latte', 1, 15000, 0, '2026-04-18T13:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4384-2', 'hist-ticket-170-4384', 'prod-latte', 1, 15000, 0, '2026-04-18T13:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4384-3', 'hist-ticket-170-4384', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4384-4', 'hist-ticket-170-4384', 'prod-americano', 1, 12000, 0, '2026-04-18T13:42:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4384', 'hist-ticket-170-4384', 'cash', 56500, 'completed', '2026-04-18T13:42:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4385', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-18T13:00:13.000Z', '2026-04-18T13:00:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4385-1', 'hist-ticket-170-4385', 'prod-americano', 1, 12000, 0, '2026-04-18T13:00:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4385-2', 'hist-ticket-170-4385', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T13:00:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4385', 'hist-ticket-170-4385', 'cash', 26500, 'completed', '2026-04-18T13:00:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4386', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-18T19:27:36.000Z', '2026-04-18T19:27:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4386-1', 'hist-ticket-170-4386', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:27:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4386', 'hist-ticket-170-4386', 'cash', 16500, 'completed', '2026-04-18T19:27:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4387', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-04-18T08:26:57.000Z', '2026-04-18T08:26:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4387-1', 'hist-ticket-170-4387', 'prod-latte', 1, 15000, 0, '2026-04-18T08:26:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4387', 'hist-ticket-170-4387', 'cash', 15000, 'completed', '2026-04-18T08:26:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4388', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-18T09:19:01.000Z', '2026-04-18T09:19:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4388-1', 'hist-ticket-170-4388', 'prod-americano', 1, 12000, 0, '2026-04-18T09:19:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4388-2', 'hist-ticket-170-4388', 'prod-latte', 1, 15000, 0, '2026-04-18T09:19:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4388', 'hist-ticket-170-4388', 'cash', 27000, 'completed', '2026-04-18T09:19:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4389', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-18T11:09:27.000Z', '2026-04-18T11:09:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4389-1', 'hist-ticket-170-4389', 'prod-americano', 1, 12000, 0, '2026-04-18T11:09:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4389-2', 'hist-ticket-170-4389', 'prod-latte', 1, 15000, 0, '2026-04-18T11:09:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4389-3', 'hist-ticket-170-4389', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T11:09:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4389', 'hist-ticket-170-4389', 'cash', 41500, 'completed', '2026-04-18T11:09:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4390', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-04-18T19:56:26.000Z', '2026-04-18T19:56:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4390-1', 'hist-ticket-170-4390', 'prod-mocha', 1, 16500, 0, '2026-04-18T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4390-2', 'hist-ticket-170-4390', 'prod-americano', 1, 12000, 0, '2026-04-18T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4390-3', 'hist-ticket-170-4390', 'prod-latte', 1, 15000, 0, '2026-04-18T19:56:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4390-4', 'hist-ticket-170-4390', 'prod-latte', 1, 15000, 0, '2026-04-18T19:56:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4390', 'hist-ticket-170-4390', 'cash', 58500, 'completed', '2026-04-18T19:56:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4391', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-18T17:27:44.000Z', '2026-04-18T17:27:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4391-1', 'hist-ticket-170-4391', 'prod-latte', 1, 15000, 0, '2026-04-18T17:27:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4391-2', 'hist-ticket-170-4391', 'prod-mocha', 1, 16500, 0, '2026-04-18T17:27:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4391-3', 'hist-ticket-170-4391', 'prod-latte', 1, 15000, 0, '2026-04-18T17:27:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4391', 'hist-ticket-170-4391', 'cash', 46500, 'completed', '2026-04-18T17:27:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4392', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-04-18T17:49:46.000Z', '2026-04-18T17:49:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4392-1', 'hist-ticket-170-4392', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T17:49:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4392-2', 'hist-ticket-170-4392', 'prod-mocha', 1, 16500, 0, '2026-04-18T17:49:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4392-3', 'hist-ticket-170-4392', 'prod-mocha', 1, 16500, 0, '2026-04-18T17:49:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4392', 'hist-ticket-170-4392', 'cash', 47500, 'completed', '2026-04-18T17:49:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4393', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-18T16:39:09.000Z', '2026-04-18T16:39:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4393-1', 'hist-ticket-170-4393', 'prod-cappuccino', 1, 14500, 0, '2026-04-18T16:39:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4393-2', 'hist-ticket-170-4393', 'prod-americano', 1, 12000, 0, '2026-04-18T16:39:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4393', 'hist-ticket-170-4393', 'cash', 26500, 'completed', '2026-04-18T16:39:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4394', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2026-04-18T11:15:48.000Z', '2026-04-18T11:15:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4394-1', 'hist-ticket-170-4394', 'prod-latte', 1, 15000, 0, '2026-04-18T11:15:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4394', 'hist-ticket-170-4394', 'cash', 15000, 'completed', '2026-04-18T11:15:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4395', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-04-18T18:22:20.000Z', '2026-04-18T18:22:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4395-1', 'hist-ticket-170-4395', 'prod-mocha', 1, 16500, 0, '2026-04-18T18:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4395-2', 'hist-ticket-170-4395', 'prod-americano', 1, 12000, 0, '2026-04-18T18:22:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4395-3', 'hist-ticket-170-4395', 'prod-latte', 1, 15000, 0, '2026-04-18T18:22:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4395', 'hist-ticket-170-4395', 'cash', 43500, 'completed', '2026-04-18T18:22:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-170-4396', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-18T15:52:55.000Z', '2026-04-18T15:52:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4396-1', 'hist-ticket-170-4396', 'prod-americano', 1, 12000, 0, '2026-04-18T15:52:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4396-2', 'hist-ticket-170-4396', 'prod-mocha', 1, 16500, 0, '2026-04-18T15:52:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-170-4396-3', 'hist-ticket-170-4396', 'prod-latte', 1, 15000, 0, '2026-04-18T15:52:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-170-4396', 'hist-ticket-170-4396', 'cash', 43500, 'completed', '2026-04-18T15:52:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4397', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-19T13:03:32.000Z', '2026-04-19T13:03:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4397-1', 'hist-ticket-171-4397', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T13:03:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4397', 'hist-ticket-171-4397', 'cash', 14500, 'completed', '2026-04-19T13:03:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4398', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-04-19T18:09:56.000Z', '2026-04-19T18:09:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4398-1', 'hist-ticket-171-4398', 'prod-mocha', 1, 16500, 0, '2026-04-19T18:09:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4398-2', 'hist-ticket-171-4398', 'prod-mocha', 1, 16500, 0, '2026-04-19T18:09:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4398-3', 'hist-ticket-171-4398', 'prod-latte', 1, 15000, 0, '2026-04-19T18:09:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4398', 'hist-ticket-171-4398', 'cash', 48000, 'completed', '2026-04-19T18:09:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4399', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-19T08:27:13.000Z', '2026-04-19T08:27:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4399-1', 'hist-ticket-171-4399', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4399-2', 'hist-ticket-171-4399', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:27:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4399-3', 'hist-ticket-171-4399', 'prod-latte', 1, 15000, 0, '2026-04-19T08:27:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4399', 'hist-ticket-171-4399', 'cash', 44000, 'completed', '2026-04-19T08:27:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4400', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-04-19T11:34:06.000Z', '2026-04-19T11:34:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4400-1', 'hist-ticket-171-4400', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T11:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4400-2', 'hist-ticket-171-4400', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T11:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4400-3', 'hist-ticket-171-4400', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T11:34:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4400-4', 'hist-ticket-171-4400', 'prod-mocha', 1, 16500, 0, '2026-04-19T11:34:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4400', 'hist-ticket-171-4400', 'cash', 60000, 'completed', '2026-04-19T11:34:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4401', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-04-19T17:36:59.000Z', '2026-04-19T17:36:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4401-1', 'hist-ticket-171-4401', 'prod-latte', 1, 15000, 0, '2026-04-19T17:36:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4401', 'hist-ticket-171-4401', 'cash', 15000, 'completed', '2026-04-19T17:36:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4402', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-19T14:04:18.000Z', '2026-04-19T14:04:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4402-1', 'hist-ticket-171-4402', 'prod-mocha', 1, 16500, 0, '2026-04-19T14:04:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4402-2', 'hist-ticket-171-4402', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T14:04:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4402-3', 'hist-ticket-171-4402', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T14:04:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4402', 'hist-ticket-171-4402', 'cash', 45500, 'completed', '2026-04-19T14:04:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4403', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2026-04-19T12:19:37.000Z', '2026-04-19T12:19:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4403-1', 'hist-ticket-171-4403', 'prod-mocha', 1, 16500, 0, '2026-04-19T12:19:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4403-2', 'hist-ticket-171-4403', 'prod-latte', 1, 15000, 0, '2026-04-19T12:19:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4403', 'hist-ticket-171-4403', 'cash', 31500, 'completed', '2026-04-19T12:19:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4404', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-04-19T19:41:45.000Z', '2026-04-19T19:41:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4404-1', 'hist-ticket-171-4404', 'prod-mocha', 1, 16500, 0, '2026-04-19T19:41:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4404-2', 'hist-ticket-171-4404', 'prod-mocha', 1, 16500, 0, '2026-04-19T19:41:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4404', 'hist-ticket-171-4404', 'cash', 33000, 'completed', '2026-04-19T19:41:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4405', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-04-19T10:18:41.000Z', '2026-04-19T10:18:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4405-1', 'hist-ticket-171-4405', 'prod-latte', 1, 15000, 0, '2026-04-19T10:18:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4405-2', 'hist-ticket-171-4405', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T10:18:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4405-3', 'hist-ticket-171-4405', 'prod-americano', 1, 12000, 0, '2026-04-19T10:18:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4405-4', 'hist-ticket-171-4405', 'prod-mocha', 1, 16500, 0, '2026-04-19T10:18:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4405', 'hist-ticket-171-4405', 'cash', 58000, 'completed', '2026-04-19T10:18:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4406', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-04-19T10:43:41.000Z', '2026-04-19T10:43:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4406-1', 'hist-ticket-171-4406', 'prod-latte', 1, 15000, 0, '2026-04-19T10:43:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4406-2', 'hist-ticket-171-4406', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T10:43:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4406-3', 'hist-ticket-171-4406', 'prod-americano', 1, 12000, 0, '2026-04-19T10:43:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4406', 'hist-ticket-171-4406', 'cash', 41500, 'completed', '2026-04-19T10:43:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4407', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-04-19T19:53:33.000Z', '2026-04-19T19:53:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4407-1', 'hist-ticket-171-4407', 'prod-latte', 1, 15000, 0, '2026-04-19T19:53:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4407-2', 'hist-ticket-171-4407', 'prod-mocha', 1, 16500, 0, '2026-04-19T19:53:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4407', 'hist-ticket-171-4407', 'cash', 31500, 'completed', '2026-04-19T19:53:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4408', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-04-19T18:30:32.000Z', '2026-04-19T18:30:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4408-1', 'hist-ticket-171-4408', 'prod-americano', 1, 12000, 0, '2026-04-19T18:30:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4408-2', 'hist-ticket-171-4408', 'prod-latte', 1, 15000, 0, '2026-04-19T18:30:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4408-3', 'hist-ticket-171-4408', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T18:30:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4408', 'hist-ticket-171-4408', 'cash', 41500, 'completed', '2026-04-19T18:30:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4409', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T17:21:33.000Z', '2026-04-19T17:21:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4409-1', 'hist-ticket-171-4409', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T17:21:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4409-2', 'hist-ticket-171-4409', 'prod-mocha', 1, 16500, 0, '2026-04-19T17:21:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4409', 'hist-ticket-171-4409', 'cash', 31000, 'completed', '2026-04-19T17:21:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4410', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-04-19T09:17:14.000Z', '2026-04-19T09:17:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4410-1', 'hist-ticket-171-4410', 'prod-mocha', 1, 16500, 0, '2026-04-19T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4410-2', 'hist-ticket-171-4410', 'prod-mocha', 1, 16500, 0, '2026-04-19T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4410-3', 'hist-ticket-171-4410', 'prod-mocha', 1, 16500, 0, '2026-04-19T09:17:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4410-4', 'hist-ticket-171-4410', 'prod-americano', 1, 12000, 0, '2026-04-19T09:17:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4410', 'hist-ticket-171-4410', 'cash', 61500, 'completed', '2026-04-19T09:17:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4411', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-04-19T08:32:20.000Z', '2026-04-19T08:32:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4411-1', 'hist-ticket-171-4411', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:32:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4411-2', 'hist-ticket-171-4411', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T08:32:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4411', 'hist-ticket-171-4411', 'cash', 29000, 'completed', '2026-04-19T08:32:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4412', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-04-19T12:39:02.000Z', '2026-04-19T12:39:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4412-1', 'hist-ticket-171-4412', 'prod-cappuccino', 1, 14500, 0, '2026-04-19T12:39:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4412-2', 'hist-ticket-171-4412', 'prod-latte', 1, 15000, 0, '2026-04-19T12:39:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4412', 'hist-ticket-171-4412', 'cash', 29500, 'completed', '2026-04-19T12:39:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-171-4413', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-04-19T14:02:37.000Z', '2026-04-19T14:02:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4413-1', 'hist-ticket-171-4413', 'prod-americano', 1, 12000, 0, '2026-04-19T14:02:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-171-4413-2', 'hist-ticket-171-4413', 'prod-americano', 1, 12000, 0, '2026-04-19T14:02:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-171-4413', 'hist-ticket-171-4413', 'cash', 24000, 'completed', '2026-04-19T14:02:37.000Z');