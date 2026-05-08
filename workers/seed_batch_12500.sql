INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2757', 'hist-ticket-112-2757', 'cash', 39000, 'completed', '2026-02-19T08:42:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2758', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-19T10:52:56.000Z', '2026-02-19T10:52:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2758-1', 'hist-ticket-112-2758', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T10:52:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2758-2', 'hist-ticket-112-2758', 'prod-americano', 1, 12000, 0, '2026-02-19T10:52:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2758-3', 'hist-ticket-112-2758', 'prod-americano', 1, 12000, 0, '2026-02-19T10:52:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2758-4', 'hist-ticket-112-2758', 'prod-mocha', 1, 16500, 0, '2026-02-19T10:52:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2758', 'hist-ticket-112-2758', 'cash', 55000, 'completed', '2026-02-19T10:52:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2759', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-19T16:46:27.000Z', '2026-02-19T16:46:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2759-1', 'hist-ticket-112-2759', 'prod-mocha', 1, 16500, 0, '2026-02-19T16:46:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2759-2', 'hist-ticket-112-2759', 'prod-latte', 1, 15000, 0, '2026-02-19T16:46:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2759-3', 'hist-ticket-112-2759', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T16:46:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2759-4', 'hist-ticket-112-2759', 'prod-americano', 1, 12000, 0, '2026-02-19T16:46:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2759', 'hist-ticket-112-2759', 'cash', 58000, 'completed', '2026-02-19T16:46:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2760', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-02-19T10:06:54.000Z', '2026-02-19T10:06:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2760-1', 'hist-ticket-112-2760', 'prod-mocha', 1, 16500, 0, '2026-02-19T10:06:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2760-2', 'hist-ticket-112-2760', 'prod-latte', 1, 15000, 0, '2026-02-19T10:06:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2760-3', 'hist-ticket-112-2760', 'prod-americano', 1, 12000, 0, '2026-02-19T10:06:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2760', 'hist-ticket-112-2760', 'cash', 43500, 'completed', '2026-02-19T10:06:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2761', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-02-19T13:38:48.000Z', '2026-02-19T13:38:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2761-1', 'hist-ticket-112-2761', 'prod-latte', 1, 15000, 0, '2026-02-19T13:38:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2761-2', 'hist-ticket-112-2761', 'prod-latte', 1, 15000, 0, '2026-02-19T13:38:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2761-3', 'hist-ticket-112-2761', 'prod-latte', 1, 15000, 0, '2026-02-19T13:38:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2761', 'hist-ticket-112-2761', 'cash', 45000, 'completed', '2026-02-19T13:38:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2762', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-02-19T09:56:45.000Z', '2026-02-19T09:56:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2762-1', 'hist-ticket-112-2762', 'prod-latte', 1, 15000, 0, '2026-02-19T09:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2762-2', 'hist-ticket-112-2762', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T09:56:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2762-3', 'hist-ticket-112-2762', 'prod-latte', 1, 15000, 0, '2026-02-19T09:56:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2762', 'hist-ticket-112-2762', 'cash', 44500, 'completed', '2026-02-19T09:56:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2763', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-19T17:59:28.000Z', '2026-02-19T17:59:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2763-1', 'hist-ticket-112-2763', 'prod-americano', 1, 12000, 0, '2026-02-19T17:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2763-2', 'hist-ticket-112-2763', 'prod-latte', 1, 15000, 0, '2026-02-19T17:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2763-3', 'hist-ticket-112-2763', 'prod-latte', 1, 15000, 0, '2026-02-19T17:59:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2763', 'hist-ticket-112-2763', 'cash', 42000, 'completed', '2026-02-19T17:59:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-112-2764', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-02-19T13:46:14.000Z', '2026-02-19T13:46:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2764-1', 'hist-ticket-112-2764', 'prod-cappuccino', 1, 14500, 0, '2026-02-19T13:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2764-2', 'hist-ticket-112-2764', 'prod-americano', 1, 12000, 0, '2026-02-19T13:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2764-3', 'hist-ticket-112-2764', 'prod-mocha', 1, 16500, 0, '2026-02-19T13:46:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-112-2764-4', 'hist-ticket-112-2764', 'prod-latte', 1, 15000, 0, '2026-02-19T13:46:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-112-2764', 'hist-ticket-112-2764', 'cash', 58000, 'completed', '2026-02-19T13:46:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2765', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-20T17:00:15.000Z', '2026-02-20T17:00:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2765-1', 'hist-ticket-113-2765', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T17:00:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2765-2', 'hist-ticket-113-2765', 'prod-mocha', 1, 16500, 0, '2026-02-20T17:00:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2765', 'hist-ticket-113-2765', 'cash', 31000, 'completed', '2026-02-20T17:00:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2766', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-20T11:23:15.000Z', '2026-02-20T11:23:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2766-1', 'hist-ticket-113-2766', 'prod-mocha', 1, 16500, 0, '2026-02-20T11:23:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2766', 'hist-ticket-113-2766', 'cash', 16500, 'completed', '2026-02-20T11:23:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2767', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-20T14:48:43.000Z', '2026-02-20T14:48:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2767-1', 'hist-ticket-113-2767', 'prod-mocha', 1, 16500, 0, '2026-02-20T14:48:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2767', 'hist-ticket-113-2767', 'cash', 16500, 'completed', '2026-02-20T14:48:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2768', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-20T16:43:13.000Z', '2026-02-20T16:43:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2768-1', 'hist-ticket-113-2768', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T16:43:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2768-2', 'hist-ticket-113-2768', 'prod-latte', 1, 15000, 0, '2026-02-20T16:43:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2768', 'hist-ticket-113-2768', 'cash', 29500, 'completed', '2026-02-20T16:43:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2769', o.id, r.id, 'paid', 'takeout', 'blue', 4, 'Good.', u.id, '2026-02-20T15:47:27.000Z', '2026-02-20T15:47:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2769-1', 'hist-ticket-113-2769', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T15:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2769-2', 'hist-ticket-113-2769', 'prod-mocha', 1, 16500, 0, '2026-02-20T15:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2769-3', 'hist-ticket-113-2769', 'prod-latte', 1, 15000, 0, '2026-02-20T15:47:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2769-4', 'hist-ticket-113-2769', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T15:47:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2769', 'hist-ticket-113-2769', 'cash', 60500, 'completed', '2026-02-20T15:47:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2770', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-20T19:41:18.000Z', '2026-02-20T19:41:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2770-1', 'hist-ticket-113-2770', 'prod-mocha', 1, 16500, 0, '2026-02-20T19:41:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2770', 'hist-ticket-113-2770', 'cash', 16500, 'completed', '2026-02-20T19:41:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2771', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-02-20T12:59:36.000Z', '2026-02-20T12:59:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2771-1', 'hist-ticket-113-2771', 'prod-americano', 1, 12000, 0, '2026-02-20T12:59:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2771-2', 'hist-ticket-113-2771', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T12:59:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2771', 'hist-ticket-113-2771', 'cash', 26500, 'completed', '2026-02-20T12:59:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2772', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-20T17:53:50.000Z', '2026-02-20T17:53:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2772-1', 'hist-ticket-113-2772', 'prod-latte', 1, 15000, 0, '2026-02-20T17:53:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2772', 'hist-ticket-113-2772', 'cash', 15000, 'completed', '2026-02-20T17:53:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2773', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-02-20T12:24:55.000Z', '2026-02-20T12:24:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2773-1', 'hist-ticket-113-2773', 'prod-mocha', 1, 16500, 0, '2026-02-20T12:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2773-2', 'hist-ticket-113-2773', 'prod-latte', 1, 15000, 0, '2026-02-20T12:24:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2773-3', 'hist-ticket-113-2773', 'prod-americano', 1, 12000, 0, '2026-02-20T12:24:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2773', 'hist-ticket-113-2773', 'cash', 43500, 'completed', '2026-02-20T12:24:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2774', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-02-20T18:24:30.000Z', '2026-02-20T18:24:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2774-1', 'hist-ticket-113-2774', 'prod-americano', 1, 12000, 0, '2026-02-20T18:24:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2774', 'hist-ticket-113-2774', 'cash', 12000, 'completed', '2026-02-20T18:24:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2775', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-20T09:02:17.000Z', '2026-02-20T09:02:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2775-1', 'hist-ticket-113-2775', 'prod-americano', 1, 12000, 0, '2026-02-20T09:02:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2775-2', 'hist-ticket-113-2775', 'prod-americano', 1, 12000, 0, '2026-02-20T09:02:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2775-3', 'hist-ticket-113-2775', 'prod-americano', 1, 12000, 0, '2026-02-20T09:02:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2775-4', 'hist-ticket-113-2775', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:02:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2775', 'hist-ticket-113-2775', 'cash', 52500, 'completed', '2026-02-20T09:02:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2776', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-20T08:04:43.000Z', '2026-02-20T08:04:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2776-1', 'hist-ticket-113-2776', 'prod-latte', 1, 15000, 0, '2026-02-20T08:04:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2776', 'hist-ticket-113-2776', 'cash', 15000, 'completed', '2026-02-20T08:04:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2777', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-20T15:22:30.000Z', '2026-02-20T15:22:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2777-1', 'hist-ticket-113-2777', 'prod-mocha', 1, 16500, 0, '2026-02-20T15:22:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2777-2', 'hist-ticket-113-2777', 'prod-mocha', 1, 16500, 0, '2026-02-20T15:22:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2777', 'hist-ticket-113-2777', 'cash', 33000, 'completed', '2026-02-20T15:22:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2778', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-20T09:04:35.000Z', '2026-02-20T09:04:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2778-1', 'hist-ticket-113-2778', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:04:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2778-2', 'hist-ticket-113-2778', 'prod-latte', 1, 15000, 0, '2026-02-20T09:04:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2778', 'hist-ticket-113-2778', 'cash', 31500, 'completed', '2026-02-20T09:04:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2779', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-20T10:11:37.000Z', '2026-02-20T10:11:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2779-1', 'hist-ticket-113-2779', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T10:11:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2779', 'hist-ticket-113-2779', 'cash', 14500, 'completed', '2026-02-20T10:11:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2780', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-20T16:21:04.000Z', '2026-02-20T16:21:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2780-1', 'hist-ticket-113-2780', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T16:21:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2780-2', 'hist-ticket-113-2780', 'prod-americano', 1, 12000, 0, '2026-02-20T16:21:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2780', 'hist-ticket-113-2780', 'cash', 26500, 'completed', '2026-02-20T16:21:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2781', o.id, r.id, 'paid', 'takeout', 'green', 4, 'Good.', u.id, '2026-02-20T14:01:13.000Z', '2026-02-20T14:01:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2781-1', 'hist-ticket-113-2781', 'prod-latte', 1, 15000, 0, '2026-02-20T14:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2781-2', 'hist-ticket-113-2781', 'prod-americano', 1, 12000, 0, '2026-02-20T14:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2781-3', 'hist-ticket-113-2781', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T14:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2781-4', 'hist-ticket-113-2781', 'prod-americano', 1, 12000, 0, '2026-02-20T14:01:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2781', 'hist-ticket-113-2781', 'cash', 53500, 'completed', '2026-02-20T14:01:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2782', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-20T09:30:14.000Z', '2026-02-20T09:30:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2782-1', 'hist-ticket-113-2782', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:30:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2782-2', 'hist-ticket-113-2782', 'prod-americano', 1, 12000, 0, '2026-02-20T09:30:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2782-3', 'hist-ticket-113-2782', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T09:30:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2782', 'hist-ticket-113-2782', 'cash', 43000, 'completed', '2026-02-20T09:30:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2783', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-20T14:50:12.000Z', '2026-02-20T14:50:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2783-1', 'hist-ticket-113-2783', 'prod-latte', 1, 15000, 0, '2026-02-20T14:50:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2783-2', 'hist-ticket-113-2783', 'prod-latte', 1, 15000, 0, '2026-02-20T14:50:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2783', 'hist-ticket-113-2783', 'cash', 30000, 'completed', '2026-02-20T14:50:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2784', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-20T11:26:28.000Z', '2026-02-20T11:26:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2784-1', 'hist-ticket-113-2784', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T11:26:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2784-2', 'hist-ticket-113-2784', 'prod-latte', 1, 15000, 0, '2026-02-20T11:26:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2784', 'hist-ticket-113-2784', 'cash', 29500, 'completed', '2026-02-20T11:26:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2785', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-02-20T18:38:43.000Z', '2026-02-20T18:38:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2785-1', 'hist-ticket-113-2785', 'prod-americano', 1, 12000, 0, '2026-02-20T18:38:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2785-2', 'hist-ticket-113-2785', 'prod-mocha', 1, 16500, 0, '2026-02-20T18:38:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2785', 'hist-ticket-113-2785', 'cash', 28500, 'completed', '2026-02-20T18:38:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2786', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2026-02-20T16:55:45.000Z', '2026-02-20T16:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2786-1', 'hist-ticket-113-2786', 'prod-mocha', 1, 16500, 0, '2026-02-20T16:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2786-2', 'hist-ticket-113-2786', 'prod-mocha', 1, 16500, 0, '2026-02-20T16:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2786-3', 'hist-ticket-113-2786', 'prod-americano', 1, 12000, 0, '2026-02-20T16:55:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2786', 'hist-ticket-113-2786', 'cash', 45000, 'completed', '2026-02-20T16:55:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2787', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-20T14:32:31.000Z', '2026-02-20T14:32:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2787-1', 'hist-ticket-113-2787', 'prod-americano', 1, 12000, 0, '2026-02-20T14:32:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2787-2', 'hist-ticket-113-2787', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T14:32:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2787', 'hist-ticket-113-2787', 'cash', 26500, 'completed', '2026-02-20T14:32:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2788', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-20T10:03:24.000Z', '2026-02-20T10:03:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2788-1', 'hist-ticket-113-2788', 'prod-americano', 1, 12000, 0, '2026-02-20T10:03:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2788-2', 'hist-ticket-113-2788', 'prod-mocha', 1, 16500, 0, '2026-02-20T10:03:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2788-3', 'hist-ticket-113-2788', 'prod-latte', 1, 15000, 0, '2026-02-20T10:03:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2788', 'hist-ticket-113-2788', 'cash', 43500, 'completed', '2026-02-20T10:03:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2789', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-20T09:46:57.000Z', '2026-02-20T09:46:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2789-1', 'hist-ticket-113-2789', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:46:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2789-2', 'hist-ticket-113-2789', 'prod-latte', 1, 15000, 0, '2026-02-20T09:46:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2789-3', 'hist-ticket-113-2789', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:46:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2789', 'hist-ticket-113-2789', 'cash', 48000, 'completed', '2026-02-20T09:46:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2790', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-20T09:33:24.000Z', '2026-02-20T09:33:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2790-1', 'hist-ticket-113-2790', 'prod-latte', 1, 15000, 0, '2026-02-20T09:33:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2790-2', 'hist-ticket-113-2790', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:33:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2790-3', 'hist-ticket-113-2790', 'prod-mocha', 1, 16500, 0, '2026-02-20T09:33:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2790', 'hist-ticket-113-2790', 'cash', 48000, 'completed', '2026-02-20T09:33:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-113-2791', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-02-20T10:44:52.000Z', '2026-02-20T10:44:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2791-1', 'hist-ticket-113-2791', 'prod-cappuccino', 1, 14500, 0, '2026-02-20T10:44:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-113-2791-2', 'hist-ticket-113-2791', 'prod-latte', 1, 15000, 0, '2026-02-20T10:44:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-113-2791', 'hist-ticket-113-2791', 'cash', 29500, 'completed', '2026-02-20T10:44:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2792', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-21T09:31:31.000Z', '2026-02-21T09:31:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2792-1', 'hist-ticket-114-2792', 'prod-latte', 1, 15000, 0, '2026-02-21T09:31:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2792-2', 'hist-ticket-114-2792', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T09:31:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2792-3', 'hist-ticket-114-2792', 'prod-mocha', 1, 16500, 0, '2026-02-21T09:31:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2792', 'hist-ticket-114-2792', 'cash', 46000, 'completed', '2026-02-21T09:31:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2793', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-21T14:59:57.000Z', '2026-02-21T14:59:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2793-1', 'hist-ticket-114-2793', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T14:59:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2793-2', 'hist-ticket-114-2793', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T14:59:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2793', 'hist-ticket-114-2793', 'cash', 29000, 'completed', '2026-02-21T14:59:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2794', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-21T16:54:00.000Z', '2026-02-21T16:54:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2794-1', 'hist-ticket-114-2794', 'prod-mocha', 1, 16500, 0, '2026-02-21T16:54:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2794', 'hist-ticket-114-2794', 'cash', 16500, 'completed', '2026-02-21T16:54:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2795', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-21T16:00:33.000Z', '2026-02-21T16:00:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2795-1', 'hist-ticket-114-2795', 'prod-americano', 1, 12000, 0, '2026-02-21T16:00:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2795-2', 'hist-ticket-114-2795', 'prod-mocha', 1, 16500, 0, '2026-02-21T16:00:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2795', 'hist-ticket-114-2795', 'cash', 28500, 'completed', '2026-02-21T16:00:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2796', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-21T18:36:29.000Z', '2026-02-21T18:36:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2796-1', 'hist-ticket-114-2796', 'prod-latte', 1, 15000, 0, '2026-02-21T18:36:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2796', 'hist-ticket-114-2796', 'cash', 15000, 'completed', '2026-02-21T18:36:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2797', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-21T11:43:53.000Z', '2026-02-21T11:43:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2797-1', 'hist-ticket-114-2797', 'prod-latte', 1, 15000, 0, '2026-02-21T11:43:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2797-2', 'hist-ticket-114-2797', 'prod-americano', 1, 12000, 0, '2026-02-21T11:43:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2797-3', 'hist-ticket-114-2797', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T11:43:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2797-4', 'hist-ticket-114-2797', 'prod-latte', 1, 15000, 0, '2026-02-21T11:43:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2797', 'hist-ticket-114-2797', 'cash', 56500, 'completed', '2026-02-21T11:43:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2798', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-21T17:08:39.000Z', '2026-02-21T17:08:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2798-1', 'hist-ticket-114-2798', 'prod-mocha', 1, 16500, 0, '2026-02-21T17:08:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2798-2', 'hist-ticket-114-2798', 'prod-mocha', 1, 16500, 0, '2026-02-21T17:08:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2798-3', 'hist-ticket-114-2798', 'prod-latte', 1, 15000, 0, '2026-02-21T17:08:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2798-4', 'hist-ticket-114-2798', 'prod-mocha', 1, 16500, 0, '2026-02-21T17:08:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2798', 'hist-ticket-114-2798', 'cash', 64500, 'completed', '2026-02-21T17:08:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2799', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-21T13:38:37.000Z', '2026-02-21T13:38:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2799-1', 'hist-ticket-114-2799', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T13:38:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2799-2', 'hist-ticket-114-2799', 'prod-mocha', 1, 16500, 0, '2026-02-21T13:38:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2799-3', 'hist-ticket-114-2799', 'prod-americano', 1, 12000, 0, '2026-02-21T13:38:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2799', 'hist-ticket-114-2799', 'cash', 43000, 'completed', '2026-02-21T13:38:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2800', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-21T17:14:29.000Z', '2026-02-21T17:14:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2800-1', 'hist-ticket-114-2800', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T17:14:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2800-2', 'hist-ticket-114-2800', 'prod-mocha', 1, 16500, 0, '2026-02-21T17:14:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2800', 'hist-ticket-114-2800', 'cash', 31000, 'completed', '2026-02-21T17:14:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2801', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-21T15:42:25.000Z', '2026-02-21T15:42:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2801-1', 'hist-ticket-114-2801', 'prod-mocha', 1, 16500, 0, '2026-02-21T15:42:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2801', 'hist-ticket-114-2801', 'cash', 16500, 'completed', '2026-02-21T15:42:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2802', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-21T18:53:02.000Z', '2026-02-21T18:53:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2802-1', 'hist-ticket-114-2802', 'prod-mocha', 1, 16500, 0, '2026-02-21T18:53:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2802-2', 'hist-ticket-114-2802', 'prod-latte', 1, 15000, 0, '2026-02-21T18:53:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2802', 'hist-ticket-114-2802', 'cash', 31500, 'completed', '2026-02-21T18:53:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2803', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-21T10:03:01.000Z', '2026-02-21T10:03:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2803-1', 'hist-ticket-114-2803', 'prod-latte', 1, 15000, 0, '2026-02-21T10:03:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2803', 'hist-ticket-114-2803', 'cash', 15000, 'completed', '2026-02-21T10:03:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2804', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-02-21T15:39:59.000Z', '2026-02-21T15:39:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2804-1', 'hist-ticket-114-2804', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T15:39:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2804-2', 'hist-ticket-114-2804', 'prod-americano', 1, 12000, 0, '2026-02-21T15:39:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2804-3', 'hist-ticket-114-2804', 'prod-americano', 1, 12000, 0, '2026-02-21T15:39:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2804-4', 'hist-ticket-114-2804', 'prod-americano', 1, 12000, 0, '2026-02-21T15:39:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2804', 'hist-ticket-114-2804', 'cash', 50500, 'completed', '2026-02-21T15:39:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2805', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-02-21T19:52:32.000Z', '2026-02-21T19:52:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2805-1', 'hist-ticket-114-2805', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T19:52:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2805-2', 'hist-ticket-114-2805', 'prod-mocha', 1, 16500, 0, '2026-02-21T19:52:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2805', 'hist-ticket-114-2805', 'cash', 31000, 'completed', '2026-02-21T19:52:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2806', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-21T09:08:56.000Z', '2026-02-21T09:08:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2806-1', 'hist-ticket-114-2806', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T09:08:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2806-2', 'hist-ticket-114-2806', 'prod-latte', 1, 15000, 0, '2026-02-21T09:08:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2806-3', 'hist-ticket-114-2806', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T09:08:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2806-4', 'hist-ticket-114-2806', 'prod-latte', 1, 15000, 0, '2026-02-21T09:08:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2806', 'hist-ticket-114-2806', 'cash', 59000, 'completed', '2026-02-21T09:08:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2807', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-21T12:32:27.000Z', '2026-02-21T12:32:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2807-1', 'hist-ticket-114-2807', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T12:32:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2807-2', 'hist-ticket-114-2807', 'prod-americano', 1, 12000, 0, '2026-02-21T12:32:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2807', 'hist-ticket-114-2807', 'cash', 26500, 'completed', '2026-02-21T12:32:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2808', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-21T12:34:09.000Z', '2026-02-21T12:34:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2808-1', 'hist-ticket-114-2808', 'prod-mocha', 1, 16500, 0, '2026-02-21T12:34:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2808', 'hist-ticket-114-2808', 'cash', 16500, 'completed', '2026-02-21T12:34:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2809', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-21T18:44:52.000Z', '2026-02-21T18:44:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2809-1', 'hist-ticket-114-2809', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T18:44:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2809', 'hist-ticket-114-2809', 'cash', 14500, 'completed', '2026-02-21T18:44:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2810', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-21T19:14:07.000Z', '2026-02-21T19:14:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2810-1', 'hist-ticket-114-2810', 'prod-americano', 1, 12000, 0, '2026-02-21T19:14:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2810-2', 'hist-ticket-114-2810', 'prod-mocha', 1, 16500, 0, '2026-02-21T19:14:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2810-3', 'hist-ticket-114-2810', 'prod-americano', 1, 12000, 0, '2026-02-21T19:14:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2810-4', 'hist-ticket-114-2810', 'prod-mocha', 1, 16500, 0, '2026-02-21T19:14:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2810', 'hist-ticket-114-2810', 'cash', 57000, 'completed', '2026-02-21T19:14:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2811', o.id, r.id, 'paid', 'dine_in', 'yellow', 5, 'Great coffee!', u.id, '2026-02-21T11:42:44.000Z', '2026-02-21T11:42:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2811-1', 'hist-ticket-114-2811', 'prod-latte', 1, 15000, 0, '2026-02-21T11:42:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2811', 'hist-ticket-114-2811', 'cash', 15000, 'completed', '2026-02-21T11:42:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2812', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-21T11:05:56.000Z', '2026-02-21T11:05:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2812-1', 'hist-ticket-114-2812', 'prod-americano', 1, 12000, 0, '2026-02-21T11:05:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2812', 'hist-ticket-114-2812', 'cash', 12000, 'completed', '2026-02-21T11:05:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2813', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-21T13:46:05.000Z', '2026-02-21T13:46:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2813-1', 'hist-ticket-114-2813', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T13:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2813-2', 'hist-ticket-114-2813', 'prod-americano', 1, 12000, 0, '2026-02-21T13:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2813-3', 'hist-ticket-114-2813', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T13:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2813-4', 'hist-ticket-114-2813', 'prod-americano', 1, 12000, 0, '2026-02-21T13:46:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2813', 'hist-ticket-114-2813', 'cash', 53000, 'completed', '2026-02-21T13:46:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2814', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-21T10:12:45.000Z', '2026-02-21T10:12:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2814-1', 'hist-ticket-114-2814', 'prod-mocha', 1, 16500, 0, '2026-02-21T10:12:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2814', 'hist-ticket-114-2814', 'cash', 16500, 'completed', '2026-02-21T10:12:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2815', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2026-02-21T19:49:44.000Z', '2026-02-21T19:49:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2815-1', 'hist-ticket-114-2815', 'prod-americano', 1, 12000, 0, '2026-02-21T19:49:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2815-2', 'hist-ticket-114-2815', 'prod-americano', 1, 12000, 0, '2026-02-21T19:49:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2815-3', 'hist-ticket-114-2815', 'prod-americano', 1, 12000, 0, '2026-02-21T19:49:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2815', 'hist-ticket-114-2815', 'cash', 36000, 'completed', '2026-02-21T19:49:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2816', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-21T15:01:12.000Z', '2026-02-21T15:01:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2816-1', 'hist-ticket-114-2816', 'prod-latte', 1, 15000, 0, '2026-02-21T15:01:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2816-2', 'hist-ticket-114-2816', 'prod-latte', 1, 15000, 0, '2026-02-21T15:01:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2816', 'hist-ticket-114-2816', 'cash', 30000, 'completed', '2026-02-21T15:01:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2817', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-21T19:39:46.000Z', '2026-02-21T19:39:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2817-1', 'hist-ticket-114-2817', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T19:39:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2817-2', 'hist-ticket-114-2817', 'prod-mocha', 1, 16500, 0, '2026-02-21T19:39:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2817-3', 'hist-ticket-114-2817', 'prod-americano', 1, 12000, 0, '2026-02-21T19:39:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2817-4', 'hist-ticket-114-2817', 'prod-latte', 1, 15000, 0, '2026-02-21T19:39:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2817', 'hist-ticket-114-2817', 'cash', 58000, 'completed', '2026-02-21T19:39:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2818', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-21T10:28:25.000Z', '2026-02-21T10:28:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2818-1', 'hist-ticket-114-2818', 'prod-americano', 1, 12000, 0, '2026-02-21T10:28:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2818', 'hist-ticket-114-2818', 'cash', 12000, 'completed', '2026-02-21T10:28:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2819', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-21T16:27:25.000Z', '2026-02-21T16:27:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2819-1', 'hist-ticket-114-2819', 'prod-americano', 1, 12000, 0, '2026-02-21T16:27:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2819-2', 'hist-ticket-114-2819', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T16:27:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2819-3', 'hist-ticket-114-2819', 'prod-americano', 1, 12000, 0, '2026-02-21T16:27:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2819', 'hist-ticket-114-2819', 'cash', 38500, 'completed', '2026-02-21T16:27:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2820', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-21T08:45:37.000Z', '2026-02-21T08:45:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2820-1', 'hist-ticket-114-2820', 'prod-americano', 1, 12000, 0, '2026-02-21T08:45:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2820', 'hist-ticket-114-2820', 'cash', 12000, 'completed', '2026-02-21T08:45:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2821', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2026-02-21T10:24:07.000Z', '2026-02-21T10:24:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2821-1', 'hist-ticket-114-2821', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T10:24:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2821', 'hist-ticket-114-2821', 'cash', 14500, 'completed', '2026-02-21T10:24:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2822', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-21T17:14:01.000Z', '2026-02-21T17:14:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2822-1', 'hist-ticket-114-2822', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T17:14:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2822-2', 'hist-ticket-114-2822', 'prod-latte', 1, 15000, 0, '2026-02-21T17:14:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2822-3', 'hist-ticket-114-2822', 'prod-mocha', 1, 16500, 0, '2026-02-21T17:14:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2822', 'hist-ticket-114-2822', 'cash', 46000, 'completed', '2026-02-21T17:14:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2823', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-21T11:36:14.000Z', '2026-02-21T11:36:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2823-1', 'hist-ticket-114-2823', 'prod-americano', 1, 12000, 0, '2026-02-21T11:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2823-2', 'hist-ticket-114-2823', 'prod-mocha', 1, 16500, 0, '2026-02-21T11:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2823-3', 'hist-ticket-114-2823', 'prod-americano', 1, 12000, 0, '2026-02-21T11:36:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2823-4', 'hist-ticket-114-2823', 'prod-americano', 1, 12000, 0, '2026-02-21T11:36:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2823', 'hist-ticket-114-2823', 'cash', 52500, 'completed', '2026-02-21T11:36:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2824', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-21T11:57:53.000Z', '2026-02-21T11:57:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2824-1', 'hist-ticket-114-2824', 'prod-latte', 1, 15000, 0, '2026-02-21T11:57:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2824-2', 'hist-ticket-114-2824', 'prod-mocha', 1, 16500, 0, '2026-02-21T11:57:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2824', 'hist-ticket-114-2824', 'cash', 31500, 'completed', '2026-02-21T11:57:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2825', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-21T08:20:10.000Z', '2026-02-21T08:20:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2825-1', 'hist-ticket-114-2825', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T08:20:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2825-2', 'hist-ticket-114-2825', 'prod-americano', 1, 12000, 0, '2026-02-21T08:20:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2825', 'hist-ticket-114-2825', 'cash', 26500, 'completed', '2026-02-21T08:20:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2826', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-02-21T15:44:14.000Z', '2026-02-21T15:44:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2826-1', 'hist-ticket-114-2826', 'prod-latte', 1, 15000, 0, '2026-02-21T15:44:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2826', 'hist-ticket-114-2826', 'cash', 15000, 'completed', '2026-02-21T15:44:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2827', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-21T15:59:28.000Z', '2026-02-21T15:59:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2827-1', 'hist-ticket-114-2827', 'prod-mocha', 1, 16500, 0, '2026-02-21T15:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2827-2', 'hist-ticket-114-2827', 'prod-americano', 1, 12000, 0, '2026-02-21T15:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2827-3', 'hist-ticket-114-2827', 'prod-latte', 1, 15000, 0, '2026-02-21T15:59:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2827-4', 'hist-ticket-114-2827', 'prod-latte', 1, 15000, 0, '2026-02-21T15:59:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2827', 'hist-ticket-114-2827', 'cash', 58500, 'completed', '2026-02-21T15:59:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2828', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-21T14:28:39.000Z', '2026-02-21T14:28:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2828-1', 'hist-ticket-114-2828', 'prod-mocha', 1, 16500, 0, '2026-02-21T14:28:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2828-2', 'hist-ticket-114-2828', 'prod-americano', 1, 12000, 0, '2026-02-21T14:28:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2828-3', 'hist-ticket-114-2828', 'prod-mocha', 1, 16500, 0, '2026-02-21T14:28:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2828', 'hist-ticket-114-2828', 'cash', 45000, 'completed', '2026-02-21T14:28:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2829', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-21T08:51:13.000Z', '2026-02-21T08:51:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2829-1', 'hist-ticket-114-2829', 'prod-americano', 1, 12000, 0, '2026-02-21T08:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2829-2', 'hist-ticket-114-2829', 'prod-mocha', 1, 16500, 0, '2026-02-21T08:51:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2829-3', 'hist-ticket-114-2829', 'prod-latte', 1, 15000, 0, '2026-02-21T08:51:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2829', 'hist-ticket-114-2829', 'cash', 43500, 'completed', '2026-02-21T08:51:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2830', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-21T19:49:14.000Z', '2026-02-21T19:49:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2830-1', 'hist-ticket-114-2830', 'prod-mocha', 1, 16500, 0, '2026-02-21T19:49:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2830-2', 'hist-ticket-114-2830', 'prod-americano', 1, 12000, 0, '2026-02-21T19:49:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2830', 'hist-ticket-114-2830', 'cash', 28500, 'completed', '2026-02-21T19:49:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2831', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-21T15:20:05.000Z', '2026-02-21T15:20:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2831-1', 'hist-ticket-114-2831', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T15:20:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2831-2', 'hist-ticket-114-2831', 'prod-cappuccino', 1, 14500, 0, '2026-02-21T15:20:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2831-3', 'hist-ticket-114-2831', 'prod-americano', 1, 12000, 0, '2026-02-21T15:20:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2831', 'hist-ticket-114-2831', 'cash', 41000, 'completed', '2026-02-21T15:20:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2832', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-21T08:49:48.000Z', '2026-02-21T08:49:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2832-1', 'hist-ticket-114-2832', 'prod-latte', 1, 15000, 0, '2026-02-21T08:49:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2832-2', 'hist-ticket-114-2832', 'prod-latte', 1, 15000, 0, '2026-02-21T08:49:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2832-3', 'hist-ticket-114-2832', 'prod-latte', 1, 15000, 0, '2026-02-21T08:49:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2832', 'hist-ticket-114-2832', 'cash', 45000, 'completed', '2026-02-21T08:49:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-114-2833', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-21T10:21:22.000Z', '2026-02-21T10:21:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2833-1', 'hist-ticket-114-2833', 'prod-latte', 1, 15000, 0, '2026-02-21T10:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2833-2', 'hist-ticket-114-2833', 'prod-latte', 1, 15000, 0, '2026-02-21T10:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2833-3', 'hist-ticket-114-2833', 'prod-americano', 1, 12000, 0, '2026-02-21T10:21:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-114-2833-4', 'hist-ticket-114-2833', 'prod-mocha', 1, 16500, 0, '2026-02-21T10:21:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-114-2833', 'hist-ticket-114-2833', 'cash', 58500, 'completed', '2026-02-21T10:21:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2834', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-22T13:23:51.000Z', '2026-02-22T13:23:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2834-1', 'hist-ticket-115-2834', 'prod-mocha', 1, 16500, 0, '2026-02-22T13:23:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2834', 'hist-ticket-115-2834', 'cash', 16500, 'completed', '2026-02-22T13:23:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2835', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-22T13:38:45.000Z', '2026-02-22T13:38:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2835-1', 'hist-ticket-115-2835', 'prod-mocha', 1, 16500, 0, '2026-02-22T13:38:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2835-2', 'hist-ticket-115-2835', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T13:38:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2835-3', 'hist-ticket-115-2835', 'prod-americano', 1, 12000, 0, '2026-02-22T13:38:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2835', 'hist-ticket-115-2835', 'cash', 43000, 'completed', '2026-02-22T13:38:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2836', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-22T12:13:04.000Z', '2026-02-22T12:13:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2836-1', 'hist-ticket-115-2836', 'prod-latte', 1, 15000, 0, '2026-02-22T12:13:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2836-2', 'hist-ticket-115-2836', 'prod-mocha', 1, 16500, 0, '2026-02-22T12:13:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2836', 'hist-ticket-115-2836', 'cash', 31500, 'completed', '2026-02-22T12:13:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2837', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-22T09:26:13.000Z', '2026-02-22T09:26:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2837-1', 'hist-ticket-115-2837', 'prod-mocha', 1, 16500, 0, '2026-02-22T09:26:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2837-2', 'hist-ticket-115-2837', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T09:26:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2837-3', 'hist-ticket-115-2837', 'prod-latte', 1, 15000, 0, '2026-02-22T09:26:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2837', 'hist-ticket-115-2837', 'cash', 46000, 'completed', '2026-02-22T09:26:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2838', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-22T10:16:56.000Z', '2026-02-22T10:16:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2838-1', 'hist-ticket-115-2838', 'prod-latte', 1, 15000, 0, '2026-02-22T10:16:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2838', 'hist-ticket-115-2838', 'cash', 15000, 'completed', '2026-02-22T10:16:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2839', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-02-22T15:15:30.000Z', '2026-02-22T15:15:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2839-1', 'hist-ticket-115-2839', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T15:15:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2839-2', 'hist-ticket-115-2839', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T15:15:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2839-3', 'hist-ticket-115-2839', 'prod-americano', 1, 12000, 0, '2026-02-22T15:15:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2839', 'hist-ticket-115-2839', 'cash', 41000, 'completed', '2026-02-22T15:15:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2840', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-22T09:50:50.000Z', '2026-02-22T09:50:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2840-1', 'hist-ticket-115-2840', 'prod-americano', 1, 12000, 0, '2026-02-22T09:50:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2840-2', 'hist-ticket-115-2840', 'prod-latte', 1, 15000, 0, '2026-02-22T09:50:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2840-3', 'hist-ticket-115-2840', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T09:50:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2840', 'hist-ticket-115-2840', 'cash', 41500, 'completed', '2026-02-22T09:50:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2841', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-22T09:59:40.000Z', '2026-02-22T09:59:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2841-1', 'hist-ticket-115-2841', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T09:59:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2841-2', 'hist-ticket-115-2841', 'prod-mocha', 1, 16500, 0, '2026-02-22T09:59:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2841-3', 'hist-ticket-115-2841', 'prod-mocha', 1, 16500, 0, '2026-02-22T09:59:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2841', 'hist-ticket-115-2841', 'cash', 47500, 'completed', '2026-02-22T09:59:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2842', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-22T14:53:57.000Z', '2026-02-22T14:53:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2842-1', 'hist-ticket-115-2842', 'prod-mocha', 1, 16500, 0, '2026-02-22T14:53:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2842-2', 'hist-ticket-115-2842', 'prod-mocha', 1, 16500, 0, '2026-02-22T14:53:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2842-3', 'hist-ticket-115-2842', 'prod-americano', 1, 12000, 0, '2026-02-22T14:53:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2842', 'hist-ticket-115-2842', 'cash', 45000, 'completed', '2026-02-22T14:53:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2843', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-22T17:47:08.000Z', '2026-02-22T17:47:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2843-1', 'hist-ticket-115-2843', 'prod-americano', 1, 12000, 0, '2026-02-22T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2843-2', 'hist-ticket-115-2843', 'prod-americano', 1, 12000, 0, '2026-02-22T17:47:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2843-3', 'hist-ticket-115-2843', 'prod-mocha', 1, 16500, 0, '2026-02-22T17:47:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2843', 'hist-ticket-115-2843', 'cash', 40500, 'completed', '2026-02-22T17:47:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2844', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2026-02-22T13:13:08.000Z', '2026-02-22T13:13:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2844-1', 'hist-ticket-115-2844', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T13:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2844-2', 'hist-ticket-115-2844', 'prod-latte', 1, 15000, 0, '2026-02-22T13:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2844-3', 'hist-ticket-115-2844', 'prod-mocha', 1, 16500, 0, '2026-02-22T13:13:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2844-4', 'hist-ticket-115-2844', 'prod-americano', 1, 12000, 0, '2026-02-22T13:13:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2844', 'hist-ticket-115-2844', 'cash', 58000, 'completed', '2026-02-22T13:13:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2845', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-22T09:20:41.000Z', '2026-02-22T09:20:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2845-1', 'hist-ticket-115-2845', 'prod-americano', 1, 12000, 0, '2026-02-22T09:20:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2845', 'hist-ticket-115-2845', 'cash', 12000, 'completed', '2026-02-22T09:20:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2846', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-22T10:01:13.000Z', '2026-02-22T10:01:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2846-1', 'hist-ticket-115-2846', 'prod-mocha', 1, 16500, 0, '2026-02-22T10:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2846-2', 'hist-ticket-115-2846', 'prod-americano', 1, 12000, 0, '2026-02-22T10:01:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2846-3', 'hist-ticket-115-2846', 'prod-latte', 1, 15000, 0, '2026-02-22T10:01:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2846', 'hist-ticket-115-2846', 'cash', 43500, 'completed', '2026-02-22T10:01:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2847', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-22T08:28:49.000Z', '2026-02-22T08:28:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2847-1', 'hist-ticket-115-2847', 'prod-latte', 1, 15000, 0, '2026-02-22T08:28:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2847', 'hist-ticket-115-2847', 'cash', 15000, 'completed', '2026-02-22T08:28:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2848', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-22T17:07:42.000Z', '2026-02-22T17:07:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2848-1', 'hist-ticket-115-2848', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T17:07:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2848-2', 'hist-ticket-115-2848', 'prod-latte', 1, 15000, 0, '2026-02-22T17:07:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2848-3', 'hist-ticket-115-2848', 'prod-mocha', 1, 16500, 0, '2026-02-22T17:07:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2848', 'hist-ticket-115-2848', 'cash', 46000, 'completed', '2026-02-22T17:07:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2849', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-22T19:36:00.000Z', '2026-02-22T19:36:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2849-1', 'hist-ticket-115-2849', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T19:36:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2849-2', 'hist-ticket-115-2849', 'prod-mocha', 1, 16500, 0, '2026-02-22T19:36:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2849', 'hist-ticket-115-2849', 'cash', 31000, 'completed', '2026-02-22T19:36:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2850', o.id, r.id, 'paid', 'dine_in', 'purple', 3, 'Good.', u.id, '2026-02-22T12:03:58.000Z', '2026-02-22T12:03:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2850-1', 'hist-ticket-115-2850', 'prod-latte', 1, 15000, 0, '2026-02-22T12:03:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2850', 'hist-ticket-115-2850', 'cash', 15000, 'completed', '2026-02-22T12:03:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2851', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2026-02-22T13:34:10.000Z', '2026-02-22T13:34:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2851-1', 'hist-ticket-115-2851', 'prod-americano', 1, 12000, 0, '2026-02-22T13:34:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2851-2', 'hist-ticket-115-2851', 'prod-americano', 1, 12000, 0, '2026-02-22T13:34:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2851-3', 'hist-ticket-115-2851', 'prod-latte', 1, 15000, 0, '2026-02-22T13:34:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2851-4', 'hist-ticket-115-2851', 'prod-mocha', 1, 16500, 0, '2026-02-22T13:34:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2851', 'hist-ticket-115-2851', 'cash', 55500, 'completed', '2026-02-22T13:34:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2852', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-22T08:13:26.000Z', '2026-02-22T08:13:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2852-1', 'hist-ticket-115-2852', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:13:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2852-2', 'hist-ticket-115-2852', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:13:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2852-3', 'hist-ticket-115-2852', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T08:13:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2852', 'hist-ticket-115-2852', 'cash', 47500, 'completed', '2026-02-22T08:13:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2853', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-22T14:47:09.000Z', '2026-02-22T14:47:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2853-1', 'hist-ticket-115-2853', 'prod-mocha', 1, 16500, 0, '2026-02-22T14:47:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2853-2', 'hist-ticket-115-2853', 'prod-mocha', 1, 16500, 0, '2026-02-22T14:47:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2853-3', 'hist-ticket-115-2853', 'prod-americano', 1, 12000, 0, '2026-02-22T14:47:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2853', 'hist-ticket-115-2853', 'cash', 45000, 'completed', '2026-02-22T14:47:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2854', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-22T15:16:35.000Z', '2026-02-22T15:16:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2854-1', 'hist-ticket-115-2854', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T15:16:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2854-2', 'hist-ticket-115-2854', 'prod-mocha', 1, 16500, 0, '2026-02-22T15:16:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2854-3', 'hist-ticket-115-2854', 'prod-latte', 1, 15000, 0, '2026-02-22T15:16:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2854-4', 'hist-ticket-115-2854', 'prod-latte', 1, 15000, 0, '2026-02-22T15:16:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2854', 'hist-ticket-115-2854', 'cash', 61000, 'completed', '2026-02-22T15:16:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2855', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-22T08:30:58.000Z', '2026-02-22T08:30:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2855-1', 'hist-ticket-115-2855', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2855-2', 'hist-ticket-115-2855', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:30:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2855-3', 'hist-ticket-115-2855', 'prod-latte', 1, 15000, 0, '2026-02-22T08:30:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2855', 'hist-ticket-115-2855', 'cash', 48000, 'completed', '2026-02-22T08:30:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2856', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2026-02-22T10:27:32.000Z', '2026-02-22T10:27:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2856-1', 'hist-ticket-115-2856', 'prod-americano', 1, 12000, 0, '2026-02-22T10:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2856-2', 'hist-ticket-115-2856', 'prod-latte', 1, 15000, 0, '2026-02-22T10:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2856-3', 'hist-ticket-115-2856', 'prod-americano', 1, 12000, 0, '2026-02-22T10:27:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2856-4', 'hist-ticket-115-2856', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T10:27:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2856', 'hist-ticket-115-2856', 'cash', 53500, 'completed', '2026-02-22T10:27:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2857', o.id, r.id, 'paid', 'takeout', 'green', 3, 'Good.', u.id, '2026-02-22T11:05:23.000Z', '2026-02-22T11:05:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2857-1', 'hist-ticket-115-2857', 'prod-americano', 1, 12000, 0, '2026-02-22T11:05:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2857-2', 'hist-ticket-115-2857', 'prod-latte', 1, 15000, 0, '2026-02-22T11:05:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2857-3', 'hist-ticket-115-2857', 'prod-americano', 1, 12000, 0, '2026-02-22T11:05:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2857-4', 'hist-ticket-115-2857', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T11:05:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2857', 'hist-ticket-115-2857', 'cash', 53500, 'completed', '2026-02-22T11:05:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2858', o.id, r.id, 'paid', 'dine_in', 'yellow', 4, 'Good.', u.id, '2026-02-22T11:37:47.000Z', '2026-02-22T11:37:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2858-1', 'hist-ticket-115-2858', 'prod-latte', 1, 15000, 0, '2026-02-22T11:37:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2858-2', 'hist-ticket-115-2858', 'prod-latte', 1, 15000, 0, '2026-02-22T11:37:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2858-3', 'hist-ticket-115-2858', 'prod-mocha', 1, 16500, 0, '2026-02-22T11:37:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2858', 'hist-ticket-115-2858', 'cash', 46500, 'completed', '2026-02-22T11:37:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2859', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2026-02-22T12:56:30.000Z', '2026-02-22T12:56:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2859-1', 'hist-ticket-115-2859', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T12:56:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2859', 'hist-ticket-115-2859', 'cash', 14500, 'completed', '2026-02-22T12:56:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2860', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-22T08:44:44.000Z', '2026-02-22T08:44:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2860-1', 'hist-ticket-115-2860', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:44:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2860-2', 'hist-ticket-115-2860', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:44:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2860', 'hist-ticket-115-2860', 'cash', 33000, 'completed', '2026-02-22T08:44:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2861', o.id, r.id, 'paid', 'dine_in', 'green', 5, 'Great coffee!', u.id, '2026-02-22T18:54:49.000Z', '2026-02-22T18:54:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2861-1', 'hist-ticket-115-2861', 'prod-latte', 1, 15000, 0, '2026-02-22T18:54:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2861-2', 'hist-ticket-115-2861', 'prod-latte', 1, 15000, 0, '2026-02-22T18:54:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2861', 'hist-ticket-115-2861', 'cash', 30000, 'completed', '2026-02-22T18:54:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2862', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-22T19:59:26.000Z', '2026-02-22T19:59:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2862-1', 'hist-ticket-115-2862', 'prod-latte', 1, 15000, 0, '2026-02-22T19:59:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2862-2', 'hist-ticket-115-2862', 'prod-americano', 1, 12000, 0, '2026-02-22T19:59:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2862-3', 'hist-ticket-115-2862', 'prod-latte', 1, 15000, 0, '2026-02-22T19:59:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2862', 'hist-ticket-115-2862', 'cash', 42000, 'completed', '2026-02-22T19:59:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2863', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2026-02-22T08:06:35.000Z', '2026-02-22T08:06:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2863-1', 'hist-ticket-115-2863', 'prod-latte', 1, 15000, 0, '2026-02-22T08:06:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2863-2', 'hist-ticket-115-2863', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:06:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2863', 'hist-ticket-115-2863', 'cash', 31500, 'completed', '2026-02-22T08:06:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2864', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-22T09:56:29.000Z', '2026-02-22T09:56:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2864-1', 'hist-ticket-115-2864', 'prod-latte', 1, 15000, 0, '2026-02-22T09:56:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2864-2', 'hist-ticket-115-2864', 'prod-mocha', 1, 16500, 0, '2026-02-22T09:56:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2864-3', 'hist-ticket-115-2864', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T09:56:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2864-4', 'hist-ticket-115-2864', 'prod-latte', 1, 15000, 0, '2026-02-22T09:56:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2864', 'hist-ticket-115-2864', 'cash', 61000, 'completed', '2026-02-22T09:56:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2865', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-02-22T08:37:10.000Z', '2026-02-22T08:37:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2865-1', 'hist-ticket-115-2865', 'prod-americano', 1, 12000, 0, '2026-02-22T08:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2865-2', 'hist-ticket-115-2865', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2865-3', 'hist-ticket-115-2865', 'prod-mocha', 1, 16500, 0, '2026-02-22T08:37:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2865-4', 'hist-ticket-115-2865', 'prod-americano', 1, 12000, 0, '2026-02-22T08:37:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2865', 'hist-ticket-115-2865', 'cash', 57000, 'completed', '2026-02-22T08:37:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2866', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-22T11:31:18.000Z', '2026-02-22T11:31:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2866-1', 'hist-ticket-115-2866', 'prod-latte', 1, 15000, 0, '2026-02-22T11:31:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2866', 'hist-ticket-115-2866', 'cash', 15000, 'completed', '2026-02-22T11:31:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2867', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2026-02-22T09:41:07.000Z', '2026-02-22T09:41:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2867-1', 'hist-ticket-115-2867', 'prod-cappuccino', 1, 14500, 0, '2026-02-22T09:41:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2867-2', 'hist-ticket-115-2867', 'prod-mocha', 1, 16500, 0, '2026-02-22T09:41:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2867', 'hist-ticket-115-2867', 'cash', 31000, 'completed', '2026-02-22T09:41:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2868', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-22T10:38:16.000Z', '2026-02-22T10:38:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2868-1', 'hist-ticket-115-2868', 'prod-mocha', 1, 16500, 0, '2026-02-22T10:38:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2868', 'hist-ticket-115-2868', 'cash', 16500, 'completed', '2026-02-22T10:38:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-115-2869', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-22T13:19:53.000Z', '2026-02-22T13:19:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2869-1', 'hist-ticket-115-2869', 'prod-americano', 1, 12000, 0, '2026-02-22T13:19:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-115-2869-2', 'hist-ticket-115-2869', 'prod-latte', 1, 15000, 0, '2026-02-22T13:19:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-115-2869', 'hist-ticket-115-2869', 'cash', 27000, 'completed', '2026-02-22T13:19:53.000Z');