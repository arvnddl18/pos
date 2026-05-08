INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2213-3', 'hist-ticket-92-2213', 'prod-latte', 1, 15000, 0, '2026-01-30T13:45:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2213-4', 'hist-ticket-92-2213', 'prod-latte', 1, 15000, 0, '2026-01-30T13:45:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2213', 'hist-ticket-92-2213', 'cash', 61000, 'completed', '2026-01-30T13:45:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2214', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-01-30T19:01:24.000Z', '2026-01-30T19:01:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2214-1', 'hist-ticket-92-2214', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T19:01:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2214-2', 'hist-ticket-92-2214', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T19:01:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2214-3', 'hist-ticket-92-2214', 'prod-americano', 1, 12000, 0, '2026-01-30T19:01:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2214-4', 'hist-ticket-92-2214', 'prod-latte', 1, 15000, 0, '2026-01-30T19:01:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2214', 'hist-ticket-92-2214', 'cash', 56000, 'completed', '2026-01-30T19:01:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2215', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-01-30T10:01:41.000Z', '2026-01-30T10:01:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2215-1', 'hist-ticket-92-2215', 'prod-mocha', 1, 16500, 0, '2026-01-30T10:01:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2215-2', 'hist-ticket-92-2215', 'prod-latte', 1, 15000, 0, '2026-01-30T10:01:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2215-3', 'hist-ticket-92-2215', 'prod-americano', 1, 12000, 0, '2026-01-30T10:01:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2215', 'hist-ticket-92-2215', 'cash', 43500, 'completed', '2026-01-30T10:01:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2216', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-30T14:48:33.000Z', '2026-01-30T14:48:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2216-1', 'hist-ticket-92-2216', 'prod-americano', 1, 12000, 0, '2026-01-30T14:48:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2216-2', 'hist-ticket-92-2216', 'prod-americano', 1, 12000, 0, '2026-01-30T14:48:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2216-3', 'hist-ticket-92-2216', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T14:48:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2216', 'hist-ticket-92-2216', 'cash', 38500, 'completed', '2026-01-30T14:48:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2217', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-30T11:44:13.000Z', '2026-01-30T11:44:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2217-1', 'hist-ticket-92-2217', 'prod-latte', 1, 15000, 0, '2026-01-30T11:44:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2217-2', 'hist-ticket-92-2217', 'prod-latte', 1, 15000, 0, '2026-01-30T11:44:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2217-3', 'hist-ticket-92-2217', 'prod-americano', 1, 12000, 0, '2026-01-30T11:44:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2217-4', 'hist-ticket-92-2217', 'prod-latte', 1, 15000, 0, '2026-01-30T11:44:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2217', 'hist-ticket-92-2217', 'cash', 57000, 'completed', '2026-01-30T11:44:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2218', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-30T10:41:28.000Z', '2026-01-30T10:41:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2218-1', 'hist-ticket-92-2218', 'prod-latte', 1, 15000, 0, '2026-01-30T10:41:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2218-2', 'hist-ticket-92-2218', 'prod-americano', 1, 12000, 0, '2026-01-30T10:41:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2218-3', 'hist-ticket-92-2218', 'prod-latte', 1, 15000, 0, '2026-01-30T10:41:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2218', 'hist-ticket-92-2218', 'cash', 42000, 'completed', '2026-01-30T10:41:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2219', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-01-30T08:03:09.000Z', '2026-01-30T08:03:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2219-1', 'hist-ticket-92-2219', 'prod-mocha', 1, 16500, 0, '2026-01-30T08:03:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2219', 'hist-ticket-92-2219', 'cash', 16500, 'completed', '2026-01-30T08:03:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2220', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-30T08:18:43.000Z', '2026-01-30T08:18:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2220-1', 'hist-ticket-92-2220', 'prod-mocha', 1, 16500, 0, '2026-01-30T08:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2220-2', 'hist-ticket-92-2220', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T08:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2220-3', 'hist-ticket-92-2220', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T08:18:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2220-4', 'hist-ticket-92-2220', 'prod-latte', 1, 15000, 0, '2026-01-30T08:18:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2220', 'hist-ticket-92-2220', 'cash', 60500, 'completed', '2026-01-30T08:18:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2221', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-30T19:41:51.000Z', '2026-01-30T19:41:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2221-1', 'hist-ticket-92-2221', 'prod-latte', 1, 15000, 0, '2026-01-30T19:41:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2221-2', 'hist-ticket-92-2221', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T19:41:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2221', 'hist-ticket-92-2221', 'cash', 29500, 'completed', '2026-01-30T19:41:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2222', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-30T11:24:50.000Z', '2026-01-30T11:24:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2222-1', 'hist-ticket-92-2222', 'prod-latte', 1, 15000, 0, '2026-01-30T11:24:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2222', 'hist-ticket-92-2222', 'cash', 15000, 'completed', '2026-01-30T11:24:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2223', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-30T19:46:44.000Z', '2026-01-30T19:46:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2223-1', 'hist-ticket-92-2223', 'prod-americano', 1, 12000, 0, '2026-01-30T19:46:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2223', 'hist-ticket-92-2223', 'cash', 12000, 'completed', '2026-01-30T19:46:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2224', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-30T08:21:45.000Z', '2026-01-30T08:21:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2224-1', 'hist-ticket-92-2224', 'prod-latte', 1, 15000, 0, '2026-01-30T08:21:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2224-2', 'hist-ticket-92-2224', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T08:21:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2224-3', 'hist-ticket-92-2224', 'prod-latte', 1, 15000, 0, '2026-01-30T08:21:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2224-4', 'hist-ticket-92-2224', 'prod-latte', 1, 15000, 0, '2026-01-30T08:21:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2224', 'hist-ticket-92-2224', 'cash', 59500, 'completed', '2026-01-30T08:21:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2225', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-30T10:08:25.000Z', '2026-01-30T10:08:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2225-1', 'hist-ticket-92-2225', 'prod-mocha', 1, 16500, 0, '2026-01-30T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2225-2', 'hist-ticket-92-2225', 'prod-mocha', 1, 16500, 0, '2026-01-30T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2225-3', 'hist-ticket-92-2225', 'prod-americano', 1, 12000, 0, '2026-01-30T10:08:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2225-4', 'hist-ticket-92-2225', 'prod-latte', 1, 15000, 0, '2026-01-30T10:08:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2225', 'hist-ticket-92-2225', 'cash', 60000, 'completed', '2026-01-30T10:08:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2226', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-30T12:40:24.000Z', '2026-01-30T12:40:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2226-1', 'hist-ticket-92-2226', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T12:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2226-2', 'hist-ticket-92-2226', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T12:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2226-3', 'hist-ticket-92-2226', 'prod-americano', 1, 12000, 0, '2026-01-30T12:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2226-4', 'hist-ticket-92-2226', 'prod-mocha', 1, 16500, 0, '2026-01-30T12:40:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2226', 'hist-ticket-92-2226', 'cash', 57500, 'completed', '2026-01-30T12:40:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2227', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-30T13:24:53.000Z', '2026-01-30T13:24:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2227-1', 'hist-ticket-92-2227', 'prod-latte', 1, 15000, 0, '2026-01-30T13:24:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2227-2', 'hist-ticket-92-2227', 'prod-latte', 1, 15000, 0, '2026-01-30T13:24:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2227', 'hist-ticket-92-2227', 'cash', 30000, 'completed', '2026-01-30T13:24:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2228', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-30T17:02:55.000Z', '2026-01-30T17:02:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2228-1', 'hist-ticket-92-2228', 'prod-latte', 1, 15000, 0, '2026-01-30T17:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2228-2', 'hist-ticket-92-2228', 'prod-americano', 1, 12000, 0, '2026-01-30T17:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2228-3', 'hist-ticket-92-2228', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T17:02:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2228-4', 'hist-ticket-92-2228', 'prod-mocha', 1, 16500, 0, '2026-01-30T17:02:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2228', 'hist-ticket-92-2228', 'cash', 58000, 'completed', '2026-01-30T17:02:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2229', o.id, r.id, 'paid', 'dine_in', 'pink', 3, 'Good.', u.id, '2026-01-30T15:20:43.000Z', '2026-01-30T15:20:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2229-1', 'hist-ticket-92-2229', 'prod-mocha', 1, 16500, 0, '2026-01-30T15:20:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2229-2', 'hist-ticket-92-2229', 'prod-latte', 1, 15000, 0, '2026-01-30T15:20:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2229-3', 'hist-ticket-92-2229', 'prod-americano', 1, 12000, 0, '2026-01-30T15:20:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2229', 'hist-ticket-92-2229', 'cash', 43500, 'completed', '2026-01-30T15:20:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2230', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-30T13:47:04.000Z', '2026-01-30T13:47:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2230-1', 'hist-ticket-92-2230', 'prod-mocha', 1, 16500, 0, '2026-01-30T13:47:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2230-2', 'hist-ticket-92-2230', 'prod-latte', 1, 15000, 0, '2026-01-30T13:47:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2230-3', 'hist-ticket-92-2230', 'prod-americano', 1, 12000, 0, '2026-01-30T13:47:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2230-4', 'hist-ticket-92-2230', 'prod-latte', 1, 15000, 0, '2026-01-30T13:47:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2230', 'hist-ticket-92-2230', 'cash', 58500, 'completed', '2026-01-30T13:47:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-92-2231', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-30T12:54:45.000Z', '2026-01-30T12:54:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2231-1', 'hist-ticket-92-2231', 'prod-mocha', 1, 16500, 0, '2026-01-30T12:54:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2231-2', 'hist-ticket-92-2231', 'prod-cappuccino', 1, 14500, 0, '2026-01-30T12:54:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-92-2231-3', 'hist-ticket-92-2231', 'prod-americano', 1, 12000, 0, '2026-01-30T12:54:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-92-2231', 'hist-ticket-92-2231', 'cash', 43000, 'completed', '2026-01-30T12:54:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2232', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-31T18:22:56.000Z', '2026-01-31T18:22:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2232-1', 'hist-ticket-93-2232', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T18:22:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2232-2', 'hist-ticket-93-2232', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:22:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2232-3', 'hist-ticket-93-2232', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:22:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2232', 'hist-ticket-93-2232', 'cash', 47500, 'completed', '2026-01-31T18:22:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2233', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-31T12:50:23.000Z', '2026-01-31T12:50:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2233-1', 'hist-ticket-93-2233', 'prod-mocha', 1, 16500, 0, '2026-01-31T12:50:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2233-2', 'hist-ticket-93-2233', 'prod-americano', 1, 12000, 0, '2026-01-31T12:50:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2233-3', 'hist-ticket-93-2233', 'prod-americano', 1, 12000, 0, '2026-01-31T12:50:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2233', 'hist-ticket-93-2233', 'cash', 40500, 'completed', '2026-01-31T12:50:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2234', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-31T11:45:01.000Z', '2026-01-31T11:45:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2234-1', 'hist-ticket-93-2234', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T11:45:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2234', 'hist-ticket-93-2234', 'cash', 14500, 'completed', '2026-01-31T11:45:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2235', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-31T17:56:15.000Z', '2026-01-31T17:56:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2235-1', 'hist-ticket-93-2235', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T17:56:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2235-2', 'hist-ticket-93-2235', 'prod-latte', 1, 15000, 0, '2026-01-31T17:56:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2235-3', 'hist-ticket-93-2235', 'prod-americano', 1, 12000, 0, '2026-01-31T17:56:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2235-4', 'hist-ticket-93-2235', 'prod-americano', 1, 12000, 0, '2026-01-31T17:56:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2235', 'hist-ticket-93-2235', 'cash', 53500, 'completed', '2026-01-31T17:56:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2236', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-31T18:30:21.000Z', '2026-01-31T18:30:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2236-1', 'hist-ticket-93-2236', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:30:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2236-2', 'hist-ticket-93-2236', 'prod-americano', 1, 12000, 0, '2026-01-31T18:30:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2236-3', 'hist-ticket-93-2236', 'prod-latte', 1, 15000, 0, '2026-01-31T18:30:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2236', 'hist-ticket-93-2236', 'cash', 43500, 'completed', '2026-01-31T18:30:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2237', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-01-31T19:07:11.000Z', '2026-01-31T19:07:11.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2237-1', 'hist-ticket-93-2237', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T19:07:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2237-2', 'hist-ticket-93-2237', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T19:07:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2237-3', 'hist-ticket-93-2237', 'prod-mocha', 1, 16500, 0, '2026-01-31T19:07:11.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2237-4', 'hist-ticket-93-2237', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T19:07:11.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2237', 'hist-ticket-93-2237', 'cash', 60000, 'completed', '2026-01-31T19:07:11.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2238', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-01-31T14:35:55.000Z', '2026-01-31T14:35:55.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2238-1', 'hist-ticket-93-2238', 'prod-americano', 1, 12000, 0, '2026-01-31T14:35:55.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2238-2', 'hist-ticket-93-2238', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T14:35:55.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2238', 'hist-ticket-93-2238', 'cash', 26500, 'completed', '2026-01-31T14:35:55.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2239', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-01-31T12:35:25.000Z', '2026-01-31T12:35:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2239-1', 'hist-ticket-93-2239', 'prod-latte', 1, 15000, 0, '2026-01-31T12:35:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2239-2', 'hist-ticket-93-2239', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T12:35:25.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2239', 'hist-ticket-93-2239', 'cash', 29500, 'completed', '2026-01-31T12:35:25.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2240', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-31T14:22:43.000Z', '2026-01-31T14:22:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2240-1', 'hist-ticket-93-2240', 'prod-latte', 1, 15000, 0, '2026-01-31T14:22:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2240-2', 'hist-ticket-93-2240', 'prod-americano', 1, 12000, 0, '2026-01-31T14:22:43.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2240-3', 'hist-ticket-93-2240', 'prod-americano', 1, 12000, 0, '2026-01-31T14:22:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2240', 'hist-ticket-93-2240', 'cash', 39000, 'completed', '2026-01-31T14:22:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2241', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-01-31T18:11:28.000Z', '2026-01-31T18:11:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2241-1', 'hist-ticket-93-2241', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T18:11:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2241-2', 'hist-ticket-93-2241', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:11:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2241-3', 'hist-ticket-93-2241', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T18:11:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2241', 'hist-ticket-93-2241', 'cash', 45500, 'completed', '2026-01-31T18:11:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2242', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-31T11:45:21.000Z', '2026-01-31T11:45:21.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2242-1', 'hist-ticket-93-2242', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:45:21.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2242-2', 'hist-ticket-93-2242', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:45:21.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2242', 'hist-ticket-93-2242', 'cash', 33000, 'completed', '2026-01-31T11:45:21.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2243', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-01-31T10:35:56.000Z', '2026-01-31T10:35:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2243-1', 'hist-ticket-93-2243', 'prod-americano', 1, 12000, 0, '2026-01-31T10:35:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2243-2', 'hist-ticket-93-2243', 'prod-latte', 1, 15000, 0, '2026-01-31T10:35:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2243-3', 'hist-ticket-93-2243', 'prod-mocha', 1, 16500, 0, '2026-01-31T10:35:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2243-4', 'hist-ticket-93-2243', 'prod-mocha', 1, 16500, 0, '2026-01-31T10:35:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2243', 'hist-ticket-93-2243', 'cash', 60000, 'completed', '2026-01-31T10:35:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2244', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-01-31T17:56:18.000Z', '2026-01-31T17:56:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2244-1', 'hist-ticket-93-2244', 'prod-americano', 1, 12000, 0, '2026-01-31T17:56:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2244', 'hist-ticket-93-2244', 'cash', 12000, 'completed', '2026-01-31T17:56:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2245', o.id, r.id, 'paid', 'dine_in', 'blue', 3, 'Good.', u.id, '2026-01-31T16:19:09.000Z', '2026-01-31T16:19:09.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2245-1', 'hist-ticket-93-2245', 'prod-latte', 1, 15000, 0, '2026-01-31T16:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2245-2', 'hist-ticket-93-2245', 'prod-americano', 1, 12000, 0, '2026-01-31T16:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2245-3', 'hist-ticket-93-2245', 'prod-latte', 1, 15000, 0, '2026-01-31T16:19:09.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2245-4', 'hist-ticket-93-2245', 'prod-mocha', 1, 16500, 0, '2026-01-31T16:19:09.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2245', 'hist-ticket-93-2245', 'cash', 58500, 'completed', '2026-01-31T16:19:09.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2246', o.id, r.id, 'paid', 'dine_in', 'red', 5, 'Great coffee!', u.id, '2026-01-31T17:23:33.000Z', '2026-01-31T17:23:33.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2246-1', 'hist-ticket-93-2246', 'prod-americano', 1, 12000, 0, '2026-01-31T17:23:33.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2246-2', 'hist-ticket-93-2246', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T17:23:33.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2246', 'hist-ticket-93-2246', 'cash', 26500, 'completed', '2026-01-31T17:23:33.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2247', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-31T16:51:03.000Z', '2026-01-31T16:51:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2247-1', 'hist-ticket-93-2247', 'prod-latte', 1, 15000, 0, '2026-01-31T16:51:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2247', 'hist-ticket-93-2247', 'cash', 15000, 'completed', '2026-01-31T16:51:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2248', o.id, r.id, 'paid', 'takeout', 'red', 5, 'Great coffee!', u.id, '2026-01-31T11:00:03.000Z', '2026-01-31T11:00:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2248-1', 'hist-ticket-93-2248', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:00:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2248-2', 'hist-ticket-93-2248', 'prod-latte', 1, 15000, 0, '2026-01-31T11:00:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2248-3', 'hist-ticket-93-2248', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T11:00:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2248', 'hist-ticket-93-2248', 'cash', 46000, 'completed', '2026-01-31T11:00:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2249', o.id, r.id, 'paid', 'dine_in', 'yellow', 3, 'Good.', u.id, '2026-01-31T10:53:36.000Z', '2026-01-31T10:53:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2249-1', 'hist-ticket-93-2249', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T10:53:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2249-2', 'hist-ticket-93-2249', 'prod-mocha', 1, 16500, 0, '2026-01-31T10:53:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2249', 'hist-ticket-93-2249', 'cash', 31000, 'completed', '2026-01-31T10:53:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2250', o.id, r.id, 'paid', 'takeout', 'brown', 4, 'Good.', u.id, '2026-01-31T17:40:24.000Z', '2026-01-31T17:40:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2250-1', 'hist-ticket-93-2250', 'prod-latte', 1, 15000, 0, '2026-01-31T17:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2250-2', 'hist-ticket-93-2250', 'prod-americano', 1, 12000, 0, '2026-01-31T17:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2250-3', 'hist-ticket-93-2250', 'prod-mocha', 1, 16500, 0, '2026-01-31T17:40:24.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2250-4', 'hist-ticket-93-2250', 'prod-mocha', 1, 16500, 0, '2026-01-31T17:40:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2250', 'hist-ticket-93-2250', 'cash', 60000, 'completed', '2026-01-31T17:40:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2251', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-01-31T18:43:58.000Z', '2026-01-31T18:43:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2251-1', 'hist-ticket-93-2251', 'prod-latte', 1, 15000, 0, '2026-01-31T18:43:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2251-2', 'hist-ticket-93-2251', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:43:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2251', 'hist-ticket-93-2251', 'cash', 31500, 'completed', '2026-01-31T18:43:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2252', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-01-31T16:01:08.000Z', '2026-01-31T16:01:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2252-1', 'hist-ticket-93-2252', 'prod-latte', 1, 15000, 0, '2026-01-31T16:01:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2252-2', 'hist-ticket-93-2252', 'prod-latte', 1, 15000, 0, '2026-01-31T16:01:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2252-3', 'hist-ticket-93-2252', 'prod-americano', 1, 12000, 0, '2026-01-31T16:01:08.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2252-4', 'hist-ticket-93-2252', 'prod-americano', 1, 12000, 0, '2026-01-31T16:01:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2252', 'hist-ticket-93-2252', 'cash', 54000, 'completed', '2026-01-31T16:01:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2253', o.id, r.id, 'paid', 'takeout', 'red', 3, 'Good.', u.id, '2026-01-31T16:34:44.000Z', '2026-01-31T16:34:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2253-1', 'hist-ticket-93-2253', 'prod-mocha', 1, 16500, 0, '2026-01-31T16:34:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2253-2', 'hist-ticket-93-2253', 'prod-latte', 1, 15000, 0, '2026-01-31T16:34:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2253-3', 'hist-ticket-93-2253', 'prod-mocha', 1, 16500, 0, '2026-01-31T16:34:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2253', 'hist-ticket-93-2253', 'cash', 48000, 'completed', '2026-01-31T16:34:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2254', o.id, r.id, 'paid', 'dine_in', 'orange', 4, 'Good.', u.id, '2026-01-31T08:40:56.000Z', '2026-01-31T08:40:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2254-1', 'hist-ticket-93-2254', 'prod-mocha', 1, 16500, 0, '2026-01-31T08:40:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2254-2', 'hist-ticket-93-2254', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T08:40:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2254', 'hist-ticket-93-2254', 'cash', 31000, 'completed', '2026-01-31T08:40:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2255', o.id, r.id, 'paid', 'takeout', 'orange', 4, 'Good.', u.id, '2026-01-31T08:42:34.000Z', '2026-01-31T08:42:34.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2255-1', 'hist-ticket-93-2255', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T08:42:34.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2255', 'hist-ticket-93-2255', 'cash', 14500, 'completed', '2026-01-31T08:42:34.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2256', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-31T08:31:16.000Z', '2026-01-31T08:31:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2256-1', 'hist-ticket-93-2256', 'prod-latte', 1, 15000, 0, '2026-01-31T08:31:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2256', 'hist-ticket-93-2256', 'cash', 15000, 'completed', '2026-01-31T08:31:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2257', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-01-31T11:09:07.000Z', '2026-01-31T11:09:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2257-1', 'hist-ticket-93-2257', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T11:09:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2257', 'hist-ticket-93-2257', 'cash', 14500, 'completed', '2026-01-31T11:09:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2258', o.id, r.id, 'paid', 'dine_in', 'purple', 4, 'Good.', u.id, '2026-01-31T18:19:10.000Z', '2026-01-31T18:19:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2258-1', 'hist-ticket-93-2258', 'prod-latte', 1, 15000, 0, '2026-01-31T18:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2258-2', 'hist-ticket-93-2258', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T18:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2258-3', 'hist-ticket-93-2258', 'prod-mocha', 1, 16500, 0, '2026-01-31T18:19:10.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2258-4', 'hist-ticket-93-2258', 'prod-americano', 1, 12000, 0, '2026-01-31T18:19:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2258', 'hist-ticket-93-2258', 'cash', 58000, 'completed', '2026-01-31T18:19:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2259', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-01-31T11:43:02.000Z', '2026-01-31T11:43:02.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2259-1', 'hist-ticket-93-2259', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:43:02.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2259-2', 'hist-ticket-93-2259', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T11:43:02.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2259', 'hist-ticket-93-2259', 'cash', 31000, 'completed', '2026-01-31T11:43:02.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2260', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-31T13:51:18.000Z', '2026-01-31T13:51:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2260-1', 'hist-ticket-93-2260', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T13:51:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2260-2', 'hist-ticket-93-2260', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T13:51:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2260-3', 'hist-ticket-93-2260', 'prod-latte', 1, 15000, 0, '2026-01-31T13:51:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2260-4', 'hist-ticket-93-2260', 'prod-mocha', 1, 16500, 0, '2026-01-31T13:51:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2260', 'hist-ticket-93-2260', 'cash', 60500, 'completed', '2026-01-31T13:51:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2261', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-31T08:02:39.000Z', '2026-01-31T08:02:39.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2261-1', 'hist-ticket-93-2261', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T08:02:39.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2261-2', 'hist-ticket-93-2261', 'prod-mocha', 1, 16500, 0, '2026-01-31T08:02:39.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2261', 'hist-ticket-93-2261', 'cash', 31000, 'completed', '2026-01-31T08:02:39.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2262', o.id, r.id, 'paid', 'takeout', 'yellow', 5, 'Great coffee!', u.id, '2026-01-31T13:52:40.000Z', '2026-01-31T13:52:40.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2262-1', 'hist-ticket-93-2262', 'prod-americano', 1, 12000, 0, '2026-01-31T13:52:40.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2262-2', 'hist-ticket-93-2262', 'prod-mocha', 1, 16500, 0, '2026-01-31T13:52:40.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2262', 'hist-ticket-93-2262', 'cash', 28500, 'completed', '2026-01-31T13:52:40.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2263', o.id, r.id, 'paid', 'takeout', 'purple', 5, 'Great coffee!', u.id, '2026-01-31T11:55:53.000Z', '2026-01-31T11:55:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2263-1', 'hist-ticket-93-2263', 'prod-americano', 1, 12000, 0, '2026-01-31T11:55:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2263-2', 'hist-ticket-93-2263', 'prod-americano', 1, 12000, 0, '2026-01-31T11:55:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2263-3', 'hist-ticket-93-2263', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:55:53.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2263-4', 'hist-ticket-93-2263', 'prod-mocha', 1, 16500, 0, '2026-01-31T11:55:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2263', 'hist-ticket-93-2263', 'cash', 57000, 'completed', '2026-01-31T11:55:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2264', o.id, r.id, 'paid', 'dine_in', 'orange', NULL, NULL, u.id, '2026-01-31T18:13:12.000Z', '2026-01-31T18:13:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2264-1', 'hist-ticket-93-2264', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T18:13:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2264', 'hist-ticket-93-2264', 'cash', 14500, 'completed', '2026-01-31T18:13:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2265', o.id, r.id, 'paid', 'takeout', 'yellow', 3, 'Good.', u.id, '2026-01-31T12:32:45.000Z', '2026-01-31T12:32:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2265-1', 'hist-ticket-93-2265', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T12:32:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2265-2', 'hist-ticket-93-2265', 'prod-americano', 1, 12000, 0, '2026-01-31T12:32:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2265', 'hist-ticket-93-2265', 'cash', 26500, 'completed', '2026-01-31T12:32:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2266', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-01-31T16:23:24.000Z', '2026-01-31T16:23:24.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2266-1', 'hist-ticket-93-2266', 'prod-latte', 1, 15000, 0, '2026-01-31T16:23:24.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2266', 'hist-ticket-93-2266', 'cash', 15000, 'completed', '2026-01-31T16:23:24.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2267', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-01-31T09:29:01.000Z', '2026-01-31T09:29:01.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2267-1', 'hist-ticket-93-2267', 'prod-mocha', 1, 16500, 0, '2026-01-31T09:29:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2267-2', 'hist-ticket-93-2267', 'prod-americano', 1, 12000, 0, '2026-01-31T09:29:01.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2267-3', 'hist-ticket-93-2267', 'prod-americano', 1, 12000, 0, '2026-01-31T09:29:01.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2267', 'hist-ticket-93-2267', 'cash', 40500, 'completed', '2026-01-31T09:29:01.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2268', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-01-31T12:14:22.000Z', '2026-01-31T12:14:22.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2268-1', 'hist-ticket-93-2268', 'prod-latte', 1, 15000, 0, '2026-01-31T12:14:22.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2268-2', 'hist-ticket-93-2268', 'prod-latte', 1, 15000, 0, '2026-01-31T12:14:22.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2268', 'hist-ticket-93-2268', 'cash', 30000, 'completed', '2026-01-31T12:14:22.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2269', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-31T16:50:59.000Z', '2026-01-31T16:50:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2269-1', 'hist-ticket-93-2269', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T16:50:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2269', 'hist-ticket-93-2269', 'cash', 14500, 'completed', '2026-01-31T16:50:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-93-2270', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-01-31T15:06:20.000Z', '2026-01-31T15:06:20.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2270-1', 'hist-ticket-93-2270', 'prod-mocha', 1, 16500, 0, '2026-01-31T15:06:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2270-2', 'hist-ticket-93-2270', 'prod-latte', 1, 15000, 0, '2026-01-31T15:06:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2270-3', 'hist-ticket-93-2270', 'prod-cappuccino', 1, 14500, 0, '2026-01-31T15:06:20.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-93-2270-4', 'hist-ticket-93-2270', 'prod-latte', 1, 15000, 0, '2026-01-31T15:06:20.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-93-2270', 'hist-ticket-93-2270', 'cash', 61000, 'completed', '2026-01-31T15:06:20.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2271', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-01T11:09:06.000Z', '2026-02-01T11:09:06.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2271-1', 'hist-ticket-94-2271', 'prod-mocha', 1, 16500, 0, '2026-02-01T11:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2271-2', 'hist-ticket-94-2271', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T11:09:06.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2271-3', 'hist-ticket-94-2271', 'prod-americano', 1, 12000, 0, '2026-02-01T11:09:06.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2271', 'hist-ticket-94-2271', 'cash', 43000, 'completed', '2026-02-01T11:09:06.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2272', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-02-01T08:15:03.000Z', '2026-02-01T08:15:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2272-1', 'hist-ticket-94-2272', 'prod-mocha', 1, 16500, 0, '2026-02-01T08:15:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2272-2', 'hist-ticket-94-2272', 'prod-americano', 1, 12000, 0, '2026-02-01T08:15:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2272-3', 'hist-ticket-94-2272', 'prod-latte', 1, 15000, 0, '2026-02-01T08:15:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2272', 'hist-ticket-94-2272', 'cash', 43500, 'completed', '2026-02-01T08:15:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2273', o.id, r.id, 'paid', 'takeout', 'brown', 3, 'Good.', u.id, '2026-02-01T10:33:07.000Z', '2026-02-01T10:33:07.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2273-1', 'hist-ticket-94-2273', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T10:33:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2273-2', 'hist-ticket-94-2273', 'prod-latte', 1, 15000, 0, '2026-02-01T10:33:07.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2273-3', 'hist-ticket-94-2273', 'prod-latte', 1, 15000, 0, '2026-02-01T10:33:07.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2273', 'hist-ticket-94-2273', 'cash', 44500, 'completed', '2026-02-01T10:33:07.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2274', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-01T18:45:35.000Z', '2026-02-01T18:45:35.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2274-1', 'hist-ticket-94-2274', 'prod-latte', 1, 15000, 0, '2026-02-01T18:45:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2274-2', 'hist-ticket-94-2274', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T18:45:35.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2274-3', 'hist-ticket-94-2274', 'prod-latte', 1, 15000, 0, '2026-02-01T18:45:35.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2274', 'hist-ticket-94-2274', 'cash', 44500, 'completed', '2026-02-01T18:45:35.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2275', o.id, r.id, 'paid', 'takeout', 'pink', 4, 'Good.', u.id, '2026-02-01T08:39:10.000Z', '2026-02-01T08:39:10.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2275-1', 'hist-ticket-94-2275', 'prod-mocha', 1, 16500, 0, '2026-02-01T08:39:10.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2275', 'hist-ticket-94-2275', 'cash', 16500, 'completed', '2026-02-01T08:39:10.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2276', o.id, r.id, 'paid', 'takeout', 'pink', 5, 'Great coffee!', u.id, '2026-02-01T09:14:53.000Z', '2026-02-01T09:14:53.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2276-1', 'hist-ticket-94-2276', 'prod-latte', 1, 15000, 0, '2026-02-01T09:14:53.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2276', 'hist-ticket-94-2276', 'cash', 15000, 'completed', '2026-02-01T09:14:53.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2277', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-01T09:57:13.000Z', '2026-02-01T09:57:13.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2277-1', 'hist-ticket-94-2277', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:57:13.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2277-2', 'hist-ticket-94-2277', 'prod-americano', 1, 12000, 0, '2026-02-01T09:57:13.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2277', 'hist-ticket-94-2277', 'cash', 26500, 'completed', '2026-02-01T09:57:13.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2278', o.id, r.id, 'paid', 'dine_in', 'red', 4, 'Good.', u.id, '2026-02-01T09:10:15.000Z', '2026-02-01T09:10:15.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2278-1', 'hist-ticket-94-2278', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:10:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2278-2', 'hist-ticket-94-2278', 'prod-mocha', 1, 16500, 0, '2026-02-01T09:10:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2278-3', 'hist-ticket-94-2278', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:10:15.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2278-4', 'hist-ticket-94-2278', 'prod-americano', 1, 12000, 0, '2026-02-01T09:10:15.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2278', 'hist-ticket-94-2278', 'cash', 57500, 'completed', '2026-02-01T09:10:15.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2279', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-01T12:03:42.000Z', '2026-02-01T12:03:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2279-1', 'hist-ticket-94-2279', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T12:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2279-2', 'hist-ticket-94-2279', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2279-3', 'hist-ticket-94-2279', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:03:42.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2279-4', 'hist-ticket-94-2279', 'prod-americano', 1, 12000, 0, '2026-02-01T12:03:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2279', 'hist-ticket-94-2279', 'cash', 59500, 'completed', '2026-02-01T12:03:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2280', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-01T08:58:57.000Z', '2026-02-01T08:58:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2280-1', 'hist-ticket-94-2280', 'prod-latte', 1, 15000, 0, '2026-02-01T08:58:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2280', 'hist-ticket-94-2280', 'cash', 15000, 'completed', '2026-02-01T08:58:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2281', o.id, r.id, 'paid', 'dine_in', 'orange', 3, 'Good.', u.id, '2026-02-01T12:52:52.000Z', '2026-02-01T12:52:52.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2281-1', 'hist-ticket-94-2281', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2281-2', 'hist-ticket-94-2281', 'prod-americano', 1, 12000, 0, '2026-02-01T12:52:52.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2281-3', 'hist-ticket-94-2281', 'prod-americano', 1, 12000, 0, '2026-02-01T12:52:52.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2281', 'hist-ticket-94-2281', 'cash', 40500, 'completed', '2026-02-01T12:52:52.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2282', o.id, r.id, 'paid', 'dine_in', 'brown', 4, 'Good.', u.id, '2026-02-01T09:01:56.000Z', '2026-02-01T09:01:56.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2282-1', 'hist-ticket-94-2282', 'prod-latte', 1, 15000, 0, '2026-02-01T09:01:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2282-2', 'hist-ticket-94-2282', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:01:56.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2282-3', 'hist-ticket-94-2282', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:01:56.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2282', 'hist-ticket-94-2282', 'cash', 44000, 'completed', '2026-02-01T09:01:56.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2283', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-01T13:25:37.000Z', '2026-02-01T13:25:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2283-1', 'hist-ticket-94-2283', 'prod-latte', 1, 15000, 0, '2026-02-01T13:25:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2283-2', 'hist-ticket-94-2283', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:25:37.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2283-3', 'hist-ticket-94-2283', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:25:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2283', 'hist-ticket-94-2283', 'cash', 44000, 'completed', '2026-02-01T13:25:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2284', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-01T12:58:31.000Z', '2026-02-01T12:58:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2284-1', 'hist-ticket-94-2284', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:58:31.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2284-2', 'hist-ticket-94-2284', 'prod-americano', 1, 12000, 0, '2026-02-01T12:58:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2284', 'hist-ticket-94-2284', 'cash', 28500, 'completed', '2026-02-01T12:58:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2285', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-01T11:48:16.000Z', '2026-02-01T11:48:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2285-1', 'hist-ticket-94-2285', 'prod-mocha', 1, 16500, 0, '2026-02-01T11:48:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2285', 'hist-ticket-94-2285', 'cash', 16500, 'completed', '2026-02-01T11:48:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2286', o.id, r.id, 'paid', 'dine_in', 'brown', NULL, NULL, u.id, '2026-02-01T08:18:16.000Z', '2026-02-01T08:18:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2286-1', 'hist-ticket-94-2286', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T08:18:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2286', 'hist-ticket-94-2286', 'cash', 14500, 'completed', '2026-02-01T08:18:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2287', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-01T18:40:51.000Z', '2026-02-01T18:40:51.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2287-1', 'hist-ticket-94-2287', 'prod-latte', 1, 15000, 0, '2026-02-01T18:40:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2287-2', 'hist-ticket-94-2287', 'prod-americano', 1, 12000, 0, '2026-02-01T18:40:51.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2287-3', 'hist-ticket-94-2287', 'prod-mocha', 1, 16500, 0, '2026-02-01T18:40:51.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2287', 'hist-ticket-94-2287', 'cash', 43500, 'completed', '2026-02-01T18:40:51.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2288', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-01T18:24:43.000Z', '2026-02-01T18:24:43.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2288-1', 'hist-ticket-94-2288', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T18:24:43.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2288', 'hist-ticket-94-2288', 'cash', 14500, 'completed', '2026-02-01T18:24:43.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2289', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-01T17:01:30.000Z', '2026-02-01T17:01:30.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2289-1', 'hist-ticket-94-2289', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T17:01:30.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2289', 'hist-ticket-94-2289', 'cash', 14500, 'completed', '2026-02-01T17:01:30.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2290', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-01T15:32:47.000Z', '2026-02-01T15:32:47.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2290-1', 'hist-ticket-94-2290', 'prod-latte', 1, 15000, 0, '2026-02-01T15:32:47.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2290-2', 'hist-ticket-94-2290', 'prod-latte', 1, 15000, 0, '2026-02-01T15:32:47.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2290', 'hist-ticket-94-2290', 'cash', 30000, 'completed', '2026-02-01T15:32:47.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2291', o.id, r.id, 'paid', 'dine_in', 'red', 3, 'Good.', u.id, '2026-02-01T13:43:59.000Z', '2026-02-01T13:43:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2291-1', 'hist-ticket-94-2291', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:43:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2291', 'hist-ticket-94-2291', 'cash', 14500, 'completed', '2026-02-01T13:43:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2292', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-01T14:49:44.000Z', '2026-02-01T14:49:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2292-1', 'hist-ticket-94-2292', 'prod-americano', 1, 12000, 0, '2026-02-01T14:49:44.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2292-2', 'hist-ticket-94-2292', 'prod-latte', 1, 15000, 0, '2026-02-01T14:49:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2292', 'hist-ticket-94-2292', 'cash', 27000, 'completed', '2026-02-01T14:49:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2293', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-01T17:13:31.000Z', '2026-02-01T17:13:31.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2293-1', 'hist-ticket-94-2293', 'prod-latte', 1, 15000, 0, '2026-02-01T17:13:31.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2293', 'hist-ticket-94-2293', 'cash', 15000, 'completed', '2026-02-01T17:13:31.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2294', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-01T13:42:42.000Z', '2026-02-01T13:42:42.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2294-1', 'hist-ticket-94-2294', 'prod-mocha', 1, 16500, 0, '2026-02-01T13:42:42.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2294', 'hist-ticket-94-2294', 'cash', 16500, 'completed', '2026-02-01T13:42:42.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2295', o.id, r.id, 'paid', 'takeout', 'yellow', 4, 'Good.', u.id, '2026-02-01T12:13:08.000Z', '2026-02-01T12:13:08.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2295-1', 'hist-ticket-94-2295', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:13:08.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2295', 'hist-ticket-94-2295', 'cash', 16500, 'completed', '2026-02-01T12:13:08.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2296', o.id, r.id, 'paid', 'dine_in', 'brown', 3, 'Good.', u.id, '2026-02-01T15:06:58.000Z', '2026-02-01T15:06:58.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2296-1', 'hist-ticket-94-2296', 'prod-mocha', 1, 16500, 0, '2026-02-01T15:06:58.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2296-2', 'hist-ticket-94-2296', 'prod-mocha', 1, 16500, 0, '2026-02-01T15:06:58.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2296', 'hist-ticket-94-2296', 'cash', 33000, 'completed', '2026-02-01T15:06:58.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2297', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-01T16:57:29.000Z', '2026-02-01T16:57:29.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2297-1', 'hist-ticket-94-2297', 'prod-mocha', 1, 16500, 0, '2026-02-01T16:57:29.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2297', 'hist-ticket-94-2297', 'cash', 16500, 'completed', '2026-02-01T16:57:29.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2298', o.id, r.id, 'paid', 'takeout', 'brown', 5, 'Great coffee!', u.id, '2026-02-01T16:00:12.000Z', '2026-02-01T16:00:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2298-1', 'hist-ticket-94-2298', 'prod-americano', 1, 12000, 0, '2026-02-01T16:00:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2298-2', 'hist-ticket-94-2298', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T16:00:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2298', 'hist-ticket-94-2298', 'cash', 26500, 'completed', '2026-02-01T16:00:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2299', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-01T13:55:45.000Z', '2026-02-01T13:55:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2299-1', 'hist-ticket-94-2299', 'prod-mocha', 1, 16500, 0, '2026-02-01T13:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2299-2', 'hist-ticket-94-2299', 'prod-latte', 1, 15000, 0, '2026-02-01T13:55:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2299-3', 'hist-ticket-94-2299', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:55:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2299', 'hist-ticket-94-2299', 'cash', 46000, 'completed', '2026-02-01T13:55:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2300', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-01T14:52:45.000Z', '2026-02-01T14:52:45.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2300-1', 'hist-ticket-94-2300', 'prod-americano', 1, 12000, 0, '2026-02-01T14:52:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2300-2', 'hist-ticket-94-2300', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T14:52:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2300-3', 'hist-ticket-94-2300', 'prod-americano', 1, 12000, 0, '2026-02-01T14:52:45.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2300-4', 'hist-ticket-94-2300', 'prod-latte', 1, 15000, 0, '2026-02-01T14:52:45.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2300', 'hist-ticket-94-2300', 'cash', 53500, 'completed', '2026-02-01T14:52:45.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2301', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-01T18:37:16.000Z', '2026-02-01T18:37:16.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2301-1', 'hist-ticket-94-2301', 'prod-latte', 1, 15000, 0, '2026-02-01T18:37:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2301-2', 'hist-ticket-94-2301', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T18:37:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2301-3', 'hist-ticket-94-2301', 'prod-latte', 1, 15000, 0, '2026-02-01T18:37:16.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2301-4', 'hist-ticket-94-2301', 'prod-americano', 1, 12000, 0, '2026-02-01T18:37:16.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2301', 'hist-ticket-94-2301', 'cash', 56500, 'completed', '2026-02-01T18:37:16.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2302', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-01T13:02:41.000Z', '2026-02-01T13:02:41.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2302-1', 'hist-ticket-94-2302', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:02:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2302-2', 'hist-ticket-94-2302', 'prod-americano', 1, 12000, 0, '2026-02-01T13:02:41.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2302-3', 'hist-ticket-94-2302', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T13:02:41.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2302', 'hist-ticket-94-2302', 'cash', 41000, 'completed', '2026-02-01T13:02:41.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2303', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-01T18:31:04.000Z', '2026-02-01T18:31:04.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2303-1', 'hist-ticket-94-2303', 'prod-americano', 1, 12000, 0, '2026-02-01T18:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2303-2', 'hist-ticket-94-2303', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T18:31:04.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2303-3', 'hist-ticket-94-2303', 'prod-latte', 1, 15000, 0, '2026-02-01T18:31:04.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2303', 'hist-ticket-94-2303', 'cash', 41500, 'completed', '2026-02-01T18:31:04.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2304', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-01T18:41:48.000Z', '2026-02-01T18:41:48.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2304-1', 'hist-ticket-94-2304', 'prod-mocha', 1, 16500, 0, '2026-02-01T18:41:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2304-2', 'hist-ticket-94-2304', 'prod-mocha', 1, 16500, 0, '2026-02-01T18:41:48.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2304-3', 'hist-ticket-94-2304', 'prod-americano', 1, 12000, 0, '2026-02-01T18:41:48.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2304', 'hist-ticket-94-2304', 'cash', 45000, 'completed', '2026-02-01T18:41:48.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2305', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-01T12:48:18.000Z', '2026-02-01T12:48:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2305-1', 'hist-ticket-94-2305', 'prod-mocha', 1, 16500, 0, '2026-02-01T12:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2305-2', 'hist-ticket-94-2305', 'prod-latte', 1, 15000, 0, '2026-02-01T12:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2305-3', 'hist-ticket-94-2305', 'prod-latte', 1, 15000, 0, '2026-02-01T12:48:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2305-4', 'hist-ticket-94-2305', 'prod-americano', 1, 12000, 0, '2026-02-01T12:48:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2305', 'hist-ticket-94-2305', 'cash', 58500, 'completed', '2026-02-01T12:48:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2306', o.id, r.id, 'paid', 'takeout', 'orange', 3, 'Good.', u.id, '2026-02-01T09:41:50.000Z', '2026-02-01T09:41:50.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2306-1', 'hist-ticket-94-2306', 'prod-latte', 1, 15000, 0, '2026-02-01T09:41:50.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2306-2', 'hist-ticket-94-2306', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T09:41:50.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2306', 'hist-ticket-94-2306', 'cash', 29500, 'completed', '2026-02-01T09:41:50.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2307', o.id, r.id, 'paid', 'takeout', 'red', NULL, NULL, u.id, '2026-02-01T14:48:59.000Z', '2026-02-01T14:48:59.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2307-1', 'hist-ticket-94-2307', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T14:48:59.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2307', 'hist-ticket-94-2307', 'cash', 14500, 'completed', '2026-02-01T14:48:59.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2308', o.id, r.id, 'paid', 'takeout', 'green', NULL, NULL, u.id, '2026-02-01T08:36:03.000Z', '2026-02-01T08:36:03.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2308-1', 'hist-ticket-94-2308', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T08:36:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2308-2', 'hist-ticket-94-2308', 'prod-americano', 1, 12000, 0, '2026-02-01T08:36:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2308-3', 'hist-ticket-94-2308', 'prod-americano', 1, 12000, 0, '2026-02-01T08:36:03.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2308-4', 'hist-ticket-94-2308', 'prod-cappuccino', 1, 14500, 0, '2026-02-01T08:36:03.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2308', 'hist-ticket-94-2308', 'cash', 53000, 'completed', '2026-02-01T08:36:03.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2309', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-01T08:27:17.000Z', '2026-02-01T08:27:17.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2309-1', 'hist-ticket-94-2309', 'prod-americano', 1, 12000, 0, '2026-02-01T08:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2309-2', 'hist-ticket-94-2309', 'prod-americano', 1, 12000, 0, '2026-02-01T08:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2309-3', 'hist-ticket-94-2309', 'prod-americano', 1, 12000, 0, '2026-02-01T08:27:17.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2309-4', 'hist-ticket-94-2309', 'prod-latte', 1, 15000, 0, '2026-02-01T08:27:17.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2309', 'hist-ticket-94-2309', 'cash', 51000, 'completed', '2026-02-01T08:27:17.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-94-2310', o.id, r.id, 'paid', 'takeout', 'blue', NULL, NULL, u.id, '2026-02-01T10:24:37.000Z', '2026-02-01T10:24:37.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-94-2310-1', 'hist-ticket-94-2310', 'prod-latte', 1, 15000, 0, '2026-02-01T10:24:37.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-94-2310', 'hist-ticket-94-2310', 'cash', 15000, 'completed', '2026-02-01T10:24:37.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2311', o.id, r.id, 'paid', 'takeout', 'green', 5, 'Great coffee!', u.id, '2026-02-02T19:08:18.000Z', '2026-02-02T19:08:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2311-1', 'hist-ticket-95-2311', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T19:08:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2311-2', 'hist-ticket-95-2311', 'prod-mocha', 1, 16500, 0, '2026-02-02T19:08:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2311', 'hist-ticket-95-2311', 'cash', 31000, 'completed', '2026-02-02T19:08:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2312', o.id, r.id, 'paid', 'dine_in', 'blue', NULL, NULL, u.id, '2026-02-02T18:48:49.000Z', '2026-02-02T18:48:49.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2312-1', 'hist-ticket-95-2312', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T18:48:49.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2312', 'hist-ticket-95-2312', 'cash', 14500, 'completed', '2026-02-02T18:48:49.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2313', o.id, r.id, 'paid', 'takeout', 'brown', NULL, NULL, u.id, '2026-02-02T18:03:36.000Z', '2026-02-02T18:03:36.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2313-1', 'hist-ticket-95-2313', 'prod-mocha', 1, 16500, 0, '2026-02-02T18:03:36.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2313-2', 'hist-ticket-95-2313', 'prod-latte', 1, 15000, 0, '2026-02-02T18:03:36.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2313', 'hist-ticket-95-2313', 'cash', 31500, 'completed', '2026-02-02T18:03:36.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2314', o.id, r.id, 'paid', 'takeout', 'orange', NULL, NULL, u.id, '2026-02-02T10:20:14.000Z', '2026-02-02T10:20:14.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2314-1', 'hist-ticket-95-2314', 'prod-latte', 1, 15000, 0, '2026-02-02T10:20:14.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2314', 'hist-ticket-95-2314', 'cash', 15000, 'completed', '2026-02-02T10:20:14.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2315', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-02T18:36:57.000Z', '2026-02-02T18:36:57.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2315-1', 'hist-ticket-95-2315', 'prod-mocha', 1, 16500, 0, '2026-02-02T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2315-2', 'hist-ticket-95-2315', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2315-3', 'hist-ticket-95-2315', 'prod-latte', 1, 15000, 0, '2026-02-02T18:36:57.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2315-4', 'hist-ticket-95-2315', 'prod-mocha', 1, 16500, 0, '2026-02-02T18:36:57.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2315', 'hist-ticket-95-2315', 'cash', 62500, 'completed', '2026-02-02T18:36:57.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2316', o.id, r.id, 'paid', 'dine_in', 'yellow', NULL, NULL, u.id, '2026-02-02T18:57:44.000Z', '2026-02-02T18:57:44.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2316-1', 'hist-ticket-95-2316', 'prod-americano', 1, 12000, 0, '2026-02-02T18:57:44.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2316', 'hist-ticket-95-2316', 'cash', 12000, 'completed', '2026-02-02T18:57:44.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2317', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-02T11:44:28.000Z', '2026-02-02T11:44:28.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2317-1', 'hist-ticket-95-2317', 'prod-mocha', 1, 16500, 0, '2026-02-02T11:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2317-2', 'hist-ticket-95-2317', 'prod-latte', 1, 15000, 0, '2026-02-02T11:44:28.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2317-3', 'hist-ticket-95-2317', 'prod-mocha', 1, 16500, 0, '2026-02-02T11:44:28.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2317', 'hist-ticket-95-2317', 'cash', 48000, 'completed', '2026-02-02T11:44:28.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2318', o.id, r.id, 'paid', 'dine_in', 'green', NULL, NULL, u.id, '2026-02-02T15:51:00.000Z', '2026-02-02T15:51:00.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2318-1', 'hist-ticket-95-2318', 'prod-mocha', 1, 16500, 0, '2026-02-02T15:51:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2318-2', 'hist-ticket-95-2318', 'prod-americano', 1, 12000, 0, '2026-02-02T15:51:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2318-3', 'hist-ticket-95-2318', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T15:51:00.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2318-4', 'hist-ticket-95-2318', 'prod-americano', 1, 12000, 0, '2026-02-02T15:51:00.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2318', 'hist-ticket-95-2318', 'cash', 55000, 'completed', '2026-02-02T15:51:00.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2319', o.id, r.id, 'paid', 'takeout', 'purple', 4, 'Good.', u.id, '2026-02-02T16:48:12.000Z', '2026-02-02T16:48:12.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2319-1', 'hist-ticket-95-2319', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T16:48:12.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2319-2', 'hist-ticket-95-2319', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T16:48:12.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2319', 'hist-ticket-95-2319', 'cash', 29000, 'completed', '2026-02-02T16:48:12.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2320', o.id, r.id, 'paid', 'takeout', 'yellow', NULL, NULL, u.id, '2026-02-02T14:21:32.000Z', '2026-02-02T14:21:32.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2320-1', 'hist-ticket-95-2320', 'prod-mocha', 1, 16500, 0, '2026-02-02T14:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2320-2', 'hist-ticket-95-2320', 'prod-americano', 1, 12000, 0, '2026-02-02T14:21:32.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2320-3', 'hist-ticket-95-2320', 'prod-americano', 1, 12000, 0, '2026-02-02T14:21:32.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2320', 'hist-ticket-95-2320', 'cash', 40500, 'completed', '2026-02-02T14:21:32.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2321', o.id, r.id, 'paid', 'takeout', 'orange', 5, 'Great coffee!', u.id, '2026-02-02T08:44:18.000Z', '2026-02-02T08:44:18.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2321-1', 'hist-ticket-95-2321', 'prod-latte', 1, 15000, 0, '2026-02-02T08:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2321-2', 'hist-ticket-95-2321', 'prod-americano', 1, 12000, 0, '2026-02-02T08:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2321-3', 'hist-ticket-95-2321', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T08:44:18.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2321-4', 'hist-ticket-95-2321', 'prod-latte', 1, 15000, 0, '2026-02-02T08:44:18.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2321', 'hist-ticket-95-2321', 'cash', 56500, 'completed', '2026-02-02T08:44:18.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2322', o.id, r.id, 'paid', 'dine_in', 'red', NULL, NULL, u.id, '2026-02-02T19:38:54.000Z', '2026-02-02T19:38:54.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2322-1', 'hist-ticket-95-2322', 'prod-mocha', 1, 16500, 0, '2026-02-02T19:38:54.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2322', 'hist-ticket-95-2322', 'cash', 16500, 'completed', '2026-02-02T19:38:54.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2323', o.id, r.id, 'paid', 'takeout', 'blue', 5, 'Great coffee!', u.id, '2026-02-02T19:10:23.000Z', '2026-02-02T19:10:23.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2323-1', 'hist-ticket-95-2323', 'prod-latte', 1, 15000, 0, '2026-02-02T19:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2323-2', 'hist-ticket-95-2323', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T19:10:23.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2323-3', 'hist-ticket-95-2323', 'prod-mocha', 1, 16500, 0, '2026-02-02T19:10:23.000Z');

INSERT INTO payments (id, ticket_id, tender_type, amount_centavos, status, created_at)
VALUES ('hist-payment-95-2323', 'hist-ticket-95-2323', 'cash', 46000, 'completed', '2026-02-02T19:10:23.000Z');

INSERT INTO tickets (id, org_id, register_id, status, ticket_type, demographic_color, feedback_rating, feedback_notes, created_by, created_at, updated_at)
SELECT 'hist-ticket-95-2324', o.id, r.id, 'paid', 'dine_in', 'pink', NULL, NULL, u.id, '2026-02-02T19:15:25.000Z', '2026-02-02T19:15:25.000Z'
FROM organizations o JOIN locations l ON l.org_id = o.id JOIN registers r ON r.location_id = l.id JOIN users u ON u.org_id = o.id LIMIT 1;

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2324-1', 'hist-ticket-95-2324', 'prod-cappuccino', 1, 14500, 0, '2026-02-02T19:15:25.000Z');

INSERT INTO line_items (id, ticket_id, product_id, qty, unit_price_centavos, discount_centavos, created_at)
VALUES ('hist-line-95-2324-2', 'hist-ticket-95-2324', 'prod-americano', 1, 12000, 0, '2026-02-02T19:15:25.000Z');