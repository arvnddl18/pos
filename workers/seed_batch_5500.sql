INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1228-1', 'hist-ticket-51-1228', 'prod-americano', 1, 12000, 0, '2025-12-20T11:30:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1228', 'hist-ticket-51-1228', 'cash', 12000, 'completed', '2025-12-20T11:30:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1229', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-20T13:03:30.000Z', '2025-12-20T13:03:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1229-1', 'hist-ticket-51-1229', 'prod-americano', 1, 12000, 0, '2025-12-20T13:03:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1229-2', 'hist-ticket-51-1229', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:03:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1229', 'hist-ticket-51-1229', 'cash', 26500, 'completed', '2025-12-20T13:03:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1230', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-20T11:56:22.000Z', '2025-12-20T11:56:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1230-1', 'hist-ticket-51-1230', 'prod-latte', 1, 15000, 0, '2025-12-20T11:56:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1230-2', 'hist-ticket-51-1230', 'prod-latte', 1, 15000, 0, '2025-12-20T11:56:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1230', 'hist-ticket-51-1230', 'cash', 30000, 'completed', '2025-12-20T11:56:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1231', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-20T13:03:48.000Z', '2025-12-20T13:03:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1231-1', 'hist-ticket-51-1231', 'prod-americano', 1, 12000, 0, '2025-12-20T13:03:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1231-2', 'hist-ticket-51-1231', 'prod-americano', 1, 12000, 0, '2025-12-20T13:03:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1231', 'hist-ticket-51-1231', 'cash', 24000, 'completed', '2025-12-20T13:03:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1232', o.id, r.id, 'paid', 'dine_in', 'blue', 5, 'Great coffee!', u.id, '2025-12-20T16:58:43.000Z', '2025-12-20T16:58:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1232-1', 'hist-ticket-51-1232', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T16:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1232-2', 'hist-ticket-51-1232', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T16:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1232-3', 'hist-ticket-51-1232', 'prod-americano', 1, 12000, 0, '2025-12-20T16:58:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1232-4', 'hist-ticket-51-1232', 'prod-mocha', 1, 16500, 0, '2025-12-20T16:58:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1232', 'hist-ticket-51-1232', 'cash', 57500, 'completed', '2025-12-20T16:58:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1233', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-12-20T12:03:41.000Z', '2025-12-20T12:03:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1233-1', 'hist-ticket-51-1233', 'prod-mocha', 1, 16500, 0, '2025-12-20T12:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1233-2', 'hist-ticket-51-1233', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T12:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1233-3', 'hist-ticket-51-1233', 'prod-mocha', 1, 16500, 0, '2025-12-20T12:03:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1233-4', 'hist-ticket-51-1233', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T12:03:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1233', 'hist-ticket-51-1233', 'cash', 62000, 'completed', '2025-12-20T12:03:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1234', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-20T13:11:23.000Z', '2025-12-20T13:11:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1234-1', 'hist-ticket-51-1234', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:11:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1234-2', 'hist-ticket-51-1234', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T13:11:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1234-3', 'hist-ticket-51-1234', 'prod-latte', 1, 15000, 0, '2025-12-20T13:11:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1234-4', 'hist-ticket-51-1234', 'prod-mocha', 1, 16500, 0, '2025-12-20T13:11:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1234', 'hist-ticket-51-1234', 'cash', 60500, 'completed', '2025-12-20T13:11:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1235', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-20T09:00:22.000Z', '2025-12-20T09:00:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1235-1', 'hist-ticket-51-1235', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T09:00:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1235-2', 'hist-ticket-51-1235', 'prod-mocha', 1, 16500, 0, '2025-12-20T09:00:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1235', 'hist-ticket-51-1235', 'cash', 31000, 'completed', '2025-12-20T09:00:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1236', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-20T08:56:01.000Z', '2025-12-20T08:56:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1236-1', 'hist-ticket-51-1236', 'prod-americano', 1, 12000, 0, '2025-12-20T08:56:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1236-2', 'hist-ticket-51-1236', 'prod-americano', 1, 12000, 0, '2025-12-20T08:56:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1236-3', 'hist-ticket-51-1236', 'prod-cappuccino', 1, 14500, 0, '2025-12-20T08:56:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1236-4', 'hist-ticket-51-1236', 'prod-americano', 1, 12000, 0, '2025-12-20T08:56:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1236', 'hist-ticket-51-1236', 'cash', 50500, 'completed', '2025-12-20T08:56:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1237', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-20T11:13:46.000Z', '2025-12-20T11:13:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1237-1', 'hist-ticket-51-1237', 'prod-mocha', 1, 16500, 0, '2025-12-20T11:13:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1237-2', 'hist-ticket-51-1237', 'prod-mocha', 1, 16500, 0, '2025-12-20T11:13:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1237-3', 'hist-ticket-51-1237', 'prod-americano', 1, 12000, 0, '2025-12-20T11:13:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1237', 'hist-ticket-51-1237', 'cash', 45000, 'completed', '2025-12-20T11:13:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1238', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-20T15:51:55.000Z', '2025-12-20T15:51:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1238-1', 'hist-ticket-51-1238', 'prod-latte', 1, 15000, 0, '2025-12-20T15:51:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1238-2', 'hist-ticket-51-1238', 'prod-americano', 1, 12000, 0, '2025-12-20T15:51:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1238', 'hist-ticket-51-1238', 'cash', 27000, 'completed', '2025-12-20T15:51:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-51-1239', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-20T09:24:56.000Z', '2025-12-20T09:24:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1239-1', 'hist-ticket-51-1239', 'prod-americano', 1, 12000, 0, '2025-12-20T09:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1239-2', 'hist-ticket-51-1239', 'prod-latte', 1, 15000, 0, '2025-12-20T09:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1239-3', 'hist-ticket-51-1239', 'prod-mocha', 1, 16500, 0, '2025-12-20T09:24:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-51-1239-4', 'hist-ticket-51-1239', 'prod-latte', 1, 15000, 0, '2025-12-20T09:24:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-51-1239', 'hist-ticket-51-1239', 'cash', 58500, 'completed', '2025-12-20T09:24:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1240', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-21T17:32:14.000Z', '2025-12-21T17:32:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1240-1', 'hist-ticket-52-1240', 'prod-americano', 1, 12000, 0, '2025-12-21T17:32:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1240', 'hist-ticket-52-1240', 'cash', 12000, 'completed', '2025-12-21T17:32:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1241', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-21T13:15:22.000Z', '2025-12-21T13:15:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1241-1', 'hist-ticket-52-1241', 'prod-latte', 1, 15000, 0, '2025-12-21T13:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1241-2', 'hist-ticket-52-1241', 'prod-americano', 1, 12000, 0, '2025-12-21T13:15:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1241-3', 'hist-ticket-52-1241', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T13:15:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1241', 'hist-ticket-52-1241', 'cash', 41500, 'completed', '2025-12-21T13:15:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1242', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-21T14:00:00.000Z', '2025-12-21T14:00:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1242-1', 'hist-ticket-52-1242', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T14:00:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1242', 'hist-ticket-52-1242', 'cash', 14500, 'completed', '2025-12-21T14:00:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1243', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-21T08:26:26.000Z', '2025-12-21T08:26:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1243-1', 'hist-ticket-52-1243', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T08:26:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1243-2', 'hist-ticket-52-1243', 'prod-latte', 1, 15000, 0, '2025-12-21T08:26:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1243', 'hist-ticket-52-1243', 'cash', 29500, 'completed', '2025-12-21T08:26:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1244', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-21T11:06:12.000Z', '2025-12-21T11:06:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1244-1', 'hist-ticket-52-1244', 'prod-americano', 1, 12000, 0, '2025-12-21T11:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1244-2', 'hist-ticket-52-1244', 'prod-mocha', 1, 16500, 0, '2025-12-21T11:06:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1244-3', 'hist-ticket-52-1244', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T11:06:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1244', 'hist-ticket-52-1244', 'cash', 43000, 'completed', '2025-12-21T11:06:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1245', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-21T17:11:18.000Z', '2025-12-21T17:11:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1245-1', 'hist-ticket-52-1245', 'prod-americano', 1, 12000, 0, '2025-12-21T17:11:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1245', 'hist-ticket-52-1245', 'cash', 12000, 'completed', '2025-12-21T17:11:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1246', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-21T09:55:58.000Z', '2025-12-21T09:55:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1246-1', 'hist-ticket-52-1246', 'prod-latte', 1, 15000, 0, '2025-12-21T09:55:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1246-2', 'hist-ticket-52-1246', 'prod-americano', 1, 12000, 0, '2025-12-21T09:55:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1246', 'hist-ticket-52-1246', 'cash', 27000, 'completed', '2025-12-21T09:55:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1247', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2025-12-21T11:47:29.000Z', '2025-12-21T11:47:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1247-1', 'hist-ticket-52-1247', 'prod-latte', 1, 15000, 0, '2025-12-21T11:47:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1247-2', 'hist-ticket-52-1247', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T11:47:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1247', 'hist-ticket-52-1247', 'cash', 29500, 'completed', '2025-12-21T11:47:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1248', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-21T10:35:09.000Z', '2025-12-21T10:35:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1248-1', 'hist-ticket-52-1248', 'prod-americano', 1, 12000, 0, '2025-12-21T10:35:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1248-2', 'hist-ticket-52-1248', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T10:35:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1248-3', 'hist-ticket-52-1248', 'prod-americano', 1, 12000, 0, '2025-12-21T10:35:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1248-4', 'hist-ticket-52-1248', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T10:35:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1248', 'hist-ticket-52-1248', 'cash', 53000, 'completed', '2025-12-21T10:35:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1249', o.id, r.id, 'paid', 'takeout', 'red', 4, 'Good.', u.id, '2025-12-21T12:46:05.000Z', '2025-12-21T12:46:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1249-1', 'hist-ticket-52-1249', 'prod-latte', 1, 15000, 0, '2025-12-21T12:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1249-2', 'hist-ticket-52-1249', 'prod-latte', 1, 15000, 0, '2025-12-21T12:46:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1249-3', 'hist-ticket-52-1249', 'prod-americano', 1, 12000, 0, '2025-12-21T12:46:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1249', 'hist-ticket-52-1249', 'cash', 42000, 'completed', '2025-12-21T12:46:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1250', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-21T14:20:00.000Z', '2025-12-21T14:20:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1250-1', 'hist-ticket-52-1250', 'prod-mocha', 1, 16500, 0, '2025-12-21T14:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1250-2', 'hist-ticket-52-1250', 'prod-latte', 1, 15000, 0, '2025-12-21T14:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1250-3', 'hist-ticket-52-1250', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T14:20:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1250-4', 'hist-ticket-52-1250', 'prod-americano', 1, 12000, 0, '2025-12-21T14:20:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1250', 'hist-ticket-52-1250', 'cash', 58000, 'completed', '2025-12-21T14:20:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1251', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2025-12-21T19:01:44.000Z', '2025-12-21T19:01:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1251-1', 'hist-ticket-52-1251', 'prod-americano', 1, 12000, 0, '2025-12-21T19:01:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1251-2', 'hist-ticket-52-1251', 'prod-mocha', 1, 16500, 0, '2025-12-21T19:01:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1251', 'hist-ticket-52-1251', 'cash', 28500, 'completed', '2025-12-21T19:01:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1252', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-21T14:33:35.000Z', '2025-12-21T14:33:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1252-1', 'hist-ticket-52-1252', 'prod-mocha', 1, 16500, 0, '2025-12-21T14:33:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1252-2', 'hist-ticket-52-1252', 'prod-mocha', 1, 16500, 0, '2025-12-21T14:33:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1252', 'hist-ticket-52-1252', 'cash', 33000, 'completed', '2025-12-21T14:33:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1253', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-21T09:08:03.000Z', '2025-12-21T09:08:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1253-1', 'hist-ticket-52-1253', 'prod-latte', 1, 15000, 0, '2025-12-21T09:08:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1253', 'hist-ticket-52-1253', 'cash', 15000, 'completed', '2025-12-21T09:08:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1254', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2025-12-21T16:59:21.000Z', '2025-12-21T16:59:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1254-1', 'hist-ticket-52-1254', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T16:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1254-2', 'hist-ticket-52-1254', 'prod-mocha', 1, 16500, 0, '2025-12-21T16:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1254-3', 'hist-ticket-52-1254', 'prod-latte', 1, 15000, 0, '2025-12-21T16:59:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1254-4', 'hist-ticket-52-1254', 'prod-americano', 1, 12000, 0, '2025-12-21T16:59:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1254', 'hist-ticket-52-1254', 'cash', 58000, 'completed', '2025-12-21T16:59:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1255', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-21T17:50:00.000Z', '2025-12-21T17:50:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1255-1', 'hist-ticket-52-1255', 'prod-mocha', 1, 16500, 0, '2025-12-21T17:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1255-2', 'hist-ticket-52-1255', 'prod-americano', 1, 12000, 0, '2025-12-21T17:50:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1255-3', 'hist-ticket-52-1255', 'prod-latte', 1, 15000, 0, '2025-12-21T17:50:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1255', 'hist-ticket-52-1255', 'cash', 43500, 'completed', '2025-12-21T17:50:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1256', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-21T14:49:09.000Z', '2025-12-21T14:49:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1256-1', 'hist-ticket-52-1256', 'prod-mocha', 1, 16500, 0, '2025-12-21T14:49:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1256-2', 'hist-ticket-52-1256', 'prod-mocha', 1, 16500, 0, '2025-12-21T14:49:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1256-3', 'hist-ticket-52-1256', 'prod-americano', 1, 12000, 0, '2025-12-21T14:49:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1256', 'hist-ticket-52-1256', 'cash', 45000, 'completed', '2025-12-21T14:49:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1257', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-21T13:26:40.000Z', '2025-12-21T13:26:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1257-1', 'hist-ticket-52-1257', 'prod-americano', 1, 12000, 0, '2025-12-21T13:26:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1257', 'hist-ticket-52-1257', 'cash', 12000, 'completed', '2025-12-21T13:26:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1258', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-21T10:36:51.000Z', '2025-12-21T10:36:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1258-1', 'hist-ticket-52-1258', 'prod-latte', 1, 15000, 0, '2025-12-21T10:36:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1258-2', 'hist-ticket-52-1258', 'prod-latte', 1, 15000, 0, '2025-12-21T10:36:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1258-3', 'hist-ticket-52-1258', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T10:36:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1258', 'hist-ticket-52-1258', 'cash', 44500, 'completed', '2025-12-21T10:36:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1259', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-21T17:13:40.000Z', '2025-12-21T17:13:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1259-1', 'hist-ticket-52-1259', 'prod-americano', 1, 12000, 0, '2025-12-21T17:13:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1259-2', 'hist-ticket-52-1259', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T17:13:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1259', 'hist-ticket-52-1259', 'cash', 26500, 'completed', '2025-12-21T17:13:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1260', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-21T17:11:39.000Z', '2025-12-21T17:11:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1260-1', 'hist-ticket-52-1260', 'prod-mocha', 1, 16500, 0, '2025-12-21T17:11:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1260-2', 'hist-ticket-52-1260', 'prod-latte', 1, 15000, 0, '2025-12-21T17:11:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1260-3', 'hist-ticket-52-1260', 'prod-americano', 1, 12000, 0, '2025-12-21T17:11:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1260', 'hist-ticket-52-1260', 'cash', 43500, 'completed', '2025-12-21T17:11:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1261', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2025-12-21T17:38:06.000Z', '2025-12-21T17:38:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1261-1', 'hist-ticket-52-1261', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T17:38:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1261-2', 'hist-ticket-52-1261', 'prod-mocha', 1, 16500, 0, '2025-12-21T17:38:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1261', 'hist-ticket-52-1261', 'cash', 31000, 'completed', '2025-12-21T17:38:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1262', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-21T18:35:38.000Z', '2025-12-21T18:35:38.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1262-1', 'hist-ticket-52-1262', 'prod-americano', 1, 12000, 0, '2025-12-21T18:35:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1262-2', 'hist-ticket-52-1262', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T18:35:38.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1262-3', 'hist-ticket-52-1262', 'prod-latte', 1, 15000, 0, '2025-12-21T18:35:38.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1262', 'hist-ticket-52-1262', 'cash', 41500, 'completed', '2025-12-21T18:35:38.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1263', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-21T12:52:58.000Z', '2025-12-21T12:52:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1263-1', 'hist-ticket-52-1263', 'prod-americano', 1, 12000, 0, '2025-12-21T12:52:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1263', 'hist-ticket-52-1263', 'cash', 12000, 'completed', '2025-12-21T12:52:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1264', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-21T17:17:47.000Z', '2025-12-21T17:17:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1264-1', 'hist-ticket-52-1264', 'prod-latte', 1, 15000, 0, '2025-12-21T17:17:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1264', 'hist-ticket-52-1264', 'cash', 15000, 'completed', '2025-12-21T17:17:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1265', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-21T13:38:28.000Z', '2025-12-21T13:38:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1265-1', 'hist-ticket-52-1265', 'prod-latte', 1, 15000, 0, '2025-12-21T13:38:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1265-2', 'hist-ticket-52-1265', 'prod-americano', 1, 12000, 0, '2025-12-21T13:38:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1265-3', 'hist-ticket-52-1265', 'prod-americano', 1, 12000, 0, '2025-12-21T13:38:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1265', 'hist-ticket-52-1265', 'cash', 39000, 'completed', '2025-12-21T13:38:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1266', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-21T17:12:18.000Z', '2025-12-21T17:12:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1266-1', 'hist-ticket-52-1266', 'prod-americano', 1, 12000, 0, '2025-12-21T17:12:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1266', 'hist-ticket-52-1266', 'cash', 12000, 'completed', '2025-12-21T17:12:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1267', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-21T13:17:58.000Z', '2025-12-21T13:17:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1267-1', 'hist-ticket-52-1267', 'prod-latte', 1, 15000, 0, '2025-12-21T13:17:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1267-2', 'hist-ticket-52-1267', 'prod-americano', 1, 12000, 0, '2025-12-21T13:17:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1267', 'hist-ticket-52-1267', 'cash', 27000, 'completed', '2025-12-21T13:17:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1268', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-21T13:34:30.000Z', '2025-12-21T13:34:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1268-1', 'hist-ticket-52-1268', 'prod-mocha', 1, 16500, 0, '2025-12-21T13:34:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1268-2', 'hist-ticket-52-1268', 'prod-americano', 1, 12000, 0, '2025-12-21T13:34:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1268-3', 'hist-ticket-52-1268', 'prod-mocha', 1, 16500, 0, '2025-12-21T13:34:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1268-4', 'hist-ticket-52-1268', 'prod-mocha', 1, 16500, 0, '2025-12-21T13:34:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1268', 'hist-ticket-52-1268', 'cash', 61500, 'completed', '2025-12-21T13:34:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1269', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-21T13:21:10.000Z', '2025-12-21T13:21:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1269-1', 'hist-ticket-52-1269', 'prod-americano', 1, 12000, 0, '2025-12-21T13:21:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1269-2', 'hist-ticket-52-1269', 'prod-mocha', 1, 16500, 0, '2025-12-21T13:21:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1269', 'hist-ticket-52-1269', 'cash', 28500, 'completed', '2025-12-21T13:21:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1270', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-21T15:26:04.000Z', '2025-12-21T15:26:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1270-1', 'hist-ticket-52-1270', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T15:26:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1270-2', 'hist-ticket-52-1270', 'prod-mocha', 1, 16500, 0, '2025-12-21T15:26:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1270', 'hist-ticket-52-1270', 'cash', 31000, 'completed', '2025-12-21T15:26:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1271', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-21T08:52:54.000Z', '2025-12-21T08:52:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1271-1', 'hist-ticket-52-1271', 'prod-latte', 1, 15000, 0, '2025-12-21T08:52:54.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1271-2', 'hist-ticket-52-1271', 'prod-cappuccino', 1, 14500, 0, '2025-12-21T08:52:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1271', 'hist-ticket-52-1271', 'cash', 29500, 'completed', '2025-12-21T08:52:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-52-1272', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-21T14:30:36.000Z', '2025-12-21T14:30:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-52-1272-1', 'hist-ticket-52-1272', 'prod-americano', 1, 12000, 0, '2025-12-21T14:30:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-52-1272', 'hist-ticket-52-1272', 'cash', 12000, 'completed', '2025-12-21T14:30:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1273', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2025-12-22T17:15:18.000Z', '2025-12-22T17:15:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1273-1', 'hist-ticket-53-1273', 'prod-americano', 1, 12000, 0, '2025-12-22T17:15:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1273-2', 'hist-ticket-53-1273', 'prod-latte', 1, 15000, 0, '2025-12-22T17:15:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1273-3', 'hist-ticket-53-1273', 'prod-americano', 1, 12000, 0, '2025-12-22T17:15:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1273-4', 'hist-ticket-53-1273', 'prod-latte', 1, 15000, 0, '2025-12-22T17:15:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1273', 'hist-ticket-53-1273', 'cash', 54000, 'completed', '2025-12-22T17:15:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1274', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-22T18:05:16.000Z', '2025-12-22T18:05:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1274-1', 'hist-ticket-53-1274', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T18:05:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1274', 'hist-ticket-53-1274', 'cash', 14500, 'completed', '2025-12-22T18:05:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1275', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2025-12-22T15:02:03.000Z', '2025-12-22T15:02:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1275-1', 'hist-ticket-53-1275', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T15:02:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1275-2', 'hist-ticket-53-1275', 'prod-mocha', 1, 16500, 0, '2025-12-22T15:02:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1275', 'hist-ticket-53-1275', 'cash', 31000, 'completed', '2025-12-22T15:02:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1276', o.id, r.id, 'paid', 'dine_in', 'green', 4, 'Good.', u.id, '2025-12-22T15:47:06.000Z', '2025-12-22T15:47:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1276-1', 'hist-ticket-53-1276', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T15:47:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1276-2', 'hist-ticket-53-1276', 'prod-americano', 1, 12000, 0, '2025-12-22T15:47:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1276-3', 'hist-ticket-53-1276', 'prod-americano', 1, 12000, 0, '2025-12-22T15:47:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1276', 'hist-ticket-53-1276', 'cash', 38500, 'completed', '2025-12-22T15:47:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1277', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2025-12-22T15:44:27.000Z', '2025-12-22T15:44:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1277-1', 'hist-ticket-53-1277', 'prod-mocha', 1, 16500, 0, '2025-12-22T15:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1277-2', 'hist-ticket-53-1277', 'prod-americano', 1, 12000, 0, '2025-12-22T15:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1277-3', 'hist-ticket-53-1277', 'prod-americano', 1, 12000, 0, '2025-12-22T15:44:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1277-4', 'hist-ticket-53-1277', 'prod-americano', 1, 12000, 0, '2025-12-22T15:44:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1277', 'hist-ticket-53-1277', 'cash', 52500, 'completed', '2025-12-22T15:44:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1278', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-22T13:58:48.000Z', '2025-12-22T13:58:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1278-1', 'hist-ticket-53-1278', 'prod-mocha', 1, 16500, 0, '2025-12-22T13:58:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1278-2', 'hist-ticket-53-1278', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T13:58:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1278', 'hist-ticket-53-1278', 'cash', 31000, 'completed', '2025-12-22T13:58:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1279', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-22T16:35:40.000Z', '2025-12-22T16:35:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1279-1', 'hist-ticket-53-1279', 'prod-latte', 1, 15000, 0, '2025-12-22T16:35:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1279-2', 'hist-ticket-53-1279', 'prod-latte', 1, 15000, 0, '2025-12-22T16:35:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1279-3', 'hist-ticket-53-1279', 'prod-americano', 1, 12000, 0, '2025-12-22T16:35:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1279', 'hist-ticket-53-1279', 'cash', 42000, 'completed', '2025-12-22T16:35:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1280', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-22T13:12:31.000Z', '2025-12-22T13:12:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1280-1', 'hist-ticket-53-1280', 'prod-mocha', 1, 16500, 0, '2025-12-22T13:12:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1280-2', 'hist-ticket-53-1280', 'prod-mocha', 1, 16500, 0, '2025-12-22T13:12:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1280-3', 'hist-ticket-53-1280', 'prod-latte', 1, 15000, 0, '2025-12-22T13:12:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1280', 'hist-ticket-53-1280', 'cash', 48000, 'completed', '2025-12-22T13:12:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1281', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-22T11:44:59.000Z', '2025-12-22T11:44:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1281-1', 'hist-ticket-53-1281', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T11:44:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1281', 'hist-ticket-53-1281', 'cash', 14500, 'completed', '2025-12-22T11:44:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1282', o.id, r.id, 'paid', 'dine_in', 'blue', 4, 'Good.', u.id, '2025-12-22T10:37:46.000Z', '2025-12-22T10:37:46.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1282-1', 'hist-ticket-53-1282', 'prod-latte', 1, 15000, 0, '2025-12-22T10:37:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1282-2', 'hist-ticket-53-1282', 'prod-latte', 1, 15000, 0, '2025-12-22T10:37:46.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1282-3', 'hist-ticket-53-1282', 'prod-americano', 1, 12000, 0, '2025-12-22T10:37:46.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1282', 'hist-ticket-53-1282', 'cash', 42000, 'completed', '2025-12-22T10:37:46.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1283', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2025-12-22T19:09:04.000Z', '2025-12-22T19:09:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1283-1', 'hist-ticket-53-1283', 'prod-mocha', 1, 16500, 0, '2025-12-22T19:09:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1283', 'hist-ticket-53-1283', 'cash', 16500, 'completed', '2025-12-22T19:09:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1284', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-22T16:42:21.000Z', '2025-12-22T16:42:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1284-1', 'hist-ticket-53-1284', 'prod-latte', 1, 15000, 0, '2025-12-22T16:42:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1284-2', 'hist-ticket-53-1284', 'prod-latte', 1, 15000, 0, '2025-12-22T16:42:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1284', 'hist-ticket-53-1284', 'cash', 30000, 'completed', '2025-12-22T16:42:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1285', o.id, r.id, 'paid', 'dine_in', 'pink', 5, 'Great coffee!', u.id, '2025-12-22T09:45:15.000Z', '2025-12-22T09:45:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1285-1', 'hist-ticket-53-1285', 'prod-mocha', 1, 16500, 0, '2025-12-22T09:45:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1285-2', 'hist-ticket-53-1285', 'prod-americano', 1, 12000, 0, '2025-12-22T09:45:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1285', 'hist-ticket-53-1285', 'cash', 28500, 'completed', '2025-12-22T09:45:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1286', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-22T08:53:02.000Z', '2025-12-22T08:53:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1286-1', 'hist-ticket-53-1286', 'prod-americano', 1, 12000, 0, '2025-12-22T08:53:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1286-2', 'hist-ticket-53-1286', 'prod-latte', 1, 15000, 0, '2025-12-22T08:53:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1286', 'hist-ticket-53-1286', 'cash', 27000, 'completed', '2025-12-22T08:53:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1287', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-22T15:30:59.000Z', '2025-12-22T15:30:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1287-1', 'hist-ticket-53-1287', 'prod-mocha', 1, 16500, 0, '2025-12-22T15:30:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1287-2', 'hist-ticket-53-1287', 'prod-latte', 1, 15000, 0, '2025-12-22T15:30:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1287-3', 'hist-ticket-53-1287', 'prod-latte', 1, 15000, 0, '2025-12-22T15:30:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1287-4', 'hist-ticket-53-1287', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T15:30:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1287', 'hist-ticket-53-1287', 'cash', 61000, 'completed', '2025-12-22T15:30:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1288', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-22T09:34:22.000Z', '2025-12-22T09:34:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1288-1', 'hist-ticket-53-1288', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T09:34:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1288', 'hist-ticket-53-1288', 'cash', 14500, 'completed', '2025-12-22T09:34:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1289', o.id, r.id, 'paid', 'dine_in', 'pink', 4, 'Good.', u.id, '2025-12-22T11:37:27.000Z', '2025-12-22T11:37:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1289-1', 'hist-ticket-53-1289', 'prod-mocha', 1, 16500, 0, '2025-12-22T11:37:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1289-2', 'hist-ticket-53-1289', 'prod-americano', 1, 12000, 0, '2025-12-22T11:37:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1289-3', 'hist-ticket-53-1289', 'prod-americano', 1, 12000, 0, '2025-12-22T11:37:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1289', 'hist-ticket-53-1289', 'cash', 40500, 'completed', '2025-12-22T11:37:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1290', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-22T18:40:20.000Z', '2025-12-22T18:40:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1290-1', 'hist-ticket-53-1290', 'prod-latte', 1, 15000, 0, '2025-12-22T18:40:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1290-2', 'hist-ticket-53-1290', 'prod-mocha', 1, 16500, 0, '2025-12-22T18:40:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1290', 'hist-ticket-53-1290', 'cash', 31500, 'completed', '2025-12-22T18:40:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1291', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-22T09:02:57.000Z', '2025-12-22T09:02:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1291-1', 'hist-ticket-53-1291', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T09:02:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1291-2', 'hist-ticket-53-1291', 'prod-latte', 1, 15000, 0, '2025-12-22T09:02:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1291-3', 'hist-ticket-53-1291', 'prod-latte', 1, 15000, 0, '2025-12-22T09:02:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1291', 'hist-ticket-53-1291', 'cash', 44500, 'completed', '2025-12-22T09:02:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1292', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-22T08:56:09.000Z', '2025-12-22T08:56:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1292-1', 'hist-ticket-53-1292', 'prod-americano', 1, 12000, 0, '2025-12-22T08:56:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1292', 'hist-ticket-53-1292', 'cash', 12000, 'completed', '2025-12-22T08:56:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1293', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-22T16:51:59.000Z', '2025-12-22T16:51:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1293-1', 'hist-ticket-53-1293', 'prod-mocha', 1, 16500, 0, '2025-12-22T16:51:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1293-2', 'hist-ticket-53-1293', 'prod-mocha', 1, 16500, 0, '2025-12-22T16:51:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1293', 'hist-ticket-53-1293', 'cash', 33000, 'completed', '2025-12-22T16:51:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1294', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-22T09:33:44.000Z', '2025-12-22T09:33:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1294-1', 'hist-ticket-53-1294', 'prod-mocha', 1, 16500, 0, '2025-12-22T09:33:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1294-2', 'hist-ticket-53-1294', 'prod-mocha', 1, 16500, 0, '2025-12-22T09:33:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1294', 'hist-ticket-53-1294', 'cash', 33000, 'completed', '2025-12-22T09:33:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1295', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2025-12-22T12:32:43.000Z', '2025-12-22T12:32:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1295-1', 'hist-ticket-53-1295', 'prod-mocha', 1, 16500, 0, '2025-12-22T12:32:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1295-2', 'hist-ticket-53-1295', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T12:32:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1295', 'hist-ticket-53-1295', 'cash', 31000, 'completed', '2025-12-22T12:32:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-53-1296', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-22T16:33:21.000Z', '2025-12-22T16:33:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1296-1', 'hist-ticket-53-1296', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T16:33:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1296-2', 'hist-ticket-53-1296', 'prod-mocha', 1, 16500, 0, '2025-12-22T16:33:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1296-3', 'hist-ticket-53-1296', 'prod-cappuccino', 1, 14500, 0, '2025-12-22T16:33:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-53-1296-4', 'hist-ticket-53-1296', 'prod-latte', 1, 15000, 0, '2025-12-22T16:33:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-53-1296', 'hist-ticket-53-1296', 'cash', 60500, 'completed', '2025-12-22T16:33:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1297', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-23T18:13:55.000Z', '2025-12-23T18:13:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1297-1', 'hist-ticket-54-1297', 'prod-mocha', 1, 16500, 0, '2025-12-23T18:13:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1297', 'hist-ticket-54-1297', 'cash', 16500, 'completed', '2025-12-23T18:13:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1298', o.id, r.id, 'paid', 'takeout', 'pink', NULL, NULL, u.id, '2025-12-23T14:31:06.000Z', '2025-12-23T14:31:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1298-1', 'hist-ticket-54-1298', 'prod-latte', 1, 15000, 0, '2025-12-23T14:31:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1298-2', 'hist-ticket-54-1298', 'prod-americano', 1, 12000, 0, '2025-12-23T14:31:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1298-3', 'hist-ticket-54-1298', 'prod-latte', 1, 15000, 0, '2025-12-23T14:31:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1298', 'hist-ticket-54-1298', 'cash', 42000, 'completed', '2025-12-23T14:31:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1299', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-23T10:28:56.000Z', '2025-12-23T10:28:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1299-1', 'hist-ticket-54-1299', 'prod-americano', 1, 12000, 0, '2025-12-23T10:28:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1299-2', 'hist-ticket-54-1299', 'prod-americano', 1, 12000, 0, '2025-12-23T10:28:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1299', 'hist-ticket-54-1299', 'cash', 24000, 'completed', '2025-12-23T10:28:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1300', o.id, r.id, 'paid', 'dine_in', 'orange', 5, 'Great coffee!', u.id, '2025-12-23T14:40:13.000Z', '2025-12-23T14:40:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1300-1', 'hist-ticket-54-1300', 'prod-latte', 1, 15000, 0, '2025-12-23T14:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1300-2', 'hist-ticket-54-1300', 'prod-mocha', 1, 16500, 0, '2025-12-23T14:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1300-3', 'hist-ticket-54-1300', 'prod-americano', 1, 12000, 0, '2025-12-23T14:40:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1300-4', 'hist-ticket-54-1300', 'prod-americano', 1, 12000, 0, '2025-12-23T14:40:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1300', 'hist-ticket-54-1300', 'cash', 55500, 'completed', '2025-12-23T14:40:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1301', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-23T08:46:32.000Z', '2025-12-23T08:46:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1301-1', 'hist-ticket-54-1301', 'prod-latte', 1, 15000, 0, '2025-12-23T08:46:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1301', 'hist-ticket-54-1301', 'cash', 15000, 'completed', '2025-12-23T08:46:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1302', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-23T15:26:17.000Z', '2025-12-23T15:26:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1302-1', 'hist-ticket-54-1302', 'prod-latte', 1, 15000, 0, '2025-12-23T15:26:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1302-2', 'hist-ticket-54-1302', 'prod-latte', 1, 15000, 0, '2025-12-23T15:26:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1302', 'hist-ticket-54-1302', 'cash', 30000, 'completed', '2025-12-23T15:26:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1303', o.id, r.id, 'paid', 'dine_in', 'purple', 5, 'Great coffee!', u.id, '2025-12-23T08:49:35.000Z', '2025-12-23T08:49:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1303-1', 'hist-ticket-54-1303', 'prod-mocha', 1, 16500, 0, '2025-12-23T08:49:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1303', 'hist-ticket-54-1303', 'cash', 16500, 'completed', '2025-12-23T08:49:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1304', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-23T15:38:23.000Z', '2025-12-23T15:38:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1304-1', 'hist-ticket-54-1304', 'prod-latte', 1, 15000, 0, '2025-12-23T15:38:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1304-2', 'hist-ticket-54-1304', 'prod-mocha', 1, 16500, 0, '2025-12-23T15:38:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1304-3', 'hist-ticket-54-1304', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T15:38:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1304', 'hist-ticket-54-1304', 'cash', 46000, 'completed', '2025-12-23T15:38:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1305', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2025-12-23T14:48:34.000Z', '2025-12-23T14:48:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1305-1', 'hist-ticket-54-1305', 'prod-latte', 1, 15000, 0, '2025-12-23T14:48:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1305-2', 'hist-ticket-54-1305', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T14:48:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1305', 'hist-ticket-54-1305', 'cash', 29500, 'completed', '2025-12-23T14:48:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1306', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-23T17:09:40.000Z', '2025-12-23T17:09:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1306-1', 'hist-ticket-54-1306', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T17:09:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1306', 'hist-ticket-54-1306', 'cash', 14500, 'completed', '2025-12-23T17:09:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1307', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-23T17:10:16.000Z', '2025-12-23T17:10:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1307-1', 'hist-ticket-54-1307', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T17:10:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1307-2', 'hist-ticket-54-1307', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T17:10:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1307', 'hist-ticket-54-1307', 'cash', 29000, 'completed', '2025-12-23T17:10:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1308', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-23T11:43:49.000Z', '2025-12-23T11:43:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1308-1', 'hist-ticket-54-1308', 'prod-americano', 1, 12000, 0, '2025-12-23T11:43:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1308-2', 'hist-ticket-54-1308', 'prod-latte', 1, 15000, 0, '2025-12-23T11:43:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1308-3', 'hist-ticket-54-1308', 'prod-latte', 1, 15000, 0, '2025-12-23T11:43:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1308', 'hist-ticket-54-1308', 'cash', 42000, 'completed', '2025-12-23T11:43:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1309', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-23T13:28:14.000Z', '2025-12-23T13:28:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1309-1', 'hist-ticket-54-1309', 'prod-americano', 1, 12000, 0, '2025-12-23T13:28:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1309', 'hist-ticket-54-1309', 'cash', 12000, 'completed', '2025-12-23T13:28:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1310', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2025-12-23T11:17:18.000Z', '2025-12-23T11:17:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1310-1', 'hist-ticket-54-1310', 'prod-americano', 1, 12000, 0, '2025-12-23T11:17:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1310-2', 'hist-ticket-54-1310', 'prod-latte', 1, 15000, 0, '2025-12-23T11:17:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1310', 'hist-ticket-54-1310', 'cash', 27000, 'completed', '2025-12-23T11:17:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1311', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2025-12-23T13:37:14.000Z', '2025-12-23T13:37:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1311-1', 'hist-ticket-54-1311', 'prod-latte', 1, 15000, 0, '2025-12-23T13:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1311-2', 'hist-ticket-54-1311', 'prod-mocha', 1, 16500, 0, '2025-12-23T13:37:14.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1311-3', 'hist-ticket-54-1311', 'prod-mocha', 1, 16500, 0, '2025-12-23T13:37:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1311', 'hist-ticket-54-1311', 'cash', 48000, 'completed', '2025-12-23T13:37:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1312', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-23T10:07:48.000Z', '2025-12-23T10:07:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1312-1', 'hist-ticket-54-1312', 'prod-mocha', 1, 16500, 0, '2025-12-23T10:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1312-2', 'hist-ticket-54-1312', 'prod-americano', 1, 12000, 0, '2025-12-23T10:07:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1312-3', 'hist-ticket-54-1312', 'prod-latte', 1, 15000, 0, '2025-12-23T10:07:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1312', 'hist-ticket-54-1312', 'cash', 43500, 'completed', '2025-12-23T10:07:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1313', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-23T08:03:29.000Z', '2025-12-23T08:03:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1313-1', 'hist-ticket-54-1313', 'prod-mocha', 1, 16500, 0, '2025-12-23T08:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1313-2', 'hist-ticket-54-1313', 'prod-americano', 1, 12000, 0, '2025-12-23T08:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1313-3', 'hist-ticket-54-1313', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T08:03:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1313-4', 'hist-ticket-54-1313', 'prod-latte', 1, 15000, 0, '2025-12-23T08:03:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1313', 'hist-ticket-54-1313', 'cash', 58000, 'completed', '2025-12-23T08:03:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1314', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-23T11:40:26.000Z', '2025-12-23T11:40:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1314-1', 'hist-ticket-54-1314', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T11:40:26.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1314-2', 'hist-ticket-54-1314', 'prod-americano', 1, 12000, 0, '2025-12-23T11:40:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1314', 'hist-ticket-54-1314', 'cash', 26500, 'completed', '2025-12-23T11:40:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1315', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-23T18:35:30.000Z', '2025-12-23T18:35:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1315-1', 'hist-ticket-54-1315', 'prod-mocha', 1, 16500, 0, '2025-12-23T18:35:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1315-2', 'hist-ticket-54-1315', 'prod-latte', 1, 15000, 0, '2025-12-23T18:35:30.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1315-3', 'hist-ticket-54-1315', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T18:35:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1315', 'hist-ticket-54-1315', 'cash', 46000, 'completed', '2025-12-23T18:35:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1316', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-23T14:45:49.000Z', '2025-12-23T14:45:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1316-1', 'hist-ticket-54-1316', 'prod-americano', 1, 12000, 0, '2025-12-23T14:45:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1316-2', 'hist-ticket-54-1316', 'prod-americano', 1, 12000, 0, '2025-12-23T14:45:49.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1316-3', 'hist-ticket-54-1316', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T14:45:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1316', 'hist-ticket-54-1316', 'cash', 38500, 'completed', '2025-12-23T14:45:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1317', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-23T12:39:05.000Z', '2025-12-23T12:39:05.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1317-1', 'hist-ticket-54-1317', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T12:39:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1317-2', 'hist-ticket-54-1317', 'prod-mocha', 1, 16500, 0, '2025-12-23T12:39:05.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1317-3', 'hist-ticket-54-1317', 'prod-mocha', 1, 16500, 0, '2025-12-23T12:39:05.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1317', 'hist-ticket-54-1317', 'cash', 47500, 'completed', '2025-12-23T12:39:05.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1318', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2025-12-23T18:20:44.000Z', '2025-12-23T18:20:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1318-1', 'hist-ticket-54-1318', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T18:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1318-2', 'hist-ticket-54-1318', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T18:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1318-3', 'hist-ticket-54-1318', 'prod-americano', 1, 12000, 0, '2025-12-23T18:20:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1318-4', 'hist-ticket-54-1318', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T18:20:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1318', 'hist-ticket-54-1318', 'cash', 55500, 'completed', '2025-12-23T18:20:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1319', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-23T08:01:01.000Z', '2025-12-23T08:01:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1319-1', 'hist-ticket-54-1319', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T08:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1319-2', 'hist-ticket-54-1319', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T08:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1319-3', 'hist-ticket-54-1319', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T08:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1319-4', 'hist-ticket-54-1319', 'prod-mocha', 1, 16500, 0, '2025-12-23T08:01:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1319', 'hist-ticket-54-1319', 'cash', 60000, 'completed', '2025-12-23T08:01:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-54-1320', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2025-12-23T16:35:34.000Z', '2025-12-23T16:35:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1320-1', 'hist-ticket-54-1320', 'prod-mocha', 1, 16500, 0, '2025-12-23T16:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1320-2', 'hist-ticket-54-1320', 'prod-latte', 1, 15000, 0, '2025-12-23T16:35:34.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-54-1320-3', 'hist-ticket-54-1320', 'prod-cappuccino', 1, 14500, 0, '2025-12-23T16:35:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-54-1320', 'hist-ticket-54-1320', 'cash', 46000, 'completed', '2025-12-23T16:35:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1321', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-24T17:08:15.000Z', '2025-12-24T17:08:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1321-1', 'hist-ticket-55-1321', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T17:08:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1321', 'hist-ticket-55-1321', 'cash', 14500, 'completed', '2025-12-24T17:08:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1322', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-24T14:54:31.000Z', '2025-12-24T14:54:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1322-1', 'hist-ticket-55-1322', 'prod-americano', 1, 12000, 0, '2025-12-24T14:54:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1322-2', 'hist-ticket-55-1322', 'prod-americano', 1, 12000, 0, '2025-12-24T14:54:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1322-3', 'hist-ticket-55-1322', 'prod-mocha', 1, 16500, 0, '2025-12-24T14:54:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1322', 'hist-ticket-55-1322', 'cash', 40500, 'completed', '2025-12-24T14:54:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1323', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2025-12-24T13:33:58.000Z', '2025-12-24T13:33:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1323-1', 'hist-ticket-55-1323', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T13:33:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1323-2', 'hist-ticket-55-1323', 'prod-latte', 1, 15000, 0, '2025-12-24T13:33:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1323-3', 'hist-ticket-55-1323', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T13:33:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1323', 'hist-ticket-55-1323', 'cash', 44000, 'completed', '2025-12-24T13:33:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1324', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-24T17:49:37.000Z', '2025-12-24T17:49:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1324-1', 'hist-ticket-55-1324', 'prod-latte', 1, 15000, 0, '2025-12-24T17:49:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1324', 'hist-ticket-55-1324', 'cash', 15000, 'completed', '2025-12-24T17:49:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1325', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-24T11:02:48.000Z', '2025-12-24T11:02:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1325-1', 'hist-ticket-55-1325', 'prod-americano', 1, 12000, 0, '2025-12-24T11:02:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1325-2', 'hist-ticket-55-1325', 'prod-latte', 1, 15000, 0, '2025-12-24T11:02:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1325', 'hist-ticket-55-1325', 'cash', 27000, 'completed', '2025-12-24T11:02:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1326', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-24T19:15:44.000Z', '2025-12-24T19:15:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1326-1', 'hist-ticket-55-1326', 'prod-americano', 1, 12000, 0, '2025-12-24T19:15:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1326', 'hist-ticket-55-1326', 'cash', 12000, 'completed', '2025-12-24T19:15:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1327', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2025-12-24T16:01:58.000Z', '2025-12-24T16:01:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1327-1', 'hist-ticket-55-1327', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T16:01:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1327-2', 'hist-ticket-55-1327', 'prod-mocha', 1, 16500, 0, '2025-12-24T16:01:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1327', 'hist-ticket-55-1327', 'cash', 31000, 'completed', '2025-12-24T16:01:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1328', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2025-12-24T11:10:26.000Z', '2025-12-24T11:10:26.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1328-1', 'hist-ticket-55-1328', 'prod-americano', 1, 12000, 0, '2025-12-24T11:10:26.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1328', 'hist-ticket-55-1328', 'cash', 12000, 'completed', '2025-12-24T11:10:26.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1329', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2025-12-24T14:33:41.000Z', '2025-12-24T14:33:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1329-1', 'hist-ticket-55-1329', 'prod-americano', 1, 12000, 0, '2025-12-24T14:33:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1329-2', 'hist-ticket-55-1329', 'prod-americano', 1, 12000, 0, '2025-12-24T14:33:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1329-3', 'hist-ticket-55-1329', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T14:33:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1329', 'hist-ticket-55-1329', 'cash', 38500, 'completed', '2025-12-24T14:33:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1330', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-24T13:01:01.000Z', '2025-12-24T13:01:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1330-1', 'hist-ticket-55-1330', 'prod-latte', 1, 15000, 0, '2025-12-24T13:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1330-2', 'hist-ticket-55-1330', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T13:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1330-3', 'hist-ticket-55-1330', 'prod-mocha', 1, 16500, 0, '2025-12-24T13:01:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1330-4', 'hist-ticket-55-1330', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T13:01:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1330', 'hist-ticket-55-1330', 'cash', 60500, 'completed', '2025-12-24T13:01:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1331', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2025-12-24T19:43:27.000Z', '2025-12-24T19:43:27.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1331-1', 'hist-ticket-55-1331', 'prod-latte', 1, 15000, 0, '2025-12-24T19:43:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1331-2', 'hist-ticket-55-1331', 'prod-americano', 1, 12000, 0, '2025-12-24T19:43:27.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1331-3', 'hist-ticket-55-1331', 'prod-americano', 1, 12000, 0, '2025-12-24T19:43:27.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1331', 'hist-ticket-55-1331', 'cash', 39000, 'completed', '2025-12-24T19:43:27.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1332', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-24T16:29:55.000Z', '2025-12-24T16:29:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1332-1', 'hist-ticket-55-1332', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T16:29:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1332-2', 'hist-ticket-55-1332', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T16:29:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1332-3', 'hist-ticket-55-1332', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T16:29:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1332', 'hist-ticket-55-1332', 'cash', 43500, 'completed', '2025-12-24T16:29:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1333', o.id, r.id, 'paid', 'dine_in', 'green', 3, 'Good.', u.id, '2025-12-24T15:05:29.000Z', '2025-12-24T15:05:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1333-1', 'hist-ticket-55-1333', 'prod-latte', 1, 15000, 0, '2025-12-24T15:05:29.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1333-2', 'hist-ticket-55-1333', 'prod-mocha', 1, 16500, 0, '2025-12-24T15:05:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1333', 'hist-ticket-55-1333', 'cash', 31500, 'completed', '2025-12-24T15:05:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1334', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2025-12-24T10:35:59.000Z', '2025-12-24T10:35:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1334-1', 'hist-ticket-55-1334', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T10:35:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1334-2', 'hist-ticket-55-1334', 'prod-latte', 1, 15000, 0, '2025-12-24T10:35:59.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1334-3', 'hist-ticket-55-1334', 'prod-mocha', 1, 16500, 0, '2025-12-24T10:35:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1334', 'hist-ticket-55-1334', 'cash', 46000, 'completed', '2025-12-24T10:35:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1335', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2025-12-24T11:14:24.000Z', '2025-12-24T11:14:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1335-1', 'hist-ticket-55-1335', 'prod-americano', 1, 12000, 0, '2025-12-24T11:14:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1335-2', 'hist-ticket-55-1335', 'prod-americano', 1, 12000, 0, '2025-12-24T11:14:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1335-3', 'hist-ticket-55-1335', 'prod-mocha', 1, 16500, 0, '2025-12-24T11:14:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1335-4', 'hist-ticket-55-1335', 'prod-mocha', 1, 16500, 0, '2025-12-24T11:14:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1335', 'hist-ticket-55-1335', 'cash', 57000, 'completed', '2025-12-24T11:14:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1336', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2025-12-24T10:19:24.000Z', '2025-12-24T10:19:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1336-1', 'hist-ticket-55-1336', 'prod-mocha', 1, 16500, 0, '2025-12-24T10:19:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1336', 'hist-ticket-55-1336', 'cash', 16500, 'completed', '2025-12-24T10:19:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1337', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2025-12-24T10:59:16.000Z', '2025-12-24T10:59:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1337-1', 'hist-ticket-55-1337', 'prod-americano', 1, 12000, 0, '2025-12-24T10:59:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1337-2', 'hist-ticket-55-1337', 'prod-mocha', 1, 16500, 0, '2025-12-24T10:59:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1337', 'hist-ticket-55-1337', 'cash', 28500, 'completed', '2025-12-24T10:59:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1338', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2025-12-24T14:50:23.000Z', '2025-12-24T14:50:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1338-1', 'hist-ticket-55-1338', 'prod-americano', 1, 12000, 0, '2025-12-24T14:50:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1338-2', 'hist-ticket-55-1338', 'prod-cappuccino', 1, 14500, 0, '2025-12-24T14:50:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1338-3', 'hist-ticket-55-1338', 'prod-americano', 1, 12000, 0, '2025-12-24T14:50:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1338', 'hist-ticket-55-1338', 'cash', 38500, 'completed', '2025-12-24T14:50:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1339', o.id, r.id, 'paid', 'takeout', 'purple', NULL, NULL, u.id, '2025-12-24T09:07:47.000Z', '2025-12-24T09:07:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1339-1', 'hist-ticket-55-1339', 'prod-americano', 1, 12000, 0, '2025-12-24T09:07:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1339-2', 'hist-ticket-55-1339', 'prod-latte', 1, 15000, 0, '2025-12-24T09:07:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1339-3', 'hist-ticket-55-1339', 'prod-americano', 1, 12000, 0, '2025-12-24T09:07:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1339', 'hist-ticket-55-1339', 'cash', 39000, 'completed', '2025-12-24T09:07:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1340', o.id, r.id, 'paid', 'dine_in', 'purple', NULL, NULL, u.id, '2025-12-24T15:12:22.000Z', '2025-12-24T15:12:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1340-1', 'hist-ticket-55-1340', 'prod-latte', 1, 15000, 0, '2025-12-24T15:12:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1340-2', 'hist-ticket-55-1340', 'prod-latte', 1, 15000, 0, '2025-12-24T15:12:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-55-1340', 'hist-ticket-55-1340', 'cash', 30000, 'completed', '2025-12-24T15:12:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-55-1341', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2025-12-24T16:19:13.000Z', '2025-12-24T16:19:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1341-1', 'hist-ticket-55-1341', 'prod-latte', 1, 15000, 0, '2025-12-24T16:19:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-55-1341-2', 'hist-ticket-55-1341', 'prod-latte', 1, 15000, 0, '2025-12-24T16:19:13.000Z');