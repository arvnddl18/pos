INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-335', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-12T10:07:40.000Z', '2025-11-12T10:07:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-335-1', 'hist-ticket-13-335', 'prod-mocha', 1, 16500, 0, '2025-11-12T10:07:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-335', 'hist-ticket-13-335', 'cash', 16500, 'completed', '2025-11-12T10:07:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-336', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-12T13:01:16.000Z', '2025-11-12T13:01:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-336-1', 'hist-ticket-13-336', 'prod-mocha', 1, 16500, 0, '2025-11-12T13:01:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-336', 'hist-ticket-13-336', 'cash', 16500, 'completed', '2025-11-12T13:01:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-337', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-11-12T14:30:16.000Z', '2025-11-12T14:30:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-337-1', 'hist-ticket-13-337', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T14:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-337-2', 'hist-ticket-13-337', 'prod-americano', 1, 12000, 0, '2025-11-12T14:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-337-3', 'hist-ticket-13-337', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T14:30:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-337-4', 'hist-ticket-13-337', 'prod-latte', 1, 15000, 0, '2025-11-12T14:30:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-337', 'hist-ticket-13-337', 'cash', 56000, 'completed', '2025-11-12T14:30:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-338', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-12T19:34:43.000Z', '2025-11-12T19:34:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-338-1', 'hist-ticket-13-338', 'prod-americano', 1, 12000, 0, '2025-11-12T19:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-338-2', 'hist-ticket-13-338', 'prod-mocha', 1, 16500, 0, '2025-11-12T19:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-338-3', 'hist-ticket-13-338', 'prod-americano', 1, 12000, 0, '2025-11-12T19:34:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-338-4', 'hist-ticket-13-338', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T19:34:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-338', 'hist-ticket-13-338', 'cash', 55000, 'completed', '2025-11-12T19:34:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-339', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-12T12:45:06.000Z', '2025-11-12T12:45:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-339-1', 'hist-ticket-13-339', 'prod-mocha', 1, 16500, 0, '2025-11-12T12:45:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-339', 'hist-ticket-13-339', 'cash', 16500, 'completed', '2025-11-12T12:45:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-340', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-12T12:45:18.000Z', '2025-11-12T12:45:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-340-1', 'hist-ticket-13-340', 'prod-mocha', 1, 16500, 0, '2025-11-12T12:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-340-2', 'hist-ticket-13-340', 'prod-americano', 1, 12000, 0, '2025-11-12T12:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-340-3', 'hist-ticket-13-340', 'prod-cappuccino', 1, 14500, 0, '2025-11-12T12:45:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-340-4', 'hist-ticket-13-340', 'prod-latte', 1, 15000, 0, '2025-11-12T12:45:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-340', 'hist-ticket-13-340', 'cash', 58000, 'completed', '2025-11-12T12:45:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-13-341', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2025-11-12T10:09:04.000Z', '2025-11-12T10:09:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-13-341-1', 'hist-ticket-13-341', 'prod-mocha', 1, 16500, 0, '2025-11-12T10:09:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-13-341', 'hist-ticket-13-341', 'cash', 16500, 'completed', '2025-11-12T10:09:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-342', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-13T09:13:55.000Z', '2025-11-13T09:13:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-342-1', 'hist-ticket-14-342', 'prod-latte', 1, 15000, 0, '2025-11-13T09:13:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-342', 'hist-ticket-14-342', 'cash', 15000, 'completed', '2025-11-13T09:13:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-343', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-13T08:25:04.000Z', '2025-11-13T08:25:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-343-1', 'hist-ticket-14-343', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T08:25:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-343', 'hist-ticket-14-343', 'cash', 14500, 'completed', '2025-11-13T08:25:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-344', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-11-13T11:35:04.000Z', '2025-11-13T11:35:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-344-1', 'hist-ticket-14-344', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T11:35:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-344', 'hist-ticket-14-344', 'cash', 14500, 'completed', '2025-11-13T11:35:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-345', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-13T16:53:20.000Z', '2025-11-13T16:53:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-345-1', 'hist-ticket-14-345', 'prod-americano', 1, 12000, 0, '2025-11-13T16:53:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-345-2', 'hist-ticket-14-345', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T16:53:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-345-3', 'hist-ticket-14-345', 'prod-mocha', 1, 16500, 0, '2025-11-13T16:53:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-345-4', 'hist-ticket-14-345', 'prod-americano', 1, 12000, 0, '2025-11-13T16:53:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-345', 'hist-ticket-14-345', 'cash', 55000, 'completed', '2025-11-13T16:53:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-346', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-13T09:32:48.000Z', '2025-11-13T09:32:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-346-1', 'hist-ticket-14-346', 'prod-mocha', 1, 16500, 0, '2025-11-13T09:32:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-346-2', 'hist-ticket-14-346', 'prod-mocha', 1, 16500, 0, '2025-11-13T09:32:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-346-3', 'hist-ticket-14-346', 'prod-latte', 1, 15000, 0, '2025-11-13T09:32:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-346-4', 'hist-ticket-14-346', 'prod-mocha', 1, 16500, 0, '2025-11-13T09:32:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-346', 'hist-ticket-14-346', 'cash', 64500, 'completed', '2025-11-13T09:32:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-347', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-13T13:55:37.000Z', '2025-11-13T13:55:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-347-1', 'hist-ticket-14-347', 'prod-latte', 1, 15000, 0, '2025-11-13T13:55:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-347-2', 'hist-ticket-14-347', 'prod-americano', 1, 12000, 0, '2025-11-13T13:55:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-347', 'hist-ticket-14-347', 'cash', 27000, 'completed', '2025-11-13T13:55:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-348', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-13T09:20:24.000Z', '2025-11-13T09:20:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-348-1', 'hist-ticket-14-348', 'prod-mocha', 1, 16500, 0, '2025-11-13T09:20:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-348-2', 'hist-ticket-14-348', 'prod-americano', 1, 12000, 0, '2025-11-13T09:20:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-348-3', 'hist-ticket-14-348', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T09:20:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-348', 'hist-ticket-14-348', 'cash', 43000, 'completed', '2025-11-13T09:20:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-349', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-13T19:56:51.000Z', '2025-11-13T19:56:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-349-1', 'hist-ticket-14-349', 'prod-latte', 1, 15000, 0, '2025-11-13T19:56:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-349-2', 'hist-ticket-14-349', 'prod-mocha', 1, 16500, 0, '2025-11-13T19:56:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-349-3', 'hist-ticket-14-349', 'prod-latte', 1, 15000, 0, '2025-11-13T19:56:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-349-4', 'hist-ticket-14-349', 'prod-americano', 1, 12000, 0, '2025-11-13T19:56:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-349', 'hist-ticket-14-349', 'cash', 58500, 'completed', '2025-11-13T19:56:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-350', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2025-11-13T14:53:43.000Z', '2025-11-13T14:53:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-350-1', 'hist-ticket-14-350', 'prod-latte', 1, 15000, 0, '2025-11-13T14:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-350-2', 'hist-ticket-14-350', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T14:53:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-350-3', 'hist-ticket-14-350', 'prod-latte', 1, 15000, 0, '2025-11-13T14:53:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-350', 'hist-ticket-14-350', 'cash', 44500, 'completed', '2025-11-13T14:53:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-351', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-13T13:37:48.000Z', '2025-11-13T13:37:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-351-1', 'hist-ticket-14-351', 'prod-americano', 1, 12000, 0, '2025-11-13T13:37:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-351-2', 'hist-ticket-14-351', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T13:37:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-351', 'hist-ticket-14-351', 'cash', 26500, 'completed', '2025-11-13T13:37:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-352', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-13T13:58:37.000Z', '2025-11-13T13:58:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-352-1', 'hist-ticket-14-352', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T13:58:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-352-2', 'hist-ticket-14-352', 'prod-mocha', 1, 16500, 0, '2025-11-13T13:58:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-352-3', 'hist-ticket-14-352', 'prod-latte', 1, 15000, 0, '2025-11-13T13:58:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-352-4', 'hist-ticket-14-352', 'prod-latte', 1, 15000, 0, '2025-11-13T13:58:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-352', 'hist-ticket-14-352', 'cash', 61000, 'completed', '2025-11-13T13:58:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-353', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-11-13T14:32:15.000Z', '2025-11-13T14:32:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-353-1', 'hist-ticket-14-353', 'prod-latte', 1, 15000, 0, '2025-11-13T14:32:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-353-2', 'hist-ticket-14-353', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T14:32:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-353-3', 'hist-ticket-14-353', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T14:32:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-353', 'hist-ticket-14-353', 'cash', 44000, 'completed', '2025-11-13T14:32:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-354', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2025-11-13T13:30:41.000Z', '2025-11-13T13:30:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-354-1', 'hist-ticket-14-354', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T13:30:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-354', 'hist-ticket-14-354', 'cash', 14500, 'completed', '2025-11-13T13:30:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-355', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-13T14:21:36.000Z', '2025-11-13T14:21:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-355-1', 'hist-ticket-14-355', 'prod-latte', 1, 15000, 0, '2025-11-13T14:21:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-355', 'hist-ticket-14-355', 'cash', 15000, 'completed', '2025-11-13T14:21:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-356', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-11-13T10:25:20.000Z', '2025-11-13T10:25:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-356-1', 'hist-ticket-14-356', 'prod-mocha', 1, 16500, 0, '2025-11-13T10:25:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-356-2', 'hist-ticket-14-356', 'prod-americano', 1, 12000, 0, '2025-11-13T10:25:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-356', 'hist-ticket-14-356', 'cash', 28500, 'completed', '2025-11-13T10:25:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-357', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-13T08:31:50.000Z', '2025-11-13T08:31:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-357-1', 'hist-ticket-14-357', 'prod-mocha', 1, 16500, 0, '2025-11-13T08:31:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-357-2', 'hist-ticket-14-357', 'prod-americano', 1, 12000, 0, '2025-11-13T08:31:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-357', 'hist-ticket-14-357', 'cash', 28500, 'completed', '2025-11-13T08:31:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-358', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2025-11-13T11:26:09.000Z', '2025-11-13T11:26:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-358-1', 'hist-ticket-14-358', 'prod-latte', 1, 15000, 0, '2025-11-13T11:26:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-358', 'hist-ticket-14-358', 'cash', 15000, 'completed', '2025-11-13T11:26:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-359', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2025-11-13T19:14:58.000Z', '2025-11-13T19:14:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-359-1', 'hist-ticket-14-359', 'prod-mocha', 1, 16500, 0, '2025-11-13T19:14:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-359-2', 'hist-ticket-14-359', 'prod-americano', 1, 12000, 0, '2025-11-13T19:14:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-359', 'hist-ticket-14-359', 'cash', 28500, 'completed', '2025-11-13T19:14:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-360', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-11-13T14:36:50.000Z', '2025-11-13T14:36:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-360-1', 'hist-ticket-14-360', 'prod-americano', 1, 12000, 0, '2025-11-13T14:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-360-2', 'hist-ticket-14-360', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T14:36:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-360-3', 'hist-ticket-14-360', 'prod-latte', 1, 15000, 0, '2025-11-13T14:36:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-360', 'hist-ticket-14-360', 'cash', 41500, 'completed', '2025-11-13T14:36:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-361', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-13T19:06:54.000Z', '2025-11-13T19:06:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-361-1', 'hist-ticket-14-361', 'prod-mocha', 1, 16500, 0, '2025-11-13T19:06:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-361-2', 'hist-ticket-14-361', 'prod-mocha', 1, 16500, 0, '2025-11-13T19:06:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-361', 'hist-ticket-14-361', 'cash', 33000, 'completed', '2025-11-13T19:06:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-14-362', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-13T16:42:17.000Z', '2025-11-13T16:42:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-362-1', 'hist-ticket-14-362', 'prod-americano', 1, 12000, 0, '2025-11-13T16:42:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-362-2', 'hist-ticket-14-362', 'prod-cappuccino', 1, 14500, 0, '2025-11-13T16:42:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-362-3', 'hist-ticket-14-362', 'prod-latte', 1, 15000, 0, '2025-11-13T16:42:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-14-362-4', 'hist-ticket-14-362', 'prod-americano', 1, 12000, 0, '2025-11-13T16:42:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-14-362', 'hist-ticket-14-362', 'cash', 53500, 'completed', '2025-11-13T16:42:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-363', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-14T10:03:02.000Z', '2025-11-14T10:03:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-363-1', 'hist-ticket-15-363', 'prod-mocha', 1, 16500, 0, '2025-11-14T10:03:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-363-2', 'hist-ticket-15-363', 'prod-americano', 1, 12000, 0, '2025-11-14T10:03:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-363-3', 'hist-ticket-15-363', 'prod-americano', 1, 12000, 0, '2025-11-14T10:03:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-363', 'hist-ticket-15-363', 'cash', 40500, 'completed', '2025-11-14T10:03:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-364', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-14T11:07:42.000Z', '2025-11-14T11:07:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-364-1', 'hist-ticket-15-364', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T11:07:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-364', 'hist-ticket-15-364', 'cash', 14500, 'completed', '2025-11-14T11:07:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-365', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-14T12:54:01.000Z', '2025-11-14T12:54:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-365-1', 'hist-ticket-15-365', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T12:54:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-365-2', 'hist-ticket-15-365', 'prod-americano', 1, 12000, 0, '2025-11-14T12:54:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-365', 'hist-ticket-15-365', 'cash', 26500, 'completed', '2025-11-14T12:54:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-366', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-14T09:51:53.000Z', '2025-11-14T09:51:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-366-1', 'hist-ticket-15-366', 'prod-latte', 1, 15000, 0, '2025-11-14T09:51:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-366-2', 'hist-ticket-15-366', 'prod-mocha', 1, 16500, 0, '2025-11-14T09:51:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-366-3', 'hist-ticket-15-366', 'prod-mocha', 1, 16500, 0, '2025-11-14T09:51:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-366', 'hist-ticket-15-366', 'cash', 48000, 'completed', '2025-11-14T09:51:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-367', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-14T17:18:34.000Z', '2025-11-14T17:18:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-367-1', 'hist-ticket-15-367', 'prod-latte', 1, 15000, 0, '2025-11-14T17:18:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-367-2', 'hist-ticket-15-367', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T17:18:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-367-3', 'hist-ticket-15-367', 'prod-latte', 1, 15000, 0, '2025-11-14T17:18:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-367', 'hist-ticket-15-367', 'cash', 44500, 'completed', '2025-11-14T17:18:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-368', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-11-14T12:45:36.000Z', '2025-11-14T12:45:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-368-1', 'hist-ticket-15-368', 'prod-mocha', 1, 16500, 0, '2025-11-14T12:45:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-368-2', 'hist-ticket-15-368', 'prod-latte', 1, 15000, 0, '2025-11-14T12:45:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-368-3', 'hist-ticket-15-368', 'prod-mocha', 1, 16500, 0, '2025-11-14T12:45:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-368-4', 'hist-ticket-15-368', 'prod-mocha', 1, 16500, 0, '2025-11-14T12:45:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-368', 'hist-ticket-15-368', 'cash', 64500, 'completed', '2025-11-14T12:45:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-369', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-14T18:50:58.000Z', '2025-11-14T18:50:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-369-1', 'hist-ticket-15-369', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T18:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-369-2', 'hist-ticket-15-369', 'prod-mocha', 1, 16500, 0, '2025-11-14T18:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-369-3', 'hist-ticket-15-369', 'prod-mocha', 1, 16500, 0, '2025-11-14T18:50:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-369-4', 'hist-ticket-15-369', 'prod-latte', 1, 15000, 0, '2025-11-14T18:50:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-369', 'hist-ticket-15-369', 'cash', 62500, 'completed', '2025-11-14T18:50:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-370', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2025-11-14T14:23:07.000Z', '2025-11-14T14:23:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-370-1', 'hist-ticket-15-370', 'prod-latte', 1, 15000, 0, '2025-11-14T14:23:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-370-2', 'hist-ticket-15-370', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T14:23:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-370-3', 'hist-ticket-15-370', 'prod-mocha', 1, 16500, 0, '2025-11-14T14:23:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-370', 'hist-ticket-15-370', 'cash', 46000, 'completed', '2025-11-14T14:23:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-371', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-14T15:27:32.000Z', '2025-11-14T15:27:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-371-1', 'hist-ticket-15-371', 'prod-latte', 1, 15000, 0, '2025-11-14T15:27:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-371', 'hist-ticket-15-371', 'cash', 15000, 'completed', '2025-11-14T15:27:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-372', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-14T08:32:27.000Z', '2025-11-14T08:32:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-372-1', 'hist-ticket-15-372', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T08:32:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-372-2', 'hist-ticket-15-372', 'prod-latte', 1, 15000, 0, '2025-11-14T08:32:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-372', 'hist-ticket-15-372', 'cash', 29500, 'completed', '2025-11-14T08:32:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-373', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-14T11:48:46.000Z', '2025-11-14T11:48:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-373-1', 'hist-ticket-15-373', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T11:48:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-373', 'hist-ticket-15-373', 'cash', 14500, 'completed', '2025-11-14T11:48:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-374', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-14T17:21:10.000Z', '2025-11-14T17:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-374-1', 'hist-ticket-15-374', 'prod-mocha', 1, 16500, 0, '2025-11-14T17:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-374-2', 'hist-ticket-15-374', 'prod-mocha', 1, 16500, 0, '2025-11-14T17:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-374', 'hist-ticket-15-374', 'cash', 33000, 'completed', '2025-11-14T17:21:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-375', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-14T08:19:33.000Z', '2025-11-14T08:19:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-375-1', 'hist-ticket-15-375', 'prod-latte', 1, 15000, 0, '2025-11-14T08:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-375-2', 'hist-ticket-15-375', 'prod-latte', 1, 15000, 0, '2025-11-14T08:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-375-3', 'hist-ticket-15-375', 'prod-americano', 1, 12000, 0, '2025-11-14T08:19:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-375-4', 'hist-ticket-15-375', 'prod-latte', 1, 15000, 0, '2025-11-14T08:19:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-375', 'hist-ticket-15-375', 'cash', 57000, 'completed', '2025-11-14T08:19:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-376', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-14T14:57:11.000Z', '2025-11-14T14:57:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-376-1', 'hist-ticket-15-376', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T14:57:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-376-2', 'hist-ticket-15-376', 'prod-americano', 1, 12000, 0, '2025-11-14T14:57:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-376-3', 'hist-ticket-15-376', 'prod-latte', 1, 15000, 0, '2025-11-14T14:57:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-376', 'hist-ticket-15-376', 'cash', 41500, 'completed', '2025-11-14T14:57:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-377', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-11-14T15:53:13.000Z', '2025-11-14T15:53:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-377-1', 'hist-ticket-15-377', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T15:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-377-2', 'hist-ticket-15-377', 'prod-mocha', 1, 16500, 0, '2025-11-14T15:53:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-377-3', 'hist-ticket-15-377', 'prod-americano', 1, 12000, 0, '2025-11-14T15:53:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-377', 'hist-ticket-15-377', 'cash', 43000, 'completed', '2025-11-14T15:53:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-378', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-14T15:07:49.000Z', '2025-11-14T15:07:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-378-1', 'hist-ticket-15-378', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T15:07:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-378-2', 'hist-ticket-15-378', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T15:07:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-378-3', 'hist-ticket-15-378', 'prod-mocha', 1, 16500, 0, '2025-11-14T15:07:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-378-4', 'hist-ticket-15-378', 'prod-americano', 1, 12000, 0, '2025-11-14T15:07:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-378', 'hist-ticket-15-378', 'cash', 57500, 'completed', '2025-11-14T15:07:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-15-379', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-14T15:47:08.000Z', '2025-11-14T15:47:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-15-379-1', 'hist-ticket-15-379', 'prod-cappuccino', 1, 14500, 0, '2025-11-14T15:47:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-15-379', 'hist-ticket-15-379', 'cash', 14500, 'completed', '2025-11-14T15:47:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-380', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-15T11:14:23.000Z', '2025-11-15T11:14:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-380-1', 'hist-ticket-16-380', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:14:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-380', 'hist-ticket-16-380', 'cash', 14500, 'completed', '2025-11-15T11:14:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-381', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-11-15T10:02:41.000Z', '2025-11-15T10:02:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-381-1', 'hist-ticket-16-381', 'prod-latte', 1, 15000, 0, '2025-11-15T10:02:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-381-2', 'hist-ticket-16-381', 'prod-americano', 1, 12000, 0, '2025-11-15T10:02:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-381', 'hist-ticket-16-381', 'cash', 27000, 'completed', '2025-11-15T10:02:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-382', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-15T09:24:39.000Z', '2025-11-15T09:24:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-382-1', 'hist-ticket-16-382', 'prod-americano', 1, 12000, 0, '2025-11-15T09:24:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-382-2', 'hist-ticket-16-382', 'prod-mocha', 1, 16500, 0, '2025-11-15T09:24:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-382', 'hist-ticket-16-382', 'cash', 28500, 'completed', '2025-11-15T09:24:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-383', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-15T10:46:43.000Z', '2025-11-15T10:46:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-383-1', 'hist-ticket-16-383', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T10:46:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-383-2', 'hist-ticket-16-383', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T10:46:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-383-3', 'hist-ticket-16-383', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T10:46:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-383', 'hist-ticket-16-383', 'cash', 43500, 'completed', '2025-11-15T10:46:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-384', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-15T14:52:27.000Z', '2025-11-15T14:52:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-384-1', 'hist-ticket-16-384', 'prod-mocha', 1, 16500, 0, '2025-11-15T14:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-384-2', 'hist-ticket-16-384', 'prod-latte', 1, 15000, 0, '2025-11-15T14:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-384-3', 'hist-ticket-16-384', 'prod-latte', 1, 15000, 0, '2025-11-15T14:52:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-384-4', 'hist-ticket-16-384', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T14:52:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-384', 'hist-ticket-16-384', 'cash', 61000, 'completed', '2025-11-15T14:52:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-385', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-15T19:05:34.000Z', '2025-11-15T19:05:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-385-1', 'hist-ticket-16-385', 'prod-latte', 1, 15000, 0, '2025-11-15T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-385-2', 'hist-ticket-16-385', 'prod-mocha', 1, 16500, 0, '2025-11-15T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-385-3', 'hist-ticket-16-385', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T19:05:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-385-4', 'hist-ticket-16-385', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T19:05:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-385', 'hist-ticket-16-385', 'cash', 60500, 'completed', '2025-11-15T19:05:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-386', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-15T18:29:25.000Z', '2025-11-15T18:29:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-386-1', 'hist-ticket-16-386', 'prod-americano', 1, 12000, 0, '2025-11-15T18:29:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-386-2', 'hist-ticket-16-386', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:29:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-386-3', 'hist-ticket-16-386', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:29:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-386-4', 'hist-ticket-16-386', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:29:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-386', 'hist-ticket-16-386', 'cash', 55500, 'completed', '2025-11-15T18:29:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-387', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-15T08:00:31.000Z', '2025-11-15T08:00:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-387-1', 'hist-ticket-16-387', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T08:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-387-2', 'hist-ticket-16-387', 'prod-americano', 1, 12000, 0, '2025-11-15T08:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-387-3', 'hist-ticket-16-387', 'prod-mocha', 1, 16500, 0, '2025-11-15T08:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-387-4', 'hist-ticket-16-387', 'prod-latte', 1, 15000, 0, '2025-11-15T08:00:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-387', 'hist-ticket-16-387', 'cash', 58000, 'completed', '2025-11-15T08:00:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-388', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-15T18:53:52.000Z', '2025-11-15T18:53:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-388-1', 'hist-ticket-16-388', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:53:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-388-2', 'hist-ticket-16-388', 'prod-mocha', 1, 16500, 0, '2025-11-15T18:53:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-388-3', 'hist-ticket-16-388', 'prod-mocha', 1, 16500, 0, '2025-11-15T18:53:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-388-4', 'hist-ticket-16-388', 'prod-latte', 1, 15000, 0, '2025-11-15T18:53:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-388', 'hist-ticket-16-388', 'cash', 62500, 'completed', '2025-11-15T18:53:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-389', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-15T16:44:44.000Z', '2025-11-15T16:44:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-389-1', 'hist-ticket-16-389', 'prod-latte', 1, 15000, 0, '2025-11-15T16:44:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-389', 'hist-ticket-16-389', 'cash', 15000, 'completed', '2025-11-15T16:44:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-390', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-15T18:50:08.000Z', '2025-11-15T18:50:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-390-1', 'hist-ticket-16-390', 'prod-mocha', 1, 16500, 0, '2025-11-15T18:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-390-2', 'hist-ticket-16-390', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-390-3', 'hist-ticket-16-390', 'prod-latte', 1, 15000, 0, '2025-11-15T18:50:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-390-4', 'hist-ticket-16-390', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:50:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-390', 'hist-ticket-16-390', 'cash', 60500, 'completed', '2025-11-15T18:50:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-391', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-15T19:42:55.000Z', '2025-11-15T19:42:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-391-1', 'hist-ticket-16-391', 'prod-americano', 1, 12000, 0, '2025-11-15T19:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-391-2', 'hist-ticket-16-391', 'prod-americano', 1, 12000, 0, '2025-11-15T19:42:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-391-3', 'hist-ticket-16-391', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T19:42:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-391', 'hist-ticket-16-391', 'cash', 38500, 'completed', '2025-11-15T19:42:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-392', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-15T10:29:00.000Z', '2025-11-15T10:29:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-392-1', 'hist-ticket-16-392', 'prod-latte', 1, 15000, 0, '2025-11-15T10:29:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-392-2', 'hist-ticket-16-392', 'prod-americano', 1, 12000, 0, '2025-11-15T10:29:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-392', 'hist-ticket-16-392', 'cash', 27000, 'completed', '2025-11-15T10:29:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-393', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-15T15:52:03.000Z', '2025-11-15T15:52:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-393-1', 'hist-ticket-16-393', 'prod-americano', 1, 12000, 0, '2025-11-15T15:52:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-393-2', 'hist-ticket-16-393', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T15:52:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-393-3', 'hist-ticket-16-393', 'prod-latte', 1, 15000, 0, '2025-11-15T15:52:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-393', 'hist-ticket-16-393', 'cash', 41500, 'completed', '2025-11-15T15:52:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-394', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-15T18:00:37.000Z', '2025-11-15T18:00:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-394-1', 'hist-ticket-16-394', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-394-2', 'hist-ticket-16-394', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T18:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-394-3', 'hist-ticket-16-394', 'prod-americano', 1, 12000, 0, '2025-11-15T18:00:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-394-4', 'hist-ticket-16-394', 'prod-mocha', 1, 16500, 0, '2025-11-15T18:00:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-394', 'hist-ticket-16-394', 'cash', 57500, 'completed', '2025-11-15T18:00:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-395', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-15T15:20:43.000Z', '2025-11-15T15:20:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-395-1', 'hist-ticket-16-395', 'prod-mocha', 1, 16500, 0, '2025-11-15T15:20:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-395', 'hist-ticket-16-395', 'cash', 16500, 'completed', '2025-11-15T15:20:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-396', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-15T08:57:09.000Z', '2025-11-15T08:57:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-396-1', 'hist-ticket-16-396', 'prod-americano', 1, 12000, 0, '2025-11-15T08:57:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-396-2', 'hist-ticket-16-396', 'prod-mocha', 1, 16500, 0, '2025-11-15T08:57:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-396', 'hist-ticket-16-396', 'cash', 28500, 'completed', '2025-11-15T08:57:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-397', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-15T11:55:11.000Z', '2025-11-15T11:55:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-397-1', 'hist-ticket-16-397', 'prod-americano', 1, 12000, 0, '2025-11-15T11:55:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-397-2', 'hist-ticket-16-397', 'prod-mocha', 1, 16500, 0, '2025-11-15T11:55:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-397-3', 'hist-ticket-16-397', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:55:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-397', 'hist-ticket-16-397', 'cash', 43000, 'completed', '2025-11-15T11:55:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-398', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-11-15T09:58:54.000Z', '2025-11-15T09:58:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-398-1', 'hist-ticket-16-398', 'prod-mocha', 1, 16500, 0, '2025-11-15T09:58:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-398', 'hist-ticket-16-398', 'cash', 16500, 'completed', '2025-11-15T09:58:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-399', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-11-15T14:50:37.000Z', '2025-11-15T14:50:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-399-1', 'hist-ticket-16-399', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T14:50:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-399-2', 'hist-ticket-16-399', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T14:50:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-399-3', 'hist-ticket-16-399', 'prod-latte', 1, 15000, 0, '2025-11-15T14:50:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-399', 'hist-ticket-16-399', 'cash', 44000, 'completed', '2025-11-15T14:50:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-400', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-15T09:57:42.000Z', '2025-11-15T09:57:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-400-1', 'hist-ticket-16-400', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T09:57:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-400-2', 'hist-ticket-16-400', 'prod-americano', 1, 12000, 0, '2025-11-15T09:57:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-400-3', 'hist-ticket-16-400', 'prod-americano', 1, 12000, 0, '2025-11-15T09:57:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-400', 'hist-ticket-16-400', 'cash', 38500, 'completed', '2025-11-15T09:57:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-401', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-15T12:51:32.000Z', '2025-11-15T12:51:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-401-1', 'hist-ticket-16-401', 'prod-mocha', 1, 16500, 0, '2025-11-15T12:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-401-2', 'hist-ticket-16-401', 'prod-mocha', 1, 16500, 0, '2025-11-15T12:51:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-401-3', 'hist-ticket-16-401', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T12:51:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-401', 'hist-ticket-16-401', 'cash', 47500, 'completed', '2025-11-15T12:51:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-402', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-15T11:25:33.000Z', '2025-11-15T11:25:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-402-1', 'hist-ticket-16-402', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:25:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-402-2', 'hist-ticket-16-402', 'prod-americano', 1, 12000, 0, '2025-11-15T11:25:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-402-3', 'hist-ticket-16-402', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:25:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-402-4', 'hist-ticket-16-402', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:25:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-402', 'hist-ticket-16-402', 'cash', 55500, 'completed', '2025-11-15T11:25:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-403', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-15T11:35:25.000Z', '2025-11-15T11:35:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-403-1', 'hist-ticket-16-403', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T11:35:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-403-2', 'hist-ticket-16-403', 'prod-latte', 1, 15000, 0, '2025-11-15T11:35:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-403-3', 'hist-ticket-16-403', 'prod-mocha', 1, 16500, 0, '2025-11-15T11:35:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-403-4', 'hist-ticket-16-403', 'prod-latte', 1, 15000, 0, '2025-11-15T11:35:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-403', 'hist-ticket-16-403', 'cash', 61000, 'completed', '2025-11-15T11:35:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-404', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-15T16:15:01.000Z', '2025-11-15T16:15:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-404-1', 'hist-ticket-16-404', 'prod-americano', 1, 12000, 0, '2025-11-15T16:15:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-404-2', 'hist-ticket-16-404', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T16:15:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-404', 'hist-ticket-16-404', 'cash', 26500, 'completed', '2025-11-15T16:15:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-405', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-15T15:05:26.000Z', '2025-11-15T15:05:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-405-1', 'hist-ticket-16-405', 'prod-cappuccino', 1, 14500, 0, '2025-11-15T15:05:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-405-2', 'hist-ticket-16-405', 'prod-mocha', 1, 16500, 0, '2025-11-15T15:05:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-405', 'hist-ticket-16-405', 'cash', 31000, 'completed', '2025-11-15T15:05:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-406', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-15T13:46:35.000Z', '2025-11-15T13:46:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-406-1', 'hist-ticket-16-406', 'prod-mocha', 1, 16500, 0, '2025-11-15T13:46:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-406', 'hist-ticket-16-406', 'cash', 16500, 'completed', '2025-11-15T13:46:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-407', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-15T10:46:49.000Z', '2025-11-15T10:46:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-407-1', 'hist-ticket-16-407', 'prod-latte', 1, 15000, 0, '2025-11-15T10:46:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-407-2', 'hist-ticket-16-407', 'prod-mocha', 1, 16500, 0, '2025-11-15T10:46:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-407', 'hist-ticket-16-407', 'cash', 31500, 'completed', '2025-11-15T10:46:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-408', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-15T14:40:43.000Z', '2025-11-15T14:40:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-408-1', 'hist-ticket-16-408', 'prod-latte', 1, 15000, 0, '2025-11-15T14:40:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-408-2', 'hist-ticket-16-408', 'prod-americano', 1, 12000, 0, '2025-11-15T14:40:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-408-3', 'hist-ticket-16-408', 'prod-americano', 1, 12000, 0, '2025-11-15T14:40:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-408-4', 'hist-ticket-16-408', 'prod-americano', 1, 12000, 0, '2025-11-15T14:40:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-408', 'hist-ticket-16-408', 'cash', 51000, 'completed', '2025-11-15T14:40:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-16-409', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-15T10:13:16.000Z', '2025-11-15T10:13:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-409-1', 'hist-ticket-16-409', 'prod-mocha', 1, 16500, 0, '2025-11-15T10:13:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-409-2', 'hist-ticket-16-409', 'prod-americano', 1, 12000, 0, '2025-11-15T10:13:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-409-3', 'hist-ticket-16-409', 'prod-latte', 1, 15000, 0, '2025-11-15T10:13:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-16-409-4', 'hist-ticket-16-409', 'prod-mocha', 1, 16500, 0, '2025-11-15T10:13:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-16-409', 'hist-ticket-16-409', 'cash', 60000, 'completed', '2025-11-15T10:13:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-410', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-16T13:55:20.000Z', '2025-11-16T13:55:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-410-1', 'hist-ticket-17-410', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T13:55:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-410-2', 'hist-ticket-17-410', 'prod-americano', 1, 12000, 0, '2025-11-16T13:55:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-410', 'hist-ticket-17-410', 'cash', 26500, 'completed', '2025-11-16T13:55:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-411', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-16T18:12:43.000Z', '2025-11-16T18:12:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-411-1', 'hist-ticket-17-411', 'prod-americano', 1, 12000, 0, '2025-11-16T18:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-411-2', 'hist-ticket-17-411', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T18:12:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-411', 'hist-ticket-17-411', 'cash', 26500, 'completed', '2025-11-16T18:12:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-412', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-16T17:00:41.000Z', '2025-11-16T17:00:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-412-1', 'hist-ticket-17-412', 'prod-mocha', 1, 16500, 0, '2025-11-16T17:00:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-412-2', 'hist-ticket-17-412', 'prod-mocha', 1, 16500, 0, '2025-11-16T17:00:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-412-3', 'hist-ticket-17-412', 'prod-mocha', 1, 16500, 0, '2025-11-16T17:00:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-412-4', 'hist-ticket-17-412', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T17:00:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-412', 'hist-ticket-17-412', 'cash', 64000, 'completed', '2025-11-16T17:00:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-413', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-16T19:20:38.000Z', '2025-11-16T19:20:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-413-1', 'hist-ticket-17-413', 'prod-latte', 1, 15000, 0, '2025-11-16T19:20:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-413-2', 'hist-ticket-17-413', 'prod-americano', 1, 12000, 0, '2025-11-16T19:20:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-413', 'hist-ticket-17-413', 'cash', 27000, 'completed', '2025-11-16T19:20:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-414', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-16T19:16:15.000Z', '2025-11-16T19:16:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-414-1', 'hist-ticket-17-414', 'prod-mocha', 1, 16500, 0, '2025-11-16T19:16:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-414', 'hist-ticket-17-414', 'cash', 16500, 'completed', '2025-11-16T19:16:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-415', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-11-16T17:15:22.000Z', '2025-11-16T17:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-415-1', 'hist-ticket-17-415', 'prod-americano', 1, 12000, 0, '2025-11-16T17:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-415-2', 'hist-ticket-17-415', 'prod-mocha', 1, 16500, 0, '2025-11-16T17:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-415-3', 'hist-ticket-17-415', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T17:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-415', 'hist-ticket-17-415', 'cash', 43000, 'completed', '2025-11-16T17:15:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-416', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-11-16T14:19:10.000Z', '2025-11-16T14:19:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-416-1', 'hist-ticket-17-416', 'prod-mocha', 1, 16500, 0, '2025-11-16T14:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-416-2', 'hist-ticket-17-416', 'prod-americano', 1, 12000, 0, '2025-11-16T14:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-416-3', 'hist-ticket-17-416', 'prod-latte', 1, 15000, 0, '2025-11-16T14:19:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-416', 'hist-ticket-17-416', 'cash', 43500, 'completed', '2025-11-16T14:19:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-417', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-16T11:38:39.000Z', '2025-11-16T11:38:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-417-1', 'hist-ticket-17-417', 'prod-mocha', 1, 16500, 0, '2025-11-16T11:38:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-417', 'hist-ticket-17-417', 'cash', 16500, 'completed', '2025-11-16T11:38:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-418', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-16T18:33:31.000Z', '2025-11-16T18:33:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-418-1', 'hist-ticket-17-418', 'prod-mocha', 1, 16500, 0, '2025-11-16T18:33:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-418-2', 'hist-ticket-17-418', 'prod-latte', 1, 15000, 0, '2025-11-16T18:33:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-418-3', 'hist-ticket-17-418', 'prod-americano', 1, 12000, 0, '2025-11-16T18:33:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-418-4', 'hist-ticket-17-418', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T18:33:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-418', 'hist-ticket-17-418', 'cash', 58000, 'completed', '2025-11-16T18:33:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-419', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-16T11:36:33.000Z', '2025-11-16T11:36:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-419-1', 'hist-ticket-17-419', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T11:36:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-419-2', 'hist-ticket-17-419', 'prod-latte', 1, 15000, 0, '2025-11-16T11:36:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-419-3', 'hist-ticket-17-419', 'prod-americano', 1, 12000, 0, '2025-11-16T11:36:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-419-4', 'hist-ticket-17-419', 'prod-mocha', 1, 16500, 0, '2025-11-16T11:36:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-419', 'hist-ticket-17-419', 'cash', 58000, 'completed', '2025-11-16T11:36:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-420', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-11-16T10:50:20.000Z', '2025-11-16T10:50:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-420-1', 'hist-ticket-17-420', 'prod-mocha', 1, 16500, 0, '2025-11-16T10:50:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-420', 'hist-ticket-17-420', 'cash', 16500, 'completed', '2025-11-16T10:50:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-421', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-16T09:07:44.000Z', '2025-11-16T09:07:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-421-1', 'hist-ticket-17-421', 'prod-mocha', 1, 16500, 0, '2025-11-16T09:07:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-421-2', 'hist-ticket-17-421', 'prod-latte', 1, 15000, 0, '2025-11-16T09:07:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-421', 'hist-ticket-17-421', 'cash', 31500, 'completed', '2025-11-16T09:07:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-422', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-11-16T10:33:57.000Z', '2025-11-16T10:33:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-422-1', 'hist-ticket-17-422', 'prod-latte', 1, 15000, 0, '2025-11-16T10:33:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-422-2', 'hist-ticket-17-422', 'prod-mocha', 1, 16500, 0, '2025-11-16T10:33:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-422-3', 'hist-ticket-17-422', 'prod-americano', 1, 12000, 0, '2025-11-16T10:33:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-422-4', 'hist-ticket-17-422', 'prod-latte', 1, 15000, 0, '2025-11-16T10:33:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-422', 'hist-ticket-17-422', 'cash', 58500, 'completed', '2025-11-16T10:33:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-423', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-11-16T16:40:52.000Z', '2025-11-16T16:40:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-423-1', 'hist-ticket-17-423', 'prod-mocha', 1, 16500, 0, '2025-11-16T16:40:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-423', 'hist-ticket-17-423', 'cash', 16500, 'completed', '2025-11-16T16:40:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-424', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-11-16T13:36:44.000Z', '2025-11-16T13:36:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-424-1', 'hist-ticket-17-424', 'prod-latte', 1, 15000, 0, '2025-11-16T13:36:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-424-2', 'hist-ticket-17-424', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T13:36:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-424-3', 'hist-ticket-17-424', 'prod-latte', 1, 15000, 0, '2025-11-16T13:36:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-424', 'hist-ticket-17-424', 'cash', 44500, 'completed', '2025-11-16T13:36:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-425', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-16T16:08:27.000Z', '2025-11-16T16:08:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-425-1', 'hist-ticket-17-425', 'prod-americano', 1, 12000, 0, '2025-11-16T16:08:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-425-2', 'hist-ticket-17-425', 'prod-mocha', 1, 16500, 0, '2025-11-16T16:08:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-425-3', 'hist-ticket-17-425', 'prod-latte', 1, 15000, 0, '2025-11-16T16:08:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-425-4', 'hist-ticket-17-425', 'prod-mocha', 1, 16500, 0, '2025-11-16T16:08:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-425', 'hist-ticket-17-425', 'cash', 60000, 'completed', '2025-11-16T16:08:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-426', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-16T10:14:29.000Z', '2025-11-16T10:14:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-426-1', 'hist-ticket-17-426', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T10:14:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-426', 'hist-ticket-17-426', 'cash', 14500, 'completed', '2025-11-16T10:14:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-427', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-16T19:02:39.000Z', '2025-11-16T19:02:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-427-1', 'hist-ticket-17-427', 'prod-latte', 1, 15000, 0, '2025-11-16T19:02:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-427-2', 'hist-ticket-17-427', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T19:02:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-427-3', 'hist-ticket-17-427', 'prod-mocha', 1, 16500, 0, '2025-11-16T19:02:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-427', 'hist-ticket-17-427', 'cash', 46000, 'completed', '2025-11-16T19:02:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-428', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-16T15:55:34.000Z', '2025-11-16T15:55:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-428-1', 'hist-ticket-17-428', 'prod-latte', 1, 15000, 0, '2025-11-16T15:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-428-2', 'hist-ticket-17-428', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T15:55:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-428-3', 'hist-ticket-17-428', 'prod-mocha', 1, 16500, 0, '2025-11-16T15:55:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-428', 'hist-ticket-17-428', 'cash', 46000, 'completed', '2025-11-16T15:55:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-429', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-11-16T15:29:10.000Z', '2025-11-16T15:29:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-429-1', 'hist-ticket-17-429', 'prod-americano', 1, 12000, 0, '2025-11-16T15:29:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-429-2', 'hist-ticket-17-429', 'prod-americano', 1, 12000, 0, '2025-11-16T15:29:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-429', 'hist-ticket-17-429', 'cash', 24000, 'completed', '2025-11-16T15:29:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-430', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-11-16T10:16:00.000Z', '2025-11-16T10:16:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-430-1', 'hist-ticket-17-430', 'prod-mocha', 1, 16500, 0, '2025-11-16T10:16:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-430', 'hist-ticket-17-430', 'cash', 16500, 'completed', '2025-11-16T10:16:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-431', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-11-16T13:45:31.000Z', '2025-11-16T13:45:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-431-1', 'hist-ticket-17-431', 'prod-americano', 1, 12000, 0, '2025-11-16T13:45:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-431-2', 'hist-ticket-17-431', 'prod-americano', 1, 12000, 0, '2025-11-16T13:45:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-431-3', 'hist-ticket-17-431', 'prod-mocha', 1, 16500, 0, '2025-11-16T13:45:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-431', 'hist-ticket-17-431', 'cash', 40500, 'completed', '2025-11-16T13:45:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-432', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-11-16T19:52:20.000Z', '2025-11-16T19:52:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-432-1', 'hist-ticket-17-432', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T19:52:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-432-2', 'hist-ticket-17-432', 'prod-latte', 1, 15000, 0, '2025-11-16T19:52:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-432-3', 'hist-ticket-17-432', 'prod-americano', 1, 12000, 0, '2025-11-16T19:52:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-432', 'hist-ticket-17-432', 'cash', 41500, 'completed', '2025-11-16T19:52:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-433', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-11-16T14:22:23.000Z', '2025-11-16T14:22:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-433-1', 'hist-ticket-17-433', 'prod-mocha', 1, 16500, 0, '2025-11-16T14:22:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-433-2', 'hist-ticket-17-433', 'prod-americano', 1, 12000, 0, '2025-11-16T14:22:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-433-3', 'hist-ticket-17-433', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T14:22:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-433', 'hist-ticket-17-433', 'cash', 43000, 'completed', '2025-11-16T14:22:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-434', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-11-16T19:36:28.000Z', '2025-11-16T19:36:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-434-1', 'hist-ticket-17-434', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T19:36:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-434-2', 'hist-ticket-17-434', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T19:36:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-434-3', 'hist-ticket-17-434', 'prod-americano', 1, 12000, 0, '2025-11-16T19:36:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-434-4', 'hist-ticket-17-434', 'prod-americano', 1, 12000, 0, '2025-11-16T19:36:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-434', 'hist-ticket-17-434', 'cash', 53000, 'completed', '2025-11-16T19:36:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-435', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2025-11-16T09:38:31.000Z', '2025-11-16T09:38:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-435-1', 'hist-ticket-17-435', 'prod-mocha', 1, 16500, 0, '2025-11-16T09:38:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-435', 'hist-ticket-17-435', 'cash', 16500, 'completed', '2025-11-16T09:38:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-17-436', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2025-11-16T12:49:42.000Z', '2025-11-16T12:49:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-436-1', 'hist-ticket-17-436', 'prod-mocha', 1, 16500, 0, '2025-11-16T12:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-436-2', 'hist-ticket-17-436', 'prod-americano', 1, 12000, 0, '2025-11-16T12:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-436-3', 'hist-ticket-17-436', 'prod-cappuccino', 1, 14500, 0, '2025-11-16T12:49:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-17-436-4', 'hist-ticket-17-436', 'prod-mocha', 1, 16500, 0, '2025-11-16T12:49:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-17-436', 'hist-ticket-17-436', 'cash', 59500, 'completed', '2025-11-16T12:49:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-437', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2025-11-17T17:21:55.000Z', '2025-11-17T17:21:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-437-1', 'hist-ticket-18-437', 'prod-americano', 1, 12000, 0, '2025-11-17T17:21:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-437-2', 'hist-ticket-18-437', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T17:21:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-437', 'hist-ticket-18-437', 'cash', 26500, 'completed', '2025-11-17T17:21:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-438', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-11-17T08:30:11.000Z', '2025-11-17T08:30:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-438-1', 'hist-ticket-18-438', 'prod-americano', 1, 12000, 0, '2025-11-17T08:30:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-438-2', 'hist-ticket-18-438', 'prod-latte', 1, 15000, 0, '2025-11-17T08:30:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-438-3', 'hist-ticket-18-438', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T08:30:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-438-4', 'hist-ticket-18-438', 'prod-mocha', 1, 16500, 0, '2025-11-17T08:30:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-438', 'hist-ticket-18-438', 'cash', 58000, 'completed', '2025-11-17T08:30:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-439', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-11-17T18:48:06.000Z', '2025-11-17T18:48:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-439-1', 'hist-ticket-18-439', 'prod-latte', 1, 15000, 0, '2025-11-17T18:48:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-439-2', 'hist-ticket-18-439', 'prod-mocha', 1, 16500, 0, '2025-11-17T18:48:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-439-3', 'hist-ticket-18-439', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T18:48:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-439-4', 'hist-ticket-18-439', 'prod-mocha', 1, 16500, 0, '2025-11-17T18:48:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-439', 'hist-ticket-18-439', 'cash', 62500, 'completed', '2025-11-17T18:48:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-440', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-11-17T15:27:51.000Z', '2025-11-17T15:27:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-440-1', 'hist-ticket-18-440', 'prod-americano', 1, 12000, 0, '2025-11-17T15:27:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-440-2', 'hist-ticket-18-440', 'prod-americano', 1, 12000, 0, '2025-11-17T15:27:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-440-3', 'hist-ticket-18-440', 'prod-americano', 1, 12000, 0, '2025-11-17T15:27:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-440', 'hist-ticket-18-440', 'cash', 36000, 'completed', '2025-11-17T15:27:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-441', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-11-17T15:56:34.000Z', '2025-11-17T15:56:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-441-1', 'hist-ticket-18-441', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T15:56:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-441', 'hist-ticket-18-441', 'cash', 14500, 'completed', '2025-11-17T15:56:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-442', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2025-11-17T12:23:05.000Z', '2025-11-17T12:23:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-442-1', 'hist-ticket-18-442', 'prod-mocha', 1, 16500, 0, '2025-11-17T12:23:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-442-2', 'hist-ticket-18-442', 'prod-latte', 1, 15000, 0, '2025-11-17T12:23:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-18-442', 'hist-ticket-18-442', 'cash', 31500, 'completed', '2025-11-17T12:23:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-18-443', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-11-17T15:12:43.000Z', '2025-11-17T15:12:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-443-1', 'hist-ticket-18-443', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T15:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-443-2', 'hist-ticket-18-443', 'prod-latte', 1, 15000, 0, '2025-11-17T15:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-443-3', 'hist-ticket-18-443', 'prod-cappuccino', 1, 14500, 0, '2025-11-17T15:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-18-443-4', 'hist-ticket-18-443', 'prod-americano', 1, 12000, 0, '2025-11-17T15:12:43.000Z');