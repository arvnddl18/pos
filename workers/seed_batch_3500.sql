INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-778', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-01T09:13:23.000Z', '2025-12-01T09:13:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-778-1', 'hist-ticket-32-778', 'prod-mocha', 1, 16500, 0, '2025-12-01T09:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-778-2', 'hist-ticket-32-778', 'prod-americano', 1, 12000, 0, '2025-12-01T09:13:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-778-3', 'hist-ticket-32-778', 'prod-americano', 1, 12000, 0, '2025-12-01T09:13:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-778', 'hist-ticket-32-778', 'cash', 40500, 'completed', '2025-12-01T09:13:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-779', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-01T10:39:42.000Z', '2025-12-01T10:39:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-779-1', 'hist-ticket-32-779', 'prod-latte', 1, 15000, 0, '2025-12-01T10:39:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-779-2', 'hist-ticket-32-779', 'prod-americano', 1, 12000, 0, '2025-12-01T10:39:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-779-3', 'hist-ticket-32-779', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T10:39:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-779', 'hist-ticket-32-779', 'cash', 41500, 'completed', '2025-12-01T10:39:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-780', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-01T17:20:09.000Z', '2025-12-01T17:20:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-780-1', 'hist-ticket-32-780', 'prod-americano', 1, 12000, 0, '2025-12-01T17:20:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-780-2', 'hist-ticket-32-780', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T17:20:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-780', 'hist-ticket-32-780', 'cash', 26500, 'completed', '2025-12-01T17:20:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-32-781', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-01T18:00:41.000Z', '2025-12-01T18:00:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-781-1', 'hist-ticket-32-781', 'prod-americano', 1, 12000, 0, '2025-12-01T18:00:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-781-2', 'hist-ticket-32-781', 'prod-cappuccino', 1, 14500, 0, '2025-12-01T18:00:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-32-781-3', 'hist-ticket-32-781', 'prod-americano', 1, 12000, 0, '2025-12-01T18:00:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-32-781', 'hist-ticket-32-781', 'cash', 38500, 'completed', '2025-12-01T18:00:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-782', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-02T13:19:56.000Z', '2025-12-02T13:19:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-782-1', 'hist-ticket-33-782', 'prod-latte', 1, 15000, 0, '2025-12-02T13:19:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-782', 'hist-ticket-33-782', 'cash', 15000, 'completed', '2025-12-02T13:19:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-783', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-02T19:12:43.000Z', '2025-12-02T19:12:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-783-1', 'hist-ticket-33-783', 'prod-mocha', 1, 16500, 0, '2025-12-02T19:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-783-2', 'hist-ticket-33-783', 'prod-americano', 1, 12000, 0, '2025-12-02T19:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-783-3', 'hist-ticket-33-783', 'prod-latte', 1, 15000, 0, '2025-12-02T19:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-783-4', 'hist-ticket-33-783', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T19:12:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-783', 'hist-ticket-33-783', 'cash', 58000, 'completed', '2025-12-02T19:12:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-784', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-02T10:21:22.000Z', '2025-12-02T10:21:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-784-1', 'hist-ticket-33-784', 'prod-mocha', 1, 16500, 0, '2025-12-02T10:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-784-2', 'hist-ticket-33-784', 'prod-americano', 1, 12000, 0, '2025-12-02T10:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-784-3', 'hist-ticket-33-784', 'prod-mocha', 1, 16500, 0, '2025-12-02T10:21:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-784', 'hist-ticket-33-784', 'cash', 45000, 'completed', '2025-12-02T10:21:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-785', o.id, r.id, 'paid', 'takeout', 'purple', 3, 'Good.', u.id, '2025-12-02T09:35:54.000Z', '2025-12-02T09:35:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-785-1', 'hist-ticket-33-785', 'prod-americano', 1, 12000, 0, '2025-12-02T09:35:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-785-2', 'hist-ticket-33-785', 'prod-americano', 1, 12000, 0, '2025-12-02T09:35:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-785', 'hist-ticket-33-785', 'cash', 24000, 'completed', '2025-12-02T09:35:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-786', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-02T18:32:32.000Z', '2025-12-02T18:32:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-786-1', 'hist-ticket-33-786', 'prod-latte', 1, 15000, 0, '2025-12-02T18:32:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-786-2', 'hist-ticket-33-786', 'prod-mocha', 1, 16500, 0, '2025-12-02T18:32:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-786', 'hist-ticket-33-786', 'cash', 31500, 'completed', '2025-12-02T18:32:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-787', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-12-02T09:30:22.000Z', '2025-12-02T09:30:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-787-1', 'hist-ticket-33-787', 'prod-latte', 1, 15000, 0, '2025-12-02T09:30:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-787-2', 'hist-ticket-33-787', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T09:30:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-787-3', 'hist-ticket-33-787', 'prod-americano', 1, 12000, 0, '2025-12-02T09:30:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-787-4', 'hist-ticket-33-787', 'prod-latte', 1, 15000, 0, '2025-12-02T09:30:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-787', 'hist-ticket-33-787', 'cash', 56500, 'completed', '2025-12-02T09:30:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-788', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-02T10:20:42.000Z', '2025-12-02T10:20:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-788-1', 'hist-ticket-33-788', 'prod-americano', 1, 12000, 0, '2025-12-02T10:20:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-788', 'hist-ticket-33-788', 'cash', 12000, 'completed', '2025-12-02T10:20:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-789', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-02T10:51:22.000Z', '2025-12-02T10:51:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-789-1', 'hist-ticket-33-789', 'prod-latte', 1, 15000, 0, '2025-12-02T10:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-789-2', 'hist-ticket-33-789', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T10:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-789-3', 'hist-ticket-33-789', 'prod-latte', 1, 15000, 0, '2025-12-02T10:51:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-789-4', 'hist-ticket-33-789', 'prod-mocha', 1, 16500, 0, '2025-12-02T10:51:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-789', 'hist-ticket-33-789', 'cash', 61000, 'completed', '2025-12-02T10:51:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-790', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-12-02T17:45:50.000Z', '2025-12-02T17:45:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-790-1', 'hist-ticket-33-790', 'prod-latte', 1, 15000, 0, '2025-12-02T17:45:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-790-2', 'hist-ticket-33-790', 'prod-americano', 1, 12000, 0, '2025-12-02T17:45:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-790-3', 'hist-ticket-33-790', 'prod-americano', 1, 12000, 0, '2025-12-02T17:45:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-790-4', 'hist-ticket-33-790', 'prod-mocha', 1, 16500, 0, '2025-12-02T17:45:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-790', 'hist-ticket-33-790', 'cash', 55500, 'completed', '2025-12-02T17:45:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-791', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-02T14:48:02.000Z', '2025-12-02T14:48:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-791-1', 'hist-ticket-33-791', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T14:48:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-791', 'hist-ticket-33-791', 'cash', 14500, 'completed', '2025-12-02T14:48:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-792', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-02T11:40:06.000Z', '2025-12-02T11:40:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-792-1', 'hist-ticket-33-792', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:40:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-792', 'hist-ticket-33-792', 'cash', 16500, 'completed', '2025-12-02T11:40:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-793', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-02T08:10:38.000Z', '2025-12-02T08:10:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-793-1', 'hist-ticket-33-793', 'prod-americano', 1, 12000, 0, '2025-12-02T08:10:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-793-2', 'hist-ticket-33-793', 'prod-mocha', 1, 16500, 0, '2025-12-02T08:10:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-793-3', 'hist-ticket-33-793', 'prod-americano', 1, 12000, 0, '2025-12-02T08:10:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-793', 'hist-ticket-33-793', 'cash', 40500, 'completed', '2025-12-02T08:10:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-794', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-02T17:26:26.000Z', '2025-12-02T17:26:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-794-1', 'hist-ticket-33-794', 'prod-mocha', 1, 16500, 0, '2025-12-02T17:26:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-794-2', 'hist-ticket-33-794', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T17:26:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-794', 'hist-ticket-33-794', 'cash', 31000, 'completed', '2025-12-02T17:26:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-795', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-02T11:17:47.000Z', '2025-12-02T11:17:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-795-1', 'hist-ticket-33-795', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:17:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-795-2', 'hist-ticket-33-795', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:17:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-795-3', 'hist-ticket-33-795', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:17:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-795-4', 'hist-ticket-33-795', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:17:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-795', 'hist-ticket-33-795', 'cash', 66000, 'completed', '2025-12-02T11:17:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-796', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-02T09:33:47.000Z', '2025-12-02T09:33:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-796-1', 'hist-ticket-33-796', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T09:33:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-796-2', 'hist-ticket-33-796', 'prod-mocha', 1, 16500, 0, '2025-12-02T09:33:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-796-3', 'hist-ticket-33-796', 'prod-mocha', 1, 16500, 0, '2025-12-02T09:33:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-796-4', 'hist-ticket-33-796', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T09:33:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-796', 'hist-ticket-33-796', 'cash', 62000, 'completed', '2025-12-02T09:33:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-797', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-02T15:41:51.000Z', '2025-12-02T15:41:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-797-1', 'hist-ticket-33-797', 'prod-mocha', 1, 16500, 0, '2025-12-02T15:41:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-797-2', 'hist-ticket-33-797', 'prod-latte', 1, 15000, 0, '2025-12-02T15:41:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-797-3', 'hist-ticket-33-797', 'prod-cappuccino', 1, 14500, 0, '2025-12-02T15:41:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-797-4', 'hist-ticket-33-797', 'prod-mocha', 1, 16500, 0, '2025-12-02T15:41:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-797', 'hist-ticket-33-797', 'cash', 62500, 'completed', '2025-12-02T15:41:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-33-798', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-02T11:51:34.000Z', '2025-12-02T11:51:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-798-1', 'hist-ticket-33-798', 'prod-mocha', 1, 16500, 0, '2025-12-02T11:51:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-798-2', 'hist-ticket-33-798', 'prod-americano', 1, 12000, 0, '2025-12-02T11:51:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-33-798-3', 'hist-ticket-33-798', 'prod-latte', 1, 15000, 0, '2025-12-02T11:51:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-33-798', 'hist-ticket-33-798', 'cash', 43500, 'completed', '2025-12-02T11:51:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-799', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-12-03T09:52:22.000Z', '2025-12-03T09:52:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-799-1', 'hist-ticket-34-799', 'prod-latte', 1, 15000, 0, '2025-12-03T09:52:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-799', 'hist-ticket-34-799', 'cash', 15000, 'completed', '2025-12-03T09:52:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-800', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-03T17:57:42.000Z', '2025-12-03T17:57:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-800-1', 'hist-ticket-34-800', 'prod-americano', 1, 12000, 0, '2025-12-03T17:57:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-800-2', 'hist-ticket-34-800', 'prod-mocha', 1, 16500, 0, '2025-12-03T17:57:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-800-3', 'hist-ticket-34-800', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T17:57:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-800-4', 'hist-ticket-34-800', 'prod-mocha', 1, 16500, 0, '2025-12-03T17:57:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-800', 'hist-ticket-34-800', 'cash', 59500, 'completed', '2025-12-03T17:57:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-801', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-03T12:46:03.000Z', '2025-12-03T12:46:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-801-1', 'hist-ticket-34-801', 'prod-latte', 1, 15000, 0, '2025-12-03T12:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-801-2', 'hist-ticket-34-801', 'prod-mocha', 1, 16500, 0, '2025-12-03T12:46:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-801-3', 'hist-ticket-34-801', 'prod-mocha', 1, 16500, 0, '2025-12-03T12:46:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-801', 'hist-ticket-34-801', 'cash', 48000, 'completed', '2025-12-03T12:46:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-802', o.id, r.id, 'paid', 'dine_in', 'brown', 5, 'Great coffee!', u.id, '2025-12-03T13:58:23.000Z', '2025-12-03T13:58:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-802-1', 'hist-ticket-34-802', 'prod-latte', 1, 15000, 0, '2025-12-03T13:58:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-802-2', 'hist-ticket-34-802', 'prod-mocha', 1, 16500, 0, '2025-12-03T13:58:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-802-3', 'hist-ticket-34-802', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T13:58:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-802', 'hist-ticket-34-802', 'cash', 46000, 'completed', '2025-12-03T13:58:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-803', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-12-03T12:20:45.000Z', '2025-12-03T12:20:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-803-1', 'hist-ticket-34-803', 'prod-americano', 1, 12000, 0, '2025-12-03T12:20:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-803-2', 'hist-ticket-34-803', 'prod-latte', 1, 15000, 0, '2025-12-03T12:20:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-803', 'hist-ticket-34-803', 'cash', 27000, 'completed', '2025-12-03T12:20:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-804', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-12-03T09:34:09.000Z', '2025-12-03T09:34:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-804-1', 'hist-ticket-34-804', 'prod-americano', 1, 12000, 0, '2025-12-03T09:34:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-804-2', 'hist-ticket-34-804', 'prod-americano', 1, 12000, 0, '2025-12-03T09:34:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-804-3', 'hist-ticket-34-804', 'prod-mocha', 1, 16500, 0, '2025-12-03T09:34:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-804-4', 'hist-ticket-34-804', 'prod-americano', 1, 12000, 0, '2025-12-03T09:34:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-804', 'hist-ticket-34-804', 'cash', 52500, 'completed', '2025-12-03T09:34:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-805', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-03T09:58:35.000Z', '2025-12-03T09:58:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-805-1', 'hist-ticket-34-805', 'prod-americano', 1, 12000, 0, '2025-12-03T09:58:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-805-2', 'hist-ticket-34-805', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T09:58:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-805-3', 'hist-ticket-34-805', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T09:58:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-805-4', 'hist-ticket-34-805', 'prod-latte', 1, 15000, 0, '2025-12-03T09:58:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-805', 'hist-ticket-34-805', 'cash', 56000, 'completed', '2025-12-03T09:58:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-806', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-03T19:13:02.000Z', '2025-12-03T19:13:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-806-1', 'hist-ticket-34-806', 'prod-latte', 1, 15000, 0, '2025-12-03T19:13:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-806', 'hist-ticket-34-806', 'cash', 15000, 'completed', '2025-12-03T19:13:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-807', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-03T19:24:59.000Z', '2025-12-03T19:24:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-807-1', 'hist-ticket-34-807', 'prod-mocha', 1, 16500, 0, '2025-12-03T19:24:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-807', 'hist-ticket-34-807', 'cash', 16500, 'completed', '2025-12-03T19:24:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-808', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-03T16:44:07.000Z', '2025-12-03T16:44:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-808-1', 'hist-ticket-34-808', 'prod-mocha', 1, 16500, 0, '2025-12-03T16:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-808-2', 'hist-ticket-34-808', 'prod-latte', 1, 15000, 0, '2025-12-03T16:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-808-3', 'hist-ticket-34-808', 'prod-latte', 1, 15000, 0, '2025-12-03T16:44:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-808-4', 'hist-ticket-34-808', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T16:44:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-808', 'hist-ticket-34-808', 'cash', 61000, 'completed', '2025-12-03T16:44:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-809', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-03T19:50:38.000Z', '2025-12-03T19:50:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-809-1', 'hist-ticket-34-809', 'prod-latte', 1, 15000, 0, '2025-12-03T19:50:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-809-2', 'hist-ticket-34-809', 'prod-latte', 1, 15000, 0, '2025-12-03T19:50:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-809-3', 'hist-ticket-34-809', 'prod-americano', 1, 12000, 0, '2025-12-03T19:50:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-809-4', 'hist-ticket-34-809', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T19:50:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-809', 'hist-ticket-34-809', 'cash', 56500, 'completed', '2025-12-03T19:50:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-810', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-03T08:41:33.000Z', '2025-12-03T08:41:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-810-1', 'hist-ticket-34-810', 'prod-latte', 1, 15000, 0, '2025-12-03T08:41:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-810-2', 'hist-ticket-34-810', 'prod-latte', 1, 15000, 0, '2025-12-03T08:41:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-810-3', 'hist-ticket-34-810', 'prod-americano', 1, 12000, 0, '2025-12-03T08:41:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-810-4', 'hist-ticket-34-810', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T08:41:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-810', 'hist-ticket-34-810', 'cash', 56500, 'completed', '2025-12-03T08:41:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-811', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-03T18:33:12.000Z', '2025-12-03T18:33:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-811-1', 'hist-ticket-34-811', 'prod-mocha', 1, 16500, 0, '2025-12-03T18:33:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-811', 'hist-ticket-34-811', 'cash', 16500, 'completed', '2025-12-03T18:33:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-812', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-03T12:04:32.000Z', '2025-12-03T12:04:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-812-1', 'hist-ticket-34-812', 'prod-latte', 1, 15000, 0, '2025-12-03T12:04:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-812-2', 'hist-ticket-34-812', 'prod-latte', 1, 15000, 0, '2025-12-03T12:04:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-812', 'hist-ticket-34-812', 'cash', 30000, 'completed', '2025-12-03T12:04:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-813', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-03T17:38:46.000Z', '2025-12-03T17:38:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-813-1', 'hist-ticket-34-813', 'prod-americano', 1, 12000, 0, '2025-12-03T17:38:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-813', 'hist-ticket-34-813', 'cash', 12000, 'completed', '2025-12-03T17:38:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-814', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-03T14:28:45.000Z', '2025-12-03T14:28:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-814-1', 'hist-ticket-34-814', 'prod-latte', 1, 15000, 0, '2025-12-03T14:28:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-814', 'hist-ticket-34-814', 'cash', 15000, 'completed', '2025-12-03T14:28:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-815', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-03T15:45:51.000Z', '2025-12-03T15:45:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-815-1', 'hist-ticket-34-815', 'prod-latte', 1, 15000, 0, '2025-12-03T15:45:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-815', 'hist-ticket-34-815', 'cash', 15000, 'completed', '2025-12-03T15:45:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-34-816', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-12-03T08:35:51.000Z', '2025-12-03T08:35:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-816-1', 'hist-ticket-34-816', 'prod-cappuccino', 1, 14500, 0, '2025-12-03T08:35:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-816-2', 'hist-ticket-34-816', 'prod-mocha', 1, 16500, 0, '2025-12-03T08:35:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-34-816-3', 'hist-ticket-34-816', 'prod-latte', 1, 15000, 0, '2025-12-03T08:35:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-34-816', 'hist-ticket-34-816', 'cash', 46000, 'completed', '2025-12-03T08:35:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-817', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-04T11:00:31.000Z', '2025-12-04T11:00:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-817-1', 'hist-ticket-35-817', 'prod-latte', 1, 15000, 0, '2025-12-04T11:00:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-817-2', 'hist-ticket-35-817', 'prod-latte', 1, 15000, 0, '2025-12-04T11:00:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-817', 'hist-ticket-35-817', 'cash', 30000, 'completed', '2025-12-04T11:00:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-818', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-04T14:00:37.000Z', '2025-12-04T14:00:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-818-1', 'hist-ticket-35-818', 'prod-mocha', 1, 16500, 0, '2025-12-04T14:00:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-818', 'hist-ticket-35-818', 'cash', 16500, 'completed', '2025-12-04T14:00:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-819', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-04T14:49:38.000Z', '2025-12-04T14:49:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-819-1', 'hist-ticket-35-819', 'prod-latte', 1, 15000, 0, '2025-12-04T14:49:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-819-2', 'hist-ticket-35-819', 'prod-americano', 1, 12000, 0, '2025-12-04T14:49:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-819-3', 'hist-ticket-35-819', 'prod-latte', 1, 15000, 0, '2025-12-04T14:49:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-819-4', 'hist-ticket-35-819', 'prod-mocha', 1, 16500, 0, '2025-12-04T14:49:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-819', 'hist-ticket-35-819', 'cash', 58500, 'completed', '2025-12-04T14:49:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-820', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-04T10:28:56.000Z', '2025-12-04T10:28:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-820-1', 'hist-ticket-35-820', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T10:28:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-820', 'hist-ticket-35-820', 'cash', 14500, 'completed', '2025-12-04T10:28:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-821', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-04T11:37:41.000Z', '2025-12-04T11:37:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-821-1', 'hist-ticket-35-821', 'prod-latte', 1, 15000, 0, '2025-12-04T11:37:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-821', 'hist-ticket-35-821', 'cash', 15000, 'completed', '2025-12-04T11:37:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-822', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-04T14:25:17.000Z', '2025-12-04T14:25:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-822-1', 'hist-ticket-35-822', 'prod-americano', 1, 12000, 0, '2025-12-04T14:25:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-822-2', 'hist-ticket-35-822', 'prod-americano', 1, 12000, 0, '2025-12-04T14:25:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-822', 'hist-ticket-35-822', 'cash', 24000, 'completed', '2025-12-04T14:25:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-823', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-04T10:08:21.000Z', '2025-12-04T10:08:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-823-1', 'hist-ticket-35-823', 'prod-latte', 1, 15000, 0, '2025-12-04T10:08:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-823-2', 'hist-ticket-35-823', 'prod-americano', 1, 12000, 0, '2025-12-04T10:08:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-823-3', 'hist-ticket-35-823', 'prod-latte', 1, 15000, 0, '2025-12-04T10:08:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-823', 'hist-ticket-35-823', 'cash', 42000, 'completed', '2025-12-04T10:08:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-824', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-04T18:41:13.000Z', '2025-12-04T18:41:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-824-1', 'hist-ticket-35-824', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T18:41:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-824-2', 'hist-ticket-35-824', 'prod-mocha', 1, 16500, 0, '2025-12-04T18:41:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-824', 'hist-ticket-35-824', 'cash', 31000, 'completed', '2025-12-04T18:41:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-825', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-04T09:00:15.000Z', '2025-12-04T09:00:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-825-1', 'hist-ticket-35-825', 'prod-mocha', 1, 16500, 0, '2025-12-04T09:00:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-825', 'hist-ticket-35-825', 'cash', 16500, 'completed', '2025-12-04T09:00:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-826', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-04T10:08:25.000Z', '2025-12-04T10:08:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-826-1', 'hist-ticket-35-826', 'prod-mocha', 1, 16500, 0, '2025-12-04T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-826-2', 'hist-ticket-35-826', 'prod-mocha', 1, 16500, 0, '2025-12-04T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-826-3', 'hist-ticket-35-826', 'prod-latte', 1, 15000, 0, '2025-12-04T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-826-4', 'hist-ticket-35-826', 'prod-mocha', 1, 16500, 0, '2025-12-04T10:08:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-826', 'hist-ticket-35-826', 'cash', 64500, 'completed', '2025-12-04T10:08:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-827', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-04T16:47:04.000Z', '2025-12-04T16:47:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-827-1', 'hist-ticket-35-827', 'prod-americano', 1, 12000, 0, '2025-12-04T16:47:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-827', 'hist-ticket-35-827', 'cash', 12000, 'completed', '2025-12-04T16:47:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-828', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-04T08:28:25.000Z', '2025-12-04T08:28:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-828-1', 'hist-ticket-35-828', 'prod-mocha', 1, 16500, 0, '2025-12-04T08:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-828-2', 'hist-ticket-35-828', 'prod-latte', 1, 15000, 0, '2025-12-04T08:28:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-828-3', 'hist-ticket-35-828', 'prod-mocha', 1, 16500, 0, '2025-12-04T08:28:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-828', 'hist-ticket-35-828', 'cash', 48000, 'completed', '2025-12-04T08:28:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-829', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2025-12-04T15:58:31.000Z', '2025-12-04T15:58:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-829-1', 'hist-ticket-35-829', 'prod-latte', 1, 15000, 0, '2025-12-04T15:58:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-829', 'hist-ticket-35-829', 'cash', 15000, 'completed', '2025-12-04T15:58:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-830', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2025-12-04T18:46:41.000Z', '2025-12-04T18:46:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-830-1', 'hist-ticket-35-830', 'prod-mocha', 1, 16500, 0, '2025-12-04T18:46:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-830-2', 'hist-ticket-35-830', 'prod-latte', 1, 15000, 0, '2025-12-04T18:46:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-830', 'hist-ticket-35-830', 'cash', 31500, 'completed', '2025-12-04T18:46:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-831', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-04T19:21:05.000Z', '2025-12-04T19:21:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-831-1', 'hist-ticket-35-831', 'prod-mocha', 1, 16500, 0, '2025-12-04T19:21:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-831-2', 'hist-ticket-35-831', 'prod-mocha', 1, 16500, 0, '2025-12-04T19:21:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-831-3', 'hist-ticket-35-831', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T19:21:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-831-4', 'hist-ticket-35-831', 'prod-americano', 1, 12000, 0, '2025-12-04T19:21:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-831', 'hist-ticket-35-831', 'cash', 59500, 'completed', '2025-12-04T19:21:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-832', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-04T12:54:54.000Z', '2025-12-04T12:54:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-832-1', 'hist-ticket-35-832', 'prod-mocha', 1, 16500, 0, '2025-12-04T12:54:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-832', 'hist-ticket-35-832', 'cash', 16500, 'completed', '2025-12-04T12:54:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-833', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-04T18:22:00.000Z', '2025-12-04T18:22:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-833-1', 'hist-ticket-35-833', 'prod-americano', 1, 12000, 0, '2025-12-04T18:22:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-833-2', 'hist-ticket-35-833', 'prod-latte', 1, 15000, 0, '2025-12-04T18:22:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-833', 'hist-ticket-35-833', 'cash', 27000, 'completed', '2025-12-04T18:22:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-834', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-04T13:17:27.000Z', '2025-12-04T13:17:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-834-1', 'hist-ticket-35-834', 'prod-latte', 1, 15000, 0, '2025-12-04T13:17:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-834-2', 'hist-ticket-35-834', 'prod-mocha', 1, 16500, 0, '2025-12-04T13:17:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-834', 'hist-ticket-35-834', 'cash', 31500, 'completed', '2025-12-04T13:17:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-835', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2025-12-04T18:38:03.000Z', '2025-12-04T18:38:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-835-1', 'hist-ticket-35-835', 'prod-americano', 1, 12000, 0, '2025-12-04T18:38:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-835', 'hist-ticket-35-835', 'cash', 12000, 'completed', '2025-12-04T18:38:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-836', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-04T19:44:59.000Z', '2025-12-04T19:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-836-1', 'hist-ticket-35-836', 'prod-americano', 1, 12000, 0, '2025-12-04T19:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-836-2', 'hist-ticket-35-836', 'prod-americano', 1, 12000, 0, '2025-12-04T19:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-836-3', 'hist-ticket-35-836', 'prod-americano', 1, 12000, 0, '2025-12-04T19:44:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-836-4', 'hist-ticket-35-836', 'prod-latte', 1, 15000, 0, '2025-12-04T19:44:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-836', 'hist-ticket-35-836', 'cash', 51000, 'completed', '2025-12-04T19:44:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-837', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-04T08:28:42.000Z', '2025-12-04T08:28:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-837-1', 'hist-ticket-35-837', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T08:28:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-837-2', 'hist-ticket-35-837', 'prod-mocha', 1, 16500, 0, '2025-12-04T08:28:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-837', 'hist-ticket-35-837', 'cash', 31000, 'completed', '2025-12-04T08:28:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-35-838', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-04T17:38:23.000Z', '2025-12-04T17:38:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-838-1', 'hist-ticket-35-838', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T17:38:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-838-2', 'hist-ticket-35-838', 'prod-latte', 1, 15000, 0, '2025-12-04T17:38:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-838-3', 'hist-ticket-35-838', 'prod-latte', 1, 15000, 0, '2025-12-04T17:38:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-35-838-4', 'hist-ticket-35-838', 'prod-cappuccino', 1, 14500, 0, '2025-12-04T17:38:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-35-838', 'hist-ticket-35-838', 'cash', 59000, 'completed', '2025-12-04T17:38:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-839', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-05T08:23:16.000Z', '2025-12-05T08:23:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-839-1', 'hist-ticket-36-839', 'prod-americano', 1, 12000, 0, '2025-12-05T08:23:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-839-2', 'hist-ticket-36-839', 'prod-americano', 1, 12000, 0, '2025-12-05T08:23:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-839-3', 'hist-ticket-36-839', 'prod-mocha', 1, 16500, 0, '2025-12-05T08:23:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-839-4', 'hist-ticket-36-839', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T08:23:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-839', 'hist-ticket-36-839', 'cash', 55000, 'completed', '2025-12-05T08:23:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-840', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2025-12-05T14:22:42.000Z', '2025-12-05T14:22:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-840-1', 'hist-ticket-36-840', 'prod-americano', 1, 12000, 0, '2025-12-05T14:22:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-840', 'hist-ticket-36-840', 'cash', 12000, 'completed', '2025-12-05T14:22:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-841', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-12-05T09:32:55.000Z', '2025-12-05T09:32:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-841-1', 'hist-ticket-36-841', 'prod-latte', 1, 15000, 0, '2025-12-05T09:32:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-841', 'hist-ticket-36-841', 'cash', 15000, 'completed', '2025-12-05T09:32:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-842', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-05T10:49:56.000Z', '2025-12-05T10:49:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-842-1', 'hist-ticket-36-842', 'prod-americano', 1, 12000, 0, '2025-12-05T10:49:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-842-2', 'hist-ticket-36-842', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T10:49:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-842', 'hist-ticket-36-842', 'cash', 26500, 'completed', '2025-12-05T10:49:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-843', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2025-12-05T09:36:29.000Z', '2025-12-05T09:36:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-843-1', 'hist-ticket-36-843', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T09:36:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-843-2', 'hist-ticket-36-843', 'prod-latte', 1, 15000, 0, '2025-12-05T09:36:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-843-3', 'hist-ticket-36-843', 'prod-americano', 1, 12000, 0, '2025-12-05T09:36:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-843-4', 'hist-ticket-36-843', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T09:36:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-843', 'hist-ticket-36-843', 'cash', 56000, 'completed', '2025-12-05T09:36:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-844', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-12-05T19:06:12.000Z', '2025-12-05T19:06:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-844-1', 'hist-ticket-36-844', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T19:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-844-2', 'hist-ticket-36-844', 'prod-mocha', 1, 16500, 0, '2025-12-05T19:06:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-844', 'hist-ticket-36-844', 'cash', 31000, 'completed', '2025-12-05T19:06:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-845', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-05T12:24:54.000Z', '2025-12-05T12:24:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-845-1', 'hist-ticket-36-845', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T12:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-845-2', 'hist-ticket-36-845', 'prod-americano', 1, 12000, 0, '2025-12-05T12:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-845-3', 'hist-ticket-36-845', 'prod-mocha', 1, 16500, 0, '2025-12-05T12:24:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-845-4', 'hist-ticket-36-845', 'prod-latte', 1, 15000, 0, '2025-12-05T12:24:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-845', 'hist-ticket-36-845', 'cash', 58000, 'completed', '2025-12-05T12:24:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-846', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-05T12:51:54.000Z', '2025-12-05T12:51:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-846-1', 'hist-ticket-36-846', 'prod-americano', 1, 12000, 0, '2025-12-05T12:51:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-846-2', 'hist-ticket-36-846', 'prod-americano', 1, 12000, 0, '2025-12-05T12:51:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-846', 'hist-ticket-36-846', 'cash', 24000, 'completed', '2025-12-05T12:51:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-847', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2025-12-05T18:07:45.000Z', '2025-12-05T18:07:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-847-1', 'hist-ticket-36-847', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T18:07:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-847-2', 'hist-ticket-36-847', 'prod-mocha', 1, 16500, 0, '2025-12-05T18:07:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-847-3', 'hist-ticket-36-847', 'prod-americano', 1, 12000, 0, '2025-12-05T18:07:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-847', 'hist-ticket-36-847', 'cash', 43000, 'completed', '2025-12-05T18:07:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-848', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-05T14:52:19.000Z', '2025-12-05T14:52:19.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-848-1', 'hist-ticket-36-848', 'prod-latte', 1, 15000, 0, '2025-12-05T14:52:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-848-2', 'hist-ticket-36-848', 'prod-latte', 1, 15000, 0, '2025-12-05T14:52:19.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-848-3', 'hist-ticket-36-848', 'prod-americano', 1, 12000, 0, '2025-12-05T14:52:19.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-848', 'hist-ticket-36-848', 'cash', 42000, 'completed', '2025-12-05T14:52:19.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-849', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-05T13:16:50.000Z', '2025-12-05T13:16:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-849-1', 'hist-ticket-36-849', 'prod-latte', 1, 15000, 0, '2025-12-05T13:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-849-2', 'hist-ticket-36-849', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T13:16:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-849-3', 'hist-ticket-36-849', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T13:16:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-849', 'hist-ticket-36-849', 'cash', 44000, 'completed', '2025-12-05T13:16:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-850', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-05T09:20:00.000Z', '2025-12-05T09:20:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-850-1', 'hist-ticket-36-850', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T09:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-850-2', 'hist-ticket-36-850', 'prod-mocha', 1, 16500, 0, '2025-12-05T09:20:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-850', 'hist-ticket-36-850', 'cash', 31000, 'completed', '2025-12-05T09:20:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-851', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-05T14:24:00.000Z', '2025-12-05T14:24:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-851-1', 'hist-ticket-36-851', 'prod-latte', 1, 15000, 0, '2025-12-05T14:24:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-851-2', 'hist-ticket-36-851', 'prod-mocha', 1, 16500, 0, '2025-12-05T14:24:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-851', 'hist-ticket-36-851', 'cash', 31500, 'completed', '2025-12-05T14:24:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-852', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-12-05T11:39:10.000Z', '2025-12-05T11:39:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-852-1', 'hist-ticket-36-852', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T11:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-852-2', 'hist-ticket-36-852', 'prod-mocha', 1, 16500, 0, '2025-12-05T11:39:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-852-3', 'hist-ticket-36-852', 'prod-americano', 1, 12000, 0, '2025-12-05T11:39:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-852', 'hist-ticket-36-852', 'cash', 43000, 'completed', '2025-12-05T11:39:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-853', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-05T17:19:09.000Z', '2025-12-05T17:19:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-853-1', 'hist-ticket-36-853', 'prod-americano', 1, 12000, 0, '2025-12-05T17:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-853-2', 'hist-ticket-36-853', 'prod-latte', 1, 15000, 0, '2025-12-05T17:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-853-3', 'hist-ticket-36-853', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T17:19:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-853', 'hist-ticket-36-853', 'cash', 41500, 'completed', '2025-12-05T17:19:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-854', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2025-12-05T10:46:17.000Z', '2025-12-05T10:46:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-854-1', 'hist-ticket-36-854', 'prod-americano', 1, 12000, 0, '2025-12-05T10:46:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-854-2', 'hist-ticket-36-854', 'prod-americano', 1, 12000, 0, '2025-12-05T10:46:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-854', 'hist-ticket-36-854', 'cash', 24000, 'completed', '2025-12-05T10:46:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-855', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-05T15:34:17.000Z', '2025-12-05T15:34:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-855-1', 'hist-ticket-36-855', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T15:34:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-855-2', 'hist-ticket-36-855', 'prod-mocha', 1, 16500, 0, '2025-12-05T15:34:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-855-3', 'hist-ticket-36-855', 'prod-cappuccino', 1, 14500, 0, '2025-12-05T15:34:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-855', 'hist-ticket-36-855', 'cash', 45500, 'completed', '2025-12-05T15:34:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-36-856', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-05T09:20:44.000Z', '2025-12-05T09:20:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-36-856-1', 'hist-ticket-36-856', 'prod-mocha', 1, 16500, 0, '2025-12-05T09:20:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-36-856', 'hist-ticket-36-856', 'cash', 16500, 'completed', '2025-12-05T09:20:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-857', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-06T11:44:26.000Z', '2025-12-06T11:44:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-857-1', 'hist-ticket-37-857', 'prod-mocha', 1, 16500, 0, '2025-12-06T11:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-857-2', 'hist-ticket-37-857', 'prod-latte', 1, 15000, 0, '2025-12-06T11:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-857-3', 'hist-ticket-37-857', 'prod-mocha', 1, 16500, 0, '2025-12-06T11:44:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-857-4', 'hist-ticket-37-857', 'prod-latte', 1, 15000, 0, '2025-12-06T11:44:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-857', 'hist-ticket-37-857', 'cash', 63000, 'completed', '2025-12-06T11:44:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-858', o.id, r.id, 'paid', 'takeout', 'pink', 3, 'Good.', u.id, '2025-12-06T11:46:36.000Z', '2025-12-06T11:46:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-858-1', 'hist-ticket-37-858', 'prod-mocha', 1, 16500, 0, '2025-12-06T11:46:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-858-2', 'hist-ticket-37-858', 'prod-latte', 1, 15000, 0, '2025-12-06T11:46:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-858-3', 'hist-ticket-37-858', 'prod-latte', 1, 15000, 0, '2025-12-06T11:46:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-858', 'hist-ticket-37-858', 'cash', 46500, 'completed', '2025-12-06T11:46:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-859', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-12-06T17:35:14.000Z', '2025-12-06T17:35:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-859-1', 'hist-ticket-37-859', 'prod-mocha', 1, 16500, 0, '2025-12-06T17:35:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-859-2', 'hist-ticket-37-859', 'prod-americano', 1, 12000, 0, '2025-12-06T17:35:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-859-3', 'hist-ticket-37-859', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T17:35:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-859', 'hist-ticket-37-859', 'cash', 43000, 'completed', '2025-12-06T17:35:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-860', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-06T12:12:43.000Z', '2025-12-06T12:12:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-860-1', 'hist-ticket-37-860', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T12:12:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-860-2', 'hist-ticket-37-860', 'prod-americano', 1, 12000, 0, '2025-12-06T12:12:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-860', 'hist-ticket-37-860', 'cash', 26500, 'completed', '2025-12-06T12:12:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-861', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-06T10:28:06.000Z', '2025-12-06T10:28:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-861-1', 'hist-ticket-37-861', 'prod-mocha', 1, 16500, 0, '2025-12-06T10:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-861-2', 'hist-ticket-37-861', 'prod-americano', 1, 12000, 0, '2025-12-06T10:28:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-861-3', 'hist-ticket-37-861', 'prod-mocha', 1, 16500, 0, '2025-12-06T10:28:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-861', 'hist-ticket-37-861', 'cash', 45000, 'completed', '2025-12-06T10:28:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-862', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-06T16:23:01.000Z', '2025-12-06T16:23:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-862-1', 'hist-ticket-37-862', 'prod-mocha', 1, 16500, 0, '2025-12-06T16:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-862-2', 'hist-ticket-37-862', 'prod-latte', 1, 15000, 0, '2025-12-06T16:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-862-3', 'hist-ticket-37-862', 'prod-americano', 1, 12000, 0, '2025-12-06T16:23:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-862-4', 'hist-ticket-37-862', 'prod-americano', 1, 12000, 0, '2025-12-06T16:23:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-862', 'hist-ticket-37-862', 'cash', 55500, 'completed', '2025-12-06T16:23:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-863', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-06T16:14:55.000Z', '2025-12-06T16:14:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-863-1', 'hist-ticket-37-863', 'prod-americano', 1, 12000, 0, '2025-12-06T16:14:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-863-2', 'hist-ticket-37-863', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T16:14:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-863-3', 'hist-ticket-37-863', 'prod-latte', 1, 15000, 0, '2025-12-06T16:14:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-863', 'hist-ticket-37-863', 'cash', 41500, 'completed', '2025-12-06T16:14:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-864', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2025-12-06T17:33:04.000Z', '2025-12-06T17:33:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-864-1', 'hist-ticket-37-864', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T17:33:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-864', 'hist-ticket-37-864', 'cash', 14500, 'completed', '2025-12-06T17:33:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-865', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-06T16:32:33.000Z', '2025-12-06T16:32:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-865-1', 'hist-ticket-37-865', 'prod-latte', 1, 15000, 0, '2025-12-06T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-865-2', 'hist-ticket-37-865', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-865-3', 'hist-ticket-37-865', 'prod-latte', 1, 15000, 0, '2025-12-06T16:32:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-865-4', 'hist-ticket-37-865', 'prod-mocha', 1, 16500, 0, '2025-12-06T16:32:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-865', 'hist-ticket-37-865', 'cash', 61000, 'completed', '2025-12-06T16:32:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-866', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-06T12:28:59.000Z', '2025-12-06T12:28:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-866-1', 'hist-ticket-37-866', 'prod-mocha', 1, 16500, 0, '2025-12-06T12:28:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-866', 'hist-ticket-37-866', 'cash', 16500, 'completed', '2025-12-06T12:28:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-867', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-06T15:52:15.000Z', '2025-12-06T15:52:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-867-1', 'hist-ticket-37-867', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T15:52:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-867-2', 'hist-ticket-37-867', 'prod-mocha', 1, 16500, 0, '2025-12-06T15:52:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-867-3', 'hist-ticket-37-867', 'prod-latte', 1, 15000, 0, '2025-12-06T15:52:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-867-4', 'hist-ticket-37-867', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T15:52:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-867', 'hist-ticket-37-867', 'cash', 60500, 'completed', '2025-12-06T15:52:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-868', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-06T19:31:56.000Z', '2025-12-06T19:31:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-868-1', 'hist-ticket-37-868', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T19:31:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-868-2', 'hist-ticket-37-868', 'prod-americano', 1, 12000, 0, '2025-12-06T19:31:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-868-3', 'hist-ticket-37-868', 'prod-americano', 1, 12000, 0, '2025-12-06T19:31:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-868', 'hist-ticket-37-868', 'cash', 38500, 'completed', '2025-12-06T19:31:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-869', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-06T10:51:07.000Z', '2025-12-06T10:51:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-869-1', 'hist-ticket-37-869', 'prod-mocha', 1, 16500, 0, '2025-12-06T10:51:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-869-2', 'hist-ticket-37-869', 'prod-mocha', 1, 16500, 0, '2025-12-06T10:51:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-869', 'hist-ticket-37-869', 'cash', 33000, 'completed', '2025-12-06T10:51:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-870', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-06T14:34:17.000Z', '2025-12-06T14:34:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-870-1', 'hist-ticket-37-870', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T14:34:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-870-2', 'hist-ticket-37-870', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T14:34:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-870-3', 'hist-ticket-37-870', 'prod-latte', 1, 15000, 0, '2025-12-06T14:34:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-870', 'hist-ticket-37-870', 'cash', 44000, 'completed', '2025-12-06T14:34:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-871', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-06T18:30:37.000Z', '2025-12-06T18:30:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-871-1', 'hist-ticket-37-871', 'prod-latte', 1, 15000, 0, '2025-12-06T18:30:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-871', 'hist-ticket-37-871', 'cash', 15000, 'completed', '2025-12-06T18:30:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-872', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-12-06T09:06:36.000Z', '2025-12-06T09:06:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-872-1', 'hist-ticket-37-872', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T09:06:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-872-2', 'hist-ticket-37-872', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T09:06:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-872-3', 'hist-ticket-37-872', 'prod-mocha', 1, 16500, 0, '2025-12-06T09:06:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-872-4', 'hist-ticket-37-872', 'prod-latte', 1, 15000, 0, '2025-12-06T09:06:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-872', 'hist-ticket-37-872', 'cash', 60500, 'completed', '2025-12-06T09:06:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-873', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-06T13:54:33.000Z', '2025-12-06T13:54:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-873-1', 'hist-ticket-37-873', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T13:54:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-873', 'hist-ticket-37-873', 'cash', 14500, 'completed', '2025-12-06T13:54:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-874', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-06T18:37:31.000Z', '2025-12-06T18:37:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-874-1', 'hist-ticket-37-874', 'prod-americano', 1, 12000, 0, '2025-12-06T18:37:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-874-2', 'hist-ticket-37-874', 'prod-latte', 1, 15000, 0, '2025-12-06T18:37:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-874', 'hist-ticket-37-874', 'cash', 27000, 'completed', '2025-12-06T18:37:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-875', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2025-12-06T16:57:34.000Z', '2025-12-06T16:57:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-875-1', 'hist-ticket-37-875', 'prod-americano', 1, 12000, 0, '2025-12-06T16:57:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-875-2', 'hist-ticket-37-875', 'prod-mocha', 1, 16500, 0, '2025-12-06T16:57:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-875-3', 'hist-ticket-37-875', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T16:57:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-875', 'hist-ticket-37-875', 'cash', 43000, 'completed', '2025-12-06T16:57:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-876', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-06T12:21:02.000Z', '2025-12-06T12:21:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-876-1', 'hist-ticket-37-876', 'prod-americano', 1, 12000, 0, '2025-12-06T12:21:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-876-2', 'hist-ticket-37-876', 'prod-latte', 1, 15000, 0, '2025-12-06T12:21:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-876-3', 'hist-ticket-37-876', 'prod-mocha', 1, 16500, 0, '2025-12-06T12:21:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-876', 'hist-ticket-37-876', 'cash', 43500, 'completed', '2025-12-06T12:21:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-877', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-12-06T13:06:47.000Z', '2025-12-06T13:06:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-877-1', 'hist-ticket-37-877', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T13:06:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-877', 'hist-ticket-37-877', 'cash', 14500, 'completed', '2025-12-06T13:06:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-878', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-06T17:44:42.000Z', '2025-12-06T17:44:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-878-1', 'hist-ticket-37-878', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T17:44:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-878-2', 'hist-ticket-37-878', 'prod-americano', 1, 12000, 0, '2025-12-06T17:44:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-878-3', 'hist-ticket-37-878', 'prod-americano', 1, 12000, 0, '2025-12-06T17:44:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-878-4', 'hist-ticket-37-878', 'prod-mocha', 1, 16500, 0, '2025-12-06T17:44:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-878', 'hist-ticket-37-878', 'cash', 55000, 'completed', '2025-12-06T17:44:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-879', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-12-06T11:36:16.000Z', '2025-12-06T11:36:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-879-1', 'hist-ticket-37-879', 'prod-latte', 1, 15000, 0, '2025-12-06T11:36:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-879-2', 'hist-ticket-37-879', 'prod-americano', 1, 12000, 0, '2025-12-06T11:36:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-879-3', 'hist-ticket-37-879', 'prod-latte', 1, 15000, 0, '2025-12-06T11:36:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-879-4', 'hist-ticket-37-879', 'prod-latte', 1, 15000, 0, '2025-12-06T11:36:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-879', 'hist-ticket-37-879', 'cash', 57000, 'completed', '2025-12-06T11:36:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-880', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-06T12:29:52.000Z', '2025-12-06T12:29:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-880-1', 'hist-ticket-37-880', 'prod-mocha', 1, 16500, 0, '2025-12-06T12:29:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-880', 'hist-ticket-37-880', 'cash', 16500, 'completed', '2025-12-06T12:29:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-881', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-06T18:26:54.000Z', '2025-12-06T18:26:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-881-1', 'hist-ticket-37-881', 'prod-mocha', 1, 16500, 0, '2025-12-06T18:26:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-881', 'hist-ticket-37-881', 'cash', 16500, 'completed', '2025-12-06T18:26:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-882', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-06T11:49:15.000Z', '2025-12-06T11:49:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-882-1', 'hist-ticket-37-882', 'prod-mocha', 1, 16500, 0, '2025-12-06T11:49:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-882-2', 'hist-ticket-37-882', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T11:49:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-882-3', 'hist-ticket-37-882', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T11:49:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-882-4', 'hist-ticket-37-882', 'prod-latte', 1, 15000, 0, '2025-12-06T11:49:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-882', 'hist-ticket-37-882', 'cash', 60500, 'completed', '2025-12-06T11:49:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-883', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-06T17:57:47.000Z', '2025-12-06T17:57:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-883-1', 'hist-ticket-37-883', 'prod-mocha', 1, 16500, 0, '2025-12-06T17:57:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-883', 'hist-ticket-37-883', 'cash', 16500, 'completed', '2025-12-06T17:57:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-884', o.id, r.id, 'paid', 'takeout', 'blue', 3, 'Good.', u.id, '2025-12-06T08:38:53.000Z', '2025-12-06T08:38:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-884-1', 'hist-ticket-37-884', 'prod-latte', 1, 15000, 0, '2025-12-06T08:38:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-884-2', 'hist-ticket-37-884', 'prod-americano', 1, 12000, 0, '2025-12-06T08:38:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-884', 'hist-ticket-37-884', 'cash', 27000, 'completed', '2025-12-06T08:38:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-885', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-06T12:52:10.000Z', '2025-12-06T12:52:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-885-1', 'hist-ticket-37-885', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T12:52:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-885', 'hist-ticket-37-885', 'cash', 14500, 'completed', '2025-12-06T12:52:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-37-886', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-06T09:09:40.000Z', '2025-12-06T09:09:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-886-1', 'hist-ticket-37-886', 'prod-americano', 1, 12000, 0, '2025-12-06T09:09:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-886-2', 'hist-ticket-37-886', 'prod-latte', 1, 15000, 0, '2025-12-06T09:09:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-886-3', 'hist-ticket-37-886', 'prod-latte', 1, 15000, 0, '2025-12-06T09:09:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-37-886-4', 'hist-ticket-37-886', 'prod-cappuccino', 1, 14500, 0, '2025-12-06T09:09:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-37-886', 'hist-ticket-37-886', 'cash', 56500, 'completed', '2025-12-06T09:09:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-887', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2025-12-07T19:36:32.000Z', '2025-12-07T19:36:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-887-1', 'hist-ticket-38-887', 'prod-mocha', 1, 16500, 0, '2025-12-07T19:36:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-887', 'hist-ticket-38-887', 'cash', 16500, 'completed', '2025-12-07T19:36:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-888', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-07T17:46:09.000Z', '2025-12-07T17:46:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-888-1', 'hist-ticket-38-888', 'prod-cappuccino', 1, 14500, 0, '2025-12-07T17:46:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-888', 'hist-ticket-38-888', 'cash', 14500, 'completed', '2025-12-07T17:46:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-889', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-07T12:55:49.000Z', '2025-12-07T12:55:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-38-889-1', 'hist-ticket-38-889', 'prod-americano', 1, 12000, 0, '2025-12-07T12:55:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-38-889', 'hist-ticket-38-889', 'cash', 12000, 'completed', '2025-12-07T12:55:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-38-890', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-07T10:07:00.000Z', '2025-12-07T10:07:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;